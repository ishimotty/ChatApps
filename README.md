## usersテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|index:true, null: false, unique: true|
|name|integer|null: false|
|email|integer|null: false, unique: true|
|password|integer|null: false|
|created_at|datetime|null: false|
|updated_at|datetime|null: false|

### Association
- has_many :groups, through: menbers
- has_many :members
- has_many :messages

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|index:true, null: false, unique: true|
|group_name|integer|null: false|
|created_at|datetime|null: false|
|updated_at|datetime|null: false|

### Association
- has_many :users, through: menbers
- has_many :members
- has_many :messages

## membersテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false, unique: true|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
|created_at|datetime|null: false|
|updated_at|datetime|null: false|

### Association
- belongs_to :group
- belongs_to :user

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false, unique: true|
|body|text||
|image|string||
|group_id|integer|null: false|
|user_id|integer|null: false|
|created_at|datetime|null: false|
|updated_at|datetime|null: false|

### Association
- belongs_to :group
- belongs_to :user