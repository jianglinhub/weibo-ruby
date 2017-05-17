# README

# 跳过安装依赖
rails generate controller welcome --skip-bundle

# 安装依赖
bundle install

# 自动创建posts控追求的所有actions
rails generate controller posts index new creates

# 查看所有路由
rake routes

# 自动创建posts路由所有的资源
resources :posts

# 删除控制器和相关资源
rails destroy controller posts

# 使用脚手架创建 控制器 + actions + models
rails generate scaffold Post content:text

# 数据库迁移命令，用于将设计好的数据表真正在rails数据库中创建
bundle exec rake db:migrate

# 创建模型
rails generate model user userName:string email:string
# 创建数据库
rake db:migrate

# rails控制台
rails console

# 创建数据到内存中
@user = User.new(:userName => 'sundi', :email => 'sudi@123.com')
# 保存到数据库中
@user.save

User.find(1)
SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]

User.all
SELECT "users".* FROM "users"

# 创建一个空对象
@user = User.new
<User id: nil, userName: nil, email: nil, created_at: nil, updated_at: nil>

# 查看错误栈
@user.errors.full_message
 @user.errors.first

# 添加用户和数据关联字段
rails generate migration add_user_id_to_posts user_id:id