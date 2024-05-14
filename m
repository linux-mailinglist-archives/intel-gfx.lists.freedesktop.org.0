Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CF58C5865
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 16:59:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDD6910E174;
	Tue, 14 May 2024 14:59:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="bzOw8Wkq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 424E510E8A3
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2024 14:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EsLYtOp40E+YiBy8/ikEAGqwsDQr64heCSB5P3X1ai0=; b=bzOw8WkqwFJ1sFb2s0gIUwfb6v
 IMnULWksgQRfmy06PkIsaolOayoxGXOmcRw/i1Id3dMUinhajTEl2IYSUvgN+PN4HpU73hbBmYtnt
 KeW1cofCLoQeTH/supVIVWmxzJ8jdL39HetakOjQoewEi7EPDONIAsCp1Vttnc/gLSf/64WH6NLu0
 RjCCSI1BaaSPvHuaJYa9AaKUVPMqdggv4QK58kuLKhWGdSPgBe+eNUpcpY9SZebD8ZSo57wwaX+xN
 yxvoT+UtS3IcXv1ELcVywX6b6+TWHyIFJ1gyfHvRgbbDOzCuZK0yMJmSRssLtuGrqjO6QBeljqXdX
 ireJjvFw==;
Received: from [84.69.19.168] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1s6td1-00815R-PO; Tue, 14 May 2024 16:59:43 +0200
From: Tvrtko Ursulin <tursulin@igalia.com>
To: intel-gfx@lists.freedesktop.org
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Carlos Santa <carlos.santa@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@igalia.com>
Subject: [CI 2/2] drm/i915: Support replaying GPU hangs with captured context
 image
Date: Tue, 14 May 2024 15:59:39 +0100
Message-ID: <20240514145939.87427-2-tursulin@igalia.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240514145939.87427-1-tursulin@igalia.com>
References: <20240514145939.87427-1-tursulin@igalia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

When debugging GPU hangs Mesa developers are finding it useful to replay
the captured error state against the simulator. But due various simulator
limitations which prevent replicating all hangs, one step further is being
able to replay against a real GPU.

This is almost doable today with the missing part being able to upload the
captured context image into the driver state prior to executing the
uploaded hanging batch and all the buffers.

To enable this last part we add a new context parameter called
I915_CONTEXT_PARAM_CONTEXT_IMAGE. It follows the existing SSEU
configuration pattern of being able to select which context to apply
against, paired with the actual image and its size.

Since this is adding a new concept of debug only uapi, we hide it behind
a new kconfig option and also require activation with a module parameter.
Together with a warning banner printed at driver load, all those combined
should be sufficient to guard against inadvertently enabling the feature.

In terms of implementation we allow the legacy context set param to be
used since that removes the need to record the per context data in the
proto context, while still allowing flexibility of specifying context
images for any context.

Mesa MR using the uapi can be seen at:
  https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/27594

v2:
 * Fix whitespace alignment as per checkpatch.
 * Added warning on userspace misuse.
 * Rebase for extracting ce->default_state shadowing.

v3:
 * Rebase for I915_CONTEXT_PARAM_LOW_LATENCY.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: Carlos Santa <carlos.santa@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Tested-by: Carlos Santa <carlos.santa@intel.com>
Signed-off-by: Tvrtko Ursulin <tursulin@igalia.com>
---
 drivers/gpu/drm/i915/Kconfig.debug            |  17 +++
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 113 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_context.c       |   2 +
 drivers/gpu/drm/i915/gt/intel_context.h       |  22 ++++
 drivers/gpu/drm/i915/gt/intel_context_types.h |   1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c           |   3 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |   3 +-
 drivers/gpu/drm/i915/i915_params.c            |   5 +
 drivers/gpu/drm/i915/i915_params.h            |   3 +-
 include/uapi/drm/i915_drm.h                   |  27 +++++
 10 files changed, 193 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
index d8397065c3f0..1852e0804942 100644
--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -16,6 +16,23 @@ config DRM_I915_WERROR
 
 	  If in doubt, say "N".
 
+config DRM_I915_REPLAY_GPU_HANGS_API
+	bool "Enable GPU hang replay userspace API"
+	depends on DRM_I915
+	depends on EXPERT
+	default n
+	help
+	  Choose this option if you want to enable special and unstable
+	  userspace API used for replaying GPU hangs on a running system.
+
+	  This API is intended to be used by userspace graphics stack developers
+	  and provides no stability guarantees.
+
+	  The API needs to be activated at boot time using the
+	  enable_debug_only_api module parameter.
+
+	  If in doubt, say "N".
+
 config DRM_I915_DEBUG
 	bool "Enable additional driver debugging"
 	depends on DRM_I915
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 81f65cab1330..c0543c35cd6a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -78,6 +78,7 @@
 #include "gt/intel_engine_user.h"
 #include "gt/intel_gpu_commands.h"
 #include "gt/intel_ring.h"
+#include "gt/shmem_utils.h"
 
 #include "pxp/intel_pxp.h"
 
@@ -957,6 +958,7 @@ static int set_proto_ctx_param(struct drm_i915_file_private *fpriv,
 	case I915_CONTEXT_PARAM_NO_ZEROMAP:
 	case I915_CONTEXT_PARAM_BAN_PERIOD:
 	case I915_CONTEXT_PARAM_RINGSIZE:
+	case I915_CONTEXT_PARAM_CONTEXT_IMAGE:
 	default:
 		ret = -EINVAL;
 		break;
@@ -2104,6 +2106,95 @@ static int get_protected(struct i915_gem_context *ctx,
 	return 0;
 }
 
+static int set_context_image(struct i915_gem_context *ctx,
+			     struct drm_i915_gem_context_param *args)
+{
+	struct i915_gem_context_param_context_image user;
+	struct intel_context *ce;
+	struct file *shmem_state;
+	unsigned long lookup;
+	void *state;
+	int ret = 0;
+
+	if (!IS_ENABLED(CONFIG_DRM_I915_REPLAY_GPU_HANGS_API))
+		return -EINVAL;
+
+	if (!ctx->i915->params.enable_debug_only_api)
+		return -EINVAL;
+
+	if (args->size < sizeof(user))
+		return -EINVAL;
+
+	if (copy_from_user(&user, u64_to_user_ptr(args->value), sizeof(user)))
+		return -EFAULT;
+
+	if (user.mbz)
+		return -EINVAL;
+
+	if (user.flags & ~(I915_CONTEXT_IMAGE_FLAG_ENGINE_INDEX))
+		return -EINVAL;
+
+	lookup = 0;
+	if (user.flags & I915_CONTEXT_IMAGE_FLAG_ENGINE_INDEX)
+		lookup |= LOOKUP_USER_INDEX;
+
+	ce = lookup_user_engine(ctx, lookup, &user.engine);
+	if (IS_ERR(ce))
+		return PTR_ERR(ce);
+
+	if (user.size < ce->engine->context_size) {
+		ret = -EINVAL;
+		goto out_ce;
+	}
+
+	if (drm_WARN_ON_ONCE(&ctx->i915->drm,
+			     test_bit(CONTEXT_ALLOC_BIT, &ce->flags))) {
+		/*
+		 * This is racy but for a debug only API, if userspace is keen
+		 * to create and configure contexts, while simultaneously using
+		 * them from a second thread, let them suffer by potentially not
+		 * executing with the context image they just raced to apply.
+		 */
+		ret = -EBUSY;
+		goto out_ce;
+	}
+
+	state = kmalloc(ce->engine->context_size, GFP_KERNEL);
+	if (!state) {
+		ret = -ENOMEM;
+		goto out_ce;
+	}
+
+	if (copy_from_user(state, u64_to_user_ptr(user.image),
+			   ce->engine->context_size)) {
+		ret = -EFAULT;
+		goto out_state;
+	}
+
+	shmem_state = shmem_create_from_data(ce->engine->name,
+					     state, ce->engine->context_size);
+	if (IS_ERR(shmem_state)) {
+		ret = PTR_ERR(shmem_state);
+		goto out_state;
+	}
+
+	if (intel_context_set_own_state(ce)) {
+		ret = -EBUSY;
+		fput(shmem_state);
+		goto out_state;
+	}
+
+	ce->default_state = shmem_state;
+
+	args->size = sizeof(user);
+
+out_state:
+	kfree(state);
+out_ce:
+	intel_context_put(ce);
+	return ret;
+}
+
 static int ctx_setparam(struct drm_i915_file_private *fpriv,
 			struct i915_gem_context *ctx,
 			struct drm_i915_gem_context_param *args)
@@ -2156,6 +2247,10 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
 		ret = set_persistence(ctx, args);
 		break;
 
+	case I915_CONTEXT_PARAM_CONTEXT_IMAGE:
+		ret = set_context_image(ctx, args);
+		break;
+
 	case I915_CONTEXT_PARAM_PROTECTED_CONTENT:
 	case I915_CONTEXT_PARAM_NO_ZEROMAP:
 	case I915_CONTEXT_PARAM_BAN_PERIOD:
@@ -2500,6 +2595,7 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
 	case I915_CONTEXT_PARAM_BAN_PERIOD:
 	case I915_CONTEXT_PARAM_ENGINES:
 	case I915_CONTEXT_PARAM_RINGSIZE:
+	case I915_CONTEXT_PARAM_CONTEXT_IMAGE:
 	default:
 		ret = -EINVAL;
 		break;
@@ -2612,5 +2708,22 @@ int __init i915_gem_context_module_init(void)
 	if (!slab_luts)
 		return -ENOMEM;
 
+	if (IS_ENABLED(CONFIG_DRM_I915_REPLAY_GPU_HANGS_API)) {
+		pr_notice("**************************************************************\n");
+		pr_notice("**     NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE     **\n");
+		pr_notice("**                                                          **\n");
+		if (i915_modparams.enable_debug_only_api)
+			pr_notice("** i915.enable_debug_only_api is intended to be set         **\n");
+		else
+			pr_notice("** CONFIG_DRM_I915_REPLAY_GPU_HANGS_API builds are intended **\n");
+		pr_notice("** for specific userspace graphics stack developers only!   **\n");
+		pr_notice("**                                                          **\n");
+		pr_notice("** If you are seeing this message please report this to the **\n");
+		pr_notice("** provider of your kernel build.                           **\n");
+		pr_notice("**                                                          **\n");
+		pr_notice("**     NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE     **\n");
+		pr_notice("**************************************************************\n");
+	}
+
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index a2f1245741bb..b1b8695ba7c9 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -27,6 +27,8 @@ static void rcu_context_free(struct rcu_head *rcu)
 	struct intel_context *ce = container_of(rcu, typeof(*ce), rcu);
 
 	trace_intel_context_free(ce);
+	if (intel_context_has_own_state(ce))
+		fput(ce->default_state);
 	kmem_cache_free(slab_ce, ce);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index 25564c01507e..9f523999acd1 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -375,6 +375,28 @@ intel_context_clear_nopreempt(struct intel_context *ce)
 	clear_bit(CONTEXT_NOPREEMPT, &ce->flags);
 }
 
+#if IS_ENABLED(CONFIG_DRM_I915_REPLAY_GPU_HANGS_API)
+static inline bool intel_context_has_own_state(const struct intel_context *ce)
+{
+	return test_bit(CONTEXT_OWN_STATE, &ce->flags);
+}
+
+static inline bool intel_context_set_own_state(struct intel_context *ce)
+{
+	return test_and_set_bit(CONTEXT_OWN_STATE, &ce->flags);
+}
+#else
+static inline bool intel_context_has_own_state(const struct intel_context *ce)
+{
+	return false;
+}
+
+static inline bool intel_context_set_own_state(struct intel_context *ce)
+{
+	return true;
+}
+#endif
+
 u64 intel_context_get_total_runtime_ns(struct intel_context *ce);
 u64 intel_context_get_avg_runtime_ns(struct intel_context *ce);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 6ae8abfeccdb..98c7f6052069 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -133,6 +133,7 @@ struct intel_context {
 #define CONTEXT_IS_PARKING		12
 #define CONTEXT_EXITING			13
 #define CONTEXT_LOW_LATENCY		14
+#define CONTEXT_OWN_STATE		15
 
 	struct {
 		u64 timeout_us;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index d4ffb352403c..7bd5d2c29056 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1130,7 +1130,8 @@ int lrc_alloc(struct intel_context *ce, struct intel_engine_cs *engine)
 
 	GEM_BUG_ON(ce->state);
 
-	ce->default_state = engine->default_state;
+	if (!intel_context_has_own_state(ce))
+		ce->default_state = engine->default_state;
 
 	vma = __lrc_alloc_state(ce, engine);
 	if (IS_ERR(vma))
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 8625e88e785f..72277bc8322e 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -569,7 +569,8 @@ static int ring_context_alloc(struct intel_context *ce)
 {
 	struct intel_engine_cs *engine = ce->engine;
 
-	ce->default_state = engine->default_state;
+	if (!intel_context_has_own_state(ce))
+		ce->default_state = engine->default_state;
 
 	/* One ringbuffer to rule them all */
 	GEM_BUG_ON(!engine->legacy.ring);
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 8c00169e3ab7..316e55f3e87b 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -131,6 +131,11 @@ i915_param_named_unsafe(lmem_size, uint, 0400,
 i915_param_named_unsafe(lmem_bar_size, uint, 0400,
 			"Set the lmem bar size(in MiB).");
 
+#if IS_ENABLED(CONFIG_DRM_I915_REPLAY_GPU_HANGS_API)
+i915_param_named(enable_debug_only_api, bool, 0400,
+		 "Enable support for unstable debug only userspace API. (default:false)");
+#endif
+
 static void _param_print_bool(struct drm_printer *p, const char *name,
 			      bool val)
 {
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 2eb3f2115ff2..0fbcb5b6d7bf 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -63,7 +63,8 @@ struct drm_printer;
 	/* leave bools at the end to not create holes */ \
 	param(bool, enable_hangcheck, true, 0600) \
 	param(bool, error_capture, true, IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR) ? 0600 : 0) \
-	param(bool, enable_gvt, false, IS_ENABLED(CONFIG_DRM_I915_GVT) ? 0400 : 0)
+	param(bool, enable_gvt, false, IS_ENABLED(CONFIG_DRM_I915_GVT) ? 0400 : 0) \
+	param(bool, enable_debug_only_api, false, IS_ENABLED(CONFIG_DRM_I915_REPLAY_GPU_HANGS_API) ? 0400 : 0)
 
 #define MEMBER(T, member, ...) T member;
 struct i915_params {
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index d4d86e566e07..535cb68fdb5c 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2163,6 +2163,15 @@ struct drm_i915_gem_context_param {
  * supports this per context flag.
  */
 #define I915_CONTEXT_PARAM_LOW_LATENCY		0xe
+
+/*
+ * I915_CONTEXT_PARAM_CONTEXT_IMAGE:
+ *
+ * Allows userspace to provide own context images.
+ *
+ * Note that this is a debug API not available on production kernel builds.
+ */
+#define I915_CONTEXT_PARAM_CONTEXT_IMAGE	0xf
 /* Must be kept compact -- no holes and well documented */
 
 	/** @value: Context parameter value to be set or queried */
@@ -2564,6 +2573,24 @@ struct i915_context_param_engines {
 	struct i915_engine_class_instance engines[N__]; \
 } __attribute__((packed)) name__
 
+struct i915_gem_context_param_context_image {
+	/** @engine: Engine class & instance to be configured. */
+	struct i915_engine_class_instance engine;
+
+	/** @flags: One of the supported flags or zero. */
+	__u32 flags;
+#define I915_CONTEXT_IMAGE_FLAG_ENGINE_INDEX (1u << 0)
+
+	/** @size: Size of the image blob pointed to by @image. */
+	__u32 size;
+
+	/** @mbz: Must be zero. */
+	__u32 mbz;
+
+	/** @image: Userspace memory containing the context image. */
+	__u64 image;
+} __attribute__((packed));
+
 /**
  * struct drm_i915_gem_context_create_ext_setparam - Context parameter
  * to set or query during context creation.
-- 
2.44.0

