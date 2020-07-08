Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84534217C49
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 02:39:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F1446E1CE;
	Wed,  8 Jul 2020 00:39:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 237656E195
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 00:39:54 +0000 (UTC)
IronPort-SDR: sptBAoIjnERwMRw33y4oQjhMKVlHM20I0/KTicPsamAuiRJRl/wtTou32fYPBVncR6ArOWjpPe
 mcryZM7H62QQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="165790540"
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="165790540"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 17:39:53 -0700
IronPort-SDR: Yzwd+rJagSrZ6QQxc66BtM0A20FSu5BjbUMItZcSZ6j3z3eosViZ1Kx9Ygb99jrwk1HXG29rZl
 T/kcX2uyR1rQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="314482707"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga008.jf.intel.com with ESMTP; 07 Jul 2020 17:39:53 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Jul 2020 17:39:47 -0700
Message-Id: <20200708003952.21831-5-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200708003952.21831-1-daniele.ceraolospurio@intel.com>
References: <20200708003952.21831-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 4/9] drm/i915: Move the engine mask to
 intel_gt_info
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

Since the engines belong to the GT, move the runtime-updated list of
available engines to the intel_gt struct. The original mask has been
renamed to indicate it contains the maximum engine list that can be
found on a matching device.

In preparation for other info being moved to the gt in follow up patches
(sseu), introduce an intel_gt_info structure to group all gt-related
runtime info.

v2: s/max_engine_mask/platform_engine_mask (tvrtko), fix selftest

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com> #v1
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  3 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 13 +++---
 drivers/gpu/drm/i915/gt/intel_gt.c            |  6 +++
 drivers/gpu/drm/i915/gt/intel_gt.h            |  4 ++
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  8 ++++
 drivers/gpu/drm/i915/gt/intel_reset.c         |  6 +--
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  2 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |  8 ++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |  2 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |  2 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |  2 +
 drivers/gpu/drm/i915/i915_drv.c               |  1 +
 drivers/gpu/drm/i915/i915_drv.h               |  6 +--
 drivers/gpu/drm/i915/i915_gpu_error.c         | 23 ++++++----
 drivers/gpu/drm/i915/i915_gpu_error.h         |  3 ++
 drivers/gpu/drm/i915/i915_pci.c               | 42 +++++++++----------
 drivers/gpu/drm/i915/intel_device_info.c      |  1 -
 drivers/gpu/drm/i915/intel_device_info.h      |  7 +---
 drivers/gpu/drm/i915/intel_uncore.c           |  2 +-
 drivers/gpu/drm/i915/selftests/i915_request.c |  2 +-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  3 +-
 21 files changed, 84 insertions(+), 62 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index dd15a799f9d6..6b4ec66cb558 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1980,8 +1980,7 @@ static int eb_submit(struct i915_execbuffer *eb, struct i915_vma *batch)
 
 static int num_vcs_engines(const struct drm_i915_private *i915)
 {
-	return hweight64(INTEL_INFO(i915)->engine_mask &
-			 GENMASK_ULL(VCS0 + I915_MAX_VCS - 1, VCS0));
+	return hweight64(VDBOX_MASK(&i915->gt));
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 04114de15fe3..fca3c2348e5e 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -370,7 +370,7 @@ static void __setup_engine_capabilities(struct intel_engine_cs *engine)
 		 * instances.
 		 */
 		if ((INTEL_GEN(i915) >= 11 &&
-		     RUNTIME_INFO(i915)->vdbox_sfc_access & engine->mask) ||
+		     engine->gt->info.vdbox_sfc_access & engine->mask) ||
 		    (INTEL_GEN(i915) >= 9 && engine->instance == 0))
 			engine->uabi_capabilities |=
 				I915_VIDEO_AND_ENHANCE_CLASS_CAPABILITY_SFC;
@@ -463,7 +463,7 @@ void intel_engines_free(struct intel_gt *gt)
 static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
-	struct intel_device_info *info = mkwrite_device_info(i915);
+	struct intel_gt_info *info = &gt->info;
 	struct intel_uncore *uncore = gt->uncore;
 	unsigned int logical_vdbox = 0;
 	unsigned int i;
@@ -471,6 +471,8 @@ static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)
 	u16 vdbox_mask;
 	u16 vebox_mask;
 
+	info->engine_mask = INTEL_INFO(i915)->platform_engine_mask;
+
 	if (INTEL_GEN(i915) < 11)
 		return info->engine_mask;
 
@@ -498,7 +500,7 @@ static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)
 		 * In TGL each VDBOX has access to an SFC.
 		 */
 		if (INTEL_GEN(i915) >= 12 || logical_vdbox++ % 2 == 0)
-			RUNTIME_INFO(i915)->vdbox_sfc_access |= BIT(i);
+			gt->info.vdbox_sfc_access |= BIT(i);
 	}
 	drm_dbg(&i915->drm, "vdbox enable: %04x, instances: %04lx\n",
 		vdbox_mask, VDBOX_MASK(gt));
@@ -531,7 +533,6 @@ static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)
 int intel_engines_init_mmio(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
-	struct intel_device_info *device_info = mkwrite_device_info(i915);
 	const unsigned int engine_mask = init_engine_mask(gt);
 	unsigned int mask = 0;
 	unsigned int i;
@@ -561,9 +562,9 @@ int intel_engines_init_mmio(struct intel_gt *gt)
 	 * engines.
 	 */
 	if (drm_WARN_ON(&i915->drm, mask != engine_mask))
-		device_info->engine_mask = mask;
+		gt->info.engine_mask = mask;
 
-	RUNTIME_INFO(i915)->num_engines = hweight32(mask);
+	gt->info.num_engines = hweight32(mask);
 
 	intel_gt_check_and_clear_faults(gt);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 876f78759095..6a268c6d6a6f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -642,3 +642,9 @@ void intel_gt_driver_late_release(struct intel_gt *gt)
 	intel_gt_fini_timelines(gt);
 	intel_engines_free(gt);
 }
+
+void intel_gt_info_print(const struct intel_gt_info *info,
+			 struct drm_printer *p)
+{
+	drm_printf(p, "available engines: %x\n", info->engine_mask);
+}
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 982957ca4e62..908fc5dea885 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -11,6 +11,7 @@
 #include "intel_reset.h"
 
 struct drm_i915_private;
+struct drm_printer;
 
 #define GT_TRACE(gt, fmt, ...) do {					\
 	const struct intel_gt *gt__ __maybe_unused = (gt);		\
@@ -72,4 +73,7 @@ static inline bool intel_gt_is_wedged(const struct intel_gt *gt)
 	return unlikely(test_bit(I915_WEDGED, &gt->reset.flags));
 }
 
+void intel_gt_info_print(const struct intel_gt_info *info,
+			 struct drm_printer *p);
+
 #endif /* __INTEL_GT_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 0cc1d6b185dc..bb7551867c00 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -109,6 +109,14 @@ struct intel_gt {
 	struct intel_gt_buffer_pool buffer_pool;
 
 	struct i915_vma *scratch;
+
+	struct intel_gt_info {
+		intel_engine_mask_t engine_mask;
+		u8 num_engines;
+
+		/* Media engine access to SFC per instance */
+		u8 vdbox_sfc_access;
+	} info;
 };
 
 enum intel_gt_scratch_field {
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 121bf39a6f3e..46a5ceffc22f 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -342,7 +342,7 @@ static int gen6_reset_engines(struct intel_gt *gt,
 static int gen11_lock_sfc(struct intel_engine_cs *engine, u32 *hw_mask)
 {
 	struct intel_uncore *uncore = engine->uncore;
-	u8 vdbox_sfc_access = RUNTIME_INFO(engine->i915)->vdbox_sfc_access;
+	u8 vdbox_sfc_access = engine->gt->info.vdbox_sfc_access;
 	i915_reg_t sfc_forced_lock, sfc_forced_lock_ack;
 	u32 sfc_forced_lock_bit, sfc_forced_lock_ack_bit;
 	i915_reg_t sfc_usage;
@@ -417,7 +417,7 @@ static int gen11_lock_sfc(struct intel_engine_cs *engine, u32 *hw_mask)
 static void gen11_unlock_sfc(struct intel_engine_cs *engine)
 {
 	struct intel_uncore *uncore = engine->uncore;
-	u8 vdbox_sfc_access = RUNTIME_INFO(engine->i915)->vdbox_sfc_access;
+	u8 vdbox_sfc_access = engine->gt->info.vdbox_sfc_access;
 	i915_reg_t sfc_forced_lock;
 	u32 sfc_forced_lock_bit;
 
@@ -1246,7 +1246,7 @@ void intel_gt_handle_error(struct intel_gt *gt,
 	 */
 	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
 
-	engine_mask &= INTEL_INFO(gt->i915)->engine_mask;
+	engine_mask &= gt->info.engine_mask;
 
 	if (flags & I915_ERROR_CAPTURE) {
 		i915_capture_error_state(gt->i915);
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 68a08486fc87..b09b83deecef 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -649,7 +649,7 @@ static inline int mi_set_context(struct i915_request *rq,
 	struct drm_i915_private *i915 = engine->i915;
 	enum intel_engine_id id;
 	const int num_engines =
-		IS_HASWELL(i915) ? RUNTIME_INFO(i915)->num_engines - 1 : 0;
+		IS_HASWELL(i915) ? engine->gt->info.num_engines - 1 : 0;
 	bool force_restore = false;
 	int len;
 	u32 *cs;
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index daa4aabab9a7..3fc5de961280 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -963,7 +963,7 @@ slice_semaphore_queue(struct intel_engine_cs *outer,
 		goto out;
 
 	if (i915_request_wait(head, 0,
-			      2 * RUNTIME_INFO(outer->i915)->num_engines * (count + 2) * (count + 3)) < 0) {
+			      2 * outer->gt->info.num_engines * (count + 2) * (count + 3)) < 0) {
 		pr_err("Failed to slice along semaphore chain of length (%d, %d)!\n",
 		       count, n);
 		GEM_TRACE_DUMP();
@@ -3569,8 +3569,7 @@ static int smoke_crescendo(struct preempt_smoke *smoke, unsigned int flags)
 	}
 
 	pr_info("Submitted %lu crescendo:%x requests across %d engines and %d contexts\n",
-		count, flags,
-		RUNTIME_INFO(smoke->gt->i915)->num_engines, smoke->ncontext);
+		count, flags, smoke->gt->info.num_engines, smoke->ncontext);
 	return 0;
 }
 
@@ -3597,8 +3596,7 @@ static int smoke_random(struct preempt_smoke *smoke, unsigned int flags)
 	} while (count < smoke->ncontext && !__igt_timeout(end_time, NULL));
 
 	pr_info("Submitted %lu random:%x requests across %d engines and %d contexts\n",
-		count, flags,
-		RUNTIME_INFO(smoke->gt->i915)->num_engines, smoke->ncontext);
+		count, flags, smoke->gt->info.num_engines, smoke->ncontext);
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index fbdd6b0677db..c10ae1660e53 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -106,7 +106,7 @@ static void __guc_ads_init(struct intel_guc *guc)
 
 	blob->system_info.vdbox_enable_mask = VDBOX_MASK(gt);
 	blob->system_info.vebox_enable_mask = VEBOX_MASK(gt);
-	blob->system_info.vdbox_sfc_support_mask = RUNTIME_INFO(dev_priv)->vdbox_sfc_access;
+	blob->system_info.vdbox_sfc_support_mask = gt->info.vdbox_sfc_access;
 
 	base = intel_guc_ggtt_offset(guc, guc->ads_vma);
 
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 85e44c6c47a6..63bba7b4bb2f 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -347,7 +347,7 @@ static int gdrst_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 			gvt_dbg_mmio("vgpu%d: request GUC Reset\n", vgpu->id);
 			vgpu_vreg_t(vgpu, GUC_STATUS) |= GS_MIA_IN_RESET;
 		}
-		engine_mask &= INTEL_INFO(vgpu->gvt->gt->i915)->engine_mask;
+		engine_mask &= vgpu->gvt->gt->info.engine_mask;
 	}
 
 	/* vgpu_lock already hold by emulate mmio r/w */
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 94ed442910d6..41ca8ff2aa16 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -34,6 +34,7 @@
 #include "gem/i915_gem_context.h"
 #include "gt/intel_gt_buffer_pool.h"
 #include "gt/intel_gt_clock_utils.h"
+#include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_gt_requests.h"
 #include "gt/intel_reset.h"
@@ -61,6 +62,7 @@ static int i915_capabilities(struct seq_file *m, void *data)
 
 	intel_device_info_print_static(INTEL_INFO(i915), &p);
 	intel_device_info_print_runtime(RUNTIME_INFO(i915), &p);
+	intel_gt_info_print(&i915->gt.info, &p);
 	intel_driver_caps_print(&i915->caps, &p);
 
 	kernel_param_lock(THIS_MODULE);
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 611287353420..67789df42be8 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -886,6 +886,7 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 
 		intel_device_info_print_static(INTEL_INFO(dev_priv), &p);
 		intel_device_info_print_runtime(RUNTIME_INFO(dev_priv), &p);
+		intel_gt_info_print(&dev_priv->gt.info, &p);
 	}
 
 	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG))
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b3968beb7048..21bb9f7cc452 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1256,7 +1256,7 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
 
 /* Iterator over subset of engines selected by mask */
 #define for_each_engine_masked(engine__, gt__, mask__, tmp__) \
-	for ((tmp__) = (mask__) & INTEL_INFO((gt__)->i915)->engine_mask; \
+	for ((tmp__) = (mask__) & (gt__)->info.engine_mask; \
 	     (tmp__) ? \
 	     ((engine__) = (gt__)->engine[__mask_next_bit(tmp__)]), 1 : \
 	     0;)
@@ -1563,12 +1563,12 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_GEN9_BC(dev_priv)	(IS_GEN(dev_priv, 9) && !IS_LP(dev_priv))
 
 #define __HAS_ENGINE(engine_mask, id) ((engine_mask) & BIT(id))
-#define HAS_ENGINE(gt, id) __HAS_ENGINE(INTEL_INFO((gt)->i915)->engine_mask, id)
+#define HAS_ENGINE(gt, id) __HAS_ENGINE((gt)->info.engine_mask, id)
 
 #define ENGINE_INSTANCES_MASK(gt, first, count) ({		\
 	unsigned int first__ = (first);					\
 	unsigned int count__ = (count);					\
-	(INTEL_INFO((gt)->i915)->engine_mask &				\
+	((gt)->info.engine_mask &						\
 	 GENMASK(first__ + count__ - 1, first__)) >> first__;		\
 })
 #define VDBOX_MASK(gt) \
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 866166ada10e..9cb9aa39c33d 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -42,6 +42,7 @@
 
 #include "gem/i915_gem_context.h"
 #include "gem/i915_gem_lmem.h"
+#include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
 
 #include "i915_drv.h"
@@ -619,16 +620,15 @@ static void print_error_vma(struct drm_i915_error_state_buf *m,
 }
 
 static void err_print_capabilities(struct drm_i915_error_state_buf *m,
-				   const struct intel_device_info *info,
-				   const struct intel_runtime_info *runtime,
-				   const struct intel_driver_caps *caps)
+				   struct i915_gpu_coredump *error)
 {
 	struct drm_printer p = i915_error_printer(m);
 
-	intel_device_info_print_static(info, &p);
-	intel_device_info_print_runtime(runtime, &p);
-	intel_device_info_print_topology(&runtime->sseu, &p);
-	intel_driver_caps_print(caps, &p);
+	intel_device_info_print_static(&error->device_info, &p);
+	intel_device_info_print_runtime(&error->runtime_info, &p);
+	intel_device_info_print_topology(&error->runtime_info.sseu, &p);
+	intel_gt_info_print(&error->gt->info, &p);
+	intel_driver_caps_print(&error->driver_caps, &p);
 }
 
 static void err_print_params(struct drm_i915_error_state_buf *m,
@@ -798,8 +798,7 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
 	if (error->display)
 		intel_display_print_error_state(m, error->display);
 
-	err_print_capabilities(m, &error->device_info, &error->runtime_info,
-			       &error->driver_caps);
+	err_print_capabilities(m, error);
 	err_print_params(m, &error->params);
 }
 
@@ -1630,6 +1629,11 @@ static void gt_record_regs(struct intel_gt_coredump *gt)
 	gt->pgtbl_er = intel_uncore_read(uncore, PGTBL_ER);
 }
 
+static void gt_record_info(struct intel_gt_coredump *gt)
+{
+	memcpy(&gt->info, &gt->_gt->info, sizeof(struct intel_gt_info));
+}
+
 /*
  * Generate a semi-unique error code. The code is not meant to have meaning, The
  * code's only purpose is to try to prevent false duplicated bug reports by
@@ -1808,6 +1812,7 @@ struct i915_gpu_coredump *i915_gpu_coredump(struct drm_i915_private *i915)
 			return ERR_PTR(-ENOMEM);
 		}
 
+		gt_record_info(error->gt);
 		gt_record_engines(error->gt, compress);
 
 		if (INTEL_INFO(i915)->has_gt_uc)
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 76b80fbfb7e9..0220b0992808 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -15,6 +15,7 @@
 #include <drm/drm_mm.h>
 
 #include "gt/intel_engine.h"
+#include "gt/intel_gt_types.h"
 #include "gt/uc/intel_uc_fw.h"
 
 #include "intel_device_info.h"
@@ -118,6 +119,8 @@ struct intel_gt_coredump {
 	bool awake;
 	bool simulated;
 
+	struct intel_gt_info info;
+
 	/* Generic register state */
 	u32 eir;
 	u32 pgtbl_er;
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 0be3b66ce666..db916fff3f0d 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -168,7 +168,7 @@
 	.gpu_reset_clobbers_display = true, \
 	.hws_needs_physical = 1, \
 	.unfenced_needs_alignment = 1, \
-	.engine_mask = BIT(RCS0), \
+	.platform_engine_mask = BIT(RCS0), \
 	.has_snoop = true, \
 	.has_coherent_ggtt = false, \
 	.dma_mask_size = 32, \
@@ -188,7 +188,7 @@
 	.gpu_reset_clobbers_display = true, \
 	.hws_needs_physical = 1, \
 	.unfenced_needs_alignment = 1, \
-	.engine_mask = BIT(RCS0), \
+	.platform_engine_mask = BIT(RCS0), \
 	.has_snoop = true, \
 	.has_coherent_ggtt = false, \
 	.dma_mask_size = 32, \
@@ -226,7 +226,7 @@ static const struct intel_device_info i865g_info = {
 	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_gmch = 1, \
 	.gpu_reset_clobbers_display = true, \
-	.engine_mask = BIT(RCS0), \
+	.platform_engine_mask = BIT(RCS0), \
 	.has_snoop = true, \
 	.has_coherent_ggtt = true, \
 	.dma_mask_size = 32, \
@@ -317,7 +317,7 @@ static const struct intel_device_info pnv_m_info = {
 	.display.has_hotplug = 1, \
 	.display.has_gmch = 1, \
 	.gpu_reset_clobbers_display = true, \
-	.engine_mask = BIT(RCS0), \
+	.platform_engine_mask = BIT(RCS0), \
 	.has_snoop = true, \
 	.has_coherent_ggtt = true, \
 	.dma_mask_size = 36, \
@@ -349,7 +349,7 @@ static const struct intel_device_info i965gm_info = {
 static const struct intel_device_info g45_info = {
 	GEN4_FEATURES,
 	PLATFORM(INTEL_G45),
-	.engine_mask = BIT(RCS0) | BIT(VCS0),
+	.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
 	.gpu_reset_clobbers_display = false,
 };
 
@@ -359,7 +359,7 @@ static const struct intel_device_info gm45_info = {
 	.is_mobile = 1,
 	.display.has_fbc = 1,
 	.display.supports_tv = 1,
-	.engine_mask = BIT(RCS0) | BIT(VCS0),
+	.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
 	.gpu_reset_clobbers_display = false,
 };
 
@@ -368,7 +368,7 @@ static const struct intel_device_info gm45_info = {
 	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
 	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_hotplug = 1, \
-	.engine_mask = BIT(RCS0) | BIT(VCS0), \
+	.platform_engine_mask = BIT(RCS0) | BIT(VCS0), \
 	.has_snoop = true, \
 	.has_coherent_ggtt = true, \
 	/* ilk does support rc6, but we do not implement [power] contexts */ \
@@ -398,7 +398,7 @@ static const struct intel_device_info ilk_m_info = {
 	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_hotplug = 1, \
 	.display.has_fbc = 1, \
-	.engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
+	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_coherent_ggtt = true, \
 	.has_llc = 1, \
 	.has_rc6 = 1, \
@@ -449,7 +449,7 @@ static const struct intel_device_info snb_m_gt2_info = {
 	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C), \
 	.display.has_hotplug = 1, \
 	.display.has_fbc = 1, \
-	.engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
+	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_coherent_ggtt = true, \
 	.has_llc = 1, \
 	.has_rc6 = 1, \
@@ -520,7 +520,7 @@ static const struct intel_device_info vlv_info = {
 	.ppgtt_size = 31,
 	.has_snoop = true,
 	.has_coherent_ggtt = false,
-	.engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0),
+	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0),
 	.display_mmio_offset = VLV_DISPLAY_BASE,
 	I9XX_PIPE_OFFSETS,
 	I9XX_CURSOR_OFFSETS,
@@ -531,7 +531,7 @@ static const struct intel_device_info vlv_info = {
 
 #define G75_FEATURES  \
 	GEN7_FEATURES, \
-	.engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
+	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
 	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
 	.display.has_ddi = 1, \
@@ -598,7 +598,7 @@ static const struct intel_device_info bdw_rsvd_info = {
 static const struct intel_device_info bdw_gt3_info = {
 	BDW_PLATFORM,
 	.gt = 3,
-	.engine_mask =
+	.platform_engine_mask =
 		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1),
 };
 
@@ -609,7 +609,7 @@ static const struct intel_device_info chv_info = {
 	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
 	.display.has_hotplug = 1,
 	.is_lp = 1,
-	.engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0),
+	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0),
 	.has_64bit_reloc = 1,
 	.has_runtime_pm = 1,
 	.has_rc6 = 1,
@@ -662,7 +662,7 @@ static const struct intel_device_info skl_gt2_info = {
 
 #define SKL_GT3_PLUS_PLATFORM \
 	SKL_PLATFORM, \
-	.engine_mask = \
+	.platform_engine_mask = \
 		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1)
 
 
@@ -681,7 +681,7 @@ static const struct intel_device_info skl_gt4_info = {
 	.is_lp = 1, \
 	.num_supported_dbuf_slices = 1, \
 	.display.has_hotplug = 1, \
-	.engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
+	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
 	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
 	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
@@ -744,7 +744,7 @@ static const struct intel_device_info kbl_gt2_info = {
 static const struct intel_device_info kbl_gt3_info = {
 	KBL_PLATFORM,
 	.gt = 3,
-	.engine_mask =
+	.platform_engine_mask =
 		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1),
 };
 
@@ -765,7 +765,7 @@ static const struct intel_device_info cfl_gt2_info = {
 static const struct intel_device_info cfl_gt3_info = {
 	CFL_PLATFORM,
 	.gt = 3,
-	.engine_mask =
+	.platform_engine_mask =
 		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1),
 };
 
@@ -834,7 +834,7 @@ static const struct intel_device_info cnl_info = {
 static const struct intel_device_info icl_info = {
 	GEN11_FEATURES,
 	PLATFORM(INTEL_ICELAKE),
-	.engine_mask =
+	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 };
 
@@ -842,7 +842,7 @@ static const struct intel_device_info ehl_info = {
 	GEN11_FEATURES,
 	PLATFORM(INTEL_ELKHARTLAKE),
 	.require_force_probe = 1,
-	.engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
+	.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
 	.ppgtt_size = 36,
 };
 
@@ -878,7 +878,7 @@ static const struct intel_device_info tgl_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_TIGERLAKE),
 	.display.has_modular_fia = 1,
-	.engine_mask =
+	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 };
 
@@ -891,7 +891,7 @@ static const struct intel_device_info rkl_info = {
 		BIT(TRANSCODER_C),
 	.require_force_probe = 1,
 	.display.has_psr_hw_tracking = 0,
-	.engine_mask =
+	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0),
 };
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 92ebea35c752..a362a66fce11 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -92,7 +92,6 @@ static const char *iommu_name(void)
 void intel_device_info_print_static(const struct intel_device_info *info,
 				    struct drm_printer *p)
 {
-	drm_printf(p, "engines: %x\n", info->engine_mask);
 	drm_printf(p, "gen: %d\n", info->gen);
 	drm_printf(p, "gt: %d\n", info->gt);
 	drm_printf(p, "iommu: %s\n", iommu_name());
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index fa60fdc1d75a..b010b6728432 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -157,7 +157,7 @@ struct intel_device_info {
 
 	u8 gen;
 	u8 gt; /* GT number, 0 if undefined */
-	intel_engine_mask_t engine_mask; /* Engines supported by the HW */
+	intel_engine_mask_t platform_engine_mask; /* Engines supported by the HW */
 
 	enum intel_platform platform;
 
@@ -219,8 +219,6 @@ struct intel_runtime_info {
 	u8 num_sprites[I915_MAX_PIPES];
 	u8 num_scalers[I915_MAX_PIPES];
 
-	u8 num_engines;
-
 	/* Slice/subslice/EU info */
 	struct sseu_dev_info sseu;
 
@@ -228,9 +226,6 @@ struct intel_runtime_info {
 
 	u32 cs_timestamp_frequency_hz;
 	u32 cs_timestamp_period_ns;
-
-	/* Media engine access to SFC per instance */
-	u8 vdbox_sfc_access;
 };
 
 struct intel_driver_caps {
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 83e576cff161..f5edee17902a 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1530,7 +1530,7 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
 
 	if (INTEL_GEN(i915) >= 11) {
 		/* we'll prune the domains of missing engines later */
-		intel_engine_mask_t emask = INTEL_INFO(i915)->engine_mask;
+		intel_engine_mask_t emask = INTEL_INFO(i915)->platform_engine_mask;
 		int i;
 
 		uncore->funcs.force_wake_get = fw_domains_get_with_fallback;
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 9271aad7f779..57dd6f5122ee 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -1454,7 +1454,7 @@ static int live_breadcrumbs_smoketest(void *arg)
 		idx++;
 	}
 	pr_info("Completed %lu waits for %lu fences across %d engines and %d cpus\n",
-		num_waits, num_fences, RUNTIME_INFO(i915)->num_engines, ncpus);
+		num_waits, num_fences, idx, ncpus);
 
 	ret = igt_live_test_end(&live) ?: ret;
 out_contexts:
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 9b105b811f1f..9a46be05425a 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -190,7 +190,8 @@ struct drm_i915_private *mock_gem_device(void)
 	mock_init_ggtt(i915, &i915->ggtt);
 	i915->gt.vm = i915_vm_get(&i915->ggtt.vm);
 
-	mkwrite_device_info(i915)->engine_mask = BIT(0);
+	mkwrite_device_info(i915)->platform_engine_mask = BIT(0);
+	i915->gt.info.engine_mask = BIT(0);
 
 	i915->gt.engine[RCS0] = mock_engine(i915, "mock", RCS0);
 	if (!i915->gt.engine[RCS0])
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
