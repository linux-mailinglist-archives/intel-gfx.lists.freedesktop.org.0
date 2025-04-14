Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F70A87F0C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 13:30:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D96F710E585;
	Mon, 14 Apr 2025 11:30:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="li6+D6P6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F97D10E599;
 Mon, 14 Apr 2025 11:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744630213; x=1776166213;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GSMYSGfBvRB9zlgi/Ct4ZCsz7/1R0+TOJcOYG0cZ5Q8=;
 b=li6+D6P6Jtd8Bk4zReBVGqnGJXSsigeQMYCELxA94y1UqGKg+95+Acw3
 BKyOXsOo4e2E8ZU0cOO3K0Ka0L0UwP3BxWCxyzIjYNKOCQ5xN8nwCiVo9
 Lt4f7L9D8uj9tHdtSbYKzb52rmofT9Zl4xbSeFnT/McLGmij7FNRp33xf
 ki7dCKChMAxMBqw3h+GP4LYseyOAIVZPSNsEamTQfjfST2YTKpVfPbuK9
 9jbOjqHmvbXBw7w1WiGx/zBsQwVjbgo/NZlJdvo8weDHXoVY+MGv+h2NQ
 IuIpcaQ09drcU7/fU/c08mQa0V2DGvOOOT4TKaFUbGedK6vfod4Nckdb/ g==;
X-CSE-ConnectionGUID: sgFVQ6gdQNy5kcDi/Rc9Ow==
X-CSE-MsgGUID: 8fB9NKelQPC6jwh5VHAP6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="57481067"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="57481067"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 04:30:13 -0700
X-CSE-ConnectionGUID: xCRk0AYXTwOt2wZUbNfmbA==
X-CSE-MsgGUID: u5ZFxXHMTBGxUVp7e81MEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="129761700"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 04:30:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [CI v3 4/6] drm/i915: use display snapshot mechanism for display irq
 regs
Date: Mon, 14 Apr 2025 14:29:46 +0300
Message-Id: <13206969df04426d290d2863dc574e22ca45193a.1744630147.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744630147.git.jani.nikula@intel.com>
References: <cover.1744630147.git.jani.nikula@intel.com>
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

