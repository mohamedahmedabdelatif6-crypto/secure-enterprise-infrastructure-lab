# Linux User Management

## Objective

Practice creating, inspecting, and deleting Linux users while understanding
UID, GID, home directories, ownership, and the difference between `userdel`
and `userdel -r`.

## 1. Create a Test User

Create a user named `testuser`:

```bash
sudo useradd testuser
```

Verify the account:

```bash
id testuser
```

## 2. Delete the User Without `-r`

Remove the user:

```bash
sudo userdel testuser
```

The user account is removed, but the home directory may remain.

## 3. Delete the User With `-r`

Remove the user and its home directory:

```bash
sudo userdel -r testuser
```

## 4. Verification

The user account was successfully removed:

```text
id: ‘testuser’: no such user
```

The home directory was also removed:

```text
ls: cannot access '/home/testuser': No such file or directory
```

## Key Difference

| Command | User Account | Home Directory |
|---|---|---|
| `userdel testuser` | Removed | Usually remains |
| `userdel -r testuser` | Removed | Removed |

## Result

The `testuser` account and its home directory were successfully deleted.

