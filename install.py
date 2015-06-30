#!/usr/bin/env python
import time
import os


INSTALL_FILES = (
    'vimrc', 'profile', 'gitignore', 'gitconfig', 'pythonrc.py', 'colemak.vim',
    'pylintrc',
)

INSTALL_DIRS = (
    'vim',
)


if __name__ == '__main__':
    df_path = os.getcwd()
    user_path = os.getenv('HOME')

    os.chdir(user_path)

    FILES = (
        (os.path.isfile, INSTALL_FILES),
        (os.path.isdir, INSTALL_DIRS),
    )
    stamp = int(time.time())

    for exists_method, file_list in FILES:
        for df in file_list:
            if exists_method(os.path.join(df_path, df)):
                if os.path.islink(os.path.join(user_path, '.' + df)):
                    os.remove(os.path.join(user_path, '.' + df))
                if exists_method(os.path.join(user_path, '.' + df)):
                    os.rename(os.path.join(user_path, '.' + df), os.path.join(user_path, '.' + str(stamp) + '.' + df))
                os.symlink(os.path.join(df_path, df), '.' + df)
