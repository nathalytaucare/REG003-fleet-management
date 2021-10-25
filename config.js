exports.port = process.env.PORT || 8000;
exports.dbUrl =
  process.env.DATABASE_URL ||
  "postgresql://postgres:postgres@localhost:5434/postgres";
exports.secret = process.env.JWT_SECRET || 'token-para-chat';
exports.adminEmail = process.env.ADMIN_EMAIL || 'admin@localhost';
exports.adminPassword = process.env.ADMIN_PASSWORD || 'chatpassword';
