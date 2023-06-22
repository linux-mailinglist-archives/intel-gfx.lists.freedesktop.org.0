Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B36B73FE41
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 16:39:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42C8010E324;
	Tue, 27 Jun 2023 14:38:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A78FE10E4F3
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 08:55:40 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id
 d9443c01a7336-1b5585e84b4so6827895ad.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 01:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance.com; s=google; t=1687424140; x=1690016140;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Qqb5b2GNvTgVTRVLR7iEMYBQ9KFY39GKHYb23c1SNH4=;
 b=DTUuH0I9uHLii3LJ9Zyuu9c+EPbxYZC20xJ5+3ma+Kp5qpBNFOFTSMnclhdsEVCqLi
 IhMw89U+Z8kUvjOX0p1/U1TPShfVW/vJXGuaCCTRG1bGCD9nXSC4/ZiagSGalcNeTARf
 jURjtWkQSw5PrzWP1wBPTMrMWiplRo47rrBJgWE68ZF11RySU51PM2cKEbziuuvrByZZ
 Zy6z/i7b8JtNNsvUGe9g7/sl4BzjGsT0dMzcCmwPn8WMxyE8EEE7gXWjStqzol2ehPl/
 69+rSZ9IFQ8XiOW8vY+908jjX5pcw5aN354YWworQkitYsT+fnzRPZItmEL7YHvgl8Dv
 6USw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687424140; x=1690016140;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Qqb5b2GNvTgVTRVLR7iEMYBQ9KFY39GKHYb23c1SNH4=;
 b=U7DxOSTSss9Nb42KRTglvnjyu0XD7oD1Bok56VYS41C4+FuIhXFGE7cWOP1JglNCxI
 pTqVfvvNJg8k2MlPSqit9Qd4+FE7YmFygSsG92kXs2JFbwygNtClN6hiwJKGTEZGMp8X
 TCgb57tQFRoMfZFewbeiO/2xGQdlrKGGEGAiA8GrxTlnWOgXfu4P+osDgnEoy3LyAz6U
 sYFOHFNNRco33n2IM7Oq6TYbWmMfYc6vKC7PZEECV0qk3yMo20cNa/hUUnm0+HRMacox
 s/D9ZSw+iSfSbLUYQGVyNslKIke7PFmGtnA2VMiTgQIPd2pJphYFY/3e51hc4atUsfur
 6BSQ==
X-Gm-Message-State: AC+VfDwmd/p8KTnUfRyrYLxRJyW4o5Wrv8RNnFxtO+cLh4oege6QCObG
 gcYYuVK+S4Mm07K1Pktkgq4DiQ==
X-Google-Smtp-Source: ACHHUZ4U5RlW8/2AChRXKukLEKek4tD/ljCLASAoWCRPvf/eu3Wdfis/k+W/YQGMZOvsRYh9ePd5+g==
X-Received: by 2002:a17:902:d509:b0:1af:a349:3f31 with SMTP id
 b9-20020a170902d50900b001afa3493f31mr21732029plg.3.1687424140189; 
 Thu, 22 Jun 2023 01:55:40 -0700 (PDT)
Received: from C02DW0BEMD6R.bytedance.net ([139.177.225.254])
 by smtp.gmail.com with ESMTPSA id
 h2-20020a170902f7c200b001b549fce345sm4806971plw.230.2023.06.22.01.55.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jun 2023 01:55:39 -0700 (PDT)
From: Qi Zheng <zhengqi.arch@bytedance.com>
To: akpm@linux-foundation.org, david@fromorbit.com, tkhai@ya.ru,
 vbabka@suse.cz, roman.gushchin@linux.dev, djwong@kernel.org,
 brauner@kernel.org, paulmck@kernel.org, tytso@mit.edu
Date: Thu, 22 Jun 2023 16:53:18 +0800
Message-Id: <20230622085335.77010-13-zhengqi.arch@bytedance.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
In-Reply-To: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
References: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 27 Jun 2023 14:38:30 +0000
Subject: [Intel-gfx] [PATCH 12/29] mbcache: dynamically allocate the mbcache
 shrinker
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: linux-bcache@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linux-raid@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 Qi Zheng <zhengqi.arch@bytedance.com>, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-btrfs@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In preparation for implementing lockless slab shrink,
we need to dynamically allocate the mbcache shrinker,
so that it can be freed asynchronously using kfree_rcu().
Then it doesn't need to wait for RCU read-side critical
section when releasing the struct mb_cache.

Signed-off-by: Qi Zheng <zhengqi.arch@bytedance.com>
---
 fs/mbcache.c | 39 +++++++++++++++++++++------------------
 1 file changed, 21 insertions(+), 18 deletions(-)

diff --git a/fs/mbcache.c b/fs/mbcache.c
index 2a4b8b549e93..fec393e55a66 100644
--- a/fs/mbcache.c
+++ b/fs/mbcache.c
@@ -37,7 +37,7 @@ struct mb_cache {
 	struct list_head	c_list;
 	/* Number of entries in cache */
 	unsigned long		c_entry_count;
-	struct shrinker		c_shrink;
+	struct shrinker		*c_shrink;
 	/* Work for shrinking when the cache has too many entries */
 	struct work_struct	c_shrink_work;
 };
@@ -293,8 +293,7 @@ EXPORT_SYMBOL(mb_cache_entry_touch);
 static unsigned long mb_cache_count(struct shrinker *shrink,
 				    struct shrink_control *sc)
 {
-	struct mb_cache *cache = container_of(shrink, struct mb_cache,
-					      c_shrink);
+	struct mb_cache *cache = shrink->private_data;
 
 	return cache->c_entry_count;
 }
@@ -333,8 +332,8 @@ static unsigned long mb_cache_shrink(struct mb_cache *cache,
 static unsigned long mb_cache_scan(struct shrinker *shrink,
 				   struct shrink_control *sc)
 {
-	struct mb_cache *cache = container_of(shrink, struct mb_cache,
-					      c_shrink);
+	struct mb_cache *cache = shrink->private_data;
+
 	return mb_cache_shrink(cache, sc->nr_to_scan);
 }
 
@@ -370,26 +369,30 @@ struct mb_cache *mb_cache_create(int bucket_bits)
 	cache->c_hash = kmalloc_array(bucket_count,
 				      sizeof(struct hlist_bl_head),
 				      GFP_KERNEL);
-	if (!cache->c_hash) {
-		kfree(cache);
-		goto err_out;
-	}
+	if (!cache->c_hash)
+		goto err_c_hash;
+
 	for (i = 0; i < bucket_count; i++)
 		INIT_HLIST_BL_HEAD(&cache->c_hash[i]);
 
-	cache->c_shrink.count_objects = mb_cache_count;
-	cache->c_shrink.scan_objects = mb_cache_scan;
-	cache->c_shrink.seeks = DEFAULT_SEEKS;
-	if (register_shrinker(&cache->c_shrink, "mbcache-shrinker")) {
-		kfree(cache->c_hash);
-		kfree(cache);
-		goto err_out;
-	}
+	cache->c_shrink = shrinker_alloc_and_init(mb_cache_count, mb_cache_scan,
+						  0, DEFAULT_SEEKS, 0, cache);
+	if (!cache->c_shrink)
+		goto err_shrinker;
+
+	if (register_shrinker(cache->c_shrink, "mbcache-shrinker"))
+		goto err_register;
 
 	INIT_WORK(&cache->c_shrink_work, mb_cache_shrink_worker);
 
 	return cache;
 
+err_register:
+	shrinker_free(cache->c_shrink);
+err_shrinker:
+	kfree(cache->c_hash);
+err_c_hash:
+	kfree(cache);
 err_out:
 	return NULL;
 }
@@ -406,7 +409,7 @@ void mb_cache_destroy(struct mb_cache *cache)
 {
 	struct mb_cache_entry *entry, *next;
 
-	unregister_shrinker(&cache->c_shrink);
+	unregister_and_free_shrinker(cache->c_shrink);
 
 	/*
 	 * We don't bother with any locking. Cache must not be used at this
-- 
2.30.2

