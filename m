Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A543A0B77
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 06:37:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 287156ECC3;
	Wed,  9 Jun 2021 04:36:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com
 [IPv6:2607:f8b0:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8F916ECBF
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 04:36:45 +0000 (UTC)
Received: by mail-pg1-x52d.google.com with SMTP id o9so15555911pgd.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Jun 2021 21:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a54CBrdUZFvu5Df2Uq5VXicIgx8GI6s8LwWaopBoFHY=;
 b=Jbqoj2rG1gDgabB847fzO8yf1X3sE/y/BCIv82zarO3lAvGq7pv2dBl39RU3qLvzOp
 Y0fmhzt76NsXtma7SJv5rcCDQ4H3aMKw5jjXJwIqOWzGUEzjE+UAVdElQ4uN1OxACpbO
 ZT9bM1To2xC8GRwpxrb4BDWtlYMYJ1tWsGnzypT3gMpmMGT37GHwt9tbGHnvhi4NTBza
 PkoTp/IOS6BOqdfz4S7wlN2adpkHSlu5T6H3I/1z/MsPMaXI2MXK3iToBPpvtK1dbLwO
 auXuTDkFCH/PBbqTahabk3GjgaFl+uetRtN4Evy8b2xCs98h2AAD9axx2bwEzwWCyXuV
 bYsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a54CBrdUZFvu5Df2Uq5VXicIgx8GI6s8LwWaopBoFHY=;
 b=VFcfG/TH2fN4PiumW+NFiV5ZbAbtPgPMX5GLeSiNm6CuI11GdG39c077aiYQ/slr2l
 DTZVFIoJiIdN8Vh1nSDGcrr3F5nlSMJ4Qv4sk8PdWD6PPMPTsg2NoAKUgpKeGE5c7UHM
 pLkjCpg4bSZpC92cvv+t12IE+OJl0v014IlQzXzJUIPP8lmZd869TswW9WuAogTW0vQM
 Tju2rUd41A03tV5y9FKPjDpMDmmETB4WUKk7ugE9pu2dp1+wcOQCwiP4YmC10FrzZOck
 DpH7shbCqbGzL5TpaInRJaHEgiyFyCdNVZHzN6lXJiOXzrstMnlgVs6aK1WGZl4JA7TH
 vKWA==
X-Gm-Message-State: AOAM531mK+i82lnjfgp0KoO8ezMXo7Renu8xjfqmNctBZE6OZRfb/Icz
 kntOjlVIYkYYdNV+QnfjjpAYkg==
X-Google-Smtp-Source: ABdhPJy9Pt1hxDpQ+ssVqdOBqCwZ9Of4kD9hL06FRnXtTiW6Rg496OYzr0t2OK6ztUlj7tMDSF18eg==
X-Received: by 2002:a63:7d2:: with SMTP id 201mr1892748pgh.14.1623213405373;
 Tue, 08 Jun 2021 21:36:45 -0700 (PDT)
Received: from omlet.com (jfdmzpr06-ext.jf.intel.com. [134.134.137.75])
 by smtp.gmail.com with ESMTPSA id t5sm11991612pfe.116.2021.06.08.21.36.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Jun 2021 21:36:45 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue,  8 Jun 2021 23:35:57 -0500
Message-Id: <20210609043613.102962-16-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609043613.102962-1-jason@jlekstrand.net>
References: <20210609043613.102962-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/31] drm/i915: Add gem/i915_gem_context.h to
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In order to prevent kernel doc warnings, also fill out docs for any
missing fields and fix those that forgot the "@".

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 Documentation/gpu/i915.rst                    |  2 +
 .../gpu/drm/i915/gem/i915_gem_context_types.h | 43 ++++++++++++++++---
 2 files changed, 38 insertions(+), 7 deletions(-)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index 42ce0196930a1..b452f84c9ef2b 100644
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
