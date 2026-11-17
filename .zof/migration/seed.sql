-- Seed rows for Zof's Database migrations check: two users, a follow, an article and a favourite.
insert into "user" (user_id, username, email, password_hash)
values ('00000000-0000-4000-8000-000000000001', 'seed-a', 'seed-a@example.test', 'not-a-real-hash'),
       ('00000000-0000-4000-8000-000000000002', 'seed-b', 'seed-b@example.test', 'not-a-real-hash');

insert into follow (followed_user_id, following_user_id)
values ('00000000-0000-4000-8000-000000000001', '00000000-0000-4000-8000-000000000002');

insert into article (article_id, user_id, slug, title, description, body, tag_list)
values ('00000000-0000-4000-8000-0000000000a1', '00000000-0000-4000-8000-000000000001',
        'seed-article', 'Seed article', 'A seed row for Zof', 'Body', array ['seed']);

insert into article_favorite (article_id, user_id)
values ('00000000-0000-4000-8000-0000000000a1', '00000000-0000-4000-8000-000000000002');
