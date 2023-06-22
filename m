Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3CB73FE6A
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 16:39:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE0AA10E316;
	Tue, 27 Jun 2023 14:39:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DC0810E527
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 08:56:44 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id
 d9443c01a7336-1b5585e84b4so6828775ad.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 01:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance.com; s=google; t=1687424203; x=1690016203;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=uYJ0Isr1XZATX6JGPvTVuhl3oDZVpp/hY4/4gwVGW9E=;
 b=E8DR3f2Hoat1dr+eWUDbHZgFwAog/Y14Fyr901nadnjVcnG4wi/dzsYXue5lsR1fMf
 J4lGKXcngL6tZ98mDRA+meQDFEQqI8M8C2U7Jzsh+P5pb02lqX9x9oPIGG3MqGtcEQBd
 gtcaY6d5Wvcszm2wAYU1/GbNiI4/W6jf6+osdVtp14uPtbwdSj3xBB3cuLupxVd/0Bva
 3aNVjboq1g3R8QF56ponf3Z0k9HzBLbK6msqxIkke8ZOuuk+1QHFYDcPM2BRj2r4DT2+
 yfbsCvnlQ4hLgF8msig/7Mg+peyLnaUmJHbCBGncbsN2mdvtqIXKdXSMs3btfn7dPCo7
 J6Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687424203; x=1690016203;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=uYJ0Isr1XZATX6JGPvTVuhl3oDZVpp/hY4/4gwVGW9E=;
 b=fy1/C0Wu8nIWGpfaWwk2zJ+0J2kZPS9q0ff7wadZGkIbdzOr6F43QwgEVdT5bPZ3IK
 nbweFUXf4FKSJPMmeh/qdMlL9h8l7CjTDpOPAc2v+4yPlFlbNsJawMDFv2xY38Ixw7tq
 MfK6EC/ShqGx6vMdSs90ptBDL9FAPxdgsThAV3tJBoTcBBUhXy2I4uIil3hwbbJNsnX+
 lZEL8E2bL6CoGml3YoPfGTMStqZh8px1hPI05nXFB9M8PX3SZD/AgihpOkhWiQfs7+0V
 BS8y9YJCRuO+/H0eauL3iHaaNZa3yMnWDo6R+eRCqus9HTvrOOajjVMM65ZTt9+4qCB+
 bu0A==
X-Gm-Message-State: AC+VfDylOn4WVxydwQwpxPIwWs7ITphlktvTyHbe/3T/91wOG98+rxQ6
 46Eq+ouMbPuTSL7WWjAPvHUbVg==
X-Google-Smtp-Source: ACHHUZ4t5WHqyo4ZYahXOm5IhQBts9kOj8de1dBmPyGeGIdQ3YL7Www59M51QQRN7AwqoJV6XrQ1Ww==
X-Received: by 2002:a17:902:ea01:b0:1a9:6467:aa8d with SMTP id
 s1-20020a170902ea0100b001a96467aa8dmr21674286plg.1.1687424203648; 
 Thu, 22 Jun 2023 01:56:43 -0700 (PDT)
Received: from C02DW0BEMD6R.bytedance.net ([139.177.225.254])
 by smtp.gmail.com with ESMTPSA id
 h2-20020a170902f7c200b001b549fce345sm4806971plw.230.2023.06.22.01.56.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jun 2023 01:56:43 -0700 (PDT)
From: Qi Zheng <zhengqi.arch@bytedance.com>
To: akpm@linux-foundation.org, david@fromorbit.com, tkhai@ya.ru,
 vbabka@suse.cz, roman.gushchin@linux.dev, djwong@kernel.org,
 brauner@kernel.org, paulmck@kernel.org, tytso@mit.edu
Date: Thu, 22 Jun 2023 16:53:26 +0800
Message-Id: <20230622085335.77010-21-zhengqi.arch@bytedance.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
In-Reply-To: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
References: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 27 Jun 2023 14:38:30 +0000
Subject: [Intel-gfx] [PATCH 20/29] zsmalloc: dynamically allocate the
 mm-zspool shrinker
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
we need to dynamically allocate the mm-zspool shrinker,
so that it can be freed asynchronously using kfree_rcu().
Then it doesn't need to wait for RCU read-side critical
section when releasing the struct zs_pool.

Signed-off-by: Qi Zheng <zhengqi.arch@bytedance.com>
---
 mm/zsmalloc.c | 28 ++++++++++++++++------------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/mm/zsmalloc.c b/mm/zsmalloc.c
index 3f057970504e..c03b34ae637e 100644
--- a/mm/zsmalloc.c
+++ b/mm/zsmalloc.c
@@ -229,7 +229,7 @@ struct zs_pool {
 	struct zs_pool_stats stats;
 
 	/* Compact classes */
-	struct shrinker shrinker;
+	struct shrinker *shrinker;
 
 #ifdef CONFIG_ZSMALLOC_STAT
 	struct dentry *stat_dentry;
@@ -2107,8 +2107,7 @@ static unsigned long zs_shrinker_scan(struct shrinker *shrinker,
 		struct shrink_control *sc)
 {
 	unsigned long pages_freed;
-	struct zs_pool *pool = container_of(shrinker, struct zs_pool,
-			shrinker);
+	struct zs_pool *pool = shrinker->private_data;
 
 	/*
 	 * Compact classes and calculate compaction delta.
@@ -2126,8 +2125,7 @@ static unsigned long zs_shrinker_count(struct shrinker *shrinker,
 	int i;
 	struct size_class *class;
 	unsigned long pages_to_free = 0;
-	struct zs_pool *pool = container_of(shrinker, struct zs_pool,
-			shrinker);
+	struct zs_pool *pool = shrinker->private_data;
 
 	for (i = ZS_SIZE_CLASSES - 1; i >= 0; i--) {
 		class = pool->size_class[i];
@@ -2142,18 +2140,24 @@ static unsigned long zs_shrinker_count(struct shrinker *shrinker,
 
 static void zs_unregister_shrinker(struct zs_pool *pool)
 {
-	unregister_shrinker(&pool->shrinker);
+	unregister_and_free_shrinker(pool->shrinker);
 }
 
 static int zs_register_shrinker(struct zs_pool *pool)
 {
-	pool->shrinker.scan_objects = zs_shrinker_scan;
-	pool->shrinker.count_objects = zs_shrinker_count;
-	pool->shrinker.batch = 0;
-	pool->shrinker.seeks = DEFAULT_SEEKS;
+	int ret;
+
+	pool->shrinker = shrinker_alloc_and_init(zs_shrinker_count,
+						 zs_shrinker_scan, 0,
+						 DEFAULT_SEEKS, 0, pool);
+	if (!pool->shrinker)
+		return -ENOMEM;
 
-	return register_shrinker(&pool->shrinker, "mm-zspool:%s",
-				 pool->name);
+	ret = register_shrinker(pool->shrinker, "mm-zspool:%s", pool->name);
+	if (ret)
+		shrinker_free(pool->shrinker);
+
+	return ret;
 }
 
 static int calculate_zspage_chain_size(int class_size)
-- 
2.30.2

