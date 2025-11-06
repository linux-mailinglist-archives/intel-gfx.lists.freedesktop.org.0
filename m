Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7582C3BD42
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 15:43:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 493E310E906;
	Thu,  6 Nov 2025 14:43:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fngl61yh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E7D410E906;
 Thu,  6 Nov 2025 14:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762440210; x=1793976210;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1mI0vrhdgjY7nMX+3c5XVEs0xGGxVjabGTlPmiEh6Z0=;
 b=fngl61yhdJkz5Cfu1zO/qmwHUceDfVfuXgEjHTc+c5Zga9CNy44Xjkhg
 02SLeCQk4GJrT+8jxQsReDUjSUjVpBjslNNRPDURtlfcFIDUN+1/CXOzi
 LRCgM8oXKdhAuHOjQGQhEYaum93ZBOvtxc+y+bO02imF2+1SjplLk0/xT
 AArzfb65Ug3cQFX8/fhaiYdmohnjLm6bt/Df/ZC4zflA1CYFpbApTSLPr
 YCZSPgsmwEgNhixqUZZ6+PV+A4Tp/QQB5NQs21ywH+Z5bzlhr16gUarEM
 ioi7cU2K6EGAYgsQIMDKYNLeKzI4p/IvpV5lyFJ7h0uf8Uai2ewu9Krcj w==;
X-CSE-ConnectionGUID: 3MvUCfKbQHuIW9EEqcF9DQ==
X-CSE-MsgGUID: vrgKFhmDRHiUS3lPE1ygcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="64612479"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="64612479"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 06:43:30 -0800
X-CSE-ConnectionGUID: 8zLbwLwWSqmZM/YaOafGhA==
X-CSE-MsgGUID: K0bqQnXdQ767xOBCyFiq/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="211231877"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 06:43:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	tursulin@ursulin.net
Subject: [PATCH 2/5] drm/i915/rps: call RPS functions via the parent interface
Date: Thu,  6 Nov 2025 16:43:10 +0200
Message-ID: <5c3b8e82ea82f4ecf73d517bb6f65e8e327d0ad3.1762440096.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1762440096.git.jani.nikula@intel.com>
References: <cover.1762440096.git.jani.nikula@intel.com>
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
and call the RPS functions through it. The RPS interface is optional,
but we expect it to be set for ILK.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_rps.c  | 33 +++++++++---------
 drivers/gpu/drm/i915/gt/intel_rps.c           | 34 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rps.h           |  2 ++
 drivers/gpu/drm/i915/i915_driver.c            |  2 ++
 include/drm/intel/display_parent_interface.h  | 10 ++++++
 5 files changed, 65 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
index b6720f7c09d9..27714b75d32d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_rps.c
+++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
@@ -3,12 +3,14 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include <linux/dma-fence.h>
+
 #include <drm/drm_crtc.h>
 #include <drm/drm_vblank.h>
+#include <drm/intel/display_parent_interface.h>
 
-#include "gt/intel_rps.h"
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_request.h"
 #include "intel_display_core.h"
 #include "intel_display_irq.h"
 #include "intel_display_rps.h"
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
+	display->parent->rps->boost(wait->fence);
+
 	dma_fence_put(wait->fence);
 
 	drm_crtc_vblank_put(wait->crtc);
@@ -49,6 +46,9 @@ void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
 	struct intel_display *display = to_intel_display(crtc->dev);
 	struct wait_rps_boost *wait;
 
+	if (!display->parent->rps)
+		return;
+
 	if (!dma_fence_is_i915(fence))
 		return;
 
@@ -77,12 +77,14 @@ void intel_display_rps_mark_interactive(struct intel_display *display,
 					struct intel_atomic_state *state,
 					bool interactive)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
+	if (!display->parent->rps)
+		return;
 
 	if (state->rps_interactive == interactive)
 		return;
 
-	intel_rps_mark_interactive(&to_gt(i915)->rps, interactive);
+	display->parent->rps->mark_interactive(display->drm, interactive);
+
 	state->rps_interactive = interactive;
 }
 
@@ -102,7 +104,6 @@ void ilk_display_rps_disable(struct intel_display *display)
 
 void ilk_display_rps_irq_handler(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	gen5_rps_irq_handler(&to_gt(i915)->rps);
+	/* We expect these to be non-NULL when running on ILK */
+	display->parent->rps->ilk_irq_handler(display->drm);
 }
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
index c97b76771917..75dfab10f44a 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -81,6 +81,7 @@
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_gt_print.h"
 #include "gt/intel_rc6.h"
+#include "gt/intel_rps.h"
 
 #include "pxp/intel_pxp.h"
 #include "pxp/intel_pxp_debugfs.h"
@@ -741,6 +742,7 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 
 static const struct intel_display_parent_interface parent = {
 	.rpm = &i915_display_rpm_interface,
+	.rps = &i915_display_rps_interface,
 };
 
 const struct intel_display_parent_interface *i915_driver_parent_interface(void)
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 26bedc360044..8920404545be 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -6,6 +6,7 @@
 
 #include <linux/types.h>
 
+struct dma_fence;
 struct drm_device;
 struct ref_tracker;
 
@@ -25,6 +26,12 @@ struct intel_display_rpm_interface {
 	void (*assert_unblock)(const struct drm_device *drm);
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
@@ -40,6 +47,9 @@ struct intel_display_rpm_interface {
 struct intel_display_parent_interface {
 	/** @rpm: Runtime PM functions */
 	const struct intel_display_rpm_interface *rpm;
+
+	/** @rpm: RPS functions. Optional. */
+	const struct intel_display_rps_interface *rps;
 };
 
 #endif
-- 
2.47.3

