Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 059A9BFFAE6
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 09:45:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1932510E8A5;
	Thu, 23 Oct 2025 07:45:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c6eSZ3ND";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3972D10E8A5
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Oct 2025 07:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761205542; x=1792741542;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XfD6u+UfO6mZUP37G0hRfIKwxHOYY5Dh/5CiZcvHqeg=;
 b=c6eSZ3NDl8GGCAW/DUNHw8f8E/5nHiQUGnopPIY2KVC2eXs4ZHEynJEU
 531Il8qmsUarBU9F8tUxIjc/VoENxK4ywAe87Xci6pev8DvKzai2x0qf2
 sH84XQroHGRhlYh5Ak7xzXEichg1DUJyHFAE9HvxziqJanBBPycoHrq4M
 q0wBiNi/gBrZqrRKi+n0gLQ7OhLyrEvJWzSDMdZcv5jwsqctU7IEuOcuW
 PMCqScIa3M3DhLbT9sAA36uw27oHkK5n9qdpF2NtneW1w3DgQV1kK7A4T
 e0m2haKQ0ECJLxgVHEyiqKRe/I3t8f/vz/1vamAUG1yQwwFlp7CN81UYE w==;
X-CSE-ConnectionGUID: SpD2xpuWQCG6XKUmtYGE0Q==
X-CSE-MsgGUID: NuFK3+DsTBWjj3TLuCZIhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74804827"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="74804827"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 00:45:42 -0700
X-CSE-ConnectionGUID: pqXczcYbSLC2ip/0YEiuUQ==
X-CSE-MsgGUID: M+qKXkTFQIqK8Cz0/96k4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="183983050"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.158])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 00:45:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/rps: convert rps interface to struct drm_device
Date: Thu, 23 Oct 2025 10:45:36 +0300
Message-ID: <20251023074536.850332-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
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

Reduce the display dependency on struct drm_i915_private and i915_drv.h
by converting the rps interface to struct drm_device.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_rps.c   | 12 +++++-------
 drivers/gpu/drm/i915/gt/intel_rps.c            | 18 ++++++++++++++++--
 drivers/gpu/drm/i915/gt/intel_rps.h            |  7 ++++---
 3 files changed, 25 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
index 82ea1ec482e4..8bf0f8cb6574 100644
--- a/drivers/gpu/drm/i915/display/intel_display_rps.c
+++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
@@ -3,12 +3,14 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include <linux/dma-fence.h>
+
 #include <drm/drm_crtc.h>
 #include <drm/drm_vblank.h>
 
 #include "gt/intel_rps.h"
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_request.h"
 #include "intel_display_core.h"
 #include "intel_display_irq.h"
 #include "intel_display_rps.h"
@@ -77,12 +79,10 @@ void intel_display_rps_mark_interactive(struct intel_display *display,
 					struct intel_atomic_state *state,
 					bool interactive)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	if (state->rps_interactive == interactive)
 		return;
 
-	intel_rps_mark_interactive(&to_gt(i915)->rps, interactive);
+	intel_rps_mark_interactive(display->drm, interactive);
 	state->rps_interactive = interactive;
 }
 
@@ -102,7 +102,5 @@ void ilk_display_rps_disable(struct intel_display *display)
 
 void ilk_display_rps_irq_handler(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	gen5_rps_irq_handler(&to_gt(i915)->rps);
+	gen5_rps_irq_handler(display->drm);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index b01c837ab646..a2c502609d96 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -782,7 +782,7 @@ static void gen6_rps_set_thresholds(struct intel_rps *rps, u8 val)
 	mutex_unlock(&rps->power.mutex);
 }
 
-void intel_rps_mark_interactive(struct intel_rps *rps, bool interactive)
+static void _intel_rps_mark_interactive(struct intel_rps *rps, bool interactive)
 {
 	GT_TRACE(rps_to_gt(rps), "mark interactive: %s\n",
 		 str_yes_no(interactive));
@@ -798,6 +798,13 @@ void intel_rps_mark_interactive(struct intel_rps *rps, bool interactive)
 	mutex_unlock(&rps->power.mutex);
 }
 
+void intel_rps_mark_interactive(struct drm_device *drm, bool interactive)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+
+	_intel_rps_mark_interactive(&to_gt(i915)->rps, interactive);
+}
+
 static int gen6_rps_set(struct intel_rps *rps, u8 val)
 {
 	struct intel_uncore *uncore = rps_to_uncore(rps);
@@ -1953,7 +1960,7 @@ void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
 			"Command parser error, pm_iir 0x%08x\n", pm_iir);
 }
 
-void gen5_rps_irq_handler(struct intel_rps *rps)
+static void _gen5_rps_irq_handler(struct intel_rps *rps)
 {
 	struct intel_uncore *uncore = rps_to_uncore(rps);
 	u32 busy_up, busy_down, max_avg, min_avg;
@@ -1987,6 +1994,13 @@ void gen5_rps_irq_handler(struct intel_rps *rps)
 	spin_unlock(&mchdev_lock);
 }
 
+void gen5_rps_irq_handler(struct drm_device *drm)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+
+	_gen5_rps_irq_handler(&to_gt(i915)->rps);
+}
+
 void intel_rps_init_early(struct intel_rps *rps)
 {
 	mutex_init(&rps->lock);
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
index 92fb01f5a452..c817a70fb3aa 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps.h
@@ -9,8 +9,9 @@
 #include "intel_rps_types.h"
 #include "i915_reg_defs.h"
 
-struct i915_request;
+struct drm_device;
 struct drm_printer;
+struct i915_request;
 
 #define GT_FREQUENCY_MULTIPLIER 50
 #define GEN9_FREQ_SCALER 3
@@ -33,7 +34,7 @@ u32 intel_rps_get_boost_frequency(struct intel_rps *rps);
 int intel_rps_set_boost_frequency(struct intel_rps *rps, u32 freq);
 
 int intel_rps_set(struct intel_rps *rps, u8 val);
-void intel_rps_mark_interactive(struct intel_rps *rps, bool interactive);
+void intel_rps_mark_interactive(struct drm_device *drm, bool interactive);
 
 int intel_gpu_freq(struct intel_rps *rps, int val);
 int intel_freq_opcode(struct intel_rps *rps, int val);
@@ -64,7 +65,7 @@ bool rps_read_mask_mmio(struct intel_rps *rps, i915_reg_t reg32, u32 mask);
 
 void gen6_rps_frequency_dump(struct intel_rps *rps, struct drm_printer *p);
 
-void gen5_rps_irq_handler(struct intel_rps *rps);
+void gen5_rps_irq_handler(struct drm_device *drm);
 void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir);
 void gen11_rps_irq_handler(struct intel_rps *rps, u32 pm_iir);
 
-- 
2.47.3

