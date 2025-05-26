INSERT INTO "User" (id, email, name, password, role, "createdAt", "updatedAt")
VALUES (
  gen_random_uuid(),
  'admin@team-evolve.com',
  'admin',
  'IUjFeVv_bBdLDRIfL5LF4kNoe2j1xrEyGhHDpY6na3zgd7b7zU8',
  'ADMIN',
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP
)
ON CONFLICT (email) 
DO UPDATE SET 
  password = EXCLUDED.password,
  role = EXCLUDED.role,
  "updatedAt" = CURRENT_TIMESTAMP; 