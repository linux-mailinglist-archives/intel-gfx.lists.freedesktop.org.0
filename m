Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED79E4FC185
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 17:52:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA75710E3F3;
	Mon, 11 Apr 2022 15:52:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CEBA10E73A;
 Thu,  7 Apr 2022 09:00:08 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id n6so9346161ejc.13;
 Thu, 07 Apr 2022 02:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=760zU6RiXAIuJGoNLn2/+bYMaUvztiATMp1AUPhE4GU=;
 b=q5sAcsteXjE5E6buvxHVwksfAOQLd+zFBEwX706pw8PsoRHvTCTP2AVKpJ63aR2Bh0
 O9BnR7a6s1AF9ma4MvUfcaRdlRJo1BOtvutC3IbcBP+eziATr99bw7mfnJyxylFFVZJ6
 CSh7ei2nLLq2Ldfm7bqqH3CxgAR7HiREMNLcBsk5o2Bfrn0f6IsgEICZRAt07gm3DiG2
 9bVYqj4cFNXDAWECUmD8qiTJo9m/L1pABKwZI3+EbOcl8Sl9k9T5fCLlFwiUqGzBd+M2
 Hw3rhCSbGcED/tXVf913lA/sM1vevBqnkOs0MvZ7//8h48HKVZzwYXz61QUlh8i7G1sy
 0VDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=760zU6RiXAIuJGoNLn2/+bYMaUvztiATMp1AUPhE4GU=;
 b=RmM2Km6f7wBUyIKeMi/wS8FRzB4L53kXjlKxhus/IcdeYoiFrPWyJ+rHivzihM1LL9
 fRxCq6aPecSWWv6T/Gr8tUnIgVH8GQv1f1ldxxYpekpT/rl5y334x+W25EY2e9SeYWJV
 KC4lvnQfSEoMzM64odhv3tyukCmlWLrvRULlPq4yop7W/bnJxTO6ij+yj3UmudKhj8HE
 1zitwjmiDJLqZjFG0VqYWDzRT+rbWT7KUz99TB+tyIhhpO1cYUH2zVo/BsgR2MiKjYlE
 TIxpGyNl6Pk0VWSD/LUj6UiNgWOJFhyPNMLHm3dsDYxdbVEY4SFE3pXHQsmjVPLkTqv9
 aIdQ==
X-Gm-Message-State: AOAM53352S0Q5QDiSaCoXuP0DywUUcLpi64i6sWVegnW5fMTWhoKiqXI
 ZAF9VTG/vQeW1ly6ekdOZZM=
X-Google-Smtp-Source: ABdhPJzXzuQAt7xj669fvamaIe9WL9eeVhihRzkGBku2xHTH0wXLFGad+Fw66H/MLutFoSJz49X5qQ==
X-Received: by 2002:a17:906:cccf:b0:6e7:5336:8bd7 with SMTP id
 ot15-20020a170906cccf00b006e753368bd7mr12482779ejb.583.1649322005423; 
 Thu, 07 Apr 2022 02:00:05 -0700 (PDT)
Received: from able.fritz.box (p57b0b9e1.dip0.t-ipconnect.de. [87.176.185.225])
 by smtp.gmail.com with ESMTPSA id
 h26-20020a170906111a00b006e778bd4fc8sm5186563eja.38.2022.04.07.02.00.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Apr 2022 02:00:04 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel.vetter@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 intel-gfx@lists.freedesktop.org
Date: Thu,  7 Apr 2022 10:59:45 +0200
Message-Id: <20220407085946.744568-15-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220407085946.744568-1-christian.koenig@amd.com>
References: <20220407085946.744568-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 11 Apr 2022 15:52:44 +0000
Subject: [Intel-gfx] [PATCH 14/15] dma-buf: drop seq count based update
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
Cc: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This should be possible now since we don't have the distinction
between exclusive and shared fences any more.

The only possible pitfall is that a dma_fence would be reused during the
RCU grace period, but even that could be handled with a single extra check.

Signed-off-by: Christian König <christian.koenig@amd.com>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/dma-buf/dma-resv.c    | 33 ++++++++++++---------------------
 drivers/dma-buf/st-dma-resv.c |  2 +-
 include/linux/dma-resv.h      | 12 ------------
 3 files changed, 13 insertions(+), 34 deletions(-)

diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
index 5b64aa554c36..0cce6e4ec946 100644
--- a/drivers/dma-buf/dma-resv.c
+++ b/drivers/dma-buf/dma-resv.c
@@ -133,7 +133,6 @@ static void dma_resv_list_free(struct dma_resv_list *list)
 void dma_resv_init(struct dma_resv *obj)
 {
 	ww_mutex_init(&obj->lock, &reservation_ww_class);
-	seqcount_ww_mutex_init(&obj->seq, &obj->lock);
 
 	RCU_INIT_POINTER(obj->fences, NULL);
 }
@@ -292,28 +291,24 @@ void dma_resv_add_fence(struct dma_resv *obj, struct dma_fence *fence,
 	fobj = dma_resv_fences_list(obj);
 	count = fobj->num_fences;
 
-	write_seqcount_begin(&obj->seq);
-
 	for (i = 0; i < count; ++i) {
 		enum dma_resv_usage old_usage;
 
 		dma_resv_list_entry(fobj, i, obj, &old, &old_usage);
 		if ((old->context == fence->context && old_usage >= usage) ||
-		    dma_fence_is_signaled(old))
-			goto replace;
+		    dma_fence_is_signaled(old)) {
+			dma_resv_list_set(fobj, i, fence, usage);
+			dma_fence_put(old);
+			return;
+		}
 	}
 
 	BUG_ON(fobj->num_fences >= fobj->max_fences);
-	old = NULL;
 	count++;
 
-replace:
 	dma_resv_list_set(fobj, i, fence, usage);
 	/* pointer update must be visible before we extend the num_fences */
 	smp_store_mb(fobj->num_fences, count);
-
-	write_seqcount_end(&obj->seq);
-	dma_fence_put(old);
 }
 EXPORT_SYMBOL(dma_resv_add_fence);
 
@@ -341,7 +336,6 @@ void dma_resv_replace_fences(struct dma_resv *obj, uint64_t context,
 	dma_resv_assert_held(obj);
 
 	list = dma_resv_fences_list(obj);
-	write_seqcount_begin(&obj->seq);
 	for (i = 0; list && i < list->num_fences; ++i) {
 		struct dma_fence *old;
 
@@ -352,14 +346,12 @@ void dma_resv_replace_fences(struct dma_resv *obj, uint64_t context,
 		dma_resv_list_set(list, i, replacement, usage);
 		dma_fence_put(old);
 	}
-	write_seqcount_end(&obj->seq);
 }
 EXPORT_SYMBOL(dma_resv_replace_fences);
 
 /* Restart the unlocked iteration by initializing the cursor object. */
 static void dma_resv_iter_restart_unlocked(struct dma_resv_iter *cursor)
 {
-	cursor->seq = read_seqcount_begin(&cursor->obj->seq);
 	cursor->index = 0;
 	cursor->num_fences = 0;
 	cursor->fences = dma_resv_fences_list(cursor->obj);
@@ -388,8 +380,10 @@ static void dma_resv_iter_walk_unlocked(struct dma_resv_iter *cursor)
 				    cursor->obj, &cursor->fence,
 				    &cursor->fence_usage);
 		cursor->fence = dma_fence_get_rcu(cursor->fence);
-		if (!cursor->fence)
-			break;
+		if (!cursor->fence) {
+			dma_resv_iter_restart_unlocked(cursor);
+			continue;
+		}
 
 		if (!dma_fence_is_signaled(cursor->fence) &&
 		    cursor->usage >= cursor->fence_usage)
@@ -415,7 +409,7 @@ struct dma_fence *dma_resv_iter_first_unlocked(struct dma_resv_iter *cursor)
 	do {
 		dma_resv_iter_restart_unlocked(cursor);
 		dma_resv_iter_walk_unlocked(cursor);
-	} while (read_seqcount_retry(&cursor->obj->seq, cursor->seq));
+	} while (dma_resv_fences_list(cursor->obj) != cursor->fences);
 	rcu_read_unlock();
 
 	return cursor->fence;
@@ -438,13 +432,13 @@ struct dma_fence *dma_resv_iter_next_unlocked(struct dma_resv_iter *cursor)
 
 	rcu_read_lock();
 	cursor->is_restarted = false;
-	restart = read_seqcount_retry(&cursor->obj->seq, cursor->seq);
+	restart = dma_resv_fences_list(cursor->obj) != cursor->fences;
 	do {
 		if (restart)
 			dma_resv_iter_restart_unlocked(cursor);
 		dma_resv_iter_walk_unlocked(cursor);
 		restart = true;
-	} while (read_seqcount_retry(&cursor->obj->seq, cursor->seq));
+	} while (dma_resv_fences_list(cursor->obj) != cursor->fences);
 	rcu_read_unlock();
 
 	return cursor->fence;
@@ -540,10 +534,7 @@ int dma_resv_copy_fences(struct dma_resv *dst, struct dma_resv *src)
 	}
 	dma_resv_iter_end(&cursor);
 
-	write_seqcount_begin(&dst->seq);
 	list = rcu_replace_pointer(dst->fences, list, dma_resv_held(dst));
-	write_seqcount_end(&dst->seq);
-
 	dma_resv_list_free(list);
 	return 0;
 }
diff --git a/drivers/dma-buf/st-dma-resv.c b/drivers/dma-buf/st-dma-resv.c
index 8ace9e84c845..813779e3c9be 100644
--- a/drivers/dma-buf/st-dma-resv.c
+++ b/drivers/dma-buf/st-dma-resv.c
@@ -217,7 +217,7 @@ static int test_for_each_unlocked(void *arg)
 		if (r == -ENOENT) {
 			r = -EINVAL;
 			/* That should trigger an restart */
-			cursor.seq--;
+			cursor.fences = (void*)~0;
 		} else if (r == -EINVAL) {
 			r = 0;
 		}
diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
index 1db759eacc98..c8ccbc94d5d2 100644
--- a/include/linux/dma-resv.h
+++ b/include/linux/dma-resv.h
@@ -155,15 +155,6 @@ struct dma_resv {
 	 */
 	struct ww_mutex lock;
 
-	/**
-	 * @seq:
-	 *
-	 * Sequence count for managing RCU read-side synchronization, allows
-	 * read-only access to @fences while ensuring we take a consistent
-	 * snapshot.
-	 */
-	seqcount_ww_mutex_t seq;
-
 	/**
 	 * @fences:
 	 *
@@ -202,9 +193,6 @@ struct dma_resv_iter {
 	/** @fence_usage: the usage of the current fence */
 	enum dma_resv_usage fence_usage;
 
-	/** @seq: sequence number to check for modifications */
-	unsigned int seq;
-
 	/** @index: index into the shared fences */
 	unsigned int index;
 
-- 
2.25.1

