Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B276073FE37
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 16:39:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F2B510E310;
	Tue, 27 Jun 2023 14:38:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14E2A10E14C
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 08:57:00 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id
 d9443c01a7336-1b5466bc5f8so9656655ad.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 01:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance.com; s=google; t=1687424219; x=1690016219;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kOpMuT1tSay47KCV2B0lCCsOSa7MUah7TRoPRzKvzWA=;
 b=ARIMz0kPY37zDpA2KUfwIMWCUvAyZHIYiFTXtRMngKg5guyDvAvZNDKsvB2ZgT8UTW
 A25yLHuKDIGVoaFMSsnctFsAVv7yr9hBv5sSwiDDhv/mHcXUMpPqBe+IawTWyFdB0del
 fl+Pxlo1XCZ20awrxgcMp8gUHyp7xw9pGxosYaiH18lXNbdNEUFeaQtGj4iDzF4J11pb
 jyEKbhwN4kpW66g5W4dvNRCNuWMTsByWhUSRp4GIzQ739D16xyqzHvKa0SrFnLXwxenz
 WdarMgZ86g8pGHWvsC0B3J0QiIU/iI2cSgeTldT8LPJGZSfxzUyvtAnV3WYD0uKX4hXF
 pNRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687424219; x=1690016219;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=kOpMuT1tSay47KCV2B0lCCsOSa7MUah7TRoPRzKvzWA=;
 b=HmOq/G8XF+afUEh3YuYShGNLQO6Zb8mW+/6Sa95PYpTaGNhiYBIPU6qsmm8b6z13wr
 tCPnaQqny2TV2RkY/X+yy5YoNfoEZr9jbPRp52EO6qcsL9zQn4cZlEMYsrhUMEorzZIT
 hPW+bv6pCoAbXemYTmo0sxSfDArelO0ntrVCuJ9qinBbosij/+xT3DKn0y8DPq+tIoEX
 65J2BO9OOFF8wxoAGrD3hk095YDnS0SqjqpFdlVjjOzbt57pga5451Mcp86ZKpd4KMOD
 IYup8EH+Avr5LX2IFycyyI9Z6Qf8i8mNkxcVJ9Nrco1SeGFvqY3vwDbWzMEBek/SbLPc
 Z/vg==
X-Gm-Message-State: AC+VfDzTjbx3PNGPQr0w3wUqZ2TWPYKie+HKqNyTLQW1YlKfsMFy6w7m
 6lBIh0DAQhJhw4ceIxLkxGxVGg==
X-Google-Smtp-Source: ACHHUZ7DqrxYhESUqlF1zio/fEoWG5nPFDtKmAeSV45runPF4798dCp+1eyZAVtYptcjl0nDKDsZDg==
X-Received: by 2002:a17:903:230c:b0:1b3:ec39:f42c with SMTP id
 d12-20020a170903230c00b001b3ec39f42cmr21844690plh.5.1687424219648; 
 Thu, 22 Jun 2023 01:56:59 -0700 (PDT)
Received: from C02DW0BEMD6R.bytedance.net ([139.177.225.254])
 by smtp.gmail.com with ESMTPSA id
 h2-20020a170902f7c200b001b549fce345sm4806971plw.230.2023.06.22.01.56.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jun 2023 01:56:59 -0700 (PDT)
From: Qi Zheng <zhengqi.arch@bytedance.com>
To: akpm@linux-foundation.org, david@fromorbit.com, tkhai@ya.ru,
 vbabka@suse.cz, roman.gushchin@linux.dev, djwong@kernel.org,
 brauner@kernel.org, paulmck@kernel.org, tytso@mit.edu
Date: Thu, 22 Jun 2023 16:53:28 +0800
Message-Id: <20230622085335.77010-23-zhengqi.arch@bytedance.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
In-Reply-To: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
References: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 27 Jun 2023 14:38:30 +0000
Subject: [Intel-gfx] [PATCH 22/29] drm/ttm: introduce pool_shrink_rwsem
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

Currently, the synchronize_shrinkers() is only used by TTM
pool. It only requires that no shrinkers run in parallel.

After we use RCU+refcount method to implement the lockless
slab shrink, we can not use shrinker_rwsem or synchronize_rcu()
to guarantee that all shrinker invocations have seen an update
before freeing memory.

So we introduce a new pool_shrink_rwsem to implement a private
synchronize_shrinkers(), so as to achieve the same purpose.

Signed-off-by: Qi Zheng <zhengqi.arch@bytedance.com>
---
 drivers/gpu/drm/ttm/ttm_pool.c | 15 +++++++++++++++
 include/linux/shrinker.h       |  1 -
 mm/vmscan.c                    | 15 ---------------
 3 files changed, 15 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_pool.c b/drivers/gpu/drm/ttm/ttm_pool.c
index cddb9151d20f..713b1c0a70e1 100644
--- a/drivers/gpu/drm/ttm/ttm_pool.c
+++ b/drivers/gpu/drm/ttm/ttm_pool.c
@@ -74,6 +74,7 @@ static struct ttm_pool_type global_dma32_uncached[MAX_ORDER + 1];
 static spinlock_t shrinker_lock;
 static struct list_head shrinker_list;
 static struct shrinker mm_shrinker;
+static DECLARE_RWSEM(pool_shrink_rwsem);
 
 /* Allocate pages of size 1 << order with the given gfp_flags */
 static struct page *ttm_pool_alloc_page(struct ttm_pool *pool, gfp_t gfp_flags,
@@ -317,6 +318,7 @@ static unsigned int ttm_pool_shrink(void)
 	unsigned int num_pages;
 	struct page *p;
 
+	down_read(&pool_shrink_rwsem);
 	spin_lock(&shrinker_lock);
 	pt = list_first_entry(&shrinker_list, typeof(*pt), shrinker_list);
 	list_move_tail(&pt->shrinker_list, &shrinker_list);
@@ -329,6 +331,7 @@ static unsigned int ttm_pool_shrink(void)
 	} else {
 		num_pages = 0;
 	}
+	up_read(&pool_shrink_rwsem);
 
 	return num_pages;
 }
@@ -572,6 +575,18 @@ void ttm_pool_init(struct ttm_pool *pool, struct device *dev,
 }
 EXPORT_SYMBOL(ttm_pool_init);
 
+/**
+ * synchronize_shrinkers - Wait for all running shrinkers to complete.
+ *
+ * This is useful to guarantee that all shrinker invocations have seen an
+ * update, before freeing memory, similar to rcu.
+ */
+static void synchronize_shrinkers(void)
+{
+	down_write(&pool_shrink_rwsem);
+	up_write(&pool_shrink_rwsem);
+}
+
 /**
  * ttm_pool_fini - Cleanup a pool
  *
diff --git a/include/linux/shrinker.h b/include/linux/shrinker.h
index 8e9ba6fa3fcc..4094e4c44e80 100644
--- a/include/linux/shrinker.h
+++ b/include/linux/shrinker.h
@@ -105,7 +105,6 @@ extern int __printf(2, 3) register_shrinker(struct shrinker *shrinker,
 					    const char *fmt, ...);
 extern void unregister_shrinker(struct shrinker *shrinker);
 extern void free_prealloced_shrinker(struct shrinker *shrinker);
-extern void synchronize_shrinkers(void);
 
 typedef unsigned long (*count_objects_cb)(struct shrinker *s,
 					  struct shrink_control *sc);
diff --git a/mm/vmscan.c b/mm/vmscan.c
index 64ff598fbad9..3a8d50ad6ff6 100644
--- a/mm/vmscan.c
+++ b/mm/vmscan.c
@@ -844,21 +844,6 @@ void unregister_and_free_shrinker(struct shrinker *shrinker)
 }
 EXPORT_SYMBOL(unregister_and_free_shrinker);
 
-/**
- * synchronize_shrinkers - Wait for all running shrinkers to complete.
- *
- * This is equivalent to calling unregister_shrink() and register_shrinker(),
- * but atomically and with less overhead. This is useful to guarantee that all
- * shrinker invocations have seen an update, before freeing memory, similar to
- * rcu.
- */
-void synchronize_shrinkers(void)
-{
-	down_write(&shrinker_rwsem);
-	up_write(&shrinker_rwsem);
-}
-EXPORT_SYMBOL(synchronize_shrinkers);
-
 #define SHRINK_BATCH 128
 
 static unsigned long do_shrink_slab(struct shrink_control *shrinkctl,
-- 
2.30.2

