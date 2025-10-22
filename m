Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0C4BFCD0C
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 17:17:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CA7810E7F0;
	Wed, 22 Oct 2025 15:17:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dkR/mid+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC1A210E7F0;
 Wed, 22 Oct 2025 15:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761146262; x=1792682262;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AeMfASze5v7TGfr1ANOeaoKmPFIuw4wZbIfC6lFRO9s=;
 b=dkR/mid+MEm3lr3GAH7CVlk980gn12KBNXVliHLg1HN7IsXs2BMNX5V9
 1v25Bl8g2adr1wEInJ60634kYR0/alfdVdd98Dyl0S2HH+dO8AWUTdlCR
 wMF7S0BPcyXrIW1wtOkZIKs1f7x0VXwG9r9XdjL6TedcO32+2PKj01GsQ
 iFNdmWOLiL9381IVZkf7PBv8LG5pfMoyDuLHkbFH9erYbMJMtW0uYt/vM
 NO9ySbqv2VowXhbK20kcvct7Dr2q3uopSslMlA29ZXytl1Rhkolgy3eFL
 crSdjKai0MEfWn3fQH8DnsDe+nFVnKALplY5Px8ijO5AOKFu9mHyyhER0 Q==;
X-CSE-ConnectionGUID: /4vWsFBPRX+7eltGnIQl0w==
X-CSE-MsgGUID: XQePVWRJTJ2I40+t0fYICg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63393919"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="63393919"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:17:41 -0700
X-CSE-ConnectionGUID: FItUc4yERTqmQoVWY8VGVQ==
X-CSE-MsgGUID: R9LvaEchSCerd48nwMoCTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="214842341"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.104])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:17:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/6] drm/i915/display: switch to intel_display_utils.h
Date: Wed, 22 Oct 2025 18:17:13 +0300
Message-ID: <79f9e31ca64c8c045834d48e20ceb0c515d1e9e1.1761146196.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1761146196.git.jani.nikula@intel.com>
References: <cover.1761146196.git.jani.nikula@intel.com>
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

The remaining utils display needs from i915_utils.h are primarily
MISSING_CASE() and fetch_and_zero(), with a couple of
i915_inject_probe_failure() uses.

To avoid excessive churn, add duplicates of MISSING_CASE() and
fetch_and_zero() to intel_display_utils.h, and switch display to use the
display utils.

As long as there are display files that include i915_drv.h, which
includes i915_utils.h, we'll need #ifndef guards for MISSING_CASE() and
fetch_and_zero() in both utils headers. We can remove them once display
no longer depends on i915_drv.h.

A couple of files in display still need i915_utils.h for
i915_inject_probe_failure(). Annotate this. They will be handled
separately.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c              |  2 +-
 drivers/gpu/drm/i915/display/i9xx_plane.c          |  2 +-
 drivers/gpu/drm/i915/display/icl_dsi.c             |  2 +-
 drivers/gpu/drm/i915/display/intel_acpi.c          |  2 +-
 drivers/gpu/drm/i915/display/intel_bios.c          |  2 +-
 drivers/gpu/drm/i915/display/intel_bw.c            |  1 -
 drivers/gpu/drm/i915/display/intel_cdclk.c         |  2 +-
 drivers/gpu/drm/i915/display/intel_color.c         |  2 +-
 drivers/gpu/drm/i915/display/intel_combo_phy.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_connector.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c           |  1 -
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c       |  1 -
 .../gpu/drm/i915/display/intel_display_driver.c    |  3 ++-
 drivers/gpu/drm/i915/display/intel_display_power.c |  2 +-
 drivers/gpu/drm/i915/display/intel_display_utils.h | 14 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.c           |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c            |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c        |  2 +-
 .../gpu/drm/i915/display/intel_dp_link_training.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c      |  1 -
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_dvo.c           |  2 +-
 drivers/gpu/drm/i915/display/intel_fb.c            |  2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c           |  1 -
 drivers/gpu/drm/i915/display/intel_fdi.c           |  2 +-
 drivers/gpu/drm/i915/display/intel_flipq.c         |  6 +++---
 drivers/gpu/drm/i915/display/intel_hdcp.c          |  1 -
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c      |  1 -
 drivers/gpu/drm/i915/display/intel_hdmi.c          |  2 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c       |  4 ++--
 drivers/gpu/drm/i915/display/intel_hotplug_irq.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_lspcon.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_pch_refclk.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_pfit.c          |  2 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_pps.c           |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c           |  2 +-
 drivers/gpu/drm/i915/display/intel_qp_tables.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_tc.c            |  2 +-
 drivers/gpu/drm/i915/display/intel_vblank.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c          |  2 +-
 drivers/gpu/drm/i915/display/skl_scaler.c          |  2 +-
 drivers/gpu/drm/i915/display/skl_universal_plane.c |  2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c       |  2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c             |  2 +-
 drivers/gpu/drm/i915/i915_utils.h                  |  4 ++++
 52 files changed, 65 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index aa159f9ce12f..a3ff21b2f69f 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -11,7 +11,6 @@
 
 #include "g4x_dp.h"
 #include "i915_reg.h"
-#include "i915_utils.h"
 #include "intel_audio.h"
 #include "intel_backlight.h"
 #include "intel_connector.h"
@@ -20,6 +19,7 @@
 #include "intel_display_power.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dp.h"
 #include "intel_dp_aux.h"
 #include "intel_dp_link_training.h"
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 407deb5dfb57..6e39d7f2e0c2 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -11,7 +11,6 @@
 #include <drm/drm_print.h>
 
 #include "i915_reg.h"
-#include "i915_utils.h"
 #include "i9xx_plane.h"
 #include "i9xx_plane_regs.h"
 #include "intel_atomic.h"
@@ -19,6 +18,7 @@
 #include "intel_display_irq.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_fb.h"
 #include "intel_fbc.h"
 #include "intel_frontbuffer.h"
diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 297368ff42a5..70d4c1bc70fc 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -35,7 +35,6 @@
 #include <drm/drm_probe_helper.h>
 
 #include "i915_reg.h"
-#include "i915_utils.h"
 #include "icl_dsi.h"
 #include "icl_dsi_regs.h"
 #include "intel_atomic.h"
@@ -48,6 +47,7 @@
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
+#include "intel_display_utils.h"
 #include "intel_dsi.h"
 #include "intel_dsi_vbt.h"
 #include "intel_panel.h"
diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/i915/display/intel_acpi.c
index 1addd6288241..68c01932f7b4 100644
--- a/drivers/gpu/drm/i915/display/intel_acpi.c
+++ b/drivers/gpu/drm/i915/display/intel_acpi.c
@@ -11,10 +11,10 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_utils.h"
 #include "intel_acpi.h"
 #include "intel_display_core.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 
 #define INTEL_DSM_REVISION_ID 1 /* For Calpella anyway... */
 #define INTEL_DSM_FN_PLATFORM_MUX_INFO 1 /* No args */
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 3596dce84c28..e2b51fa21d93 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -36,11 +36,11 @@
 #include "soc/intel_rom.h"
 
 #include "i915_drv.h"
-#include "i915_utils.h"
 #include "intel_display.h"
 #include "intel_display_core.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_gmbus.h"
 
 #define _INTEL_BIOS_PRIVATE
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 640a40805f18..3033c53e61d1 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -7,7 +7,6 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
-#include "i915_utils.h"
 #include "intel_bw.h"
 #include "intel_crtc.h"
 #include "intel_display_core.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index e92e7fd9fd13..d4435fe53d8d 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -32,7 +32,6 @@
 #include "hsw_ips.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
-#include "i915_utils.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
 #include "intel_cdclk.h"
@@ -41,6 +40,7 @@
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_mchbar_regs.h"
 #include "intel_pci_config.h"
 #include "intel_pcode.h"
diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 51db70d07fae..1e97020e7304 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -24,12 +24,12 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_utils.h"
 #include "i9xx_plane_regs.h"
 #include "intel_color.h"
 #include "intel_color_regs.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dsb.h"
 #include "intel_vrr.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 112749f97c26..f401558ac14e 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -5,12 +5,12 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_utils.h"
 #include "intel_combo_phy.h"
 #include "intel_combo_phy_regs.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 
 #define for_each_combo_phy(__display, __phy) \
 	for ((__phy) = PHY_A; (__phy) < I915_MAX_PHYS; (__phy)++)	\
diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 6a55854db5b6..647e6e1f8c68 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -31,7 +31,7 @@
 #include <drm/drm_probe_helper.h>
 
 #include "i915_drv.h"
-#include "i915_utils.h"
+#include "i915_utils.h" /* for i915_inject_probe_failure() */
 #include "intel_connector.h"
 #include "intel_display_core.h"
 #include "intel_display_debugfs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index c47c84935871..7aa14348aa6d 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -12,13 +12,13 @@
 #include <drm/drm_print.h>
 #include <drm/drm_vblank.h>
 
-#include "i915_utils.h"
 #include "intel_atomic.h"
 #include "intel_cursor.h"
 #include "intel_cursor_regs.h"
 #include "intel_de.h"
 #include "intel_display.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
 #include "intel_frontbuffer.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index a74c1be225ac..f57f6d90a9da 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -8,7 +8,6 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_utils.h"
 #include "intel_alpm.h"
 #include "intel_cx0_phy.h"
 #include "intel_cx0_phy_regs.h"
@@ -16,6 +15,7 @@
 #include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dp.h"
 #include "intel_hdmi.h"
 #include "intel_panel.h"
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index cd9fc3d1f36a..1fac0ac6273b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -35,7 +35,6 @@
 #include <drm/drm_privacy_screen_consumer.h>
 
 #include "i915_reg.h"
-#include "i915_utils.h"
 #include "icl_dsi.h"
 #include "intel_alpm.h"
 #include "intel_audio.h"
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index a238be5bc455..629502947222 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -3,12 +3,12 @@
  * Copyright © 2020 Intel Corporation
  */
 
-#include "i915_utils.h"
 #include "intel_cx0_phy.h"
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dp.h"
 
 /* HDMI/DVI modes ignore everything but the last 2 items. So we share
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 33174fb46ecb..cdeb46d5fd7c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -51,7 +51,6 @@
 #include "i915_config.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
-#include "i915_utils.h"
 #include "i9xx_plane.h"
 #include "i9xx_plane_regs.h"
 #include "i9xx_wm.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 38672d2896e3..eb0727b9a0f6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -18,7 +18,7 @@
 #include <drm/drm_vblank.h>
 
 #include "i915_drv.h"
-#include "i915_utils.h"
+#include "i915_utils.h" /* for i915_inject_probe_failure() */
 #include "i9xx_wm.h"
 #include "intel_acpi.h"
 #include "intel_atomic.h"
@@ -35,6 +35,7 @@
 #include "intel_display_irq.h"
 #include "intel_display_power.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_display_wa.h"
 #include "intel_dkl_phy.h"
 #include "intel_dmc.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index da4babfd6bcb..ebe6225470d0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -11,7 +11,6 @@
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
-#include "i915_utils.h"
 #include "intel_backlight_regs.h"
 #include "intel_cdclk.h"
 #include "intel_clock_gating.h"
@@ -23,6 +22,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dmc.h"
 #include "intel_mchbar_regs.h"
 #include "intel_pch_refclk.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_utils.h b/drivers/gpu/drm/i915/display/intel_display_utils.h
index af1e34bac720..2a18f160320c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_utils.h
+++ b/drivers/gpu/drm/i915/display/intel_display_utils.h
@@ -4,10 +4,24 @@
 #ifndef __INTEL_DISPLAY_UTILS__
 #define __INTEL_DISPLAY_UTILS__
 
+#include <linux/bug.h>
 #include <linux/types.h>
 
 struct intel_display;
 
+#ifndef MISSING_CASE
+#define MISSING_CASE(x) WARN(1, "Missing case (%s == %ld)\n", \
+			     __stringify(x), (long)(x))
+#endif
+
+#ifndef fetch_and_zero
+#define fetch_and_zero(ptr) ({						\
+	typeof(*ptr) __T = *(ptr);					\
+	*(ptr) = (typeof(*ptr))0;					\
+	__T;								\
+})
+#endif
+
 #define KHz(x) (1000 * (x))
 #define MHz(x) KHz(1000 * (x))
 
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index be6d37ea1139..22f74974a79e 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -30,13 +30,13 @@
 #include <drm/drm_print.h>
 
 #include "i915_reg.h"
-#include "i915_utils.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_power_well.h"
 #include "intel_display_regs.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dmc.h"
 #include "intel_dmc_regs.h"
 #include "intel_flipq.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 78e21bfd29bd..b0d9631bfb0a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -51,7 +51,6 @@
 #include <drm/drm_probe_helper.h>
 
 #include "g4x_dp.h"
-#include "i915_utils.h"
 #include "intel_alpm.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
@@ -65,6 +64,7 @@
 #include "intel_de.h"
 #include "intel_display_driver.h"
 #include "intel_display_jiffies.h"
+#include "intel_display_utils.h"
 #include "intel_display_regs.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 829a7c0fbe4f..2e7dbaf511b9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -5,9 +5,9 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dp.h"
 #include "intel_dp_aux.h"
 #include "intel_dp_aux_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 316b42b5a946..aad5fe14962f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -27,10 +27,10 @@
 #include <drm/display/drm_dp_helper.h>
 #include <drm/drm_print.h>
 
-#include "i915_utils.h"
 #include "intel_display_core.h"
 #include "intel_display_jiffies.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
 #include "intel_encoder.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 3f77ad92c156..5df6347a420d 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -24,13 +24,13 @@
 #include <drm/drm_print.h>
 
 #include "bxt_dpio_phy_regs.h"
-#include "i915_utils.h"
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
 #include "intel_display_power_well.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dp.h"
 #include "intel_dpio_phy.h"
 #include "vlv_dpio_phy_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 900a945ff8ab..92c433f7b7e2 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -27,7 +27,6 @@
 #include <drm/drm_print.h>
 
 #include "bxt_dpio_phy_regs.h"
-#include "i915_utils.h"
 #include "intel_cx0_phy.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 23402408e172..35ccf6a528fb 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -38,10 +38,10 @@
 #include <drm/drm_print.h>
 #include <video/mipi_display.h>
 
-#include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dsi.h"
 #include "intel_dsi_vbt.h"
 #include "intel_gmbus_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 08b48e36aca6..c2663d6e2c92 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -34,12 +34,12 @@
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
-#include "i915_utils.h"
 #include "intel_connector.h"
 #include "intel_de.h"
 #include "intel_display_driver.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dvo.h"
 #include "intel_dvo_dev.h"
 #include "intel_dvo_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 3958628c73e9..ada4fdda70bb 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -11,11 +11,11 @@
 #include <drm/drm_modeset_helper.h>
 
 #include "i915_drv.h"
-#include "i915_utils.h"
 #include "intel_bo.h"
 #include "intel_display.h"
 #include "intel_display_core.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dpt.h"
 #include "intel_fb.h"
 #include "intel_fb_bo.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 6f2cc01ea4a0..6e5cf522ef5b 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -49,7 +49,6 @@
 #include "gt/intel_gt_types.h"
 
 #include "i915_drv.h"
-#include "i915_utils.h"
 #include "i915_vgpu.h"
 #include "i915_vma.h"
 #include "i9xx_plane_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 59a36b3a22c1..5bb0090dd5ed 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -9,13 +9,13 @@
 #include <drm/drm_print.h>
 
 #include "i915_reg.h"
-#include "i915_utils.h"
 #include "intel_atomic.h"
 #include "intel_crtc.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dp.h"
 #include "intel_fdi.h"
 #include "intel_fdi_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_flipq.c b/drivers/gpu/drm/i915/display/intel_flipq.c
index 6ab2272ab2df..f162614a925d 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.c
+++ b/drivers/gpu/drm/i915/display/intel_flipq.c
@@ -7,16 +7,16 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_utils.h"
-#include "intel_step.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_core.h"
 #include "intel_display_types.h"
-#include "intel_flipq.h"
+#include "intel_display_utils.h"
 #include "intel_dmc.h"
 #include "intel_dmc_regs.h"
 #include "intel_dsb.h"
+#include "intel_flipq.h"
+#include "intel_step.h"
 #include "intel_vblank.h"
 #include "intel_vrr.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 0f624004104f..7195e8cf671c 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -19,7 +19,6 @@
 #include <drm/intel/i915_component.h>
 
 #include "i915_reg.h"
-#include "i915_utils.h"
 #include "intel_connector.h"
 #include "intel_de.h"
 #include "intel_display_jiffies.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 6a22862d6be1..17aa5e0cd51a 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -9,7 +9,6 @@
 #include "gt/intel_gt.h"
 #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
 #include "i915_drv.h"
-#include "i915_utils.h"
 #include "intel_hdcp_gsc.h"
 
 struct intel_hdcp_gsc_context {
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 4ab7e2e3bfd4..0acf2f63ada4 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -45,7 +45,6 @@
 #include <media/cec-notifier.h>
 
 #include "g4x_hdmi.h"
-#include "i915_utils.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
 #include "intel_connector.h"
@@ -55,6 +54,7 @@
 #include "intel_display_driver.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dp.h"
 #include "intel_gmbus.h"
 #include "intel_hdcp.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 4451a792600a..3e508bb9ecdd 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -28,12 +28,12 @@
 
 #include "i915_drv.h"
 #include "i915_irq.h"
-#include "i915_utils.h"
 #include "intel_connector.h"
-#include "intel_display_power.h"
 #include "intel_display_core.h"
+#include "intel_display_power.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dp.h"
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index 9a4da818ad61..46c47b3d6f42 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -6,11 +6,11 @@
 #include <drm/drm_print.h>
 
 #include "i915_reg.h"
-#include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_irq.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dp_aux.h"
 #include "intel_gmbus.h"
 #include "intel_hotplug.h"
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index d56026c4efdd..9ceabbc981a1 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -31,10 +31,10 @@
 #include <drm/drm_edid.h>
 #include <drm/drm_print.h>
 
-#include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dp.h"
 #include "intel_hdmi.h"
 #include "intel_lspcon.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index 9ae53679a041..cca880c7eed4 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -6,10 +6,10 @@
 #include <drm/drm_print.h>
 
 #include "i915_reg.h"
-#include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_panel.h"
 #include "intel_pch_refclk.h"
 #include "intel_sbi.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
index 68539e7c2a24..6dda496190e0 100644
--- a/drivers/gpu/drm/i915/display/intel_pfit.c
+++ b/drivers/gpu/drm/i915/display/intel_pfit.c
@@ -5,12 +5,12 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_core.h"
 #include "intel_display_driver.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_lvds_regs.h"
 #include "intel_pfit.h"
 #include "intel_pfit_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index 7ade35e05eb5..f52abd4e2eb0 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -7,7 +7,6 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_utils.h"
 #include "intel_atomic.h"
 #include "intel_bw.h"
 #include "intel_cdclk.h"
@@ -15,6 +14,7 @@
 #include "intel_display_jiffies.h"
 #include "intel_display_regs.h"
 #include "intel_display_trace.h"
+#include "intel_display_utils.h"
 #include "intel_pmdemand.h"
 #include "intel_step.h"
 #include "skl_watermark.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 0c2f48626d0c..25692a547764 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -10,12 +10,12 @@
 
 #include "g4x_dp.h"
 #include "i915_reg.h"
-#include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_jiffies.h"
 #include "intel_display_power_well.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dp.h"
 #include "intel_dpio_phy.h"
 #include "intel_dpll.h"
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index cfc8b04f98fa..0ca2b06d18b5 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -29,7 +29,6 @@
 #include <drm/drm_vblank.h>
 
 #include "i915_reg.h"
-#include "i915_utils.h"
 #include "intel_alpm.h"
 #include "intel_atomic.h"
 #include "intel_crtc.h"
@@ -40,6 +39,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dmc.h"
 #include "intel_dp.h"
 #include "intel_dp_aux.h"
diff --git a/drivers/gpu/drm/i915/display/intel_qp_tables.c b/drivers/gpu/drm/i915/display/intel_qp_tables.c
index 600c815e37e4..c05d4beb91d8 100644
--- a/drivers/gpu/drm/i915/display/intel_qp_tables.c
+++ b/drivers/gpu/drm/i915/display/intel_qp_tables.c
@@ -5,7 +5,7 @@
 
 #include <drm/display/drm_dsc.h>
 
-#include "i915_utils.h"
+#include "intel_display_utils.h"
 #include "intel_qp_tables.h"
 
 /* from BPP 6 to 24 in steps of 0.5 */
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index b2dd69a11124..4f028e6a91cd 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -7,12 +7,12 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_utils.h"
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_snps_hdmi_pll.h"
 #include "intel_snps_phy.h"
 #include "intel_snps_phy_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 75bbaa923204..60f1d9ed181e 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -39,10 +39,10 @@
 #include <drm/drm_print.h>
 #include <drm/drm_rect.h>
 
-#include "i915_utils.h"
 #include "i9xx_plane.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_fb.h"
 #include "intel_frontbuffer.h"
 #include "intel_plane.h"
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index c4a5601c5107..f1ed50be3247 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -8,7 +8,6 @@
 #include <drm/drm_print.h>
 
 #include "i915_reg.h"
-#include "i915_utils.h"
 #include "intel_atomic.h"
 #include "intel_cx0_phy_regs.h"
 #include "intel_ddi.h"
@@ -18,6 +17,7 @@
 #include "intel_display_power_map.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dkl_phy_regs.h"
 #include "intel_dp.h"
 #include "intel_dp_mst.h"
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 0e534be375ca..8aa427a93964 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -8,13 +8,13 @@
 #include <drm/drm_vblank.h>
 
 #include "i915_drv.h"
-#include "i915_utils.h"
 #include "intel_color.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_jiffies.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_vblank.h"
 #include "intel_vrr.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index dbf2cf1b896d..0e727fc5e80c 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -11,10 +11,10 @@
 #include <drm/drm_fixed.h>
 #include <drm/drm_print.h>
 
-#include "i915_utils.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dp.h"
 #include "intel_dsi.h"
 #include "intel_qp_tables.h"
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index d29efcbf2319..2956b110c3b7 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -5,11 +5,11 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_display_wa.h"
 #include "intel_fb.h"
 #include "skl_scaler.h"
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 0319174adf95..b6fdba88752b 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -10,12 +10,12 @@
 
 #include "pxp/intel_pxp.h"
 #include "i915_drv.h"
-#include "i915_utils.h"
 #include "intel_bo.h"
 #include "intel_de.h"
 #include "intel_display_irq.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dpt.h"
 #include "intel_fb.h"
 #include "intel_fbc.h"
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 256162da9afc..6d050408618c 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -10,7 +10,6 @@
 
 #include "soc/intel_dram.h"
 #include "i915_reg.h"
-#include "i915_utils.h"
 #include "i9xx_wm.h"
 #include "intel_atomic.h"
 #include "intel_bw.h"
@@ -23,6 +22,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_fb.h"
 #include "intel_fixed.h"
 #include "intel_flipq.h"
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index c9a53fde79c4..444682995658 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -34,7 +34,6 @@
 #include <drm/drm_probe_helper.h>
 
 #include "i915_reg.h"
-#include "i915_utils.h"
 #include "intel_atomic.h"
 #include "intel_backlight.h"
 #include "intel_connector.h"
@@ -42,6 +41,7 @@
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dsi.h"
 #include "intel_dsi_vbt.h"
 #include "intel_fifo_underrun.h"
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index c1f978a7c141..4f75115b87d6 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -38,8 +38,10 @@
 
 struct drm_i915_private;
 
+#ifndef MISSING_CASE
 #define MISSING_CASE(x) WARN(1, "Missing case (%s == %ld)\n", \
 			     __stringify(x), (long)(x))
+#endif
 
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
 
@@ -65,11 +67,13 @@ bool i915_error_injected(void);
 		drm_err(&(i915)->drm, fmt, ##__VA_ARGS__); \
 })
 
+#ifndef fetch_and_zero
 #define fetch_and_zero(ptr) ({						\
 	typeof(*ptr) __T = *(ptr);					\
 	*(ptr) = (typeof(*ptr))0;					\
 	__T;								\
 })
+#endif
 
 /*
  * check_user_mbz: Check that a user value exists and is zero
-- 
2.47.3

