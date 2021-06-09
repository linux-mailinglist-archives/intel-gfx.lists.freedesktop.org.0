Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F13503A0B79
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 06:37:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB9AC6ECB5;
	Wed,  9 Jun 2021 04:36:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com
 [IPv6:2607:f8b0:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FD4C6ECBD
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 04:36:47 +0000 (UTC)
Received: by mail-pg1-x52c.google.com with SMTP id e20so6445520pgg.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Jun 2021 21:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YX/KyK7MnA5IbspTQQ/keQwrPaypjKiLnDbGwEqOghg=;
 b=ydxuZIiReyHIjGObaZD6DTg72m9hLXbYL3EgREXBLgZ2kfFmMyTM3roW73FUIsOXBk
 iusdtUEVyEHgsuDtbDp9HVxM25rHCRz7G1Hm7hn2liQsxjAKIxzSBBNjBp3H/lhRA7Vr
 enUUnFsWiEDhH4X4t/YvDww7GxllWEKnUNz9zNKC7OPGNeAsehfeipEEtbdW2JL08U++
 XVEd04jjAcn9pcFsSzamJWYp/D3p/y0bJ4SLtkVU3SNevRCIxojo5oa761CyGhmS+/kD
 blqYBD79LpXhh9yYChvVkn4TFCGNMGFCoeMjUYi1X3JkQARNmVtCFwJCZV3vp2s8ImNb
 z81A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YX/KyK7MnA5IbspTQQ/keQwrPaypjKiLnDbGwEqOghg=;
 b=QqZfNjy0idwZ5op5I8qyLXVpPPlv0s5mNlwWj+HBbKTU1GRlo4TfSEyk0mgy/mcRsW
 0KWIj3tbi3Qz8QET6HGB9u19JBhliofi6GjShdhqC8HUAdCRW3Cv9zFK7sJ2dDTE3smJ
 H8h8oQ8eRlLT8C3h239s7rsriIiG8WtyFMPRFZwCMvF13sc62afaGjZcsPSV0A33QZFi
 IqPiQzsIPkc7rX+ea/fsej2MWOYKgMX7TcVeEuw4/tOmMohz/sodF6RLxyJe97eCC2uf
 i8QHCAvRtmb33DD1luMPGG8Yx63pjM5f17KLAjvzLWAVlD8FVNmyN+0EIflXST+5+X64
 rhxQ==
X-Gm-Message-State: AOAM53149lHuR6sGluR0mPSQ3GCMG58MNz7nJC5+QWoZlutyXKOadixX
 xZ8viXULxALIaSlDfof64uNC0w==
X-Google-Smtp-Source: ABdhPJwuxI68lIoXBnImLuCAuetOf5CAFtAUgXx/1Mru0RAKv9qVponGGur/rp9tss5NpqfPXhQaMQ==
X-Received: by 2002:a65:5248:: with SMTP id q8mr1821681pgp.176.1623213407030; 
 Tue, 08 Jun 2021 21:36:47 -0700 (PDT)
Received: from omlet.com (jfdmzpr06-ext.jf.intel.com. [134.134.137.75])
 by smtp.gmail.com with ESMTPSA id t5sm11991612pfe.116.2021.06.08.21.36.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Jun 2021 21:36:46 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue,  8 Jun 2021 23:35:58 -0500
Message-Id: <20210609043613.102962-17-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609043613.102962-1-jason@jlekstrand.net>
References: <20210609043613.102962-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/31] drm/i915/gem: Add an intermediate
 proto_context struct (v4)
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

The current context uAPI allows for two methods of setting context
parameters: SET_CONTEXT_PARAM and CONTEXT_CREATE_EXT_SETPARAM.  The
former is allowed to be called at any time while the later happens as
part of GEM_CONTEXT_CREATE.  Currently, everything settable via one is
settable via the other.  While some params are fairly simple and setting
them on a live context is harmless such the context priority, others are
far trickier such as the VM or the set of engines.  In order to swap out
the VM, for instance, we have to delay until all current in-flight work
is complete, swap in the new VM, and then continue.  This leads to a
plethora of potential race conditions we'd really rather avoid.

Unfortunately, both methods of setting the VM and the engine set are in
active use today so we can't simply disallow setting the VM or engine
set vial SET_CONTEXT_PARAM.  In order to work around this wart, this
commit adds a proto-context struct which contains all the context create
parameters.

v2 (Daniel Vetter):
 - Better commit message
 - Use __set/clear_bit instead of set/clear_bit because there's no race
   and we don't need the atomics

v3 (Daniel Vetter):
 - Use manual bitops and BIT() instead of __set_bit

v4 (Daniel Vetter):
 - Add a changelog to the commit message
 - Better hyperlinking in docs
 - Create the default PPGTT in i915_gem_create_context

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 124 +++++++++++++++---
 .../gpu/drm/i915/gem/i915_gem_context_types.h |  22 ++++
 .../gpu/drm/i915/gem/selftests/mock_context.c |  16 ++-
 3 files changed, 145 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index f9a6eac78c0ae..b5d8c1ff5d7b3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -191,6 +191,83 @@ static int validate_priority(struct drm_i915_private *i915,
 	return 0;
 }
 
+static void proto_context_close(struct i915_gem_proto_context *pc)
+{
+	if (pc->vm)
+		i915_vm_put(pc->vm);
+	kfree(pc);
+}
+
+static int proto_context_set_persistence(struct drm_i915_private *i915,
+					 struct i915_gem_proto_context *pc,
+					 bool persist)
+{
+	if (persist) {
+		/*
+		 * Only contexts that are short-lived [that will expire or be
+		 * reset] are allowed to survive past termination. We require
+		 * hangcheck to ensure that the persistent requests are healthy.
+		 */
+		if (!i915->params.enable_hangcheck)
+			return -EINVAL;
+
+		pc->user_flags |= BIT(UCONTEXT_PERSISTENCE);
+	} else {
+		/* To cancel a context we use "preempt-to-idle" */
+		if (!(i915->caps.scheduler & I915_SCHEDULER_CAP_PREEMPTION))
+			return -ENODEV;
+
+		/*
+		 * If the cancel fails, we then need to reset, cleanly!
+		 *
+		 * If the per-engine reset fails, all hope is lost! We resort
+		 * to a full GPU reset in that unlikely case, but realistically
+		 * if the engine could not reset, the full reset does not fare
+		 * much better. The damage has been done.
+		 *
+		 * However, if we cannot reset an engine by itself, we cannot
+		 * cleanup a hanging persistent context without causing
+		 * colateral damage, and we should not pretend we can by
+		 * exposing the interface.
+		 */
+		if (!intel_has_reset_engine(&i915->gt))
+			return -ENODEV;
+
+		pc->user_flags &= ~BIT(UCONTEXT_PERSISTENCE);
+	}
+
+	return 0;
+}
+
+static struct i915_gem_proto_context *
+proto_context_create(struct drm_i915_private *i915, unsigned int flags)
+{
+	struct i915_gem_proto_context *pc, *err;
+
+	pc = kzalloc(sizeof(*pc), GFP_KERNEL);
+	if (!pc)
+		return ERR_PTR(-ENOMEM);
+
+	pc->user_flags = BIT(UCONTEXT_BANNABLE) |
+			 BIT(UCONTEXT_RECOVERABLE);
+	proto_context_set_persistence(i915, pc, true);
+	pc->sched.priority = I915_PRIORITY_NORMAL;
+
+	if (flags & I915_CONTEXT_CREATE_FLAGS_SINGLE_TIMELINE) {
+		if (!HAS_EXECLISTS(i915)) {
+			err = ERR_PTR(-EINVAL);
+			goto proto_close;
+		}
+		pc->single_timeline = true;
+	}
+
+	return pc;
+
+proto_close:
+	proto_context_close(pc);
+	return err;
+}
+
 static struct i915_address_space *
 context_get_vm_rcu(struct i915_gem_context *ctx)
 {
@@ -660,7 +737,8 @@ static int __context_set_persistence(struct i915_gem_context *ctx, bool state)
 }
 
 static struct i915_gem_context *
-__create_context(struct drm_i915_private *i915)
+__create_context(struct drm_i915_private *i915,
+		 const struct i915_gem_proto_context *pc)
 {
 	struct i915_gem_context *ctx;
 	struct i915_gem_engines *e;
@@ -673,7 +751,7 @@ __create_context(struct drm_i915_private *i915)
 
 	kref_init(&ctx->ref);
 	ctx->i915 = i915;
-	ctx->sched.priority = I915_PRIORITY_NORMAL;
+	ctx->sched = pc->sched;
 	mutex_init(&ctx->mutex);
 	INIT_LIST_HEAD(&ctx->link);
 
@@ -696,9 +774,7 @@ __create_context(struct drm_i915_private *i915)
 	 * is no remap info, it will be a NOP. */
 	ctx->remap_slice = ALL_L3_SLICES(i915);
 
-	i915_gem_context_set_bannable(ctx);
-	i915_gem_context_set_recoverable(ctx);
-	__context_set_persistence(ctx, true /* cgroup hook? */);
+	ctx->user_flags = pc->user_flags;
 
 	for (i = 0; i < ARRAY_SIZE(ctx->hang_timestamp); i++)
 		ctx->hang_timestamp[i] = jiffies - CONTEXT_FAST_HANG_JIFFIES;
@@ -786,20 +862,22 @@ static void __assign_ppgtt(struct i915_gem_context *ctx,
 }
 
 static struct i915_gem_context *
-i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
+i915_gem_create_context(struct drm_i915_private *i915,
+			const struct i915_gem_proto_context *pc)
 {
 	struct i915_gem_context *ctx;
 	int ret;
 
-	if (flags & I915_CONTEXT_CREATE_FLAGS_SINGLE_TIMELINE &&
-	    !HAS_EXECLISTS(i915))
-		return ERR_PTR(-EINVAL);
-
-	ctx = __create_context(i915);
+	ctx = __create_context(i915, pc);
 	if (IS_ERR(ctx))
 		return ctx;
 
-	if (HAS_FULL_PPGTT(i915)) {
+	if (pc->vm) {
+		/* __assign_ppgtt() requires this mutex to be held */
+		mutex_lock(&ctx->mutex);
+		__assign_ppgtt(ctx, pc->vm);
+		mutex_unlock(&ctx->mutex);
+	} else if (HAS_FULL_PPGTT(i915)) {
 		struct i915_ppgtt *ppgtt;
 
 		ppgtt = i915_ppgtt_create(&i915->gt);
@@ -810,14 +888,16 @@ i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
 			return ERR_CAST(ppgtt);
 		}
 
+		/* __assign_ppgtt() requires this mutex to be held */
 		mutex_lock(&ctx->mutex);
 		__assign_ppgtt(ctx, &ppgtt->vm);
 		mutex_unlock(&ctx->mutex);
 
+		/* __assign_ppgtt() takes another reference for us */
 		i915_vm_put(&ppgtt->vm);
 	}
 
-	if (flags & I915_CONTEXT_CREATE_FLAGS_SINGLE_TIMELINE) {
+	if (pc->single_timeline) {
 		ret = drm_syncobj_create(&ctx->syncobj,
 					 DRM_SYNCOBJ_CREATE_SIGNALED,
 					 NULL);
@@ -883,6 +963,7 @@ int i915_gem_context_open(struct drm_i915_private *i915,
 			  struct drm_file *file)
 {
 	struct drm_i915_file_private *file_priv = file->driver_priv;
+	struct i915_gem_proto_context *pc;
 	struct i915_gem_context *ctx;
 	int err;
 	u32 id;
@@ -892,7 +973,14 @@ int i915_gem_context_open(struct drm_i915_private *i915,
 	/* 0 reserved for invalid/unassigned ppgtt */
 	xa_init_flags(&file_priv->vm_xa, XA_FLAGS_ALLOC1);
 
-	ctx = i915_gem_create_context(i915, 0);
+	pc = proto_context_create(i915, 0);
+	if (IS_ERR(pc)) {
+		err = PTR_ERR(pc);
+		goto err;
+	}
+
+	ctx = i915_gem_create_context(i915, pc);
+	proto_context_close(pc);
 	if (IS_ERR(ctx)) {
 		err = PTR_ERR(ctx);
 		goto err;
@@ -1884,6 +1972,7 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 {
 	struct drm_i915_private *i915 = to_i915(dev);
 	struct drm_i915_gem_context_create_ext *args = data;
+	struct i915_gem_proto_context *pc;
 	struct create_ext ext_data;
 	int ret;
 	u32 id;
@@ -1906,7 +1995,12 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 		return -EIO;
 	}
 
-	ext_data.ctx = i915_gem_create_context(i915, args->flags);
+	pc = proto_context_create(i915, args->flags);
+	if (IS_ERR(pc))
+		return PTR_ERR(pc);
+
+	ext_data.ctx = i915_gem_create_context(i915, pc);
+	proto_context_close(pc);
 	if (IS_ERR(ext_data.ctx))
 		return PTR_ERR(ext_data.ctx);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 5f0673a2129f9..e0bdf3e298a6a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -66,6 +66,28 @@ struct i915_gem_engines_iter {
 	const struct i915_gem_engines *engines;
 };
 
+/**
+ * struct i915_gem_proto_context - prototype context
+ *
+ * The struct i915_gem_proto_context represents the creation parameters for
+ * a struct i915_gem_context.  This is used to gather parameters provided
+ * either through creation flags or via SET_CONTEXT_PARAM so that, when we
+ * create the final i915_gem_context, those parameters can be immutable.
+ */
+struct i915_gem_proto_context {
+	/** @vm: See &i915_gem_context.vm */
+	struct i915_address_space *vm;
+
+	/** @user_flags: See &i915_gem_context.user_flags */
+	unsigned long user_flags;
+
+	/** @sched: See &i915_gem_context.sched */
+	struct i915_sched_attr sched;
+
+	/** @single_timeline: See See &i915_gem_context.syncobj */
+	bool single_timeline;
+};
+
 /**
  * struct i915_gem_context - client state
  *
diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
index 51b5a3421b400..e0f512ef7f3c6 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
@@ -80,11 +80,17 @@ void mock_init_contexts(struct drm_i915_private *i915)
 struct i915_gem_context *
 live_context(struct drm_i915_private *i915, struct file *file)
 {
+	struct i915_gem_proto_context *pc;
 	struct i915_gem_context *ctx;
 	int err;
 	u32 id;
 
-	ctx = i915_gem_create_context(i915, 0);
+	pc = proto_context_create(i915, 0);
+	if (IS_ERR(pc))
+		return ERR_CAST(pc);
+
+	ctx = i915_gem_create_context(i915, pc);
+	proto_context_close(pc);
 	if (IS_ERR(ctx))
 		return ctx;
 
@@ -142,8 +148,14 @@ struct i915_gem_context *
 kernel_context(struct drm_i915_private *i915)
 {
 	struct i915_gem_context *ctx;
+	struct i915_gem_proto_context *pc;
+
+	pc = proto_context_create(i915, 0);
+	if (IS_ERR(pc))
+		return ERR_CAST(pc);
 
-	ctx = i915_gem_create_context(i915, 0);
+	ctx = i915_gem_create_context(i915, pc);
+	proto_context_close(pc);
 	if (IS_ERR(ctx))
 		return ctx;
 
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
