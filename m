Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBBB53C167B
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 17:49:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A3716E90B;
	Thu,  8 Jul 2021 15:49:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com
 [IPv6:2607:f8b0:4864:20::231])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C2066E913
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 15:49:04 +0000 (UTC)
Received: by mail-oi1-x231.google.com with SMTP id z3so7452071oib.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jul 2021 08:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IyflacPLlDyum8CNjWS6MWnwHgFLQUFNnTRnK/TwQV4=;
 b=Y6x9E6BCOPwMrk2J1Ue9G9Vi+WvtWFRgJkEIOWKa1pO3uQgPNKNwwL47a0MImFKyzU
 eLd8h2K8GCHEksVjUe3DAXTAcIt0uy811E91rseEQ3Aabf0GI4npKuGaZrHzI0+gM3CN
 3SC2x2qaJZj/adp9LC9hwpj5yggNC5sqr55RLK69nmVf1qXh23H4E6H7cAfBTrKFvOgI
 kI+snFAjxpQqoreIl4MMIMWmEr+ZgG6TrKR1Gnw71tAMb0ejeb/Wk8qErbGsX/NPoBMG
 /9u7JEBdgTiZ2X7KTnN+NDRJEeNLM4GxeUvkefbPOfaXTK6hw7IRsUuN3jjCaGhvGHA3
 LDgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IyflacPLlDyum8CNjWS6MWnwHgFLQUFNnTRnK/TwQV4=;
 b=noGRVCETV71y/EwYJGhJaqc9bFLap4JFmlxLmsJ43PI9vAGFvbGRLzkVpL1UE1jo06
 NnrAfqC53NVgdZ1cn457ZfqOyYBIRLTScwWoPhY7g8ewjbdEHfezwL/6TW1ktRXJ/Uzc
 H7KNVhXEXjRxigqfLhLuFODyHVmUZrCFlog26XKL1Qbp97HMl+9cq1dIp9xGzLAzSa9u
 d9suMNkvZyApjdB4SmM3fUIpsZWkCRM1UoCsOBlZ3D+X281DxcAf1uFM0FXCcLO0YGUW
 2TZzSotwtFTeqgcHL/Gb5iEQDnAlVP4KJC7vt3ke+E1mSpdf5sQ7jRypQTnH3v1LNWzk
 DOwg==
X-Gm-Message-State: AOAM531WO6fj32FKXZJmzXvJNgsZsxYOjj/m6ikLNZvbilngjmfVv1pX
 XA06DjgEjTBeyXMa9SsvkmuledHQOsgILA==
X-Google-Smtp-Source: ABdhPJzR7C5EUelkUVXKGUogA6UXdEGEY41hPzj2ms34TXrxGT1Xuyowuwkj5QpYxrsIwAJf0T/cYA==
X-Received: by 2002:aca:210f:: with SMTP id 15mr3917083oiz.85.1625759343704;
 Thu, 08 Jul 2021 08:49:03 -0700 (PDT)
Received: from omlet.lan ([68.203.99.148])
 by smtp.gmail.com with ESMTPSA id d20sm548356otq.62.2021.07.08.08.49.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jul 2021 08:49:03 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu,  8 Jul 2021 10:48:26 -0500
Message-Id: <20210708154835.528166-22-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210708154835.528166-1-jason@jlekstrand.net>
References: <20210708154835.528166-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/30] drm/i915/gem: Use the proto-context to
 handle create parameters (v5)
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

This means that the proto-context needs to grow support for engine
configuration information as well as setparam logic.  Fortunately, we'll
be deleting a lot of setparam logic on the primary context shortly so it
will hopefully balance out.

There's an extra bit of fun here when it comes to setting SSEU and the
way it interacts with PARAM_ENGINES.  Unfortunately, thanks to
SET_CONTEXT_PARAM and not being allowed to pick the order in which we
handle certain parameters, we have think about those interactions.

v2 (Daniel Vetter):
 - Add a proto_context_free_user_engines helper
 - Comment on SSEU in the commit message
 - Use proto_context_set_persistence in set_proto_ctx_param

v3 (Daniel Vetter):
 - Fix a doc comment
 - Do an explicit HAS_FULL_PPGTT check in set_proto_ctx_vm instead of
   relying on pc->vm != NULL.
 - Handle errors for CONTEXT_PARAM_PERSISTENCE
 - Don't allow more resetting user engines
 - Rework initialization of UCONTEXT_PERSISTENCE

v4 (Jason Ekstrand):
 - Move hand-rolled initialization of UCONTEXT_PERSISTENCE to an
   earlier patch

v5 (Jason Ekstrand):
 - Move proto_context_set_persistence to this patch

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 577 +++++++++++++++++-
 .../gpu/drm/i915/gem/i915_gem_context_types.h |  58 ++
 2 files changed, 618 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index f135fbc97c5a7..4972b8c91d942 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -193,11 +193,59 @@ static int validate_priority(struct drm_i915_private *i915,
 
 static void proto_context_close(struct i915_gem_proto_context *pc)
 {
+	int i;
+
 	if (pc->vm)
 		i915_vm_put(pc->vm);
+	if (pc->user_engines) {
+		for (i = 0; i < pc->num_user_engines; i++)
+			kfree(pc->user_engines[i].siblings);
+		kfree(pc->user_engines);
+	}
 	kfree(pc);
 }
 
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
 static struct i915_gem_proto_context *
 proto_context_create(struct drm_i915_private *i915, unsigned int flags)
 {
@@ -207,6 +255,8 @@ proto_context_create(struct drm_i915_private *i915, unsigned int flags)
 	if (!pc)
 		return ERR_PTR(-ENOMEM);
 
+	pc->num_user_engines = -1;
+	pc->user_engines = NULL;
 	pc->user_flags = BIT(UCONTEXT_BANNABLE) |
 			 BIT(UCONTEXT_RECOVERABLE);
 	if (i915->params.enable_hangcheck)
@@ -228,6 +278,430 @@ proto_context_create(struct drm_i915_private *i915, unsigned int flags)
 	return err;
 }
 
+static int set_proto_ctx_vm(struct drm_i915_file_private *fpriv,
+			    struct i915_gem_proto_context *pc,
+			    const struct drm_i915_gem_context_param *args)
+{
+	struct drm_i915_private *i915 = fpriv->dev_priv;
+	struct i915_address_space *vm;
+
+	if (args->size)
+		return -EINVAL;
+
+	if (!HAS_FULL_PPGTT(i915))
+		return -ENODEV;
+
+	if (upper_32_bits(args->value))
+		return -ENOENT;
+
+	vm = i915_gem_vm_lookup(fpriv, args->value);
+	if (!vm)
+		return -ENOENT;
+
+	if (pc->vm)
+		i915_vm_put(pc->vm);
+	pc->vm = vm;
+
+	return 0;
+}
+
+struct set_proto_ctx_engines {
+	struct drm_i915_private *i915;
+	unsigned num_engines;
+	struct i915_gem_proto_engine *engines;
+};
+
+static int
+set_proto_ctx_engines_balance(struct i915_user_extension __user *base,
+			      void *data)
+{
+	struct i915_context_engines_load_balance __user *ext =
+		container_of_user(base, typeof(*ext), base);
+	const struct set_proto_ctx_engines *set = data;
+	struct drm_i915_private *i915 = set->i915;
+	struct intel_engine_cs **siblings;
+	u16 num_siblings, idx;
+	unsigned int n;
+	int err;
+
+	if (!HAS_EXECLISTS(i915))
+		return -ENODEV;
+
+	if (intel_uc_uses_guc_submission(&i915->gt.uc))
+		return -ENODEV; /* not implement yet */
+
+	if (get_user(idx, &ext->engine_index))
+		return -EFAULT;
+
+	if (idx >= set->num_engines) {
+		drm_dbg(&i915->drm, "Invalid placement value, %d >= %d\n",
+			idx, set->num_engines);
+		return -EINVAL;
+	}
+
+	idx = array_index_nospec(idx, set->num_engines);
+	if (set->engines[idx].type != I915_GEM_ENGINE_TYPE_INVALID) {
+		drm_dbg(&i915->drm,
+			"Invalid placement[%d], already occupied\n", idx);
+		return -EEXIST;
+	}
+
+	if (get_user(num_siblings, &ext->num_siblings))
+		return -EFAULT;
+
+	err = check_user_mbz(&ext->flags);
+	if (err)
+		return err;
+
+	err = check_user_mbz(&ext->mbz64);
+	if (err)
+		return err;
+
+	if (num_siblings == 0)
+		return 0;
+
+	siblings = kmalloc_array(num_siblings, sizeof(*siblings), GFP_KERNEL);
+	if (!siblings)
+		return -ENOMEM;
+
+	for (n = 0; n < num_siblings; n++) {
+		struct i915_engine_class_instance ci;
+
+		if (copy_from_user(&ci, &ext->engines[n], sizeof(ci))) {
+			err = -EFAULT;
+			goto err_siblings;
+		}
+
+		siblings[n] = intel_engine_lookup_user(i915,
+						       ci.engine_class,
+						       ci.engine_instance);
+		if (!siblings[n]) {
+			drm_dbg(&i915->drm,
+				"Invalid sibling[%d]: { class:%d, inst:%d }\n",
+				n, ci.engine_class, ci.engine_instance);
+			err = -EINVAL;
+			goto err_siblings;
+		}
+	}
+
+	if (num_siblings == 1) {
+		set->engines[idx].type = I915_GEM_ENGINE_TYPE_PHYSICAL;
+		set->engines[idx].engine = siblings[0];
+		kfree(siblings);
+	} else {
+		set->engines[idx].type = I915_GEM_ENGINE_TYPE_BALANCED;
+		set->engines[idx].num_siblings = num_siblings;
+		set->engines[idx].siblings = siblings;
+	}
+
+	return 0;
+
+err_siblings:
+	kfree(siblings);
+
+	return err;
+}
+
+static int
+set_proto_ctx_engines_bond(struct i915_user_extension __user *base, void *data)
+{
+	struct i915_context_engines_bond __user *ext =
+		container_of_user(base, typeof(*ext), base);
+	const struct set_proto_ctx_engines *set = data;
+	struct drm_i915_private *i915 = set->i915;
+	struct i915_engine_class_instance ci;
+	struct intel_engine_cs *master;
+	u16 idx, num_bonds;
+	int err, n;
+
+	if (get_user(idx, &ext->virtual_index))
+		return -EFAULT;
+
+	if (idx >= set->num_engines) {
+		drm_dbg(&i915->drm,
+			"Invalid index for virtual engine: %d >= %d\n",
+			idx, set->num_engines);
+		return -EINVAL;
+	}
+
+	idx = array_index_nospec(idx, set->num_engines);
+	if (set->engines[idx].type == I915_GEM_ENGINE_TYPE_INVALID) {
+		drm_dbg(&i915->drm, "Invalid engine at %d\n", idx);
+		return -EINVAL;
+	}
+
+	if (set->engines[idx].type != I915_GEM_ENGINE_TYPE_PHYSICAL) {
+		drm_dbg(&i915->drm,
+			"Bonding with virtual engines not allowed\n");
+		return -EINVAL;
+	}
+
+	err = check_user_mbz(&ext->flags);
+	if (err)
+		return err;
+
+	for (n = 0; n < ARRAY_SIZE(ext->mbz64); n++) {
+		err = check_user_mbz(&ext->mbz64[n]);
+		if (err)
+			return err;
+	}
+
+	if (copy_from_user(&ci, &ext->master, sizeof(ci)))
+		return -EFAULT;
+
+	master = intel_engine_lookup_user(i915,
+					  ci.engine_class,
+					  ci.engine_instance);
+	if (!master) {
+		drm_dbg(&i915->drm,
+			"Unrecognised master engine: { class:%u, instance:%u }\n",
+			ci.engine_class, ci.engine_instance);
+		return -EINVAL;
+	}
+
+	if (get_user(num_bonds, &ext->num_bonds))
+		return -EFAULT;
+
+	for (n = 0; n < num_bonds; n++) {
+		struct intel_engine_cs *bond;
+
+		if (copy_from_user(&ci, &ext->engines[n], sizeof(ci)))
+			return -EFAULT;
+
+		bond = intel_engine_lookup_user(i915,
+						ci.engine_class,
+						ci.engine_instance);
+		if (!bond) {
+			drm_dbg(&i915->drm,
+				"Unrecognised engine[%d] for bonding: { class:%d, instance: %d }\n",
+				n, ci.engine_class, ci.engine_instance);
+			return -EINVAL;
+		}
+	}
+
+	return 0;
+}
+
+static const i915_user_extension_fn set_proto_ctx_engines_extensions[] = {
+	[I915_CONTEXT_ENGINES_EXT_LOAD_BALANCE] = set_proto_ctx_engines_balance,
+	[I915_CONTEXT_ENGINES_EXT_BOND] = set_proto_ctx_engines_bond,
+};
+
+static int set_proto_ctx_engines(struct drm_i915_file_private *fpriv,
+			         struct i915_gem_proto_context *pc,
+			         const struct drm_i915_gem_context_param *args)
+{
+	struct drm_i915_private *i915 = fpriv->dev_priv;
+	struct set_proto_ctx_engines set = { .i915 = i915 };
+	struct i915_context_param_engines __user *user =
+		u64_to_user_ptr(args->value);
+	unsigned int n;
+	u64 extensions;
+	int err;
+
+	if (pc->num_user_engines >= 0) {
+		drm_dbg(&i915->drm, "Cannot set engines twice");
+		return -EINVAL;
+	}
+
+	if (args->size < sizeof(*user) ||
+	    !IS_ALIGNED(args->size - sizeof(*user), sizeof(*user->engines))) {
+		drm_dbg(&i915->drm, "Invalid size for engine array: %d\n",
+			args->size);
+		return -EINVAL;
+	}
+
+	set.num_engines = (args->size - sizeof(*user)) / sizeof(*user->engines);
+	/* RING_MASK has no shift so we can use it directly here */
+	if (set.num_engines > I915_EXEC_RING_MASK + 1)
+		return -EINVAL;
+
+	set.engines = kmalloc_array(set.num_engines, sizeof(*set.engines), GFP_KERNEL);
+	if (!set.engines)
+		return -ENOMEM;
+
+	for (n = 0; n < set.num_engines; n++) {
+		struct i915_engine_class_instance ci;
+		struct intel_engine_cs *engine;
+
+		if (copy_from_user(&ci, &user->engines[n], sizeof(ci))) {
+			kfree(set.engines);
+			return -EFAULT;
+		}
+
+		memset(&set.engines[n], 0, sizeof(set.engines[n]));
+
+		if (ci.engine_class == (u16)I915_ENGINE_CLASS_INVALID &&
+		    ci.engine_instance == (u16)I915_ENGINE_CLASS_INVALID_NONE)
+			continue;
+
+		engine = intel_engine_lookup_user(i915,
+						  ci.engine_class,
+						  ci.engine_instance);
+		if (!engine) {
+			drm_dbg(&i915->drm,
+				"Invalid engine[%d]: { class:%d, instance:%d }\n",
+				n, ci.engine_class, ci.engine_instance);
+			kfree(set.engines);
+			return -ENOENT;
+		}
+
+		set.engines[n].type = I915_GEM_ENGINE_TYPE_PHYSICAL;
+		set.engines[n].engine = engine;
+	}
+
+	err = -EFAULT;
+	if (!get_user(extensions, &user->extensions))
+		err = i915_user_extensions(u64_to_user_ptr(extensions),
+					   set_proto_ctx_engines_extensions,
+					   ARRAY_SIZE(set_proto_ctx_engines_extensions),
+					   &set);
+	if (err) {
+		kfree(set.engines);
+		return err;
+	}
+
+	pc->num_user_engines = set.num_engines;
+	pc->user_engines = set.engines;
+
+	return 0;
+}
+
+static int set_proto_ctx_sseu(struct drm_i915_file_private *fpriv,
+			      struct i915_gem_proto_context *pc,
+			      struct drm_i915_gem_context_param *args)
+{
+	struct drm_i915_private *i915 = fpriv->dev_priv;
+	struct drm_i915_gem_context_param_sseu user_sseu;
+	struct intel_sseu *sseu;
+	int ret;
+
+	if (args->size < sizeof(user_sseu))
+		return -EINVAL;
+
+	if (GRAPHICS_VER(i915) != 11)
+		return -ENODEV;
+
+	if (copy_from_user(&user_sseu, u64_to_user_ptr(args->value),
+			   sizeof(user_sseu)))
+		return -EFAULT;
+
+	if (user_sseu.rsvd)
+		return -EINVAL;
+
+	if (user_sseu.flags & ~(I915_CONTEXT_SSEU_FLAG_ENGINE_INDEX))
+		return -EINVAL;
+
+	if (!!(user_sseu.flags & I915_CONTEXT_SSEU_FLAG_ENGINE_INDEX) != (pc->num_user_engines >= 0))
+		return -EINVAL;
+
+	if (pc->num_user_engines >= 0) {
+		int idx = user_sseu.engine.engine_instance;
+		struct i915_gem_proto_engine *pe;
+
+		if (idx >= pc->num_user_engines)
+			return -EINVAL;
+
+		pe = &pc->user_engines[idx];
+
+		/* Only render engine supports RPCS configuration. */
+		if (pe->engine->class != RENDER_CLASS)
+			return -EINVAL;
+
+		sseu = &pe->sseu;
+	} else {
+		/* Only render engine supports RPCS configuration. */
+		if (user_sseu.engine.engine_class != I915_ENGINE_CLASS_RENDER)
+			return -EINVAL;
+
+		/* There is only one render engine */
+		if (user_sseu.engine.engine_instance != 0)
+			return -EINVAL;
+
+		sseu = &pc->legacy_rcs_sseu;
+	}
+
+	ret = i915_gem_user_to_context_sseu(&i915->gt, &user_sseu, sseu);
+	if (ret)
+		return ret;
+
+	args->size = sizeof(user_sseu);
+
+	return 0;
+}
+
+static int set_proto_ctx_param(struct drm_i915_file_private *fpriv,
+			       struct i915_gem_proto_context *pc,
+			       struct drm_i915_gem_context_param *args)
+{
+	int ret = 0;
+
+	switch (args->param) {
+	case I915_CONTEXT_PARAM_NO_ERROR_CAPTURE:
+		if (args->size)
+			ret = -EINVAL;
+		else if (args->value)
+			pc->user_flags |= BIT(UCONTEXT_NO_ERROR_CAPTURE);
+		else
+			pc->user_flags &= ~BIT(UCONTEXT_NO_ERROR_CAPTURE);
+		break;
+
+	case I915_CONTEXT_PARAM_BANNABLE:
+		if (args->size)
+			ret = -EINVAL;
+		else if (!capable(CAP_SYS_ADMIN) && !args->value)
+			ret = -EPERM;
+		else if (args->value)
+			pc->user_flags |= BIT(UCONTEXT_BANNABLE);
+		else
+			pc->user_flags &= ~BIT(UCONTEXT_BANNABLE);
+		break;
+
+	case I915_CONTEXT_PARAM_RECOVERABLE:
+		if (args->size)
+			ret = -EINVAL;
+		else if (args->value)
+			pc->user_flags |= BIT(UCONTEXT_RECOVERABLE);
+		else
+			pc->user_flags &= ~BIT(UCONTEXT_RECOVERABLE);
+		break;
+
+	case I915_CONTEXT_PARAM_PRIORITY:
+		ret = validate_priority(fpriv->dev_priv, args);
+		if (!ret)
+			pc->sched.priority = args->value;
+		break;
+
+	case I915_CONTEXT_PARAM_SSEU:
+		ret = set_proto_ctx_sseu(fpriv, pc, args);
+		break;
+
+	case I915_CONTEXT_PARAM_VM:
+		ret = set_proto_ctx_vm(fpriv, pc, args);
+		break;
+
+	case I915_CONTEXT_PARAM_ENGINES:
+		ret = set_proto_ctx_engines(fpriv, pc, args);
+		break;
+
+	case I915_CONTEXT_PARAM_PERSISTENCE:
+		if (args->size)
+			ret = -EINVAL;
+		ret = proto_context_set_persistence(fpriv->dev_priv, pc,
+						    args->value);
+		break;
+
+	case I915_CONTEXT_PARAM_NO_ZEROMAP:
+	case I915_CONTEXT_PARAM_BAN_PERIOD:
+	case I915_CONTEXT_PARAM_RINGSIZE:
+	default:
+		ret = -EINVAL;
+		break;
+	}
+
+	return ret;
+}
+
 static struct i915_address_space *
 context_get_vm_rcu(struct i915_gem_context *ctx)
 {
@@ -421,6 +895,56 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx,
 	return err;
 }
 
+static struct i915_gem_engines *user_engines(struct i915_gem_context *ctx,
+					     unsigned int num_engines,
+					     struct i915_gem_proto_engine *pe)
+{
+	struct i915_gem_engines *e, *err;
+	unsigned int n;
+
+	e = alloc_engines(num_engines);
+	for (n = 0; n < num_engines; n++) {
+		struct intel_context *ce;
+		int ret;
+
+		switch (pe[n].type) {
+		case I915_GEM_ENGINE_TYPE_PHYSICAL:
+			ce = intel_context_create(pe[n].engine);
+			break;
+
+		case I915_GEM_ENGINE_TYPE_BALANCED:
+			ce = intel_execlists_create_virtual(pe[n].siblings,
+							    pe[n].num_siblings);
+			break;
+
+		case I915_GEM_ENGINE_TYPE_INVALID:
+		default:
+			GEM_WARN_ON(pe[n].type != I915_GEM_ENGINE_TYPE_INVALID);
+			continue;
+		}
+
+		if (IS_ERR(ce)) {
+			err = ERR_CAST(ce);
+			goto free_engines;
+		}
+
+		e->engines[n] = ce;
+
+		ret = intel_context_set_gem(ce, ctx, pe->sseu);
+		if (ret) {
+			err = ERR_PTR(ret);
+			goto free_engines;
+		}
+	}
+	e->num_engines = num_engines;
+
+	return e;
+
+free_engines:
+	free_engines(e);
+	return err;
+}
+
 void i915_gem_context_release(struct kref *ref)
 {
 	struct i915_gem_context *ctx = container_of(ref, typeof(*ctx), ref);
@@ -725,7 +1249,6 @@ __create_context(struct drm_i915_private *i915,
 {
 	struct i915_gem_context *ctx;
 	struct i915_gem_engines *e;
-	struct intel_sseu null_sseu = {};
 	int err;
 	int i;
 
@@ -743,7 +1266,7 @@ __create_context(struct drm_i915_private *i915,
 	INIT_LIST_HEAD(&ctx->stale.engines);
 
 	mutex_init(&ctx->engines_mutex);
-	e = default_engines(ctx, null_sseu);
+	e = default_engines(ctx, pc->legacy_rcs_sseu);
 	if (IS_ERR(e)) {
 		err = PTR_ERR(e);
 		goto err_free;
@@ -881,6 +1404,24 @@ i915_gem_create_context(struct drm_i915_private *i915,
 		i915_vm_put(&ppgtt->vm);
 	}
 
+	if (pc->num_user_engines >= 0) {
+		struct i915_gem_engines *engines;
+
+		engines = user_engines(ctx, pc->num_user_engines,
+				       pc->user_engines);
+		if (IS_ERR(engines)) {
+			context_close(ctx);
+			return ERR_CAST(engines);
+		}
+
+		mutex_lock(&ctx->engines_mutex);
+		i915_gem_context_set_user_engines(ctx);
+		engines = rcu_replace_pointer(ctx->engines, engines, 1);
+		mutex_unlock(&ctx->engines_mutex);
+
+		free_engines(engines);
+	}
+
 	if (pc->single_timeline) {
 		ret = drm_syncobj_create(&ctx->syncobj,
 					 DRM_SYNCOBJ_CREATE_SIGNALED,
@@ -1915,7 +2456,7 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
 }
 
 struct create_ext {
-	struct i915_gem_context *ctx;
+	struct i915_gem_proto_context *pc;
 	struct drm_i915_file_private *fpriv;
 };
 
@@ -1930,7 +2471,7 @@ static int create_setparam(struct i915_user_extension __user *ext, void *data)
 	if (local.param.ctx_id)
 		return -EINVAL;
 
-	return ctx_setparam(arg->fpriv, arg->ctx, &local.param);
+	return set_proto_ctx_param(arg->fpriv, arg->pc, &local.param);
 }
 
 static int invalid_ext(struct i915_user_extension __user *ext, void *data)
@@ -1953,7 +2494,7 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 {
 	struct drm_i915_private *i915 = to_i915(dev);
 	struct drm_i915_gem_context_create_ext *args = data;
-	struct i915_gem_proto_context *pc;
+	struct i915_gem_context *ctx;
 	struct create_ext ext_data;
 	int ret;
 	u32 id;
@@ -1976,25 +2517,27 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 		return -EIO;
 	}
 
-	pc = proto_context_create(i915, args->flags);
-	if (IS_ERR(pc))
-		return PTR_ERR(pc);
-
-	ext_data.ctx = i915_gem_create_context(i915, pc);
-	proto_context_close(pc);
-	if (IS_ERR(ext_data.ctx))
-		return PTR_ERR(ext_data.ctx);
+	ext_data.pc = proto_context_create(i915, args->flags);
+	if (IS_ERR(ext_data.pc))
+		return PTR_ERR(ext_data.pc);
 
 	if (args->flags & I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS) {
 		ret = i915_user_extensions(u64_to_user_ptr(args->extensions),
 					   create_extensions,
 					   ARRAY_SIZE(create_extensions),
 					   &ext_data);
-		if (ret)
-			goto err_ctx;
+		if (ret) {
+			proto_context_close(ext_data.pc);
+			return ret;
+		}
 	}
 
-	ret = gem_context_register(ext_data.ctx, ext_data.fpriv, &id);
+	ctx = i915_gem_create_context(i915, ext_data.pc);
+	proto_context_close(ext_data.pc);
+	if (IS_ERR(ctx))
+		return PTR_ERR(ctx);
+
+	ret = gem_context_register(ctx, ext_data.fpriv, &id);
 	if (ret < 0)
 		goto err_ctx;
 
@@ -2004,7 +2547,7 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 	return 0;
 
 err_ctx:
-	context_close(ext_data.ctx);
+	context_close(ctx);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index e0bdf3e298a6a..a1a117d9ed973 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -66,6 +66,55 @@ struct i915_gem_engines_iter {
 	const struct i915_gem_engines *engines;
 };
 
+/**
+ * enum i915_gem_engine_type - Describes the type of an i915_gem_proto_engine
+ */
+enum i915_gem_engine_type {
+	/** @I915_GEM_ENGINE_TYPE_INVALID: An invalid engine */
+	I915_GEM_ENGINE_TYPE_INVALID = 0,
+
+	/** @I915_GEM_ENGINE_TYPE_PHYSICAL: A single physical engine */
+	I915_GEM_ENGINE_TYPE_PHYSICAL,
+
+	/** @I915_GEM_ENGINE_TYPE_BALANCED: A load-balanced engine set */
+	I915_GEM_ENGINE_TYPE_BALANCED,
+};
+
+/**
+ * struct i915_gem_proto_engine - prototype engine
+ *
+ * This struct describes an engine that a context may contain.  Engines
+ * have three types:
+ *
+ *  - I915_GEM_ENGINE_TYPE_INVALID: Invalid engines can be created but they
+ *    show up as a NULL in i915_gem_engines::engines[i] and any attempt to
+ *    use them by the user results in -EINVAL.  They are also useful during
+ *    proto-context construction because the client may create invalid
+ *    engines and then set them up later as virtual engines.
+ *
+ *  - I915_GEM_ENGINE_TYPE_PHYSICAL: A single physical engine, described by
+ *    i915_gem_proto_engine::engine.
+ *
+ *  - I915_GEM_ENGINE_TYPE_BALANCED: A load-balanced engine set, described
+ *    i915_gem_proto_engine::num_siblings and i915_gem_proto_engine::siblings.
+ */
+struct i915_gem_proto_engine {
+	/** @type: Type of this engine */
+	enum i915_gem_engine_type type;
+
+	/** @engine: Engine, for physical */
+	struct intel_engine_cs *engine;
+
+	/** @num_siblings: Number of balanced siblings */
+	unsigned int num_siblings;
+
+	/** @siblings: Balanced siblings */
+	struct intel_engine_cs **siblings;
+
+	/** @sseu: Client-set SSEU parameters */
+	struct intel_sseu sseu;
+};
+
 /**
  * struct i915_gem_proto_context - prototype context
  *
@@ -84,6 +133,15 @@ struct i915_gem_proto_context {
 	/** @sched: See &i915_gem_context.sched */
 	struct i915_sched_attr sched;
 
+	/** @num_user_engines: Number of user-specified engines or -1 */
+	int num_user_engines;
+
+	/** @user_engines: User-specified engines */
+	struct i915_gem_proto_engine *user_engines;
+
+	/** @legacy_rcs_sseu: Client-set SSEU parameters for the legacy RCS */
+	struct intel_sseu legacy_rcs_sseu;
+
 	/** @single_timeline: See See &i915_gem_context.syncobj */
 	bool single_timeline;
 };
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
