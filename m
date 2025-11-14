Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 946F2C5C90C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 11:27:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D130910EA31;
	Fri, 14 Nov 2025 10:27:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CwsLKCYs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A72310EA29;
 Fri, 14 Nov 2025 10:27:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763116048; x=1794652048;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V2pLI+TfM4PrfO02l2tZFNXt646qO5ApTHYPrHdWf1U=;
 b=CwsLKCYshN4fJ4E5gF3y/nUGUlLhpbPyq0W8unHEtHeY1OM+aRuaj4ir
 9+wmVNJIw6z10b5ID6F5tIANsQj34TKmURT75fbnwtxf/N6LqP4kdvt8V
 I3wPjuzlWlRpUmLw/N18SwRY0p6gVXOQWPE4cSkpz2AJHCLI+P2Z14IGP
 cGLlEFZINmII2po8BRLB7/Aruo2WRpUysrmneNhHCznHWwyUSIhIn6Oo0
 JOdwJ4CVNF6oOpSJHaBCg9FwI/BzTJIz63+MvHcw9NUn6uJ6h5nDZo+55
 u94br6qRPI2kY6mqFgfpiOIFNDg8lnWT6yYFVUYQbNAOjfMgq2ReU4JK6 A==;
X-CSE-ConnectionGUID: Tt6eKpfeSSWh80qLdjklug==
X-CSE-MsgGUID: G1Wl1zjVSdmrK24PFdQaEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="64415899"
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="64415899"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 02:27:28 -0800
X-CSE-ConnectionGUID: 1u3xV9+oSN+Q5FEUqi/nKA==
X-CSE-MsgGUID: JL+MOjyQT1Sd2u5f4Q3FrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="193859723"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 02:27:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 07/10] drm/i915/rps: call RPS functions via the parent
 interface
Date: Fri, 14 Nov 2025 12:26:46 +0200
Message-ID: <51b4e18a2d306e6b903a5ea9a73f3ef6f30a09ff.1763115899.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763115899.git.jani.nikula@intel.com>
References: <cover.1763115899.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
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

Add struct intel_display_rps_interface to the display parent interface,
and call the RPS functions through it. The RPS interface is optional.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_rps.c  | 32 ++++++++---------
 drivers/gpu/drm/i915/display/intel_parent.c   | 23 +++++++++++++
 drivers/gpu/drm/i915/display/intel_parent.h   |  6 ++++
 drivers/gpu/drm/i915/gt/intel_rps.c           | 34 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rps.h           |  2 ++
 drivers/gpu/drm/i915/i915_driver.c            |  2 ++
 include/drm/intel/display_parent_interface.h  | 10 ++++++
 7 files changed, 93 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
index b6720f7c09d9..e70c4f0eab80 100644
--- a/drivers/gpu/drm/i915/display/intel_display_rps.c
+++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
@@ -3,16 +3,18 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include <linux/dma-fence.h>
+
 #include <drm/drm_crtc.h>
 #include <drm/drm_vblank.h>
 
-#include "gt/intel_rps.h"
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_request.h"
 #include "intel_display_core.h"
 #include "intel_display_irq.h"
 #include "intel_display_rps.h"
 #include "intel_display_types.h"
+#include "intel_parent.h"
 
 struct wait_rps_boost {
 	struct wait_queue_entry wait;
@@ -25,15 +27,10 @@ static int do_rps_boost(struct wait_queue_entry *_wait,
 			unsigned mode, int sync, void *key)
 {
 	struct wait_rps_boost *wait = container_of(_wait, typeof(*wait), wait);
-	struct i915_request *rq = to_request(wait->fence);
-
-	/*
-	 * If we missed the vblank, but the request is already running it
-	 * is reasonable to assume that it will complete before the next
-	 * vblank without our intervention, so leave RPS alone.
-	 */
-	if (!i915_request_started(rq))
-		intel_rps_boost(rq);
+	struct intel_display *display = to_intel_display(wait->crtc->dev);
+
+	intel_parent_rps_boost(display, wait->fence);
+
 	dma_fence_put(wait->fence);
 
 	drm_crtc_vblank_put(wait->crtc);
@@ -49,6 +46,9 @@ void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
 	struct intel_display *display = to_intel_display(crtc->dev);
 	struct wait_rps_boost *wait;
 
+	if (!intel_parent_rps_available(display))
+		return;
+
 	if (!dma_fence_is_i915(fence))
 		return;
 
@@ -77,12 +77,14 @@ void intel_display_rps_mark_interactive(struct intel_display *display,
 					struct intel_atomic_state *state,
 					bool interactive)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
+	if (!intel_parent_rps_available(display))
+		return;
 
 	if (state->rps_interactive == interactive)
 		return;
 
-	intel_rps_mark_interactive(&to_gt(i915)->rps, interactive);
+	intel_parent_rps_mark_interactive(display, interactive);
+
 	state->rps_interactive = interactive;
 }
 
@@ -102,7 +104,5 @@ void ilk_display_rps_disable(struct intel_display *display)
 
 void ilk_display_rps_irq_handler(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	gen5_rps_irq_handler(&to_gt(i915)->rps);
+	intel_parent_rps_ilk_irq_handler(display);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index 3dd31852e2e1..9370da9d215c 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -32,6 +32,29 @@ void intel_parent_irq_synchronize(struct intel_display *display)
 	display->parent->irq->synchronize(display->drm);
 }
 
+bool intel_parent_rps_available(struct intel_display *display)
+{
+	return display->parent->rps;
+}
+
+void intel_parent_rps_boost(struct intel_display *display, struct dma_fence *fence)
+{
+	if (display->parent->rps)
+		display->parent->rps->boost(fence);
+}
+
+void intel_parent_rps_mark_interactive(struct intel_display *display, bool interactive)
+{
+	if (display->parent->rps)
+		display->parent->rps->mark_interactive(display->drm, interactive);
+}
+
+void intel_parent_rps_ilk_irq_handler(struct intel_display *display)
+{
+	if (display->parent->rps)
+		display->parent->rps->ilk_irq_handler(display->drm);
+}
+
 bool intel_parent_vgpu_active(struct intel_display *display)
 {
 	return display->parent->vgpu_active && display->parent->vgpu_active(display->drm);
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index fc6799db0361..41d6943786fb 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -6,11 +6,17 @@
 
 #include <linux/types.h>
 
+struct dma_fence;
 struct intel_display;
 
 bool intel_parent_irq_enabled(struct intel_display *display);
 void intel_parent_irq_synchronize(struct intel_display *display);
 
+bool intel_parent_rps_available(struct intel_display *display);
+void intel_parent_rps_boost(struct intel_display *display, struct dma_fence *fence);
+void intel_parent_rps_mark_interactive(struct intel_display *display, bool interactive);
+void intel_parent_rps_ilk_irq_handler(struct intel_display *display);
+
 bool intel_parent_vgpu_active(struct intel_display *display);
 
 bool intel_parent_fence_support_legacy(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index b01c837ab646..61d746bda462 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -6,6 +6,7 @@
 #include <linux/string_helpers.h>
 
 #include <drm/intel/i915_drm.h>
+#include <drm/intel/display_parent_interface.h>
 
 #include "display/intel_display_rps.h"
 #include "display/vlv_clock.h"
@@ -2914,6 +2915,39 @@ bool i915_gpu_turbo_disable(void)
 }
 EXPORT_SYMBOL_GPL(i915_gpu_turbo_disable);
 
+static void boost(struct dma_fence *fence)
+{
+	struct i915_request *rq = to_request(fence);
+
+	/*
+	 * If we missed the vblank, but the request is already running it
+	 * is reasonable to assume that it will complete before the next
+	 * vblank without our intervention, so leave RPS alone.
+	 */
+	if (!i915_request_started(rq))
+		intel_rps_boost(rq);
+}
+
+static void mark_interactive(struct drm_device *drm, bool interactive)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+
+	intel_rps_mark_interactive(&to_gt(i915)->rps, interactive);
+}
+
+static void ilk_irq_handler(struct drm_device *drm)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+
+	gen5_rps_irq_handler(&to_gt(i915)->rps);
+}
+
+const struct intel_display_rps_interface i915_display_rps_interface = {
+	.boost = boost,
+	.mark_interactive = mark_interactive,
+	.ilk_irq_handler = ilk_irq_handler,
+};
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftest_rps.c"
 #include "selftest_slpc.c"
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
index 92fb01f5a452..5dbcebd7d4a5 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps.h
@@ -128,4 +128,6 @@ static inline void intel_rps_clear_timer(struct intel_rps *rps)
 	clear_bit(INTEL_RPS_TIMER, &rps->flags);
 }
 
+extern const struct intel_display_rps_interface i915_display_rps_interface;
+
 #endif /* INTEL_RPS_H */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 814b430de960..ac189b90f985 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -81,6 +81,7 @@
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_gt_print.h"
 #include "gt/intel_rc6.h"
+#include "gt/intel_rps.h"
 
 #include "pxp/intel_pxp.h"
 #include "pxp/intel_pxp_debugfs.h"
@@ -752,6 +753,7 @@ static bool fence_support_legacy(struct drm_device *drm)
 static const struct intel_display_parent_interface parent = {
 	.rpm = &i915_display_rpm_interface,
 	.irq = &i915_display_irq_interface,
+	.rps = &i915_display_rps_interface,
 	.vgpu_active = vgpu_active,
 	.fence_support_legacy = fence_support_legacy,
 };
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 11767adb0083..2ea68a31224d 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -6,6 +6,7 @@
 
 #include <linux/types.h>
 
+struct dma_fence;
 struct drm_device;
 struct ref_tracker;
 
@@ -30,6 +31,12 @@ struct intel_display_irq_interface {
 	void (*synchronize)(struct drm_device *drm);
 };
 
+struct intel_display_rps_interface {
+	void (*boost)(struct dma_fence *fence);
+	void (*mark_interactive)(struct drm_device *drm, bool interactive);
+	void (*ilk_irq_handler)(struct drm_device *drm);
+};
+
 /**
  * struct intel_display_parent_interface - services parent driver provides to display
  *
@@ -49,6 +56,9 @@ struct intel_display_parent_interface {
 	/** @irq: IRQ interface */
 	const struct intel_display_irq_interface *irq;
 
+	/** @rpm: RPS interface. Optional. */
+	const struct intel_display_rps_interface *rps;
+
 	/** @vgpu_active: Is vGPU active? Optional. */
 	bool (*vgpu_active)(struct drm_device *drm);
 
-- 
2.47.3

