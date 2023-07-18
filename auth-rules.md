# Auth Rules
## SUPER_ADMIN (0)
- Authorities: ["read", "admin_read", "delete", "ban_unban", "recover", "promote"]
- super admin has everything a normal admin has
- super admin can promote normal user to admin

## ADMIN (1)
- Authorities: ["read", "admin_read", "delete", "ban_unban", "recover"]
- admin can read posts like normal user
- admin can read banned and deleted posts
- admin can't create posts themselves (??? i am not sure about this one)
- admin can't modify other's posts
- admin can delete posts and replies (still deletes remains in the database)
- admin can ban/unban posts
- admin can ban/unban users (admin can't ban other admin)
- admin can recover deleted posts/replies

## NORMAL_USER (2)
- Authorities: ["read", "write", "delete", "update"]
- normal user can read published posts create/reply to published posts delete posts/replys with their (userId)
- modify their post if they are the onwer(same userid)
- (bonus) delete other's reply on their own posts
- whenever normal user delete posts/replies, the normal user  only modify the state of the post/reply while the data in the database remains.
- normal user can't recover(update states of post from dead to alive)

## NORMAL_USER_NOT_VALID (3)
- Authorities: ["read"]
- normal user without email verification can only read published posts 


## VISITOR_BANNED (4)
- Authorities: null
- visotor should have no permission, and we can exclude login/register/contact us page from filter and security to all access
