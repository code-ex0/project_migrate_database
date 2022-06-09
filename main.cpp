#include <iostream>
#include <fstream>
#include <cstdlib>
#include <sqlite3.h>

std::string newDatabase = "new-db.sql";
std::string destination = "dest.sqlite";
std::string fileMigration = "sqlite_migrate.sql";

/**
 * @brief replace(3 char*: 1: the string to replace 2: elements to replace 3: elements to insert) will take a string and replace elements inside by other elements passed as argument
 * @param str
 * @param from
 * @param to
 * @return int 0 if no error occurred 1 if an error occurred
 */
int replace(std::string& str, const std::string& from, const std::string& to) {
    size_t start_pos = str.find(from);
    if(start_pos == std::string::npos) return 1;
    str.replace(start_pos, from.length(), to);
    return 0;
}

/**
 * @brief readFile will convert our file into a string (security is added in case the file isn't open yet)
 * @param path
 * @return char * or string(file's content)
 */
std::string readFile(const std::string& path)
{
    std::ifstream input_file(path.c_str());
    if (!input_file.is_open()) {
        std::cerr << "Could not open the file - '" << path << "'" << std::endl;
        exit(EXIT_FAILURE);
    }
    return std::string((std::istreambuf_iterator<char>(input_file)), std::istreambuf_iterator<char>());
}

/**
 * @brief create our database, enter the instructions to execute the migration then close the file
 * @param create_db = char* or string
 * @param migration = char* or string
 * @return int
 */
int createDB(const char* create_db, const char * migration)
{
    sqlite3* DB;
    int exit;

    exit = sqlite3_open(destination.c_str(), &DB);

    if (exit != 0) {
        std::cout << "can't open the database " << destination << std::endl;
        return 1;
    }

    sqlite3_exec(DB, create_db, NULL, NULL, NULL);
    sqlite3_exec(DB, migration, NULL, NULL, NULL);
    sqlite3_close(DB);

    return 0;
}

/**
 * @brief migration() prepare the migration
 */
void migration(const char *oldDbName)
{
    std::string create_db = readFile(newDatabase);
    std::string migration = readFile(fileMigration);
    int error;

    error = replace(migration,"{{dbName}}",oldDbName);

    if (error != 0) {
        std::cout << "can't replace the attach of the old db in " << destination << std::endl;
        return;
    }
    createDB(create_db.c_str() ,migration.c_str());
}

/**
 * @brief Main Run our program with error handlers
 * @param argc
 * @param argv
 * @return int
 */
int main(int argc, char** argv)
{
    if (argc == 2) {
        std::cout << "Start migration !" << std::endl;
        migration(argv[1]);
        std::cout << "Migration done !" << std::endl;
        exit(EXIT_SUCCESS);

    }
    else if(argc>2)
    {
        std::cout << "Too many arguments !!!" << std::endl;
    }
    else
    {
        std::cout << "At least 1 argument is missing !!!" << std::endl;
    }
    return 0;
}
