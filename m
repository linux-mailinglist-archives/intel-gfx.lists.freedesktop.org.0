Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBB2A6FF18
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 14:00:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68DB010E264;
	Tue, 25 Mar 2025 13:00:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K/yYYgHb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C04310E03A;
 Tue, 25 Mar 2025 13:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742907606; x=1774443606;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=V6RcSblFtBbtcwVeemSexL0Go9Iuo9f5LgdWtE1qkI0=;
 b=K/yYYgHb0wBov7ZNu2ClOZk4PBO3k51UKp+sKOmY1M+M7aAygO6ukycE
 DjaTNHtqcfyNOE8cO3MEojJX3YhU8jZ/Wf+7JFZjGni4qWFXe3szA1PK5
 HF1ySOt8Ji8g367jePj3yxakTJ+0s3zbwU6f/5kUUR7yRuP7nfLcC+OZo
 INt1+jnT78zstJi8DL4KaGueCVqDjiylyqejzmgnZMyAhUZLWLykeeu+z
 FCLRHDjEp0nnsNKu8xJZUrlC6Fpk2G9CZKFx9ieA1HNKuj6/QeWhln7/Y
 KYyeodo6P3xokMVHDVB1e2IkgrL2axJFN7Bqd66KERHxmZej2bBpl7aUG w==;
X-CSE-ConnectionGUID: UhJR4hExSwi5lPOFqL6FIw==
X-CSE-MsgGUID: 4xLN7E8+TD6+9FsQzldSeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11384"; a="54799368"
X-IronPort-AV: E=Sophos;i="6.14,275,1736841600"; d="scan'208";a="54799368"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 05:59:59 -0700
X-CSE-ConnectionGUID: e5DlEGUqQa2iu9o+qhQkrw==
X-CSE-MsgGUID: Jkf58GVbQnKiTcmyw8g3Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,275,1736841600"; d="scan'208";a="129041044"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.134])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 05:59:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915: use display snapshot mechanism for display irq regs
Date: Tue, 25 Mar 2025 14:59:54 +0200
Message-Id: <20250325125954.1805212-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Move more display specific parts of GPU error logging behind the display
snapshot interface.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 43 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_display_irq.h  |  5 +++
 .../drm/i915/display/intel_display_snapshot.c |  5 +++
 drivers/gpu/drm/i915/i915_gpu_error.c         | 30 -------------
 drivers/gpu/drm/i915/i915_gpu_error.h         |  2 -
 5 files changed, 53 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index d2a35e3630b1..832aa03f211b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -2329,3 +2329,46 @@ void intel_display_irq_init(struct intel_display *display)
 
 	INIT_WORK(&display->irq.vblank_dc_work, intel_display_vblank_dc_work);
 }
+
+struct intel_display_irq_snapshot {
+	u32 ier;
+	u32 derrmr;
+};
+
+struct intel_display_irq_snapshot *
+intel_display_irq_snapshot_capture(struct intel_display *display)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
+	struct intel_display_irq_snapshot *snapshot;
+
+	snapshot = kzalloc(sizeof(*snapshot), GFP_ATOMIC);
+	if (!snapshot)
+		return NULL;
+
+	if (DISPLAY_VER(display) >= 6 && DISPLAY_VER(display) < 20)
+		snapshot->derrmr = intel_uncore_read(uncore, DERRMR);
+
+	if (DISPLAY_VER(display) >= 8)
+		snapshot->ier = intel_uncore_read(uncore, GEN8_DE_MISC_IER);
+	else if (display->platform.valleyview)
+		snapshot->ier = intel_uncore_read(uncore, VLV_IER);
+	else if (HAS_PCH_SPLIT(i915))
+		snapshot->ier = intel_uncore_read(uncore, DEIER);
+	else if (DISPLAY_VER(display) == 2)
+		snapshot->ier = intel_uncore_read16(uncore, GEN2_IER);
+	else
+		snapshot->ier = intel_uncore_read(uncore, GEN2_IER);
+
+	return snapshot;
+}
+
+void intel_display_irq_snapshot_print(const struct intel_display_irq_snapshot *snapshot,
+				      struct drm_printer *p)
+{
+	if (!snapshot)
+		return;
+
+	drm_printf(p, "IER: 0x%08x\n", snapshot->ier);
+	drm_printf(p, "DERRMR: 0x%08x\n", snapshot->derrmr);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index f72727768351..4f0e27a37854 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -12,7 +12,9 @@
 
 enum pipe;
 struct drm_crtc;
+struct drm_printer;
 struct intel_display;
+struct intel_display_irq_snapshot;
 
 void valleyview_enable_display_irqs(struct intel_display *display);
 void valleyview_disable_display_irqs(struct intel_display *display);
@@ -82,4 +84,7 @@ void intel_display_irq_init(struct intel_display *display);
 
 void i915gm_irq_cstate_wa(struct intel_display *display, bool enable);
 
+struct intel_display_irq_snapshot *intel_display_irq_snapshot_capture(struct intel_display *display);
+void intel_display_irq_snapshot_print(const struct intel_display_irq_snapshot *snapshot, struct drm_printer *p);
+
 #endif /* __INTEL_DISPLAY_IRQ_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_snapshot.c b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
index 25ba043cbb65..66087302fdbc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_snapshot.c
+++ b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
@@ -7,6 +7,7 @@
 
 #include "intel_display_core.h"
 #include "intel_display_device.h"
+#include "intel_display_irq.h"
 #include "intel_display_params.h"
 #include "intel_display_snapshot.h"
 #include "intel_dmc.h"
@@ -20,6 +21,7 @@ struct intel_display_snapshot {
 	struct intel_display_params params;
 	struct intel_overlay_snapshot *overlay;
 	struct intel_dmc_snapshot *dmc;
+	struct intel_display_irq_snapshot *irq;
 };
 
 struct intel_display_snapshot *intel_display_snapshot_capture(struct intel_display *display)
@@ -38,6 +40,7 @@ struct intel_display_snapshot *intel_display_snapshot_capture(struct intel_displ
 
 	intel_display_params_copy(&snapshot->params);
 
+	snapshot->irq = intel_display_irq_snapshot_capture(display);
 	snapshot->overlay = intel_overlay_snapshot_capture(display);
 	snapshot->dmc = intel_dmc_snapshot_capture(display);
 
@@ -57,6 +60,7 @@ void intel_display_snapshot_print(const struct intel_display_snapshot *snapshot,
 	intel_display_device_info_print(&snapshot->info, &snapshot->runtime_info, p);
 	intel_display_params_dump(&snapshot->params, display->drm->driver->name, p);
 
+	intel_display_irq_snapshot_print(snapshot->irq, p);
 	intel_overlay_snapshot_print(snapshot->overlay, p);
 	intel_dmc_snapshot_print(snapshot->dmc, p);
 }
@@ -68,6 +72,7 @@ void intel_display_snapshot_free(struct intel_display_snapshot *snapshot)
 
 	intel_display_params_free(&snapshot->params);
 
+	kfree(snapshot->irq);
 	kfree(snapshot->overlay);
 	kfree(snapshot->dmc);
 	kfree(snapshot);
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 819ab933bb10..4d90331c41ef 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -726,13 +726,6 @@ static void err_print_gt_info(struct drm_i915_error_state_buf *m,
 	intel_sseu_print_topology(gt->_gt->i915, &gt->info.sseu, &p);
 }
 
-static void err_print_gt_display(struct drm_i915_error_state_buf *m,
-				 struct intel_gt_coredump *gt)
-{
-	err_printf(m, "IER: 0x%08x\n", gt->ier);
-	err_printf(m, "DERRMR: 0x%08x\n", gt->derrmr);
-}
-
 static void err_print_gt_global_nonguc(struct drm_i915_error_state_buf *m,
 				       struct intel_gt_coredump *gt)
 {
@@ -878,7 +871,6 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
 		if (error->gt->uc && error->gt->uc->guc.is_guc_capture)
 			print_guc_capture = true;
 
-		err_print_gt_display(m, error->gt);
 		err_print_gt_global_nonguc(m, error->gt);
 		err_print_gt_fences(m, error->gt);
 
@@ -1767,27 +1759,6 @@ gt_record_uc(struct intel_gt_coredump *gt,
 	return error_uc;
 }
 
-/* Capture display registers. */
-static void gt_record_display_regs(struct intel_gt_coredump *gt)
-{
-	struct intel_uncore *uncore = gt->_gt->uncore;
-	struct drm_i915_private *i915 = uncore->i915;
-
-	if (DISPLAY_VER(i915) >= 6 && DISPLAY_VER(i915) < 20)
-		gt->derrmr = intel_uncore_read(uncore, DERRMR);
-
-	if (GRAPHICS_VER(i915) >= 8)
-		gt->ier = intel_uncore_read(uncore, GEN8_DE_MISC_IER);
-	else if (IS_VALLEYVIEW(i915))
-		gt->ier = intel_uncore_read(uncore, VLV_IER);
-	else if (HAS_PCH_SPLIT(i915))
-		gt->ier = intel_uncore_read(uncore, DEIER);
-	else if (GRAPHICS_VER(i915) == 2)
-		gt->ier = intel_uncore_read16(uncore, GEN2_IER);
-	else
-		gt->ier = intel_uncore_read(uncore, GEN2_IER);
-}
-
 /* Capture all other registers that GuC doesn't capture. */
 static void gt_record_global_nonguc_regs(struct intel_gt_coredump *gt)
 {
@@ -2043,7 +2014,6 @@ intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp, u32 dump_flags)
 	gc->_gt = gt;
 	gc->awake = intel_gt_pm_is_awake(gt);
 
-	gt_record_display_regs(gc);
 	gt_record_global_nonguc_regs(gc);
 
 	/*
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 749e1c55613e..004e7ad52a4a 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -146,7 +146,6 @@ struct intel_gt_coredump {
 	/* Generic register state */
 	u32 eir;
 	u32 pgtbl_er;
-	u32 ier;
 	u32 gtier[6], ngtier;
 	u32 forcewake;
 	u32 error; /* gen6+ */
@@ -165,7 +164,6 @@ struct intel_gt_coredump {
 	u32 clock_period_ns;
 
 	/* Display related */
-	u32 derrmr;
 	u32 sfc_done[I915_MAX_SFC]; /* gen12 */
 
 	u32 nfence;
-- 
2.39.5

