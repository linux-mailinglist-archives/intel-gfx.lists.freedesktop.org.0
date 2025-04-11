Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B59DAA854FD
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 09:10:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA1DE10EB0D;
	Fri, 11 Apr 2025 07:09:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C/QYmYwS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7608210EB05;
 Fri, 11 Apr 2025 07:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744355392; x=1775891392;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GSMYSGfBvRB9zlgi/Ct4ZCsz7/1R0+TOJcOYG0cZ5Q8=;
 b=C/QYmYwSMKqEIxt6e1fkySruyr8IBQri7wGDm1HwM/mNWobxC++WzO0O
 gtesYa6yjy/5bzjJb0quxs+CHcC1nEB246X8v5JIi8TRltnymd1Y8xQz2
 I0qjD/XX993gyq4lGx6keBmCwbe0LsqY/aKz4d3nW2dFeMejjt5Kw5oFJ
 7YEXVeq6njHvyzKtCkVGlrx/razimgp0x/0WkhUUD4YtcxINGtKdKFmAN
 C55JNRsMQJmEpmdecPRNPNDVTcDcJmbaWn45cKDu1H4SSPSRnMPI2zyxd
 r+aidMLqPR/xghWnGU2vhKJB5TGub9FpNgV4uXltJjlp+rO18x7qKN41k w==;
X-CSE-ConnectionGUID: SME26HmRSw26fB6XVcW3/Q==
X-CSE-MsgGUID: lUY8HKWnS0O8HgrKSzGm7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="45609002"
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="45609002"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 00:09:51 -0700
X-CSE-ConnectionGUID: 4rCKjHP/QQukWJjZke+Z0A==
X-CSE-MsgGUID: yqcZtdN6R5WgfT7QvxLTlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="129088025"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.67])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 00:09:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH v3] drm/i915: use display snapshot mechanism for display irq
 regs
Date: Fri, 11 Apr 2025 10:09:44 +0300
Message-Id: <20250411070944.231353-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <af4ceaac9fd48358db027c866c2d59b463507280.1744208554.git.jani.nikula@intel.com>
References: <af4ceaac9fd48358db027c866c2d59b463507280.1744208554.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

With the display register capture reduced to just one register, DERRMR,
there's quite a bit of boilerplate here. However, it's still a nice
abstraction and removes a DISPLAY_VER() usage from core i915. With this
approach, it's also easy to add to xe as needed.

v2: Remove stale comment

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 28 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_display_irq.h  |  5 ++++
 .../drm/i915/display/intel_display_snapshot.c |  5 ++++
 drivers/gpu/drm/i915/i915_gpu_error.c         | 18 ------------
 drivers/gpu/drm/i915/i915_gpu_error.h         |  2 --
 5 files changed, 38 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index d2a35e3630b1..f5dc050a6344 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -2329,3 +2329,31 @@ void intel_display_irq_init(struct intel_display *display)
 
 	INIT_WORK(&display->irq.vblank_dc_work, intel_display_vblank_dc_work);
 }
+
+struct intel_display_irq_snapshot {
+	u32 derrmr;
+};
+
+struct intel_display_irq_snapshot *
+intel_display_irq_snapshot_capture(struct intel_display *display)
+{
+	struct intel_display_irq_snapshot *snapshot;
+
+	snapshot = kzalloc(sizeof(*snapshot), GFP_ATOMIC);
+	if (!snapshot)
+		return NULL;
+
+	if (DISPLAY_VER(display) >= 6 && DISPLAY_VER(display) < 20)
+		snapshot->derrmr = intel_de_read(display, DERRMR);
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
index 50cd0c433e6d..62e4a293ed9b 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -726,12 +726,6 @@ static void err_print_gt_info(struct drm_i915_error_state_buf *m,
 	intel_sseu_print_topology(gt->_gt->i915, &gt->info.sseu, &p);
 }
 
-static void err_print_gt_display(struct drm_i915_error_state_buf *m,
-				 struct intel_gt_coredump *gt)
-{
-	err_printf(m, "DERRMR: 0x%08x\n", gt->derrmr);
-}
-
 static void err_print_gt_global_nonguc(struct drm_i915_error_state_buf *m,
 				       struct intel_gt_coredump *gt)
 {
@@ -877,7 +871,6 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
 		if (error->gt->uc && error->gt->uc->guc.is_guc_capture)
 			print_guc_capture = true;
 
-		err_print_gt_display(m, error->gt);
 		err_print_gt_global_nonguc(m, error->gt);
 		err_print_gt_fences(m, error->gt);
 
@@ -1766,16 +1759,6 @@ gt_record_uc(struct intel_gt_coredump *gt,
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
-}
-
 /* Capture all other registers that GuC doesn't capture. */
 static void gt_record_global_nonguc_regs(struct intel_gt_coredump *gt)
 {
@@ -2034,7 +2017,6 @@ intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp, u32 dump_flags)
 	gc->_gt = gt;
 	gc->awake = intel_gt_pm_is_awake(gt);
 
-	gt_record_display_regs(gc);
 	gt_record_global_nonguc_regs(gc);
 
 	/*
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index ac55603a81d7..182324979278 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -163,8 +163,6 @@ struct intel_gt_coredump {
 	u32 clock_frequency;
 	u32 clock_period_ns;
 
-	/* Display related */
-	u32 derrmr;
 	u32 sfc_done[I915_MAX_SFC]; /* gen12 */
 
 	u32 nfence;
-- 
2.39.5

