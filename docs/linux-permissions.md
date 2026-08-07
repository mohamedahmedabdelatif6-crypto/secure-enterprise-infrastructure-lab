# Linux Users, Groups, and Permissions

## Users

- ahmed → IT
- sara → HR
- omar → Finance
- khaled → Security

## Department Directories

- `/company/it` → group: `it`
- `/company/hr` → group: `hr`
- `/company/finance` → group: `finance`
- `/company/security` → group: `security`

## Directory Permissions

All department directories use:

`770`

This allows the owner and group to read, write, and access the directory, while other users have no access.

## File Permissions

Example:

`/company/it/test.txt`

Owner:

`ahmed`

Group:

`it`

Permissions:

`664`

This allows the owner and IT group to read and write, while other users have read-only access.

## Access Testing

- `ahmed` successfully accessed `/company/it`.
- `ahmed` was denied access to `/company/hr`.
- `ahmed` successfully created and modified `test.txt`.


## Sudo Access

The user `ahmed` was added to the `wheel` group to provide administrative privileges.

Verification:

```bash
id ahmed
sudo -l
```

The `sudo -l` command confirmed:

`User ahmed may run the following commands on server01: (ALL) ALL`


## Permission Verification Commands

Commands used to verify users, groups, and permissions:

```bash
id ahmed
id sara
groups ahmed
ls -ld /company/*
ls -l /company/it/test.txt
```

These commands were used to confirm ownership, group membership, and access permissions.
