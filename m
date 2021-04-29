Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4F036F00F
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 21:04:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51D846F482;
	Thu, 29 Apr 2021 19:04:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D9566F47E
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 19:04:23 +0000 (UTC)
Received: by mail-pf1-x433.google.com with SMTP id b15so2515517pfl.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 12:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dahMSHUSO2a62CsDeSxALN/aP18GtCJfH2d1f/rQdrI=;
 b=2OC263OZZKdVmCySHGPFG3ANaRn9ZWFcxQsKm+2Ym3rOz4VyXl/oCkPajlk4WMgNTE
 eg55xs5Si0miFJyRihXPQhH4GUI20Ybxae+LrQqTq9rQ8TWsJDPowhe6EIp93DxGP6v1
 agl+eEhY+RxaqLg5/2y8/R3a3Gnyis35ZYHaQo7ACU+Phy2zd5HIOOKDecW/lq6VAEmG
 RdKRuzX/yLV600HDMB9p4O2SUPtQ4uQ3ZMCHqvoAbchZ0fsQEIfVA7M4tzXkXYjKQE3U
 kgZTVJ2NWKiGbv4AZPALMwn+nfLt3swRtU/lU6xdfo0QP6srEnCCPJ3Zd5BJ5zXG4spa
 hxTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dahMSHUSO2a62CsDeSxALN/aP18GtCJfH2d1f/rQdrI=;
 b=mu/81XfDfrSwSDCtjDNBQkKQjpqCPnZvXd33K6xwzRR0pV5bLiveqGYviL2Vph1db0
 hnpiHXwaoRB6tnJsq6lvuXeRVvlDP9WoWHaXH+y7P9Bq0jW0ci4c3i/H+it6SkWmJ1Up
 Z5Npsy02/O7BQLcQcjWXGoRfv9cjpTbU03+M5TcNmoo8Uf35qEWfqWSHu2Dxi1KYO3MX
 hes7qF1q4pPcU6PMz7F6pkZCSnSHVYJXpHwncPV0PDMEz4XzSLMWqskpJ8Yd0wSGgrwx
 YbmdtivhHzmmd+HnJDt++QW+vlKzxv6xFzsR6tIdsnNHPmKuEFPBh54+Rm1Ypl8ecy2z
 U5Wg==
X-Gm-Message-State: AOAM531zE4oxIA7S9gOLOqDbp+Fw5ERiQhelbMwQcI0WdyeBPHA3sasy
 ipzf8W/hS/KkS4R6YNXbzT3DlXgdReF8Xg==
X-Google-Smtp-Source: ABdhPJwpmd/+LSZaqKLB3x3QBFjLfulozjiGS9YBtnfTJXOhqZe4yNCngRZ0Bu0LDzaa2nxkdIkYFQ==
X-Received: by 2002:a63:5809:: with SMTP id m9mr1158366pgb.62.1619723062096;
 Thu, 29 Apr 2021 12:04:22 -0700 (PDT)
Received: from omlet.lan ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id b21sm3114405pji.39.2021.04.29.12.04.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Apr 2021 12:04:21 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 29 Apr 2021 14:03:37 -0500
Message-Id: <20210429190340.1555632-23-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210429190340.1555632-1-jason@jlekstrand.net>
References: <20210429190340.1555632-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 22/25] drm/i915/gem: Don't allow changing the
 engine set on running contexts
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

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 302 --------------------
 1 file changed, 302 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index a80d36c2a2663..dd066b5009fe7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1725,304 +1725,6 @@ static int set_sseu(struct i915_gem_context *ctx,
 	return ret;
 }
 
-struct set_engines {
-	struct i915_gem_context *ctx;
-	struct i915_gem_engines *engines;
-};
-
-static int
-set_engines__load_balance(struct i915_user_extension __user *base, void *data)
-{
-	struct i915_context_engines_load_balance __user *ext =
-		container_of_user(base, typeof(*ext), base);
-	const struct set_engines *set = data;
-	struct drm_i915_private *i915 = set->ctx->i915;
-	struct intel_engine_cs *stack[16];
-	struct intel_engine_cs **siblings;
-	struct intel_context *ce;
-	u16 num_siblings, idx;
-	unsigned int n;
-	int err;
-
-	if (!HAS_EXECLISTS(i915))
-		return -ENODEV;
-
-	if (intel_uc_uses_guc_submission(&i915->gt.uc))
-		return -ENODEV; /* not implement yet */
-
-	if (get_user(idx, &ext->engine_index))
-		return -EFAULT;
-
-	if (idx >= set->engines->num_engines) {
-		drm_dbg(&i915->drm, "Invalid placement value, %d >= %d\n",
-			idx, set->engines->num_engines);
-		return -EINVAL;
-	}
-
-	idx = array_index_nospec(idx, set->engines->num_engines);
-	if (set->engines->engines[idx]) {
-		drm_dbg(&i915->drm,
-			"Invalid placement[%d], already occupied\n", idx);
-		return -EEXIST;
-	}
-
-	if (get_user(num_siblings, &ext->num_siblings))
-		return -EFAULT;
-
-	err = check_user_mbz(&ext->flags);
-	if (err)
-		return err;
-
-	err = check_user_mbz(&ext->mbz64);
-	if (err)
-		return err;
-
-	siblings = stack;
-	if (num_siblings > ARRAY_SIZE(stack)) {
-		siblings = kmalloc_array(num_siblings,
-					 sizeof(*siblings),
-					 GFP_KERNEL);
-		if (!siblings)
-			return -ENOMEM;
-	}
-
-	for (n = 0; n < num_siblings; n++) {
-		struct i915_engine_class_instance ci;
-
-		if (copy_from_user(&ci, &ext->engines[n], sizeof(ci))) {
-			err = -EFAULT;
-			goto out_siblings;
-		}
-
-		siblings[n] = intel_engine_lookup_user(i915,
-						       ci.engine_class,
-						       ci.engine_instance);
-		if (!siblings[n]) {
-			drm_dbg(&i915->drm,
-				"Invalid sibling[%d]: { class:%d, inst:%d }\n",
-				n, ci.engine_class, ci.engine_instance);
-			err = -EINVAL;
-			goto out_siblings;
-		}
-	}
-
-	ce = intel_execlists_create_virtual(siblings, n);
-	if (IS_ERR(ce)) {
-		err = PTR_ERR(ce);
-		goto out_siblings;
-	}
-
-	intel_context_set_gem(ce, set->ctx);
-
-	if (cmpxchg(&set->engines->engines[idx], NULL, ce)) {
-		intel_context_put(ce);
-		err = -EEXIST;
-		goto out_siblings;
-	}
-
-out_siblings:
-	if (siblings != stack)
-		kfree(siblings);
-
-	return err;
-}
-
-static int
-set_engines__bond(struct i915_user_extension __user *base, void *data)
-{
-	struct i915_context_engines_bond __user *ext =
-		container_of_user(base, typeof(*ext), base);
-	const struct set_engines *set = data;
-	struct drm_i915_private *i915 = set->ctx->i915;
-	struct i915_engine_class_instance ci;
-	struct intel_engine_cs *virtual;
-	struct intel_engine_cs *master;
-	u16 idx, num_bonds;
-	int err, n;
-
-	if (get_user(idx, &ext->virtual_index))
-		return -EFAULT;
-
-	if (idx >= set->engines->num_engines) {
-		drm_dbg(&i915->drm,
-			"Invalid index for virtual engine: %d >= %d\n",
-			idx, set->engines->num_engines);
-		return -EINVAL;
-	}
-
-	idx = array_index_nospec(idx, set->engines->num_engines);
-	if (!set->engines->engines[idx]) {
-		drm_dbg(&i915->drm, "Invalid engine at %d\n", idx);
-		return -EINVAL;
-	}
-	virtual = set->engines->engines[idx]->engine;
-
-	if (intel_engine_is_virtual(virtual)) {
-		drm_dbg(&i915->drm,
-			"Bonding with virtual engines not allowed\n");
-		return -EINVAL;
-	}
-
-	err = check_user_mbz(&ext->flags);
-	if (err)
-		return err;
-
-	for (n = 0; n < ARRAY_SIZE(ext->mbz64); n++) {
-		err = check_user_mbz(&ext->mbz64[n]);
-		if (err)
-			return err;
-	}
-
-	if (copy_from_user(&ci, &ext->master, sizeof(ci)))
-		return -EFAULT;
-
-	master = intel_engine_lookup_user(i915,
-					  ci.engine_class, ci.engine_instance);
-	if (!master) {
-		drm_dbg(&i915->drm,
-			"Unrecognised master engine: { class:%u, instance:%u }\n",
-			ci.engine_class, ci.engine_instance);
-		return -EINVAL;
-	}
-
-	if (get_user(num_bonds, &ext->num_bonds))
-		return -EFAULT;
-
-	for (n = 0; n < num_bonds; n++) {
-		struct intel_engine_cs *bond;
-
-		if (copy_from_user(&ci, &ext->engines[n], sizeof(ci)))
-			return -EFAULT;
-
-		bond = intel_engine_lookup_user(i915,
-						ci.engine_class,
-						ci.engine_instance);
-		if (!bond) {
-			drm_dbg(&i915->drm,
-				"Unrecognised engine[%d] for bonding: { class:%d, instance: %d }\n",
-				n, ci.engine_class, ci.engine_instance);
-			return -EINVAL;
-		}
-	}
-
-	return 0;
-}
-
-static const i915_user_extension_fn set_engines__extensions[] = {
-	[I915_CONTEXT_ENGINES_EXT_LOAD_BALANCE] = set_engines__load_balance,
-	[I915_CONTEXT_ENGINES_EXT_BOND] = set_engines__bond,
-};
-
-static int
-set_engines(struct i915_gem_context *ctx,
-	    const struct drm_i915_gem_context_param *args)
-{
-	struct drm_i915_private *i915 = ctx->i915;
-	struct i915_context_param_engines __user *user =
-		u64_to_user_ptr(args->value);
-	struct set_engines set = { .ctx = ctx };
-	unsigned int num_engines, n;
-	u64 extensions;
-	int err;
-
-	if (!args->size) { /* switch back to legacy user_ring_map */
-		if (!i915_gem_context_user_engines(ctx))
-			return 0;
-
-		set.engines = default_engines(ctx);
-		if (IS_ERR(set.engines))
-			return PTR_ERR(set.engines);
-
-		goto replace;
-	}
-
-	BUILD_BUG_ON(!IS_ALIGNED(sizeof(*user), sizeof(*user->engines)));
-	if (args->size < sizeof(*user) ||
-	    !IS_ALIGNED(args->size, sizeof(*user->engines))) {
-		drm_dbg(&i915->drm, "Invalid size for engine array: %d\n",
-			args->size);
-		return -EINVAL;
-	}
-
-	num_engines = (args->size - sizeof(*user)) / sizeof(*user->engines);
-	/* RING_MASK has no shift so we can use it directly here */
-	if (num_engines > I915_EXEC_RING_MASK + 1)
-		return -EINVAL;
-
-	set.engines = alloc_engines(num_engines);
-	if (!set.engines)
-		return -ENOMEM;
-
-	for (n = 0; n < num_engines; n++) {
-		struct i915_engine_class_instance ci;
-		struct intel_engine_cs *engine;
-		struct intel_context *ce;
-
-		if (copy_from_user(&ci, &user->engines[n], sizeof(ci))) {
-			__free_engines(set.engines, n);
-			return -EFAULT;
-		}
-
-		if (ci.engine_class == (u16)I915_ENGINE_CLASS_INVALID &&
-		    ci.engine_instance == (u16)I915_ENGINE_CLASS_INVALID_NONE) {
-			set.engines->engines[n] = NULL;
-			continue;
-		}
-
-		engine = intel_engine_lookup_user(ctx->i915,
-						  ci.engine_class,
-						  ci.engine_instance);
-		if (!engine) {
-			drm_dbg(&i915->drm,
-				"Invalid engine[%d]: { class:%d, instance:%d }\n",
-				n, ci.engine_class, ci.engine_instance);
-			__free_engines(set.engines, n);
-			return -ENOENT;
-		}
-
-		ce = intel_context_create(engine);
-		if (IS_ERR(ce)) {
-			__free_engines(set.engines, n);
-			return PTR_ERR(ce);
-		}
-
-		intel_context_set_gem(ce, ctx);
-
-		set.engines->engines[n] = ce;
-	}
-	set.engines->num_engines = num_engines;
-
-	err = -EFAULT;
-	if (!get_user(extensions, &user->extensions))
-		err = i915_user_extensions(u64_to_user_ptr(extensions),
-					   set_engines__extensions,
-					   ARRAY_SIZE(set_engines__extensions),
-					   &set);
-	if (err) {
-		free_engines(set.engines);
-		return err;
-	}
-
-replace:
-	mutex_lock(&ctx->engines_mutex);
-	if (i915_gem_context_is_closed(ctx)) {
-		mutex_unlock(&ctx->engines_mutex);
-		free_engines(set.engines);
-		return -ENOENT;
-	}
-	if (args->size)
-		i915_gem_context_set_user_engines(ctx);
-	else
-		i915_gem_context_clear_user_engines(ctx);
-	set.engines = rcu_replace_pointer(ctx->engines, set.engines, 1);
-	mutex_unlock(&ctx->engines_mutex);
-
-	/* Keep track of old engine sets for kill_context() */
-	engines_idle_release(ctx, set.engines);
-
-	return 0;
-}
-
 static int
 set_persistence(struct i915_gem_context *ctx,
 		const struct drm_i915_gem_context_param *args)
@@ -2105,10 +1807,6 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
 		ret = set_sseu(ctx, args);
 		break;
 
-	case I915_CONTEXT_PARAM_ENGINES:
-		ret = set_engines(ctx, args);
-		break;
-
 	case I915_CONTEXT_PARAM_PERSISTENCE:
 		ret = set_persistence(ctx, args);
 		break;
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
