Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66EA3D24324
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jan 2026 12:33:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46B7B10E146;
	Thu, 15 Jan 2026 11:33:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SkpNo7oH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8B8C10E11C;
 Thu, 15 Jan 2026 11:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768476825; x=1800012825;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4cZfPzfkZ2Edq1dK2b5d3FuZ4qg+oXrSF3GMCicRg9U=;
 b=SkpNo7oH03P2Zbsc2grBmfCBNZeoy0yN8rj65q67HeCpGID8BXxExKPP
 hkfOj68iswT9oa4a30wHnXiC0Xy8K9uyzU+Kv2am0COt6+RfNtXPZeQrG
 k8IEDKd8R22D1PIEP5kKj1z76mW/YT4U6VygPNBWunCnH662dWJrzw9Ml
 H43wUGVbbti1dDnMavpmHy9XyaZw/UM2KEy5KX4EOQqyZ5GemeWUehevl
 YXzcs73YbC699pSbZmwpGby/qzJdT8pGDyPmNcbJbO+xTgJF/NhdEEweR
 TD7/J7NXkyB72EIb3ecu2udVYUZFoO8+cBECQXNVqNtkPexa2k0QnpDyF w==;
X-CSE-ConnectionGUID: zw0kLzqLQFOFPiHf3ngiSg==
X-CSE-MsgGUID: zqE+Nr1PTxuNrzIVA2UUTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="57335425"
X-IronPort-AV: E=Sophos;i="6.21,228,1763452800"; d="scan'208";a="57335425"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 03:33:44 -0800
X-CSE-ConnectionGUID: 9prdiqTxS5uU8W7X6Vo7PA==
X-CSE-MsgGUID: 0wdHuqwxT1OvFZuGm9bAFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,228,1763452800"; d="scan'208";a="204966804"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.150])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 03:33:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2] drm/{i915,
 xe}/pcode: move display pcode calls to parent interface
Date: Thu, 15 Jan 2026 13:33:37 +0200
Message-ID: <20260115113337.4079184-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Call the parent driver pcode functions through the parent interface
function pointers instead of expecting both to have functions of the
same name.

In i915, add the interface to existing intel_pcode.[ch], while in xe
move them to new display/xe_display_pcode.[ch] and build it only for
CONFIG_DRM_XE_DISPLAY=y.

Do not add separate write and write_timeout calls in the
interface. Instead, handle the default 1 ms timeout in the
intel_parent.c glue layer.

This drops the last intel_pcode.h includes from display, and allows us
to remove the corresponding xe compat header.

v2: initialize .pcode in i915

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/hsw_ips.c        |  8 +--
 drivers/gpu/drm/i915/display/intel_bw.c       | 22 ++++----
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 54 +++++++++----------
 .../drm/i915/display/intel_display_power.c    |  3 +-
 .../i915/display/intel_display_power_well.c   |  5 +-
 drivers/gpu/drm/i915/display/intel_dram.c     |  6 +--
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  3 +-
 drivers/gpu/drm/i915/display/intel_parent.c   | 22 ++++++++
 drivers/gpu/drm/i915/display/intel_parent.h   |  7 +++
 drivers/gpu/drm/i915/display/skl_watermark.c  | 21 ++++----
 drivers/gpu/drm/i915/i915_driver.c            |  1 +
 drivers/gpu/drm/i915/intel_pcode.c            | 16 ++++--
 drivers/gpu/drm/i915/intel_pcode.h            |  9 +---
 drivers/gpu/drm/xe/Makefile                   |  1 +
 .../drm/xe/compat-i915-headers/intel_pcode.h  | 11 ----
 drivers/gpu/drm/xe/display/xe_display.c       |  2 +
 drivers/gpu/drm/xe/display/xe_display_pcode.c | 38 +++++++++++++
 drivers/gpu/drm/xe/display/xe_display_pcode.h |  9 ++++
 drivers/gpu/drm/xe/xe_pcode.c                 | 30 -----------
 drivers/gpu/drm/xe/xe_pcode.h                 |  8 ---
 include/drm/intel/display_parent_interface.h  | 10 ++++
 21 files changed, 161 insertions(+), 125 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_display_pcode.c
 create mode 100644 drivers/gpu/drm/xe/display/xe_display_pcode.h

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index 008d339d5c21..0caaea2e64e1 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -14,7 +14,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
-#include "intel_pcode.h"
+#include "intel_parent.h"
 
 static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
 {
@@ -39,8 +39,8 @@ static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
 
 	if (display->platform.broadwell) {
 		drm_WARN_ON(display->drm,
-			    intel_pcode_write(display->drm, DISPLAY_IPS_CONTROL,
-					      val | IPS_PCODE_CONTROL));
+			    intel_parent_pcode_write(display, DISPLAY_IPS_CONTROL,
+						     val | IPS_PCODE_CONTROL));
 		/*
 		 * Quoting Art Runyan: "its not safe to expect any particular
 		 * value in IPS_CTL bit 31 after enabling IPS through the
@@ -72,7 +72,7 @@ bool hsw_ips_disable(const struct intel_crtc_state *crtc_state)
 
 	if (display->platform.broadwell) {
 		drm_WARN_ON(display->drm,
-			    intel_pcode_write(display->drm, DISPLAY_IPS_CONTROL, 0));
+			    intel_parent_pcode_write(display, DISPLAY_IPS_CONTROL, 0));
 		/*
 		 * Wait for PCODE to finish disabling IPS. The BSpec specified
 		 * 42ms timeout value leads to occasional timeouts so use 100ms
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 4ee3f5172f4e..8d84445c69f1 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -15,7 +15,7 @@
 #include "intel_display_utils.h"
 #include "intel_dram.h"
 #include "intel_mchbar_regs.h"
-#include "intel_pcode.h"
+#include "intel_parent.h"
 #include "intel_uncore.h"
 #include "skl_watermark.h"
 
@@ -114,9 +114,9 @@ static int icl_pcode_read_qgv_point_info(struct intel_display *display,
 	u16 dclk;
 	int ret;
 
-	ret = intel_pcode_read(display->drm, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
-			       ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point),
-			       &val, &val2);
+	ret = intel_parent_pcode_read(display, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
+				      ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point),
+				      &val, &val2);
 	if (ret)
 		return ret;
 
@@ -141,8 +141,8 @@ static int adls_pcode_read_psf_gv_point_info(struct intel_display *display,
 	int ret;
 	int i;
 
-	ret = intel_pcode_read(display->drm, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
-			       ADL_PCODE_MEM_SS_READ_PSF_GV_INFO, &val, NULL);
+	ret = intel_parent_pcode_read(display, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
+				      ADL_PCODE_MEM_SS_READ_PSF_GV_INFO, &val, NULL);
 	if (ret)
 		return ret;
 
@@ -189,11 +189,11 @@ static int icl_pcode_restrict_qgv_points(struct intel_display *display,
 		return 0;
 
 	/* bspec says to keep retrying for at least 1 ms */
-	ret = intel_pcode_request(display->drm, ICL_PCODE_SAGV_DE_MEM_SS_CONFIG,
-				  points_mask,
-				  ICL_PCODE_REP_QGV_MASK | ADLS_PCODE_REP_PSF_MASK,
-				  ICL_PCODE_REP_QGV_SAFE | ADLS_PCODE_REP_PSF_SAFE,
-				  1);
+	ret = intel_parent_pcode_request(display, ICL_PCODE_SAGV_DE_MEM_SS_CONFIG,
+					 points_mask,
+					 ICL_PCODE_REP_QGV_MASK | ADLS_PCODE_REP_PSF_MASK,
+					 ICL_PCODE_REP_QGV_SAFE | ADLS_PCODE_REP_PSF_SAFE,
+					 1);
 
 	if (ret < 0) {
 		drm_err(display->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 9bfbfbf34dc0..9217050a76e0 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -42,8 +42,8 @@
 #include "intel_display_wa.h"
 #include "intel_dram.h"
 #include "intel_mchbar_regs.h"
+#include "intel_parent.h"
 #include "intel_pci_config.h"
-#include "intel_pcode.h"
 #include "intel_plane.h"
 #include "intel_psr.h"
 #include "intel_step.h"
@@ -888,7 +888,7 @@ static void bdw_set_cdclk(struct intel_display *display,
 		     "trying to change cdclk frequency with cdclk not enabled\n"))
 		return;
 
-	ret = intel_pcode_write(display->drm, BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ, 0x0);
+	ret = intel_parent_pcode_write(display, BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ, 0x0);
 	if (ret) {
 		drm_err(display->drm,
 			"failed to inform pcode about cdclk change\n");
@@ -918,8 +918,8 @@ static void bdw_set_cdclk(struct intel_display *display,
 	if (ret)
 		drm_err(display->drm, "Switching back to LCPLL failed\n");
 
-	intel_pcode_write(display->drm, HSW_PCODE_DE_WRITE_FREQ_REQ,
-			  cdclk_config->voltage_level);
+	intel_parent_pcode_write(display, HSW_PCODE_DE_WRITE_FREQ_REQ,
+				 cdclk_config->voltage_level);
 
 	intel_de_write(display, CDCLK_FREQ,
 		       DIV_ROUND_CLOSEST(cdclk, 1000) - 1);
@@ -1175,10 +1175,10 @@ static void skl_set_cdclk(struct intel_display *display,
 	drm_WARN_ON_ONCE(display->drm,
 			 display->platform.skylake && vco == 8640000);
 
-	ret = intel_pcode_request(display->drm, SKL_PCODE_CDCLK_CONTROL,
-				  SKL_CDCLK_PREPARE_FOR_CHANGE,
-				  SKL_CDCLK_READY_FOR_CHANGE,
-				  SKL_CDCLK_READY_FOR_CHANGE, 3);
+	ret = intel_parent_pcode_request(display, SKL_PCODE_CDCLK_CONTROL,
+					 SKL_CDCLK_PREPARE_FOR_CHANGE,
+					 SKL_CDCLK_READY_FOR_CHANGE,
+					 SKL_CDCLK_READY_FOR_CHANGE, 3);
 	if (ret) {
 		drm_err(display->drm,
 			"Failed to inform PCU about cdclk change (%d)\n", ret);
@@ -1221,8 +1221,8 @@ static void skl_set_cdclk(struct intel_display *display,
 	intel_de_posting_read(display, CDCLK_CTL);
 
 	/* inform PCU of the change */
-	intel_pcode_write(display->drm, SKL_PCODE_CDCLK_CONTROL,
-			  cdclk_config->voltage_level);
+	intel_parent_pcode_write(display, SKL_PCODE_CDCLK_CONTROL,
+				 cdclk_config->voltage_level);
 
 	intel_update_cdclk(display);
 }
@@ -2247,18 +2247,18 @@ static void bxt_set_cdclk(struct intel_display *display,
 	if (DISPLAY_VER(display) >= 14 || display->platform.dg2)
 		; /* NOOP */
 	else if (DISPLAY_VER(display) >= 11)
-		ret = intel_pcode_request(display->drm, SKL_PCODE_CDCLK_CONTROL,
-					  SKL_CDCLK_PREPARE_FOR_CHANGE,
-					  SKL_CDCLK_READY_FOR_CHANGE,
-					  SKL_CDCLK_READY_FOR_CHANGE, 3);
+		ret = intel_parent_pcode_request(display, SKL_PCODE_CDCLK_CONTROL,
+						 SKL_CDCLK_PREPARE_FOR_CHANGE,
+						 SKL_CDCLK_READY_FOR_CHANGE,
+						 SKL_CDCLK_READY_FOR_CHANGE, 3);
 	else
 		/*
 		 * BSpec requires us to wait up to 150usec, but that leads to
 		 * timeouts; the 2ms used here is based on experiment.
 		 */
-		ret = intel_pcode_write_timeout(display->drm,
-						HSW_PCODE_DE_WRITE_FREQ_REQ,
-						0x80000000, 2);
+		ret = intel_parent_pcode_write_timeout(display,
+						       HSW_PCODE_DE_WRITE_FREQ_REQ,
+						       0x80000000, 2);
 
 	if (ret) {
 		drm_err(display->drm,
@@ -2287,8 +2287,8 @@ static void bxt_set_cdclk(struct intel_display *display,
 		 * Display versions 14 and beyond
 		 */;
 	else if (DISPLAY_VER(display) >= 11 && !display->platform.dg2)
-		ret = intel_pcode_write(display->drm, SKL_PCODE_CDCLK_CONTROL,
-					cdclk_config->voltage_level);
+		ret = intel_parent_pcode_write(display, SKL_PCODE_CDCLK_CONTROL,
+					       cdclk_config->voltage_level);
 	if (DISPLAY_VER(display) < 11) {
 		/*
 		 * The timeout isn't specified, the 2ms used here is based on
@@ -2296,9 +2296,9 @@ static void bxt_set_cdclk(struct intel_display *display,
 		 * FIXME: Waiting for the request completion could be delayed
 		 * until the next PCODE request based on BSpec.
 		 */
-		ret = intel_pcode_write_timeout(display->drm,
-						HSW_PCODE_DE_WRITE_FREQ_REQ,
-						cdclk_config->voltage_level, 2);
+		ret = intel_parent_pcode_write_timeout(display,
+						       HSW_PCODE_DE_WRITE_FREQ_REQ,
+						       cdclk_config->voltage_level, 2);
 	}
 	if (ret) {
 		drm_err(display->drm,
@@ -2598,11 +2598,11 @@ static void intel_pcode_notify(struct intel_display *display,
 	if (pipe_count_update_valid)
 		update_mask |= DISPLAY_TO_PCODE_PIPE_COUNT_VALID;
 
-	ret = intel_pcode_request(display->drm, SKL_PCODE_CDCLK_CONTROL,
-				  SKL_CDCLK_PREPARE_FOR_CHANGE |
-				  update_mask,
-				  SKL_CDCLK_READY_FOR_CHANGE,
-				  SKL_CDCLK_READY_FOR_CHANGE, 3);
+	ret = intel_parent_pcode_request(display, SKL_PCODE_CDCLK_CONTROL,
+					 SKL_CDCLK_PREPARE_FOR_CHANGE |
+					 update_mask,
+					 SKL_CDCLK_READY_FOR_CHANGE,
+					 SKL_CDCLK_READY_FOR_CHANGE, 3);
 	if (ret)
 		drm_err(display->drm,
 			"Failed to inform PCU about display config (err %d)\n",
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index d27397f43863..06adf6afbec0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -26,7 +26,6 @@
 #include "intel_mchbar_regs.h"
 #include "intel_parent.h"
 #include "intel_pch_refclk.h"
-#include "intel_pcode.h"
 #include "intel_pmdemand.h"
 #include "intel_pps_regs.h"
 #include "intel_snps_phy.h"
@@ -1260,7 +1259,7 @@ static u32 hsw_read_dcomp(struct intel_display *display)
 static void hsw_write_dcomp(struct intel_display *display, u32 val)
 {
 	if (display->platform.haswell) {
-		if (intel_pcode_write(display->drm, GEN6_PCODE_WRITE_D_COMP, val))
+		if (intel_parent_pcode_write(display, GEN6_PCODE_WRITE_D_COMP, val))
 			drm_dbg_kms(display->drm, "Failed to write to D_COMP\n");
 	} else {
 		intel_de_write(display, D_COMP_BDW, val);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index db185a859133..b01dda67986a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -27,7 +27,6 @@
 #include "intel_dpll.h"
 #include "intel_hotplug.h"
 #include "intel_parent.h"
-#include "intel_pcode.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
 #include "intel_tc.h"
@@ -522,7 +521,7 @@ static void icl_tc_cold_exit(struct intel_display *display)
 	int ret, tries = 0;
 
 	while (1) {
-		ret = intel_pcode_write(display->drm, ICL_PCODE_EXIT_TCCOLD, 0);
+		ret = intel_parent_pcode_write(display, ICL_PCODE_EXIT_TCCOLD, 0);
 		if (ret != -EAGAIN || ++tries == 3)
 			break;
 		msleep(1);
@@ -1795,7 +1794,7 @@ tgl_tc_cold_request(struct intel_display *display, bool block)
 		 * Spec states that we should timeout the request after 200us
 		 * but the function below will timeout after 500us
 		 */
-		ret = intel_pcode_read(display->drm, TGL_PCODE_TCCOLD, &low_val, &high_val);
+		ret = intel_parent_pcode_read(display, TGL_PCODE_TCCOLD, &low_val, &high_val);
 		if (ret == 0) {
 			if (block &&
 			    (low_val & TGL_PCODE_EXIT_TCCOLD_DATA_L_EXIT_FAILED))
diff --git a/drivers/gpu/drm/i915/display/intel_dram.c b/drivers/gpu/drm/i915/display/intel_dram.c
index 170de304fe96..3b9879714ea9 100644
--- a/drivers/gpu/drm/i915/display/intel_dram.c
+++ b/drivers/gpu/drm/i915/display/intel_dram.c
@@ -13,7 +13,7 @@
 #include "intel_display_utils.h"
 #include "intel_dram.h"
 #include "intel_mchbar_regs.h"
-#include "intel_pcode.h"
+#include "intel_parent.h"
 #include "intel_uncore.h"
 #include "vlv_iosf_sb.h"
 
@@ -692,8 +692,8 @@ static int icl_pcode_read_mem_global_info(struct intel_display *display,
 	u32 val = 0;
 	int ret;
 
-	ret = intel_pcode_read(display->drm, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
-			       ICL_PCODE_MEM_SS_READ_GLOBAL_INFO, &val, NULL);
+	ret = intel_parent_pcode_read(display, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
+				      ICL_PCODE_MEM_SS_READ_GLOBAL_INFO, &val, NULL);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 7114fc405c29..8d3137067bf6 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -33,7 +33,6 @@
 #include "intel_hdcp_regs.h"
 #include "intel_hdcp_shim.h"
 #include "intel_parent.h"
-#include "intel_pcode.h"
 #include "intel_step.h"
 
 #define USE_HDCP_GSC(__display)		(DISPLAY_VER(__display) >= 14)
@@ -398,7 +397,7 @@ static int intel_hdcp_load_keys(struct intel_display *display)
 	 * Mailbox interface.
 	 */
 	if (DISPLAY_VER(display) == 9 && !display->platform.broxton) {
-		ret = intel_pcode_write(display->drm, SKL_PCODE_LOAD_HDCP_KEYS, 1);
+		ret = intel_parent_pcode_write(display, SKL_PCODE_LOAD_HDCP_KEYS, 1);
 		if (ret) {
 			drm_err(display->drm,
 				"Failed to initiate HDCP key load (%d)\n",
diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index 72ae553f79a4..7f73695a0444 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -92,6 +92,28 @@ void intel_parent_pc8_unblock(struct intel_display *display)
 	display->parent->pc8->unblock(display->drm);
 }
 
+/* pcode */
+int intel_parent_pcode_read(struct intel_display *display, u32 mbox, u32 *val, u32 *val1)
+{
+	return display->parent->pcode->read(display->drm, mbox, val, val1);
+}
+
+int intel_parent_pcode_write_timeout(struct intel_display *display, u32 mbox, u32 val, int timeout_ms)
+{
+	return display->parent->pcode->write(display->drm, mbox, val, timeout_ms);
+}
+
+int intel_parent_pcode_write(struct intel_display *display, u32 mbox, u32 val)
+{
+	return intel_parent_pcode_write_timeout(display, mbox, val, 1);
+}
+
+int intel_parent_pcode_request(struct intel_display *display, u32 mbox, u32 request,
+			       u32 reply_mask, u32 reply, int timeout_base_ms)
+{
+	return display->parent->pcode->request(display->drm, mbox, request, reply_mask, reply, timeout_base_ms);
+}
+
 /* rps */
 bool intel_parent_rps_available(struct intel_display *display)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index 47cdc14f9aa2..04782bb26b61 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -36,6 +36,13 @@ void intel_parent_panic_finish(struct intel_display *display, struct intel_panic
 void intel_parent_pc8_block(struct intel_display *display);
 void intel_parent_pc8_unblock(struct intel_display *display);
 
+/* pcode */
+int intel_parent_pcode_read(struct intel_display *display, u32 mbox, u32 *val, u32 *val1);
+int intel_parent_pcode_write_timeout(struct intel_display *display, u32 mbox, u32 val, int timeout_ms);
+int intel_parent_pcode_write(struct intel_display *display, u32 mbox, u32 val);
+int intel_parent_pcode_request(struct intel_display *display, u32 mbox, u32 request,
+			       u32 reply_mask, u32 reply, int timeout_base_ms);
+
 /* rps */
 bool intel_parent_rps_available(struct intel_display *display);
 void intel_parent_rps_boost_if_not_started(struct intel_display *display, struct dma_fence *fence);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index a6aab79812e5..b41da10f0f85 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -26,7 +26,7 @@
 #include "intel_fb.h"
 #include "intel_fixed.h"
 #include "intel_flipq.h"
-#include "intel_pcode.h"
+#include "intel_parent.h"
 #include "intel_plane.h"
 #include "intel_vblank.h"
 #include "intel_wm.h"
@@ -115,9 +115,8 @@ intel_sagv_block_time(struct intel_display *display)
 		u32 val = 0;
 		int ret;
 
-		ret = intel_pcode_read(display->drm,
-				       GEN12_PCODE_READ_SAGV_BLOCK_TIME_US,
-				       &val, NULL);
+		ret = intel_parent_pcode_read(display, GEN12_PCODE_READ_SAGV_BLOCK_TIME_US,
+					      &val, NULL);
 		if (ret) {
 			drm_dbg_kms(display->drm, "Couldn't read SAGV block time!\n");
 			return 0;
@@ -184,8 +183,8 @@ static void skl_sagv_enable(struct intel_display *display)
 		return;
 
 	drm_dbg_kms(display->drm, "Enabling SAGV\n");
-	ret = intel_pcode_write(display->drm, GEN9_PCODE_SAGV_CONTROL,
-				GEN9_SAGV_ENABLE);
+	ret = intel_parent_pcode_write(display, GEN9_PCODE_SAGV_CONTROL,
+				       GEN9_SAGV_ENABLE);
 
 	/* We don't need to wait for SAGV when enabling */
 
@@ -217,9 +216,9 @@ static void skl_sagv_disable(struct intel_display *display)
 
 	drm_dbg_kms(display->drm, "Disabling SAGV\n");
 	/* bspec says to keep retrying for at least 1 ms */
-	ret = intel_pcode_request(display->drm, GEN9_PCODE_SAGV_CONTROL,
-				  GEN9_SAGV_DISABLE,
-				  GEN9_SAGV_IS_DISABLED, GEN9_SAGV_IS_DISABLED, 1);
+	ret = intel_parent_pcode_request(display, GEN9_PCODE_SAGV_CONTROL,
+					 GEN9_SAGV_DISABLE,
+					 GEN9_SAGV_IS_DISABLED, GEN9_SAGV_IS_DISABLED, 1);
 	/*
 	 * Some skl systems, pre-release machines in particular,
 	 * don't actually have SAGV.
@@ -3283,7 +3282,7 @@ static void skl_read_wm_latency(struct intel_display *display)
 
 	/* read the first set of memory latencies[0:3] */
 	val = 0; /* data0 to be programmed to 0 for first set */
-	ret = intel_pcode_read(display->drm, GEN9_PCODE_READ_MEM_LATENCY, &val, NULL);
+	ret = intel_parent_pcode_read(display, GEN9_PCODE_READ_MEM_LATENCY, &val, NULL);
 	if (ret) {
 		drm_err(display->drm, "SKL Mailbox read error = %d\n", ret);
 		return;
@@ -3296,7 +3295,7 @@ static void skl_read_wm_latency(struct intel_display *display)
 
 	/* read the second set of memory latencies[4:7] */
 	val = 1; /* data0 to be programmed to 1 for second set */
-	ret = intel_pcode_read(display->drm, GEN9_PCODE_READ_MEM_LATENCY, &val, NULL);
+	ret = intel_parent_pcode_read(display, GEN9_PCODE_READ_MEM_LATENCY, &val, NULL);
 	if (ret) {
 		drm_err(display->drm, "SKL Mailbox read error = %d\n", ret);
 		return;
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index f0105c5b49a7..b01d8fdea548 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -769,6 +769,7 @@ static const struct intel_display_parent_interface parent = {
 	.irq = &i915_display_irq_interface,
 	.panic = &i915_display_panic_interface,
 	.pc8 = &i915_display_pc8_interface,
+	.pcode = &i915_display_pcode_interface,
 	.rpm = &i915_display_rpm_interface,
 	.rps = &i915_display_rps_interface,
 	.stolen = &i915_display_stolen_interface,
diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
index 756652b8ec97..76c5916b28f4 100644
--- a/drivers/gpu/drm/i915/intel_pcode.c
+++ b/drivers/gpu/drm/i915/intel_pcode.c
@@ -4,6 +4,7 @@
  */
 
 #include <drm/drm_print.h>
+#include <drm/intel/display_parent_interface.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
@@ -276,26 +277,31 @@ int snb_pcode_write_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u3
 	return err;
 }
 
-/* Helpers with drm device */
-int intel_pcode_read(struct drm_device *drm, u32 mbox, u32 *val, u32 *val1)
+static int intel_pcode_read(struct drm_device *drm, u32 mbox, u32 *val, u32 *val1)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 
 	return snb_pcode_read(&i915->uncore, mbox, val, val1);
 }
 
-int intel_pcode_write_timeout(struct drm_device *drm, u32 mbox, u32 val, int timeout_ms)
+static int intel_pcode_write_timeout(struct drm_device *drm, u32 mbox, u32 val, int timeout_ms)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 
 	return snb_pcode_write_timeout(&i915->uncore, mbox, val, timeout_ms);
 }
 
-int intel_pcode_request(struct drm_device *drm, u32 mbox, u32 request,
-			u32 reply_mask, u32 reply, int timeout_base_ms)
+static int intel_pcode_request(struct drm_device *drm, u32 mbox, u32 request,
+			       u32 reply_mask, u32 reply, int timeout_base_ms)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 
 	return skl_pcode_request(&i915->uncore, mbox, request, reply_mask, reply,
 				 timeout_base_ms);
 }
+
+const struct intel_display_pcode_interface i915_display_pcode_interface = {
+	.read = intel_pcode_read,
+	.write = intel_pcode_write_timeout,
+	.request = intel_pcode_request,
+};
diff --git a/drivers/gpu/drm/i915/intel_pcode.h b/drivers/gpu/drm/i915/intel_pcode.h
index c91a821a88d4..19795ea8172e 100644
--- a/drivers/gpu/drm/i915/intel_pcode.h
+++ b/drivers/gpu/drm/i915/intel_pcode.h
@@ -27,13 +27,6 @@ int intel_pcode_init(struct intel_uncore *uncore);
 int snb_pcode_read_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u32 *val);
 int snb_pcode_write_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u32 val);
 
-/* Helpers with drm device */
-int intel_pcode_read(struct drm_device *drm, u32 mbox, u32 *val, u32 *val1);
-int intel_pcode_write_timeout(struct drm_device *drm, u32 mbox, u32 val, int timeout_ms);
-#define intel_pcode_write(drm, mbox, val) \
-	intel_pcode_write_timeout((drm), (mbox), (val), 1)
-
-int intel_pcode_request(struct drm_device *drm, u32 mbox, u32 request,
-			u32 reply_mask, u32 reply, int timeout_base_ms);
+extern const struct intel_display_pcode_interface i915_display_pcode_interface;
 
 #endif /* _INTEL_PCODE_H */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index b39cbb756232..51a9a531fb7e 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -213,6 +213,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	display/intel_fb_bo.o \
 	display/intel_fbdev_fb.o \
 	display/xe_display.o \
+	display/xe_display_pcode.o \
 	display/xe_display_rpm.o \
 	display/xe_display_wa.o \
 	display/xe_dsb_buffer.o \
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h
deleted file mode 100644
index 4fcd3bf6b76f..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h
+++ /dev/null
@@ -1,11 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#ifndef __INTEL_PCODE_H__
-#define __INTEL_PCODE_H__
-
-#include "xe_pcode.h"
-
-#endif /* __INTEL_PCODE_H__ */
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index f8a831b5dc7d..182facce30ab 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -35,6 +35,7 @@
 #include "intel_hotplug.h"
 #include "intel_opregion.h"
 #include "skl_watermark.h"
+#include "xe_display_pcode.h"
 #include "xe_display_rpm.h"
 #include "xe_hdcp_gsc.h"
 #include "xe_initial_plane.h"
@@ -542,6 +543,7 @@ static const struct intel_display_parent_interface parent = {
 	.initial_plane = &xe_display_initial_plane_interface,
 	.irq = &xe_display_irq_interface,
 	.panic = &xe_display_panic_interface,
+	.pcode = &xe_display_pcode_interface,
 	.rpm = &xe_display_rpm_interface,
 	.stolen = &xe_display_stolen_interface,
 };
diff --git a/drivers/gpu/drm/xe/display/xe_display_pcode.c b/drivers/gpu/drm/xe/display/xe_display_pcode.c
new file mode 100644
index 000000000000..f6820ef7e666
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/xe_display_pcode.c
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2026 Intel Corporation */
+
+#include <drm/intel/display_parent_interface.h>
+
+#include "xe_device.h"
+#include "xe_pcode.h"
+
+static int xe_display_pcode_read(struct drm_device *drm, u32 mbox, u32 *val, u32 *val1)
+{
+	struct xe_device *xe = to_xe_device(drm);
+	struct xe_tile *tile = xe_device_get_root_tile(xe);
+
+	return xe_pcode_read(tile, mbox, val, val1);
+}
+
+static int xe_display_pcode_write_timeout(struct drm_device *drm, u32 mbox, u32 val, int timeout_ms)
+{
+	struct xe_device *xe = to_xe_device(drm);
+	struct xe_tile *tile = xe_device_get_root_tile(xe);
+
+	return xe_pcode_write_timeout(tile, mbox, val, timeout_ms);
+}
+
+static int xe_display_pcode_request(struct drm_device *drm, u32 mbox, u32 request,
+				    u32 reply_mask, u32 reply, int timeout_base_ms)
+{
+	struct xe_device *xe = to_xe_device(drm);
+	struct xe_tile *tile = xe_device_get_root_tile(xe);
+
+	return xe_pcode_request(tile, mbox, request, reply_mask, reply, timeout_base_ms);
+}
+
+const struct intel_display_pcode_interface xe_display_pcode_interface = {
+	.read = xe_display_pcode_read,
+	.write = xe_display_pcode_write_timeout,
+	.request = xe_display_pcode_request,
+};
diff --git a/drivers/gpu/drm/xe/display/xe_display_pcode.h b/drivers/gpu/drm/xe/display/xe_display_pcode.h
new file mode 100644
index 000000000000..58bd2fb7fb79
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/xe_display_pcode.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2026 Intel Corporation */
+
+#ifndef __XE_DISPLAY_PCODE_H__
+#define __XE_DISPLAY_PCODE_H__
+
+extern const struct intel_display_pcode_interface xe_display_pcode_interface;
+
+#endif
diff --git a/drivers/gpu/drm/xe/xe_pcode.c b/drivers/gpu/drm/xe/xe_pcode.c
index 0d33c14ea0cf..dc66d0c7ee06 100644
--- a/drivers/gpu/drm/xe/xe_pcode.c
+++ b/drivers/gpu/drm/xe/xe_pcode.c
@@ -348,33 +348,3 @@ int xe_pcode_probe_early(struct xe_device *xe)
 	return xe_pcode_ready(xe, false);
 }
 ALLOW_ERROR_INJECTION(xe_pcode_probe_early, ERRNO); /* See xe_pci_probe */
-
-/* Helpers with drm device. These should only be called by the display side */
-#if IS_ENABLED(CONFIG_DRM_XE_DISPLAY)
-
-int intel_pcode_read(struct drm_device *drm, u32 mbox, u32 *val, u32 *val1)
-{
-	struct xe_device *xe = to_xe_device(drm);
-	struct xe_tile *tile = xe_device_get_root_tile(xe);
-
-	return xe_pcode_read(tile, mbox, val, val1);
-}
-
-int intel_pcode_write_timeout(struct drm_device *drm, u32 mbox, u32 val, int timeout_ms)
-{
-	struct xe_device *xe = to_xe_device(drm);
-	struct xe_tile *tile = xe_device_get_root_tile(xe);
-
-	return xe_pcode_write_timeout(tile, mbox, val, timeout_ms);
-}
-
-int intel_pcode_request(struct drm_device *drm, u32 mbox, u32 request,
-			u32 reply_mask, u32 reply, int timeout_base_ms)
-{
-	struct xe_device *xe = to_xe_device(drm);
-	struct xe_tile *tile = xe_device_get_root_tile(xe);
-
-	return xe_pcode_request(tile, mbox, request, reply_mask, reply, timeout_base_ms);
-}
-
-#endif
diff --git a/drivers/gpu/drm/xe/xe_pcode.h b/drivers/gpu/drm/xe/xe_pcode.h
index a5584c1c75f9..490e4f269607 100644
--- a/drivers/gpu/drm/xe/xe_pcode.h
+++ b/drivers/gpu/drm/xe/xe_pcode.h
@@ -34,12 +34,4 @@ int xe_pcode_request(struct xe_tile *tile, u32 mbox, u32 request,
 	| FIELD_PREP(PCODE_MB_PARAM1, param1)\
 	| FIELD_PREP(PCODE_MB_PARAM2, param2))
 
-/* Helpers with drm device */
-int intel_pcode_read(struct drm_device *drm, u32 mbox, u32 *val, u32 *val1);
-int intel_pcode_write_timeout(struct drm_device *drm, u32 mbox, u32 val, int timeout_ms);
-#define intel_pcode_write(drm, mbox, val) \
-	intel_pcode_write_timeout((drm), (mbox), (val), 1)
-int intel_pcode_request(struct drm_device *drm, u32 mbox, u32 request,
-			u32 reply_mask, u32 reply, int timeout_base_ms);
-
 #endif
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index ce946859a3a9..78f4e6744f18 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -55,6 +55,13 @@ struct intel_display_pc8_interface {
 	void (*unblock)(struct drm_device *drm);
 };
 
+struct intel_display_pcode_interface {
+	int (*read)(struct drm_device *drm, u32 mbox, u32 *val, u32 *val1);
+	int (*write)(struct drm_device *drm, u32 mbox, u32 val, int timeout_ms);
+	int (*request)(struct drm_device *drm, u32 mbox, u32 request,
+		       u32 reply_mask, u32 reply, int timeout_base_ms);
+};
+
 struct intel_display_rpm_interface {
 	struct ref_tracker *(*get)(const struct drm_device *drm);
 	struct ref_tracker *(*get_raw)(const struct drm_device *drm);
@@ -121,6 +128,9 @@ struct intel_display_parent_interface {
 	/** @pc8: PC8 interface. Optional. */
 	const struct intel_display_pc8_interface *pc8;
 
+	/** @pcode: Pcode interface */
+	const struct intel_display_pcode_interface *pcode;
+
 	/** @rpm: Runtime PM functions */
 	const struct intel_display_rpm_interface *rpm;
 
-- 
2.47.3

