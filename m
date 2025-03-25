Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F267CA6FC9E
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 13:37:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7104C10E54F;
	Tue, 25 Mar 2025 12:37:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="My4AAH+/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0B2F10E560;
 Tue, 25 Mar 2025 12:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742906229; x=1774442229;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5eDRviBSSe6mK6OfKyglre0z2vsYKP1KUgi3u6kmw/4=;
 b=My4AAH+/NBT0w89Z9GDXFC/IF8R1M4p5vnzmGQj4QHHgLfhHHdX6s0TS
 e++J0GIZplEz/jDPrhnPy8Kjb7pY5Oj+vjADXNPxtStHKSu+3iJ6nwTuq
 vxLnMEh5Ir8PVO9L9A3q2F26vSOQem2te8On9hu+fFDYzoAHH2/dzVJsj
 eogYhdwXOZPVCuc+qxQqFp/GTZKyj2OURCrXhPCeiaD4K4Xhci/RPXE1c
 gGfp6drEF6Uwxjmnx6J0/F6oU7blCGhZed9M7UiiuM2iTpLl+535CQ6eb
 5qEobe4pSdE2VKIQsQi5oV30wY1qMR/m8p3VexoNMka+avyaOUZWNrhfI g==;
X-CSE-ConnectionGUID: Q5+MdqVyQL+PEuzEVirYTQ==
X-CSE-MsgGUID: REUu9sx0RLSeLRI8xN3whA==
X-IronPort-AV: E=McAfee;i="6700,10204,11384"; a="47933247"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="47933247"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 05:37:08 -0700
X-CSE-ConnectionGUID: aV7+GM6RQ5Wws/0Swq2Now==
X-CSE-MsgGUID: KrRubt70SRWe1rf6rQ/O4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="155274875"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.134])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 05:37:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/6] drm/i915/wa: convert intel_display_wa.[ch] to struct
 intel_display
Date: Tue, 25 Mar 2025 14:36:37 +0200
Message-Id: <821937f9fcdcb7d5516be0c48c2cee009936ecb8.1742906146.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742906146.git.jani.nikula@intel.com>
References: <cover.1742906146.git.jani.nikula@intel.com>
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

Going forward, struct intel_display is the main display device data
pointer. Convert as much as possible of intel_display_wa.[ch] to struct
intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   |  3 +-
 .../gpu/drm/i915/display/intel_display_wa.c   | 30 +++++++++----------
 .../gpu/drm/i915/display/intel_display_wa.h   | 11 ++++---
 drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
 drivers/gpu/drm/xe/display/xe_display_wa.c    |  6 ++--
 5 files changed, 28 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 61748525da0b..4edadebad13b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -82,7 +82,6 @@ bool intel_display_driver_probe_defer(struct pci_dev *pdev)
 
 void intel_display_driver_init_hw(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_cdclk_state *cdclk_state;
 
 	if (!HAS_DISPLAY(display))
@@ -94,7 +93,7 @@ void intel_display_driver_init_hw(struct intel_display *display)
 	intel_cdclk_dump_config(display, &display->cdclk.hw, "Current CDCLK");
 	cdclk_state->logical = cdclk_state->actual = display->cdclk.hw;
 
-	intel_display_wa_apply(i915);
+	intel_display_wa_apply(display);
 }
 
 static const struct drm_mode_config_funcs intel_mode_funcs = {
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index e5a8022db664..da429c332914 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -3,38 +3,38 @@
  * Copyright © 2023 Intel Corporation
  */
 
-#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_de.h"
+#include "intel_display_core.h"
 #include "intel_display_wa.h"
 
-static void gen11_display_wa_apply(struct drm_i915_private *i915)
+static void gen11_display_wa_apply(struct intel_display *display)
 {
 	/* Wa_14010594013 */
-	intel_de_rmw(i915, GEN8_CHICKEN_DCPR_1, 0, ICL_DELAY_PMRSP);
+	intel_de_rmw(display, GEN8_CHICKEN_DCPR_1, 0, ICL_DELAY_PMRSP);
 }
 
-static void xe_d_display_wa_apply(struct drm_i915_private *i915)
+static void xe_d_display_wa_apply(struct intel_display *display)
 {
 	/* Wa_14013723622 */
-	intel_de_rmw(i915, CLKREQ_POLICY, CLKREQ_POLICY_MEM_UP_OVRD, 0);
+	intel_de_rmw(display, CLKREQ_POLICY, CLKREQ_POLICY_MEM_UP_OVRD, 0);
 }
 
-static void adlp_display_wa_apply(struct drm_i915_private *i915)
+static void adlp_display_wa_apply(struct intel_display *display)
 {
 	/* Wa_22011091694:adlp */
-	intel_de_rmw(i915, GEN9_CLKGATE_DIS_5, 0, DPCE_GATING_DIS);
+	intel_de_rmw(display, GEN9_CLKGATE_DIS_5, 0, DPCE_GATING_DIS);
 
 	/* Bspec/49189 Initialize Sequence */
-	intel_de_rmw(i915, GEN8_CHICKEN_DCPR_1, DDI_CLOCK_REG_ACCESS, 0);
+	intel_de_rmw(display, GEN8_CHICKEN_DCPR_1, DDI_CLOCK_REG_ACCESS, 0);
 }
 
-void intel_display_wa_apply(struct drm_i915_private *i915)
+void intel_display_wa_apply(struct intel_display *display)
 {
-	if (IS_ALDERLAKE_P(i915))
-		adlp_display_wa_apply(i915);
-	else if (DISPLAY_VER(i915) == 12)
-		xe_d_display_wa_apply(i915);
-	else if (DISPLAY_VER(i915) == 11)
-		gen11_display_wa_apply(i915);
+	if (display->platform.alderlake_p)
+		adlp_display_wa_apply(display);
+	else if (DISPLAY_VER(display) == 12)
+		xe_d_display_wa_apply(display);
+	else if (DISPLAY_VER(display) == 11)
+		gen11_display_wa_apply(display);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index be644ab6ae00..babd9d16603d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -8,14 +8,17 @@
 
 #include <linux/types.h>
 
-struct drm_i915_private;
+struct intel_display;
 
-void intel_display_wa_apply(struct drm_i915_private *i915);
+void intel_display_wa_apply(struct intel_display *display);
 
 #ifdef I915
-static inline bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915) { return false; }
+static inline bool intel_display_needs_wa_16023588340(struct intel_display *display)
+{
+	return false;
+}
 #else
-bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915);
+bool intel_display_needs_wa_16023588340(struct intel_display *display);
 #endif
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index ea3123874cbf..e89cee323d8b 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1437,7 +1437,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 		return 0;
 	}
 
-	if (intel_display_needs_wa_16023588340(i915)) {
+	if (intel_display_needs_wa_16023588340(display)) {
 		plane_state->no_fbc_reason = "Wa_16023588340";
 		return 0;
 	}
diff --git a/drivers/gpu/drm/xe/display/xe_display_wa.c b/drivers/gpu/drm/xe/display/xe_display_wa.c
index 68e3d1959ad6..2933ca97d673 100644
--- a/drivers/gpu/drm/xe/display/xe_display_wa.c
+++ b/drivers/gpu/drm/xe/display/xe_display_wa.c
@@ -10,7 +10,9 @@
 
 #include <generated/xe_wa_oob.h>
 
-bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915)
+bool intel_display_needs_wa_16023588340(struct intel_display *display)
 {
-	return XE_WA(xe_root_mmio_gt(i915), 16023588340);
+	struct xe_device *xe = to_xe_device(display->drm);
+
+	return XE_WA(xe_root_mmio_gt(xe), 16023588340);
 }
-- 
2.39.5

