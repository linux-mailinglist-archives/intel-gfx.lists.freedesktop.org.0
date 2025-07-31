Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C3AB17159
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 14:36:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2130710E783;
	Thu, 31 Jul 2025 12:36:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zd7BoQ5d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93B7C10E783;
 Thu, 31 Jul 2025 12:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753965391; x=1785501391;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3BvRs/uQZNPHyXJX+vkfJR3f3p2bllqjmK2u3etgnJ0=;
 b=Zd7BoQ5dsmlXtv3yD1AaokDQxpY4Fp1NcauuPpLHT5xb/2Hf1SfsrHpQ
 P8YjkRwIJdarN6Kl6t0Ps2wq5x+w2S+F/l2FaqtctZOKJIjEfhIemSu8H
 RwoOP265jdTOrvgA1LYpSFwpAmprIY0Yg2AggVMMlQMQfJE2SbCswSM7O
 3lJ8qXXQWlIEfPAorwjiz290s15xCw5fOcekznxeKjHzcDy8Gsv6sQ/5L
 qEDYNIcsQmjFJnmavTEP4b/KiM0zMN2hobAY4m5JGSvDUUYFjnnMnBM3e
 HA///IeFEDrkapGM3Y6+8vqWOEU6vxOIDlixjcKw1ujG/wUUlSCpnJaMm w==;
X-CSE-ConnectionGUID: TpTEV28DReGeneHEjtQItA==
X-CSE-MsgGUID: CbSenigdTmysshtekRvK8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="66852994"
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="66852994"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 05:36:31 -0700
X-CSE-ConnectionGUID: QfRdyAc3Th23zQWgASRQNA==
X-CSE-MsgGUID: JgfUHyogRCyMmzIFzZ2FVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="186935333"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 05:36:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/2] drm/xe/compat: stop including i915_utils.h from compat
 i915_drv.h
Date: Thu, 31 Jul 2025 15:36:16 +0300
Message-Id: <6338c8524e600e048b56c5484624cfb51ed49d1d.1753965351.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1753965351.git.jani.nikula@intel.com>
References: <cover.1753965351.git.jani.nikula@intel.com>
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

Expose the places that need i915_utils.h, and include it where needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c               | 1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c              | 1 +
 drivers/gpu/drm/i915/display/intel_display_driver.c     | 1 +
 drivers/gpu/drm/i915/display/intel_display_power.c      | 1 +
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 1 +
 drivers/gpu/drm/i915/display/intel_fb.c                 | 1 +
 drivers/gpu/drm/i915/display/intel_gmbus.c              | 1 +
 drivers/gpu/drm/i915/display/intel_hotplug.c            | 1 +
 drivers/gpu/drm/i915/display/intel_vblank.c             | 1 +
 drivers/gpu/drm/i915/display/skl_universal_plane.c      | 1 +
 drivers/gpu/drm/i915/soc/intel_dram.c                   | 1 +
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h       | 1 -
 drivers/gpu/drm/xe/display/ext/i915_utils.c             | 1 +
 13 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 9c268bed091d..276ac29e4daf 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -36,6 +36,7 @@
 #include "soc/intel_rom.h"
 
 #include "i915_drv.h"
+#include "i915_utils.h"
 #include "intel_display.h"
 #include "intel_display_core.h"
 #include "intel_display_rpm.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 228aa64c1349..8ff20415770f 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -31,6 +31,7 @@
 #include "hsw_ips.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
 #include "intel_bw.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 8586ba102605..cf1c14412abe 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -18,6 +18,7 @@
 #include <drm/drm_vblank.h>
 
 #include "i915_drv.h"
+#include "i915_utils.h"
 #include "i9xx_wm.h"
 #include "intel_acpi.h"
 #include "intel_atomic.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 273054c22325..cc80c72ac9d1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -10,6 +10,7 @@
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_backlight_regs.h"
 #include "intel_cdclk.h"
 #include "intel_clock_gating.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 48cac225a809..6efe5524cbbf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -6,6 +6,7 @@
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_backlight_regs.h"
 #include "intel_combo_phy.h"
 #include "intel_combo_phy_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 0da842bd2f2f..b210c3250501 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -11,6 +11,7 @@
 #include <drm/drm_modeset_helper.h>
 
 #include "i915_drv.h"
+#include "i915_utils.h"
 #include "intel_bo.h"
 #include "intel_display.h"
 #include "intel_display_core.h"
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 637f0f23f163..6a74805570e1 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -36,6 +36,7 @@
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 265aa97fcc75..740e5c930521 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -28,6 +28,7 @@
 
 #include "i915_drv.h"
 #include "i915_irq.h"
+#include "i915_utils.h"
 #include "intel_connector.h"
 #include "intel_display_power.h"
 #include "intel_display_core.h"
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 3e51deca0c21..46d6db5fed11 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -6,6 +6,7 @@
 #include <drm/drm_vblank.h>
 
 #include "i915_drv.h"
+#include "i915_utils.h"
 #include "intel_color.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index ec3fe75f2c6c..950dc79dbdd4 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -10,6 +10,7 @@
 
 #include "pxp/intel_pxp.h"
 #include "i915_drv.h"
+#include "i915_utils.h"
 #include "intel_bo.h"
 #include "intel_de.h"
 #include "intel_display_irq.h"
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index deb159548a09..3eeaabdf59e8 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -11,6 +11,7 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_dram.h"
 #include "intel_mchbar_regs.h"
 #include "intel_pcode.h"
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index d8cd66a96621..b8269391bc69 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -12,7 +12,6 @@
 
 #include <drm/drm_drv.h>
 
-#include "i915_utils.h"
 #include "xe_device.h" /* for xe_device_has_flat_ccs() */
 #include "xe_device_types.h"
 
diff --git a/drivers/gpu/drm/xe/display/ext/i915_utils.c b/drivers/gpu/drm/xe/display/ext/i915_utils.c
index 43b10a2cc508..1421c2a7b64d 100644
--- a/drivers/gpu/drm/xe/display/ext/i915_utils.c
+++ b/drivers/gpu/drm/xe/display/ext/i915_utils.c
@@ -4,6 +4,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_utils.h"
 
 bool i915_vtd_active(struct drm_i915_private *i915)
 {
-- 
2.39.5

