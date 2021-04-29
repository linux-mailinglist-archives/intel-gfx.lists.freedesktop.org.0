Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1F236F013
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 21:04:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60E606F488;
	Thu, 29 Apr 2021 19:04:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECE876F487
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 19:04:27 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id i190so7187236pfc.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 12:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e9XwN1PPCebSF2ERUQmd1iCFEJkqMBsh8Lyu/BwszRI=;
 b=M7oQlEjA/aZvZFRHgUvdrHkRD0eRiHHcoryV7zVtkDf/prmsSgtJYw104eRhNFULdR
 FcgcrH61745X4Bu7paF0AR78nWetoQTQsaRKP5os5s93qk7goSkW930bIno8vZO3N2AB
 t3ROxK53W3W/7h0aBusH84pKYcrFuw8E/ztxdxJ49y0McUiqE8b9vtWFivaQm21oGteS
 Qhlol/kk3JW5dT1FrD3S7qCg1uEqL6gp4dZkW7Eifh/frloG1c3wGOHksLE+5cccFUES
 UwC4MlH0hnskhRHwwd5OJ8VtKYJknt9E4x+ODaizrdjlVzW0zL+0N6F96Aptfz7nVUh1
 79Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e9XwN1PPCebSF2ERUQmd1iCFEJkqMBsh8Lyu/BwszRI=;
 b=WAjRHsLUYFCr9+WNITrLn4XWDX01XTXUWxkDrhL9XqNeuZcnEozx33Hb3o6LL0fv02
 SaIhpIdDu8hwqvK4/Q7naYaDmYFnxGp4OgTtV2Iz/MUXZdpifuteKP0OZAReEg50gzp+
 MSEjrgd6mFh2RpfjWtQKUBDf0cOWsizaCDo4qftAcVAPQY1Yi0RZdm/iS5ALWc5+7CIu
 /MX9udenOekN6Mx6zmhTFLvAhCxvY62vAYoJD3MoA2XWcVOj9CDRI0zuQjW3hW+NFqoE
 JjU50jPB2HsAK4bVlcK4/ovZP9FwQL9CFUaIzh07+7v3/cWbCJN4YPo1sVt5rKtuNX4s
 xZaA==
X-Gm-Message-State: AOAM532Rwl2EJ5ISpz3rlKZpK226fxL+qvggUvgbbdAOLPMJfuIAmokO
 Wk/2bSKcTSKqa5ryMPy+EUo8UMcUid8rlw==
X-Google-Smtp-Source: ABdhPJyWB4rbLrTRE3iGwV4J0yqj34QQfS9SJJ+Ybn3O0qGBunKjB3x2NaEDK0sDb9wMaKKf/X6Nbw==
X-Received: by 2002:a63:4c4b:: with SMTP id m11mr1107056pgl.245.1619723067002; 
 Thu, 29 Apr 2021 12:04:27 -0700 (PDT)
Received: from omlet.lan ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id b21sm3114405pji.39.2021.04.29.12.04.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Apr 2021 12:04:26 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 29 Apr 2021 14:03:40 -0500
Message-Id: <20210429190340.1555632-26-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210429190340.1555632-1-jason@jlekstrand.net>
References: <20210429190340.1555632-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 25/25] drm/i915/gem: Roll all of context
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that we have the whole engine set and VM at context creation time,
we can just assign those fields instead of creating first and handling
the VM and engines later.  This lets us avoid creating useless VMs and
engine sets and lets us git rid of the complex VM setting code.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 159 ++++++------------
 .../gpu/drm/i915/gem/selftests/mock_context.c |  33 ++--
 2 files changed, 64 insertions(+), 128 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index dd066b5009fe7..dc44bdd1fa348 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1204,56 +1204,6 @@ static int __context_set_persistence(struct i915_gem_context *ctx, bool state)
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
-	e = default_engines(ctx);
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
@@ -1297,86 +1247,77 @@ context_apply_all(struct i915_gem_context *ctx,
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
+	struct i915_gem_engines *e;
+	int err;
+	int i;
 
-	ctx = __create_context(i915, pc);
-	if (IS_ERR(ctx))
-		return ctx;
+	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return ERR_PTR(-ENOMEM);
 
-	if (pc->vm) {
-		mutex_lock(&ctx->mutex);
-		__assign_ppgtt(ctx, pc->vm);
-		mutex_unlock(&ctx->mutex);
-	}
+	kref_init(&ctx->ref);
+	ctx->i915 = i915;
+	ctx->sched = pc->sched;
+	mutex_init(&ctx->mutex);
+	INIT_LIST_HEAD(&ctx->link);
 
-	if (pc->num_user_engines >= 0) {
-		struct i915_gem_engines *engines;
+	spin_lock_init(&ctx->stale.lock);
+	INIT_LIST_HEAD(&ctx->stale.engines);
 
-		engines = user_engines(ctx, pc->num_user_engines,
-				       pc->user_engines);
-		if (IS_ERR(engines)) {
-			context_close(ctx);
-			return ERR_CAST(engines);
-		}
+	if (pc->vm)
+		RCU_INIT_POINTER(ctx->vm, i915_vm_open(pc->vm));
 
-		mutex_lock(&ctx->engines_mutex);
+	mutex_init(&ctx->engines_mutex);
+	if (pc->num_user_engines >= 0) {
 		i915_gem_context_set_user_engines(ctx);
-		engines = rcu_replace_pointer(ctx->engines, engines, 1);
-		mutex_unlock(&ctx->engines_mutex);
-
-		free_engines(engines);
+		e = user_engines(ctx, pc->num_user_engines, pc->user_engines);
+	} else {
+		i915_gem_context_clear_user_engines(ctx);
+		e = default_engines(ctx);
+	}
+	if (IS_ERR(e)) {
+		err = PTR_ERR(e);
+		goto err_vm;
 	}
+	RCU_INIT_POINTER(ctx->engines, e);
+
+	INIT_RADIX_TREE(&ctx->handles_vma, GFP_KERNEL);
+	mutex_init(&ctx->lut_mutex);
+
+	/* NB: Mark all slices as needing a remap so that when the context first
+	 * loads it will restore whatever remap state already exists. If there
+	 * is no remap info, it will be a NOP. */
+	ctx->remap_slice = ALL_L3_SLICES(i915);
+
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
+	kfree(ctx);
+	return ERR_PTR(err);
 }
 
 static void init_contexts(struct i915_gem_contexts *gc)
diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
index 0a2a6f64965b6..3aeec20b80c27 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
@@ -30,15 +30,6 @@ mock_context(struct drm_i915_private *i915,
 
 	i915_gem_context_set_persistence(ctx);
 
-	mutex_init(&ctx->engines_mutex);
-	e = default_engines(ctx);
-	if (IS_ERR(e))
-		goto err_free;
-	RCU_INIT_POINTER(ctx->engines, e);
-
-	INIT_RADIX_TREE(&ctx->handles_vma, GFP_KERNEL);
-	mutex_init(&ctx->lut_mutex);
-
 	if (name) {
 		struct i915_ppgtt *ppgtt;
 
@@ -46,25 +37,29 @@ mock_context(struct drm_i915_private *i915,
 
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
+	e = default_engines(ctx);
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
