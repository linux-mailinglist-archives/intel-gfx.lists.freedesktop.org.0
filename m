Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F85A3718B9
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 17:58:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B237F6E8F7;
	Mon,  3 May 2021 15:58:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com
 [IPv6:2607:f8b0:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA7B86E906
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 15:58:28 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id b15so4483741pfl.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 May 2021 08:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hLJ+iULd1innEdKgE/o2wv7HTc2ZXFKiM/WJRt0/G5I=;
 b=JUFuGiQLVJvN9NeB13wegUaPazpNpOsFvrQvArdCzyEQ6znf9DnUwKy3MrMyiq2JN3
 9GxJOX/x3aieUpF4QRiW4DDCsNoMnuWDClRCajJHzEqv0+IaFx/OqZcSKffKntB3aG1f
 fnMANkW749Oyc2x9tyQAfQUh228wMqNoyUy9r/04uzV1JzMnBagb2Dzspuxlt3a69nxK
 7+VtnZMRurtPHFi/VA0aGCgPztr8+mGTffCmF8FfWvPlha81hTEQlZeqGpliJqkBvUcC
 DNjA06vtTu+qYWP7FqUpRYlsydx/11zQB3DFZGYrPM5yMDKiifLPnoGLyAIGBy6MarAH
 0/dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hLJ+iULd1innEdKgE/o2wv7HTc2ZXFKiM/WJRt0/G5I=;
 b=KipoOjXG1uShACFcC6MGks8iWFiBB7B7fE+htHiCvt8CWZVaI0waP4vWIgXRhW2C+d
 /eh2kn+NN9Kr7GmwzG6uZ71349YShVLztbQ7lbnT/vHdd7awN+kXhGIWd/gepH1jXhLb
 EnxF5ez3pGrmvQcHHj8sPUdH4F999daY/sqgmnMfCxn7jz9maFn/MghHVyAaczX2dKMr
 k4aEBzE2iAfkWdJztI4MLbN42AvBt6QwuSnyrPCWHlNNjpmdl7rQwqajkfwlM1JQM3BC
 uwwxZRaC/TST+RzwXmLa1Tr7ETa++MSwCQIYcf4nEiM7erjUo+1/YbLtnX+dcKkowQrU
 N91g==
X-Gm-Message-State: AOAM532khY0kvKUzSUKjqEVxrMkBukeYx/CsEGNG08ukTz9Pbu9cCPyL
 Zg9H5J12T2zvdPeQaDd2AmN5Ey7WyR70/Q==
X-Google-Smtp-Source: ABdhPJyVZ+2RXuZk/z1poXAGlZxhqOWFKlhFf0vJOkNluurRxibD+luoyLR3uWtEPxMp7h6eKKySxA==
X-Received: by 2002:a62:7790:0:b029:27d:3aea:83e5 with SMTP id
 s138-20020a6277900000b029027d3aea83e5mr18792871pfc.78.1620057507452; 
 Mon, 03 May 2021 08:58:27 -0700 (PDT)
Received: from omlet.com (jfdmzpr05-ext.jf.intel.com. [134.134.139.74])
 by smtp.gmail.com with ESMTPSA id gf21sm9783296pjb.20.2021.05.03.08.58.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 May 2021 08:58:26 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon,  3 May 2021 10:57:40 -0500
Message-Id: <20210503155748.1961781-20-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210503155748.1961781-1-jason@jlekstrand.net>
References: <20210503155748.1961781-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 19/27] drm/i915/gem: Use the proto-context to
 handle create parameters
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

This means that the proto-context needs to grow support for engine
configuration information as well as setparam logic.  Fortunately, we'll
be deleting a lot of setparam logic on the primary context shortly so it
will hopefully balance out.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 546 +++++++++++++++++-
 .../gpu/drm/i915/gem/i915_gem_context_types.h |  58 ++
 2 files changed, 587 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 6dd50d669c5b9..aa4edfbf7ed48 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -193,8 +193,15 @@ static int validate_priority(struct drm_i915_private *i915,
 
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
 
@@ -248,6 +255,9 @@ proto_context_create(struct drm_i915_private *i915, unsigned int flags)
 	if (!pc)
 		return ERR_PTR(-ENOMEM);
 
+	pc->num_user_engines = -1;
+	pc->user_engines = NULL;
+
 	if (HAS_FULL_PPGTT(i915)) {
 		struct i915_ppgtt *ppgtt;
 
@@ -282,6 +292,439 @@ proto_context_create(struct drm_i915_private *i915, unsigned int flags)
 	return err;
 }
 
+static int set_proto_ctx_vm(struct drm_i915_file_private *fpriv,
+			    struct i915_gem_proto_context *pc,
+			    const struct drm_i915_gem_context_param *args)
+{
+	struct i915_address_space *vm;
+
+	if (args->size)
+		return -EINVAL;
+
+	if (!pc->vm)
+		return -ENODEV;
+
+	if (upper_32_bits(args->value))
+		return -ENOENT;
+
+	rcu_read_lock();
+	vm = xa_load(&fpriv->vm_xa, args->value);
+	if (vm && !kref_get_unless_zero(&vm->ref))
+		vm = NULL;
+	rcu_read_unlock();
+	if (!vm)
+		return -ENOENT;
+
+	i915_vm_put(pc->vm);
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
+	if (!args->size) {
+		kfree(pc->user_engines);
+		pc->num_user_engines = -1;
+		pc->user_engines = NULL;
+		memset(&pc->legacy_rcs_sseu, 0, sizeof(pc->legacy_rcs_sseu));
+		return 0;
+	}
+
+	BUILD_BUG_ON(!IS_ALIGNED(sizeof(*user), sizeof(*user->engines)));
+	if (args->size < sizeof(*user) ||
+	    !IS_ALIGNED(args->size, sizeof(*user->engines))) {
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
+	kfree(pc->user_engines);
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
+	if (!IS_GEN(i915, 11))
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
+			__set_bit(UCONTEXT_NO_ERROR_CAPTURE, &pc->user_flags);
+		else
+			__clear_bit(UCONTEXT_NO_ERROR_CAPTURE, &pc->user_flags);
+		break;
+
+	case I915_CONTEXT_PARAM_BANNABLE:
+		if (args->size)
+			ret = -EINVAL;
+		else if (!capable(CAP_SYS_ADMIN) && !args->value)
+			ret = -EPERM;
+		else if (args->value)
+			__set_bit(UCONTEXT_BANNABLE, &pc->user_flags);
+		else
+			__clear_bit(UCONTEXT_BANNABLE, &pc->user_flags);
+		break;
+
+	case I915_CONTEXT_PARAM_RECOVERABLE:
+		if (args->size)
+			ret = -EINVAL;
+		else if (args->value)
+			__set_bit(UCONTEXT_RECOVERABLE, &pc->user_flags);
+		else
+			__clear_bit(UCONTEXT_RECOVERABLE, &pc->user_flags);
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
+		else if (args->value)
+			__set_bit(UCONTEXT_PERSISTENCE, &pc->user_flags);
+		else
+			__clear_bit(UCONTEXT_PERSISTENCE, &pc->user_flags);
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
@@ -475,6 +918,56 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx,
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
@@ -779,7 +1272,6 @@ __create_context(struct drm_i915_private *i915,
 {
 	struct i915_gem_context *ctx;
 	struct i915_gem_engines *e;
-	struct intel_sseu null_sseu = {};
 	int err;
 	int i;
 
@@ -797,7 +1289,7 @@ __create_context(struct drm_i915_private *i915,
 	INIT_LIST_HEAD(&ctx->stale.engines);
 
 	mutex_init(&ctx->engines_mutex);
-	e = default_engines(ctx, null_sseu);
+	e = default_engines(ctx, pc->legacy_rcs_sseu);
 	if (IS_ERR(e)) {
 		err = PTR_ERR(e);
 		goto err_free;
@@ -916,6 +1408,24 @@ i915_gem_create_context(struct drm_i915_private *i915,
 		mutex_unlock(&ctx->mutex);
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
@@ -1956,7 +2466,7 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
 }
 
 struct create_ext {
-	struct i915_gem_context *ctx;
+	struct i915_gem_proto_context *pc;
 	struct drm_i915_file_private *fpriv;
 };
 
@@ -1971,7 +2481,7 @@ static int create_setparam(struct i915_user_extension __user *ext, void *data)
 	if (local.param.ctx_id)
 		return -EINVAL;
 
-	return ctx_setparam(arg->fpriv, arg->ctx, &local.param);
+	return set_proto_ctx_param(arg->fpriv, arg->pc, &local.param);
 }
 
 static int invalid_ext(struct i915_user_extension __user *ext, void *data)
@@ -1994,7 +2504,7 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 {
 	struct drm_i915_private *i915 = to_i915(dev);
 	struct drm_i915_gem_context_create_ext *args = data;
-	struct i915_gem_proto_context *pc;
+	struct i915_gem_context *ctx;
 	struct create_ext ext_data;
 	int ret;
 	u32 id;
@@ -2017,25 +2527,27 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
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
 
@@ -2045,7 +2557,7 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 	return 0;
 
 err_ctx:
-	context_close(ext_data.ctx);
+	context_close(ctx);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 0bf337b6d89ac..2ac341f805c8f 100644
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
+ *    engines and then set them up later as bonded engines.
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
 	/** @sched: See i915_gem_context::sched */
 	struct i915_sched_attr sched;
 
+	/** @num_user_engines: Number of user-specified engines or -1 */
+	int num_user_engines;
+
+	/** @user_engines: User-specified engines */
+	struct i915_gem_proto_engine *user_engines;
+
+	/** @sseu: Client-set SSEU parameters for the legacy RCS */
+	struct intel_sseu legacy_rcs_sseu;
+
 	/** @single_timeline: See See i915_gem_context::syncobj */
 	bool single_timeline;
 };
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
