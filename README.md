## usersテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|index:true, null: false, unique: true|
|name|integer|index:true, null: false|
|email|integer|null: false, unique: true|
|password|integer|null: false|
|created_at|datetime|null: false|
|updated_at|datetime|null: false|

### Association
- has_many :members
- has_many :groups, through: members
- has_many :messages

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|index:true, null: false, unique: true|
|name|integer|null: false|
|created_at|datetime|null: false|
|updated_at|datetime|null: false|

### Association
- has_many :members
- has_many :users, through: members
- has_many :messages

## membersテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false, unique: true|
|user_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key: true|
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
|user_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key: true|
|created_at|datetime|null: false|
|updated_at|datetime|null: false|

### Association
- belongs_to :group
- belongs_to :user