Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0522D36F000
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 21:04:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D0E76F46B;
	Thu, 29 Apr 2021 19:04:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E66CB6F472
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 19:04:11 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id
 l10-20020a17090a850ab0290155b06f6267so350926pjn.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 12:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T6azKxpl0fQC4J1twdBaLhqQojaulUTGUurZnZEhagQ=;
 b=niw4Qst+DEmX2ybfyI+9UNkptbP5lIFubB/2LRxf7DXWU9ylfeE9bY+Y5zemeizJcW
 q/q9HbPWIGcvAIA8onfWd3eef/e5jDn9b+maAvNaCmh8FX8TtcrqvUYpsmRUyLjAeHxx
 NGWJfh2FG5DRl8GeGVQgFXPAV6ZQy0x10Pmni/kcLkRgnJ6RXOpQ9Iq0ykOIzQHAl1Nl
 8t88fkvWsw7o7ECr4J+KFjT3FlHaXszYVslqnzwiMvBkNGRhEEaY7Jq0jQsxfQo4Bw8e
 Rf9aq9UyYZe3hDnpwKbZFRJnwC7+L6RqrhA/JZbyIf0DVyMJEhvfTbs3Zsp3YbsxprlQ
 2PAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T6azKxpl0fQC4J1twdBaLhqQojaulUTGUurZnZEhagQ=;
 b=V1ff05hIIpHxSY8cLWM0yRcDBMCovzHxCQFR5WPpd+eLOMbxMuMxKnfP+gmMkVFL5h
 dkgQZhQVC/kfgeNbBfnWPzzyc+Nfmq1OfKUMQ4lugUmhoA8wSbJ119oeEwI2y0zaMzhC
 5zKnOY6Wgg7It94FYQO9rL1z4Q4qImeeEFLP6s2RYWKWhBdxDJJy4xixYBPdb1niwypV
 sIw9QnW8Hyo5QUq/Oh2B7pWT0JMyJ/ERBzICqK5hym6aDh+zhPX6vc4+mpIm8h2xgDVo
 U33fybEDp4RU44xvd2J4WK4OrIFrREvL8okofWuFyOiETgncuSCaGVs6J9Fx5bkFxZUA
 TNbA==
X-Gm-Message-State: AOAM531QcsVCuWam8/58Nc6p71LWfcUPe3ZQvsFZR6nVyV0xOpzgsJon
 xsXEqCLc9eklVucbgCnNh7GM4mZG27evZQ==
X-Google-Smtp-Source: ABdhPJyYLnvo7Q6mTsRtkHn1epZ3D5XeRd7HqpkCJCC/DOmSQeSgknODrgIlIxN1cZNlgt3+/dmicQ==
X-Received: by 2002:a17:902:b703:b029:eb:59c3:a9b0 with SMTP id
 d3-20020a170902b703b02900eb59c3a9b0mr1162169pls.45.1619723050378; 
 Thu, 29 Apr 2021 12:04:10 -0700 (PDT)
Received: from omlet.lan ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id b21sm3114405pji.39.2021.04.29.12.04.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Apr 2021 12:04:09 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 29 Apr 2021 14:03:30 -0500
Message-Id: <20210429190340.1555632-16-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210429190340.1555632-1-jason@jlekstrand.net>
References: <20210429190340.1555632-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/25] drm/i915: Add gem/i915_gem_context.h to
 the docs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In order to prevent kernel doc warnings, also fill out docs for any
missing fields and fix those that forgot the "@".

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
---
 Documentation/gpu/i915.rst                    |  2 +
 .../gpu/drm/i915/gem/i915_gem_context_types.h | 43 ++++++++++++++++---
 2 files changed, 38 insertions(+), 7 deletions(-)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index 486c720f38907..0529e5183982e 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -422,6 +422,8 @@ Batchbuffer Parsing
 User Batchbuffer Execution
 --------------------------
 
+.. kernel-doc:: drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+
 .. kernel-doc:: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
    :doc: User command execution
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index df76767f0c41b..5f0673a2129f9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -30,19 +30,39 @@ struct i915_address_space;
 struct intel_timeline;
 struct intel_ring;
 
+/**
+ * struct i915_gem_engines - A set of engines
+ */
 struct i915_gem_engines {
 	union {
+		/** @link: Link in i915_gem_context::stale::engines */
 		struct list_head link;
+
+		/** @rcu: RCU to use when freeing */
 		struct rcu_head rcu;
 	};
+
+	/** @fence: Fence used for delayed destruction of engines */
 	struct i915_sw_fence fence;
+
+	/** @ctx: i915_gem_context backpointer */
 	struct i915_gem_context *ctx;
+
+	/** @num_engines: Number of engines in this set */
 	unsigned int num_engines;
+
+	/** @engines: Array of engines */
 	struct intel_context *engines[];
 };
 
+/**
+ * struct i915_gem_engines_iter - Iterator for an i915_gem_engines set
+ */
 struct i915_gem_engines_iter {
+	/** @idx: Index into i915_gem_engines::engines */
 	unsigned int idx;
+
+	/** @engines: Engine set being iterated */
 	const struct i915_gem_engines *engines;
 };
 
@@ -53,10 +73,10 @@ struct i915_gem_engines_iter {
  * logical hardware state for a particular client.
  */
 struct i915_gem_context {
-	/** i915: i915 device backpointer */
+	/** @i915: i915 device backpointer */
 	struct drm_i915_private *i915;
 
-	/** file_priv: owning file descriptor */
+	/** @file_priv: owning file descriptor */
 	struct drm_i915_file_private *file_priv;
 
 	/**
@@ -81,7 +101,9 @@ struct i915_gem_context {
 	 * CONTEXT_USER_ENGINES flag is set).
 	 */
 	struct i915_gem_engines __rcu *engines;
-	struct mutex engines_mutex; /* guards writes to engines */
+
+	/** @engines_mutex: guards writes to engines */
+	struct mutex engines_mutex;
 
 	/**
 	 * @syncobj: Shared timeline syncobj
@@ -118,7 +140,7 @@ struct i915_gem_context {
 	 */
 	struct pid *pid;
 
-	/** link: place with &drm_i915_private.context_list */
+	/** @link: place with &drm_i915_private.context_list */
 	struct list_head link;
 
 	/**
@@ -153,11 +175,13 @@ struct i915_gem_context {
 #define CONTEXT_CLOSED			0
 #define CONTEXT_USER_ENGINES		1
 
+	/** @mutex: guards everything that isn't engines or handles_vma */
 	struct mutex mutex;
 
+	/** @sched: scheduler parameters */
 	struct i915_sched_attr sched;
 
-	/** guilty_count: How many times this context has caused a GPU hang. */
+	/** @guilty_count: How many times this context has caused a GPU hang. */
 	atomic_t guilty_count;
 	/**
 	 * @active_count: How many times this context was active during a GPU
@@ -171,15 +195,17 @@ struct i915_gem_context {
 	unsigned long hang_timestamp[2];
 #define CONTEXT_FAST_HANG_JIFFIES (120 * HZ) /* 3 hangs within 120s? Banned! */
 
-	/** remap_slice: Bitmask of cache lines that need remapping */
+	/** @remap_slice: Bitmask of cache lines that need remapping */
 	u8 remap_slice;
 
 	/**
-	 * handles_vma: rbtree to look up our context specific obj/vma for
+	 * @handles_vma: rbtree to look up our context specific obj/vma for
 	 * the user handle. (user handles are per fd, but the binding is
 	 * per vm, which may be one per context or shared with the global GTT)
 	 */
 	struct radix_tree_root handles_vma;
+
+	/** @lut_mutex: Locks handles_vma */
 	struct mutex lut_mutex;
 
 	/**
@@ -191,8 +217,11 @@ struct i915_gem_context {
 	 */
 	char name[TASK_COMM_LEN + 8];
 
+	/** @stale: tracks stale engines to be destroyed */
 	struct {
+		/** @lock: guards engines */
 		spinlock_t lock;
+		/** @engines: list of stale engines */
 		struct list_head engines;
 	} stale;
 };
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
