Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BEB3A0B96
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 06:37:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71EED6ECE3;
	Wed,  9 Jun 2021 04:37:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com
 [IPv6:2607:f8b0:4864:20::1031])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 024096ECCB
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 04:37:10 +0000 (UTC)
Received: by mail-pj1-x1031.google.com with SMTP id
 z3-20020a17090a3983b029016bc232e40bso628789pjb.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Jun 2021 21:37:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kb7mwQREXkD04cSrZHyrG7/CTsY7hyWUmajG+69iAbM=;
 b=vlCWIHMnFd8diTW/y9DNjn+EmWCH5ovwjnahxKG28Pa/OEhzf/bcrvX5HtYSa+HSKG
 syoUtkPxkPwDsSfFFM/Xvp9pCUY2rf2fPDOUSZkmClIhLO8H4136clwWUVayt5xp7LD2
 Hu0dB7m1lDyyK/+K2yTxGHkMihFWZhOSrE2c9sK7LeTMPL4JpiGHRP+zXasGXHciPsIY
 yvjtr4hI4BjkCVs7oQJA8/8IFxiLaX3Vw/Yh5Q7ozfCbctl1zPdAHyIbNcxLE6cXbLyS
 4LZssjcgxf6wGntFM7AqxnNWqbSCqXVokRrT7grtj53JFDbmPRvJVvBXoVdw92L5Z3eS
 rbHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kb7mwQREXkD04cSrZHyrG7/CTsY7hyWUmajG+69iAbM=;
 b=MYnuqsnfpTDH+0tyUoHSwReQJSRODUCV8CSUam3ym3EbAvZM7fXDT7GrIYP/u6Y0jZ
 LalyehDVs83ELARnb6Hvimi8btQo6KZ1LIhFvpUdzT1zrOIwcgeKaSkztr8txZTLz7wt
 PVaZIChkUDmuU5ioIaDHuPEr9/XTjEHQ7AwsN7lrQJr5bfVO6nX0f6sVpTm564peCXTC
 8LUE8dP99r1hR2Mkh0G23V0fVF4OQpGJbmOu6Dj53dkuaG30UXN8eu5o3aQBhjIoDeWd
 QLnBktj9efzBaMAzS7nNz4cYwmlMSfMUkrVhV458IhGpqYtosGTXSb5Uz3doQgoFR2Y4
 ITYg==
X-Gm-Message-State: AOAM5328OtyTxLW3tuUw4L8Z4czbIF4tot4x48gyESHoz9CpNX6Csqkk
 hDdkdHyau7ePqx8JW49FVTCO2A==
X-Google-Smtp-Source: ABdhPJy7/B/K14jKi4JDydRW3B+n0SkPYasRqoo6wX2UmbkeS3YPxbLlK+Rx9iAeL5FRHhmIPsPUPA==
X-Received: by 2002:a17:902:bd0b:b029:ef:8970:281c with SMTP id
 p11-20020a170902bd0bb02900ef8970281cmr3191619pls.35.1623213430257; 
 Tue, 08 Jun 2021 21:37:10 -0700 (PDT)
Received: from omlet.com (jfdmzpr06-ext.jf.intel.com. [134.134.137.75])
 by smtp.gmail.com with ESMTPSA id t5sm11991612pfe.116.2021.06.08.21.37.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Jun 2021 21:37:09 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue,  8 Jun 2021 23:36:11 -0500
Message-Id: <20210609043613.102962-30-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609043613.102962-1-jason@jlekstrand.net>
References: <20210609043613.102962-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 29/31] drm/i915/gem: Roll all of context
 creation together
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

Now that we have the whole engine set and VM at context creation time,
we can just assign those fields instead of creating first and handling
the VM and engines later.  This lets us avoid creating useless VMs and
engine sets and lets us get rid of the complex VM setting code.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 176 ++++++------------
 .../gpu/drm/i915/gem/selftests/mock_context.c |  33 ++--
 2 files changed, 73 insertions(+), 136 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 574451e744583..d3c9c42dcae4d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1279,56 +1279,6 @@ static int __context_set_persistence(struct i915_gem_context *ctx, bool state)
 	return 0;
 }
 
-static struct i915_gem_context *
-__create_context(struct drm_i915_private *i915,
-		 const struct i915_gem_proto_context *pc)
-{
-	struct i915_gem_context *ctx;
-	struct i915_gem_engines *e;
-	int err;
-	int i;
-
-	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
-	if (!ctx)
-		return ERR_PTR(-ENOMEM);
-
-	kref_init(&ctx->ref);
-	ctx->i915 = i915;
-	ctx->sched = pc->sched;
-	mutex_init(&ctx->mutex);
-	INIT_LIST_HEAD(&ctx->link);
-
-	spin_lock_init(&ctx->stale.lock);
-	INIT_LIST_HEAD(&ctx->stale.engines);
-
-	mutex_init(&ctx->engines_mutex);
-	e = default_engines(ctx, pc->legacy_rcs_sseu);
-	if (IS_ERR(e)) {
-		err = PTR_ERR(e);
-		goto err_free;
-	}
-	RCU_INIT_POINTER(ctx->engines, e);
-
-	INIT_RADIX_TREE(&ctx->handles_vma, GFP_KERNEL);
-	mutex_init(&ctx->lut_mutex);
-
-	/* NB: Mark all slices as needing a remap so that when the context first
-	 * loads it will restore whatever remap state already exists. If there
-	 * is no remap info, it will be a NOP. */
-	ctx->remap_slice = ALL_L3_SLICES(i915);
-
-	ctx->user_flags = pc->user_flags;
-
-	for (i = 0; i < ARRAY_SIZE(ctx->hang_timestamp); i++)
-		ctx->hang_timestamp[i] = jiffies - CONTEXT_FAST_HANG_JIFFIES;
-
-	return ctx;
-
-err_free:
-	kfree(ctx);
-	return ERR_PTR(err);
-}
-
 static inline struct i915_gem_engines *
 __context_engines_await(const struct i915_gem_context *ctx,
 			bool *user_engines)
@@ -1372,54 +1322,31 @@ context_apply_all(struct i915_gem_context *ctx,
 	i915_sw_fence_complete(&e->fence);
 }
 
-static void __apply_ppgtt(struct intel_context *ce, void *vm)
-{
-	i915_vm_put(ce->vm);
-	ce->vm = i915_vm_get(vm);
-}
-
-static struct i915_address_space *
-__set_ppgtt(struct i915_gem_context *ctx, struct i915_address_space *vm)
-{
-	struct i915_address_space *old;
-
-	old = rcu_replace_pointer(ctx->vm,
-				  i915_vm_open(vm),
-				  lockdep_is_held(&ctx->mutex));
-	GEM_BUG_ON(old && i915_vm_is_4lvl(vm) != i915_vm_is_4lvl(old));
-
-	context_apply_all(ctx, __apply_ppgtt, vm);
-
-	return old;
-}
-
-static void __assign_ppgtt(struct i915_gem_context *ctx,
-			   struct i915_address_space *vm)
-{
-	if (vm == rcu_access_pointer(ctx->vm))
-		return;
-
-	vm = __set_ppgtt(ctx, vm);
-	if (vm)
-		i915_vm_close(vm);
-}
-
 static struct i915_gem_context *
 i915_gem_create_context(struct drm_i915_private *i915,
 			const struct i915_gem_proto_context *pc)
 {
 	struct i915_gem_context *ctx;
-	int ret;
+	struct i915_address_space *vm = NULL;
+	struct i915_gem_engines *e;
+	int err;
+	int i;
 
-	ctx = __create_context(i915, pc);
-	if (IS_ERR(ctx))
-		return ctx;
+	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return ERR_PTR(-ENOMEM);
+
+	kref_init(&ctx->ref);
+	ctx->i915 = i915;
+	ctx->sched = pc->sched;
+	mutex_init(&ctx->mutex);
+	INIT_LIST_HEAD(&ctx->link);
+
+	spin_lock_init(&ctx->stale.lock);
+	INIT_LIST_HEAD(&ctx->stale.engines);
 
 	if (pc->vm) {
-		/* __assign_ppgtt() requires this mutex to be held */
-		mutex_lock(&ctx->mutex);
-		__assign_ppgtt(ctx, pc->vm);
-		mutex_unlock(&ctx->mutex);
+		vm = i915_vm_get(pc->vm);
 	} else if (HAS_FULL_PPGTT(i915)) {
 		struct i915_ppgtt *ppgtt;
 
@@ -1427,50 +1354,65 @@ i915_gem_create_context(struct drm_i915_private *i915,
 		if (IS_ERR(ppgtt)) {
 			drm_dbg(&i915->drm, "PPGTT setup failed (%ld)\n",
 				PTR_ERR(ppgtt));
-			context_close(ctx);
-			return ERR_CAST(ppgtt);
+			err = PTR_ERR(ppgtt);
+			goto err_ctx;
 		}
+		vm = &ppgtt->vm;
+	}
+	if (vm) {
+		RCU_INIT_POINTER(ctx->vm, i915_vm_open(vm));
 
-		/* __assign_ppgtt() requires this mutex to be held */
-		mutex_lock(&ctx->mutex);
-		__assign_ppgtt(ctx, &ppgtt->vm);
-		mutex_unlock(&ctx->mutex);
-
-		/* __assign_ppgtt() takes another reference for us */
-		i915_vm_put(&ppgtt->vm);
+		/* i915_vm_open() takes a reference */
+		i915_vm_put(vm);
 	}
 
+	mutex_init(&ctx->engines_mutex);
 	if (pc->num_user_engines >= 0) {
-		struct i915_gem_engines *engines;
+		i915_gem_context_set_user_engines(ctx);
+		e = user_engines(ctx, pc->num_user_engines, pc->user_engines);
+	} else {
+		i915_gem_context_clear_user_engines(ctx);
+		e = default_engines(ctx, pc->legacy_rcs_sseu);
+	}
+	if (IS_ERR(e)) {
+		err = PTR_ERR(e);
+		goto err_vm;
+	}
+	RCU_INIT_POINTER(ctx->engines, e);
 
-		engines = user_engines(ctx, pc->num_user_engines,
-				       pc->user_engines);
-		if (IS_ERR(engines)) {
-			context_close(ctx);
-			return ERR_CAST(engines);
-		}
+	INIT_RADIX_TREE(&ctx->handles_vma, GFP_KERNEL);
+	mutex_init(&ctx->lut_mutex);
 
-		mutex_lock(&ctx->engines_mutex);
-		i915_gem_context_set_user_engines(ctx);
-		engines = rcu_replace_pointer(ctx->engines, engines, 1);
-		mutex_unlock(&ctx->engines_mutex);
+	/* NB: Mark all slices as needing a remap so that when the context first
+	 * loads it will restore whatever remap state already exists. If there
+	 * is no remap info, it will be a NOP. */
+	ctx->remap_slice = ALL_L3_SLICES(i915);
 
-		free_engines(engines);
-	}
+	ctx->user_flags = pc->user_flags;
+
+	for (i = 0; i < ARRAY_SIZE(ctx->hang_timestamp); i++)
+		ctx->hang_timestamp[i] = jiffies - CONTEXT_FAST_HANG_JIFFIES;
 
 	if (pc->single_timeline) {
-		ret = drm_syncobj_create(&ctx->syncobj,
+		err = drm_syncobj_create(&ctx->syncobj,
 					 DRM_SYNCOBJ_CREATE_SIGNALED,
 					 NULL);
-		if (ret) {
-			context_close(ctx);
-			return ERR_PTR(ret);
-		}
+		if (err)
+			goto err_engines;
 	}
 
 	trace_i915_context_create(ctx);
 
 	return ctx;
+
+err_engines:
+	free_engines(e);
+err_vm:
+	if (ctx->vm)
+		i915_vm_close(ctx->vm);
+err_ctx:
+	kfree(ctx);
+	return ERR_PTR(err);
 }
 
 static void init_contexts(struct i915_gem_contexts *gc)
diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
index 500ef27ba4771..fee070df1c97b 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
@@ -31,15 +31,6 @@ mock_context(struct drm_i915_private *i915,
 
 	i915_gem_context_set_persistence(ctx);
 
-	mutex_init(&ctx->engines_mutex);
-	e = default_engines(ctx, null_sseu);
-	if (IS_ERR(e))
-		goto err_free;
-	RCU_INIT_POINTER(ctx->engines, e);
-
-	INIT_RADIX_TREE(&ctx->handles_vma, GFP_KERNEL);
-	mutex_init(&ctx->lut_mutex);
-
 	if (name) {
 		struct i915_ppgtt *ppgtt;
 
@@ -47,25 +38,29 @@ mock_context(struct drm_i915_private *i915,
 
 		ppgtt = mock_ppgtt(i915, name);
 		if (!ppgtt)
-			goto err_put;
-
-		mutex_lock(&ctx->mutex);
-		__set_ppgtt(ctx, &ppgtt->vm);
-		mutex_unlock(&ctx->mutex);
+			goto err_free;
 
+		ctx->vm = i915_vm_open(&ppgtt->vm);
 		i915_vm_put(&ppgtt->vm);
 	}
 
+	mutex_init(&ctx->engines_mutex);
+	e = default_engines(ctx, null_sseu);
+	if (IS_ERR(e))
+		goto err_vm;
+	RCU_INIT_POINTER(ctx->engines, e);
+
+	INIT_RADIX_TREE(&ctx->handles_vma, GFP_KERNEL);
+	mutex_init(&ctx->lut_mutex);
+
 	return ctx;
 
+err_vm:
+	if (ctx->vm)
+		i915_vm_close(ctx->vm);
 err_free:
 	kfree(ctx);
 	return NULL;
-
-err_put:
-	i915_gem_context_set_closed(ctx);
-	i915_gem_context_put(ctx);
-	return NULL;
 }
 
 void mock_context_close(struct i915_gem_context *ctx)
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
