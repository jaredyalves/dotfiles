#!/bin/bash

# Fix .gnupg permissions
echo "Fixing .gnupg permissions..."
chmod 700 ~/.gnupg
chmod 600 ~/.gnupg/*
chmod 700 ~/.gnupg/private-keys-v1.d
chmod 600 ~/.gnupg/private-keys-v1.d/*

# Fix .ssh permissions
echo "Fixing .ssh permissions..."
chmod 700 ~/.ssh
chmod 600 ~/.ssh/config

echo "Permissions have been fixed."
