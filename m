Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 730A03933F0
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 18:28:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83E7C6F47A;
	Thu, 27 May 2021 16:27:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF4356F45E
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 16:27:32 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id v13so214444ple.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 09:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RIEZ/9SAknsyvW/MTbzLC/2txVaym5DgXSwcatLXCQ0=;
 b=Zrt2J/Bml8B3g7fSw8ruvU2Bh1UGojQuoUYaG02Yz0zJUdlUNm7t3tZpz8LFwDGtD2
 jTnlyAqRXvE1Cg/LegPw92OZ8/Qj+5E/npVTADYnhcPdEl96+j+kI7/kSOQTdTXcURlY
 dupX8z9Lot/6+g74N/TfsSNdu1dT6sJhlmiMM9tdSSGKnGKw/8RCvJPvSN/EzCGROba6
 8dOGIC7fcZwk/Zxrsy2vAZ+mGjyK3Mmn0mEi0Vn1ucPUHQkqXs7No4tDf2X5yZl5EUbf
 uZ6sCoK+W3/xLdAWD+eMGH/j9yVIfvZbTf3iBuSKcE0LR3r6IjHcv6Pea25KEvOTzCtl
 s4Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RIEZ/9SAknsyvW/MTbzLC/2txVaym5DgXSwcatLXCQ0=;
 b=Imv7Vc0nOGUJE3FJBIUopTVK4DYmsyHWgAz6F2ivgfvykZYmTcDhEkS13epzi9Wnky
 wb85ygQ2apOEPLhzSJTVYbu3MY/UkCM3YSSqwCfFkEWnQa0yN+RLTQ+ZYK1aOCqXq7Vc
 WCdiVSC2+6oAQk7IRRl5mnlhqJg46rUWSyreVztbGWvSkYG2PVDcztoYmTw81INnaQAE
 16RvnL2aJmD165vPDnaILSyZZX2sJS4yJmm/pR7HLSUraWspuC5b4TZF69Df0lfUA3zk
 E98mrqtW8hPOXX9G5/cC9N2rVuGEQWUDwSMx8fAxzFKv9nhU+sISSWjrVnWBOPdSmCRQ
 efcg==
X-Gm-Message-State: AOAM533KumPoS7ZILzr0Dd4dOFYpY6Uw0gDNm8Lwt5ncLoVSQGoi0dWM
 FpsiFLDd9yWIaP4v5uOSGf+ST9iWnd30cQ==
X-Google-Smtp-Source: ABdhPJxQgRFYsOr/tBy/R+9lQ4XtHqSnIQHRUkNs+rlb4NL5il7NSkOzCD6XzLkMUr73PQWN3O0/zw==
X-Received: by 2002:a17:90a:ab8f:: with SMTP id
 n15mr2021993pjq.83.1622132851973; 
 Thu, 27 May 2021 09:27:31 -0700 (PDT)
Received: from omlet.com ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id h9sm2298711pja.42.2021.05.27.09.27.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 09:27:31 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 27 May 2021 11:26:47 -0500
Message-Id: <20210527162650.1182544-27-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210527162650.1182544-1-jason@jlekstrand.net>
References: <20210527162650.1182544-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 26/29] drm/i915/gem: Don't allow changing the
 engine set on running contexts (v2)
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

When the APIs were added to manage the engine set on a GEM context
directly from userspace, the questionable choice was made to allow
changing the engine set on a context at any time.  This is horribly racy
and there's absolutely no reason why any userspace would want to do this
outside of trying to exercise interesting race conditions.  By removing
support for CONTEXT_PARAM_ENGINES from ctx_setparam, we make it
impossible to change the engine set after the context has been fully
created.

This doesn't yet let us delete all the deferred engine clean-up code as
that's still used for handling the case where the client dies or calls
GEM_CONTEXT_DESTROY while work is in flight.  However, moving to an API
where the engine set is effectively immutable gives us more options to
potentially clean that code up a bit going forward.  It also removes a
whole class of ways in which a client can hurt itself or try to get
around kernel context banning.

v2 (Jason Ekstrand):
 - Expand the commit mesage

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 303 --------------------
 1 file changed, 303 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index a528c8f3354a0..e6a6ead477ff4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1819,305 +1819,6 @@ static int set_sseu(struct i915_gem_context *ctx,
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
-	struct intel_sseu null_sseu = {};
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
-	intel_context_set_gem(ce, set->ctx, null_sseu);
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
-	struct intel_sseu null_sseu = {};
-	struct set_engines set = { .ctx = ctx };
-	unsigned int num_engines, n;
-	u64 extensions;
-	int err;
-
-	if (!args->size) { /* switch back to legacy user_ring_map */
-		if (!i915_gem_context_user_engines(ctx))
-			return 0;
-
-		set.engines = default_engines(ctx, null_sseu);
-		if (IS_ERR(set.engines))
-			return PTR_ERR(set.engines);
-
-		goto replace;
-	}
-
-	if (args->size < sizeof(*user) ||
-	    !IS_ALIGNED(args->size -  sizeof(*user), sizeof(*user->engines))) {
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
-		intel_context_set_gem(ce, ctx, null_sseu);
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
@@ -2200,10 +1901,6 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
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
