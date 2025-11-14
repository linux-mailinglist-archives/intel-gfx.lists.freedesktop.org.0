Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB250C5DE02
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 16:31:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1B3510EAB1;
	Fri, 14 Nov 2025 15:31:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gBLu5LWt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2281510EAAF;
 Fri, 14 Nov 2025 15:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763134276; x=1794670276;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AzFrOhuxsts+B2SzOLt5Mq11NoGyx9AYCKWM57FPmNQ=;
 b=gBLu5LWtFtXqIq0Q7QFoyiXkua9BcY5BCszEM9NlC0e2Lmjiss0TytXo
 UZZk9oSmWsnJ80kXXIbs4cX536V70J2SDHs0Yk0UUwO8EEcsvWyYxtJmR
 5h0XrIif6Ajpqx0igAaHrXNYh73dUFYr/3ZkEq9LAjO+zEgUtZLh9Dz03
 utOb8kESs4u8aoqCldxdU9UB7neo3mEn1u/iW2CFS7EIZTjdKZUgp6Bqy
 M/759/ILQQucWwdXFXb/r1+mBtT4Vso5F/8qCXrkPPxh18QwKefMVoIrx
 o2XsiGqBkfcnTlh2jslmvlAep+4xlIDHR1IV6dOqd+ji8oeMZnYw7gURd Q==;
X-CSE-ConnectionGUID: qN9NkgG7RmmPR6EqMx55FQ==
X-CSE-MsgGUID: WhiwJLpDTxuuj97q/pY0HA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65166899"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65166899"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 07:31:15 -0800
X-CSE-ConnectionGUID: 72mhWEPCRTiqhVhTOzXfgg==
X-CSE-MsgGUID: WOA6wyd/RUiDKXs+u++t3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="190227753"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 07:31:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH v2] drm/i915/rps: call RPS functions via the parent interface
Date: Fri, 14 Nov 2025 17:31:09 +0200
Message-ID: <20251114153109.1196370-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <51b4e18a2d306e6b903a5ea9a73f3ef6f30a09ff.1763115899.git.jani.nikula@intel.com>
References: <51b4e18a2d306e6b903a5ea9a73f3ef6f30a09ff.1763115899.git.jani.nikula@intel.com>
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

v2: s/boost/boost_if_not_started/ and keep comment in caller (Ville)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_rps.c  | 27 ++++++++++-------
 drivers/gpu/drm/i915/display/intel_parent.c   | 23 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_parent.h   |  6 ++++
 drivers/gpu/drm/i915/gt/intel_rps.c           | 29 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rps.h           |  2 ++
 drivers/gpu/drm/i915/i915_driver.c            |  2 ++
 include/drm/intel/display_parent_interface.h  | 10 +++++++
 7 files changed, 88 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
index b6720f7c09d9..d639d9152bf5 100644
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
@@ -25,15 +27,15 @@ static int do_rps_boost(struct wait_queue_entry *_wait,
 			unsigned mode, int sync, void *key)
 {
 	struct wait_rps_boost *wait = container_of(_wait, typeof(*wait), wait);
-	struct i915_request *rq = to_request(wait->fence);
+	struct intel_display *display = to_intel_display(wait->crtc->dev);
 
 	/*
 	 * If we missed the vblank, but the request is already running it
 	 * is reasonable to assume that it will complete before the next
-	 * vblank without our intervention, so leave RPS alone.
+	 * vblank without our intervention, so leave RPS alone if not started.
 	 */
-	if (!i915_request_started(rq))
-		intel_rps_boost(rq);
+	intel_parent_rps_boost_if_not_started(display, wait->fence);
+
 	dma_fence_put(wait->fence);
 
 	drm_crtc_vblank_put(wait->crtc);
@@ -49,6 +51,9 @@ void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
 	struct intel_display *display = to_intel_display(crtc->dev);
 	struct wait_rps_boost *wait;
 
+	if (!intel_parent_rps_available(display))
+		return;
+
 	if (!dma_fence_is_i915(fence))
 		return;
 
@@ -77,12 +82,14 @@ void intel_display_rps_mark_interactive(struct intel_display *display,
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
 
@@ -102,7 +109,5 @@ void ilk_display_rps_disable(struct intel_display *display)
 
 void ilk_display_rps_irq_handler(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	gen5_rps_irq_handler(&to_gt(i915)->rps);
+	intel_parent_rps_ilk_irq_handler(display);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index 535065e57213..6c131196718e 100644
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
+void intel_parent_rps_boost_if_not_started(struct intel_display *display, struct dma_fence *fence)
+{
+	if (display->parent->rps)
+		display->parent->rps->boost_if_not_started(fence);
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
index 04320d937777..12cfbea95aa1 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -6,11 +6,17 @@
 
 #include <linux/types.h>
 
+struct dma_fence;
 struct intel_display;
 
 bool intel_parent_irq_enabled(struct intel_display *display);
 void intel_parent_irq_synchronize(struct intel_display *display);
 
+bool intel_parent_rps_available(struct intel_display *display);
+void intel_parent_rps_boost_if_not_started(struct intel_display *display, struct dma_fence *fence);
+void intel_parent_rps_mark_interactive(struct intel_display *display, bool interactive);
+void intel_parent_rps_ilk_irq_handler(struct intel_display *display);
+
 bool intel_parent_vgpu_active(struct intel_display *display);
 
 bool intel_parent_has_fenced_regions(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index b01c837ab646..c42a1ee42b58 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -6,6 +6,7 @@
 #include <linux/string_helpers.h>
 
 #include <drm/intel/i915_drm.h>
+#include <drm/intel/display_parent_interface.h>
 
 #include "display/intel_display_rps.h"
 #include "display/vlv_clock.h"
@@ -2914,6 +2915,34 @@ bool i915_gpu_turbo_disable(void)
 }
 EXPORT_SYMBOL_GPL(i915_gpu_turbo_disable);
 
+static void boost_if_not_started(struct dma_fence *fence)
+{
+	struct i915_request *rq = to_request(fence);
+
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
+	.boost_if_not_started = boost_if_not_started,
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
index 9ba46850da72..7e1dedabf0ee 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -81,6 +81,7 @@
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_gt_print.h"
 #include "gt/intel_rc6.h"
+#include "gt/intel_rps.h"
 
 #include "pxp/intel_pxp.h"
 #include "pxp/intel_pxp_debugfs.h"
@@ -752,6 +753,7 @@ static bool has_fenced_regions(struct drm_device *drm)
 static const struct intel_display_parent_interface parent = {
 	.rpm = &i915_display_rpm_interface,
 	.irq = &i915_display_irq_interface,
+	.rps = &i915_display_rps_interface,
 	.vgpu_active = vgpu_active,
 	.has_fenced_regions = has_fenced_regions,
 };
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 927d964f2071..0a6a26234fbe 100644
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
+	void (*boost_if_not_started)(struct dma_fence *fence);
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

