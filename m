Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61022415D27
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 13:57:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E3FD6ED12;
	Thu, 23 Sep 2021 11:57:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC2BB6E0F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 07:56:11 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id w17so14442364wrv.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 00:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=j72UGkuuDcgcNEbU7Ge4Dor/jiN8qEzXwuFx/qj5WO8=;
 b=PTvbMBwv5n9NMo2j+gYZ0lvAvkioFx9YLnB7stM/dTJtjmV0QQSgNJAsT1W8RzVkxU
 URGkncS59EgjYk6rlBb/lAYetwH8w0XBG03Y93LgLlt7bVY5GTsZNGG8xwWSEO688mLp
 36Ip+x76BL4atYR8AQ4LY80AD11L7hiesbPE3vHYspgeRtlHBdPECd3PAvsUBZhmesmG
 Gc5KwFqsFIY+4BEP0twj4/3FirvmvRM+OCgOgT23SZefhH7AC1HetaIgYjyimHHnKwDM
 8ABazyybiRtJEF3uuXVl1e7Ped1EpMvWfAao6r1VeqTMHMPzKiAdhg0n9vkudbJrOTRx
 EIHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=j72UGkuuDcgcNEbU7Ge4Dor/jiN8qEzXwuFx/qj5WO8=;
 b=TG1To7qw991WoKFOeD8xMpA3nGfzsl/Q6LM2/FxqEQJZE/z7mHoE/ZfPvENkI6uA/s
 +tTNtmAX+VjvEw7Ieqh5ok+5iukCgOSGNpeaBFlK85plfpAshMDTTQA42/A09eI8HN3g
 z4QpeoNbq9QGkacFSMleioGpEdBex0uhz7Djof1njA/wDZYs1xceshsvUpNLSJ4Q1FG1
 Ez2GMLCrHYjsKoE40RGLLBp+oYZOyiAGBgMJUo0maxXh1pclvXzjwA1fpUh4noeYZk49
 vtpJjjFardlAygd3X+72Ed0QSRjxw5TrINjq+inwjlqlp1LTxY0HMJ73MDKaLwgYmsNN
 1xgQ==
X-Gm-Message-State: AOAM531LNu2tC94kU8lz3C6TBMJvXSTuGFnupuNxge61SkgKdU2XzFyk
 aHwaHE0135Dd/8lPVLAguKT14nlI47w=
X-Google-Smtp-Source: ABdhPJxzhqwkXo4c9kvGIwZbT+zgYqETZGM/K4lbj6Tae4lvVt6P/NGgAC+QBReG5ekZt95KSwnHpg==
X-Received: by 2002:adf:fc0e:: with SMTP id i14mr3332422wrr.173.1632383770267; 
 Thu, 23 Sep 2021 00:56:10 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 k19sm4280704wmr.21.2021.09.23.00.56.08
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 00:56:09 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 09:55:44 +0200
Message-Id: <20210923075608.2873-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 23 Sep 2021 11:57:22 +0000
Subject: [Intel-gfx] [PATCH 01/25] dma-buf: add
 dma_resv_for_each_fence_unlocked v5
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Abstract the complexity of iterating over all the fences
in a dma_resv object.

The new loop handles the whole RCU and retry dance and
returns only fences where we can be sure we grabbed the
right one.

v2: fix accessing the shared fences while they might be freed,
    improve kerneldoc, rename _cursor to _iter, add
    dma_resv_iter_is_exclusive, add dma_resv_iter_begin/end

v3: restructor the code, move rcu_read_lock()/unlock() into the
    iterator, add dma_resv_iter_is_restarted()

v4: fix NULL deref when no explicit fence exists, drop superflous
    rcu_read_lock()/unlock() calls.

v5: fix typos in the documentation

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/dma-buf/dma-resv.c | 95 ++++++++++++++++++++++++++++++++++++++
 include/linux/dma-resv.h   | 95 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 190 insertions(+)

diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
index 84fbe60629e3..fbd00e4e1fb4 100644
--- a/drivers/dma-buf/dma-resv.c
+++ b/drivers/dma-buf/dma-resv.c
@@ -323,6 +323,101 @@ void dma_resv_add_excl_fence(struct dma_resv *obj, struct dma_fence *fence)
 }
 EXPORT_SYMBOL(dma_resv_add_excl_fence);
 
+/**
+ * dma_resv_iter_restart_unlocked - restart the unlocked iterator
+ * @cursor: The dma_resv_iter object to restart
+ *
+ * Restart the unlocked iteration by initializing the cursor object.
+ */
+static void dma_resv_iter_restart_unlocked(struct dma_resv_iter *cursor)
+{
+	cursor->seq = read_seqcount_begin(&cursor->obj->seq);
+	cursor->index = -1;
+	if (cursor->all_fences)
+		cursor->fences = dma_resv_shared_list(cursor->obj);
+	else
+		cursor->fences = NULL;
+	cursor->is_restarted = true;
+}
+
+/**
+ * dma_resv_iter_walk_unlocked - walk over fences in a dma_resv obj
+ * @cursor: cursor to record the current position
+ *
+ * Return all the fences in the dma_resv object which are not yet signaled.
+ * The returned fence has an extra local reference so will stay alive.
+ * If a concurrent modify is detected the whole iteration is started over again.
+ */
+static void dma_resv_iter_walk_unlocked(struct dma_resv_iter *cursor)
+{
+	struct dma_resv *obj = cursor->obj;
+
+	do {
+		/* Drop the reference from the previous round */
+		dma_fence_put(cursor->fence);
+
+		if (cursor->index++ == -1) {
+			cursor->fence = dma_resv_excl_fence(obj);
+
+		} else if (!cursor->fences ||
+			   cursor->index >= cursor->fences->shared_count) {
+			cursor->fence = NULL;
+
+		} else {
+			struct dma_resv_list *fences = cursor->fences;
+			unsigned int idx = cursor->index;
+
+			cursor->fence = rcu_dereference(fences->shared[idx]);
+		}
+		if (cursor->fence)
+			cursor->fence = dma_fence_get_rcu(cursor->fence);
+	} while (cursor->fence && dma_fence_is_signaled(cursor->fence));
+}
+
+/**
+ * dma_resv_iter_first_unlocked - first fence in an unlocked dma_resv obj.
+ * @cursor: the cursor with the current position
+ *
+ * Returns the first fence from an unlocked dma_resv obj.
+ */
+struct dma_fence *dma_resv_iter_first_unlocked(struct dma_resv_iter *cursor)
+{
+	rcu_read_lock();
+	do {
+		dma_resv_iter_restart_unlocked(cursor);
+		dma_resv_iter_walk_unlocked(cursor);
+	} while (read_seqcount_retry(&cursor->obj->seq, cursor->seq));
+	rcu_read_unlock();
+
+	return cursor->fence;
+}
+EXPORT_SYMBOL(dma_resv_iter_first_unlocked);
+
+/**
+ * dma_resv_iter_next_unlocked - next fence in an unlocked dma_resv obj.
+ * @cursor: the cursor with the current position
+ *
+ * Returns the next fence from an unlocked dma_resv obj.
+ */
+struct dma_fence *dma_resv_iter_next_unlocked(struct dma_resv_iter *cursor)
+{
+	bool restart;
+
+	rcu_read_lock();
+	cursor->is_restarted = false;
+	restart = read_seqcount_retry(&cursor->obj->seq, cursor->seq);
+	do {
+		if (restart)
+			dma_resv_iter_restart_unlocked(cursor);
+		dma_resv_iter_walk_unlocked(cursor);
+		restart = true;
+	} while (read_seqcount_retry(&cursor->obj->seq, cursor->seq));
+	rcu_read_unlock();
+
+	return cursor->fence;
+}
+EXPORT_SYMBOL(dma_resv_iter_next_unlocked);
+
 /**
  * dma_resv_copy_fences - Copy all fences from src to dst.
  * @dst: the destination reservation object
diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
index 9100dd3dc21f..5d7d28cb9008 100644
--- a/include/linux/dma-resv.h
+++ b/include/linux/dma-resv.h
@@ -149,6 +149,101 @@ struct dma_resv {
 	struct dma_resv_list __rcu *fence;
 };
 
+/**
+ * struct dma_resv_iter - current position into the dma_resv fences
+ *
+ * Don't touch this directly in the driver, use the accessor function instead.
+ */
+struct dma_resv_iter {
+	/** @obj: The dma_resv object we iterate over */
+	struct dma_resv *obj;
+
+	/** @all_fences: If all fences should be returned */
+	bool all_fences;
+
+	/** @fence: the currently handled fence */
+	struct dma_fence *fence;
+
+	/** @seq: sequence number to check for modifications */
+	unsigned int seq;
+
+	/** @index: index into the shared fences */
+	unsigned int index;
+
+	/** @fences: the shared fences */
+	struct dma_resv_list *fences;
+
+	/** @is_restarted: true if this is the first returned fence */
+	bool is_restarted;
+};
+
+struct dma_fence *dma_resv_iter_first_unlocked(struct dma_resv_iter *cursor);
+struct dma_fence *dma_resv_iter_next_unlocked(struct dma_resv_iter *cursor);
+
+/**
+ * dma_resv_iter_begin - initialize a dma_resv_iter object
+ * @cursor: The dma_resv_iter object to initialize
+ * @obj: The dma_resv object which we want to iterate over
+ * @all_fences: If all fences should be returned or just the exclusive one
+ */
+static inline void dma_resv_iter_begin(struct dma_resv_iter *cursor,
+				       struct dma_resv *obj,
+				       bool all_fences)
+{
+	cursor->obj = obj;
+	cursor->all_fences = all_fences;
+	cursor->fence = NULL;
+}
+
+/**
+ * dma_resv_iter_end - cleanup a dma_resv_iter object
+ * @cursor: the dma_resv_iter object which should be cleaned up
+ *
+ * Make sure that the reference to the fence in the cursor is properly
+ * dropped.
+ */
+static inline void dma_resv_iter_end(struct dma_resv_iter *cursor)
+{
+	dma_fence_put(cursor->fence);
+}
+
+/**
+ * dma_resv_iter_is_exclusive - test if the current fence is the exclusive one
+ * @cursor: the cursor of the current position
+ *
+ * Returns true if the currently returned fence is the exclusive one.
+ */
+static inline bool dma_resv_iter_is_exclusive(struct dma_resv_iter *cursor)
+{
+	return cursor->index == -1;
+}
+
+/**
+ * dma_resv_iter_is_restarted - test if this is the first fence after a restart
+ * @cursor: the cursor with the current position
+ *
+ * Return true if this is the first fence in an iteration after a restart.
+ */
+static inline bool dma_resv_iter_is_restarted(struct dma_resv_iter *cursor)
+{
+	return cursor->is_restarted;
+}
+
+/**
+ * dma_resv_for_each_fence_unlocked - unlocked fence iterator
+ * @cursor: a struct dma_resv_iter pointer
+ * @fence: the current fence
+ *
+ * Iterate over the fences in a struct dma_resv object without holding the
+ * &dma_resv.lock and using RCU instead. The cursor needs to be initialized
+ * with dma_resv_iter_begin() and cleaned up with dma_resv_iter_end(). Inside
+ * the iterator a reference to the dma_fence is held and the RCU lock dropped.
+ * When the dma_resv is modified the iteration starts over again.
+ */
+#define dma_resv_for_each_fence_unlocked(cursor, fence)			\
+	for (fence = dma_resv_iter_first_unlocked(cursor);		\
+	     fence; fence = dma_resv_iter_next_unlocked(cursor))
+
 #define dma_resv_held(obj) lockdep_is_held(&(obj)->lock.base)
 #define dma_resv_assert_held(obj) lockdep_assert_held(&(obj)->lock.base)
 
-- 
2.25.1

