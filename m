Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B148AE3E36
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jun 2025 13:44:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0B7E10E368;
	Mon, 23 Jun 2025 11:44:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QKRKd980";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1137F10E361;
 Mon, 23 Jun 2025 11:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750679057; x=1782215057;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p1uDuRZH4K4MgAsSAdEU9+/OapM/IPx4D1pA9a+hzCc=;
 b=QKRKd980FBPGcLOZvOP3vlkaUJi0jhvf2xbmeZKNcRP60lc3oSAGXpaH
 1cOzqDz5hmGQzs2uCr1SCBZHXRFkiQNHt/wWMp1JMob2nLzCIZ1sAqO0u
 I05+CZzSgdM9Kp2y78Vry/VUHT+YpIwvO0yVpEvcR7j7b8/2RkL41Zgc3
 f3jYpgsqen3nAQmyHscamxsvUSoWoy1xLWhR7HHV/A+AXRv1YSnterBef
 yhLOFmabHb62PSQnNURm4P7/bZSMGzCqfyWYV14l1UEJHZEjIq02335Ua
 q+cCU7/oJykVcquYH1Ers+K+3bY2ji1RMWBNQPhFaSVgwjEJXULxiIrG/ Q==;
X-CSE-ConnectionGUID: YZxqBKM+REerOmv3g+nQnQ==
X-CSE-MsgGUID: tWjZMKIaQv2ZvKJ6P3wzvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="52969564"
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="52969564"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 04:44:16 -0700
X-CSE-ConnectionGUID: w2i2f+OJRDWTPVic1AuLPg==
X-CSE-MsgGUID: yjtX5GXsRf+luSqCpYHuyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="152093885"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.248])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 04:44:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI 4/6] drm/i915/display: switch to struct drm_device based pcode
 interface
Date: Mon, 23 Jun 2025 14:43:47 +0300
Message-Id: <f948fad1b8208522e15140692c17cf493ef305d9.1750678991.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750678991.git.jani.nikula@intel.com>
References: <cover.1750678991.git.jani.nikula@intel.com>
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

With the struct drm_device based pcode interface in place in both i915
and xe, we can switch display code to use that, and ditch a number of
struct drm_i915_private uses. Also drop the dependency on i915_drv.h
from a couple of files.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/hsw_ips.c        | 13 ++---
 drivers/gpu/drm/i915/display/intel_bw.c       | 23 ++++----
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 56 +++++++++----------
 .../drm/i915/display/intel_display_power.c    |  4 +-
 .../i915/display/intel_display_power_well.c   |  4 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  3 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  | 31 +++++-----
 7 files changed, 58 insertions(+), 76 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index 0d33782f11be..989a9171b07f 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -5,8 +5,9 @@
 
 #include <linux/debugfs.h>
 
+#include <drm/drm_print.h>
+
 #include "hsw_ips.h"
-#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_color_regs.h"
 #include "intel_de.h"
@@ -18,8 +19,6 @@
 static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	u32 val;
 
 	if (!crtc_state->ips_enabled)
@@ -40,8 +39,8 @@ static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
 
 	if (display->platform.broadwell) {
 		drm_WARN_ON(display->drm,
-			    snb_pcode_write(&i915->uncore, DISPLAY_IPS_CONTROL,
-					    val | IPS_PCODE_CONTROL));
+			    intel_pcode_write(display->drm, DISPLAY_IPS_CONTROL,
+					      val | IPS_PCODE_CONTROL));
 		/*
 		 * Quoting Art Runyan: "its not safe to expect any particular
 		 * value in IPS_CTL bit 31 after enabling IPS through the
@@ -66,8 +65,6 @@ static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
 bool hsw_ips_disable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	bool need_vblank_wait = false;
 
 	if (!crtc_state->ips_enabled)
@@ -75,7 +72,7 @@ bool hsw_ips_disable(const struct intel_crtc_state *crtc_state)
 
 	if (display->platform.broadwell) {
 		drm_WARN_ON(display->drm,
-			    snb_pcode_write(&i915->uncore, DISPLAY_IPS_CONTROL, 0));
+			    intel_pcode_write(display->drm, DISPLAY_IPS_CONTROL, 0));
 		/*
 		 * Wait for PCODE to finish disabling IPS. The BSpec specified
 		 * 42ms timeout value leads to occasional timeouts so use 100ms
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index a515241d80db..b85912e00a36 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -82,14 +82,13 @@ static int icl_pcode_read_qgv_point_info(struct intel_display *display,
 					 struct intel_qgv_point *sp,
 					 int point)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	u32 val = 0, val2 = 0;
 	u16 dclk;
 	int ret;
 
-	ret = snb_pcode_read(&i915->uncore, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
-			     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point),
-			     &val, &val2);
+	ret = intel_pcode_read(display->drm, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
+			       ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point),
+			       &val, &val2);
 	if (ret)
 		return ret;
 
@@ -110,13 +109,12 @@ static int icl_pcode_read_qgv_point_info(struct intel_display *display,
 static int adls_pcode_read_psf_gv_point_info(struct intel_display *display,
 					     struct intel_psf_gv_point *points)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	u32 val = 0;
 	int ret;
 	int i;
 
-	ret = snb_pcode_read(&i915->uncore, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
-			     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO, &val, NULL);
+	ret = intel_pcode_read(display->drm, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
+			       ADL_PCODE_MEM_SS_READ_PSF_GV_INFO, &val, NULL);
 	if (ret)
 		return ret;
 
@@ -157,18 +155,17 @@ static bool is_sagv_enabled(struct intel_display *display, u16 points_mask)
 int icl_pcode_restrict_qgv_points(struct intel_display *display,
 				  u32 points_mask)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	int ret;
 
 	if (DISPLAY_VER(display) >= 14)
 		return 0;
 
 	/* bspec says to keep retrying for at least 1 ms */
-	ret = skl_pcode_request(&i915->uncore, ICL_PCODE_SAGV_DE_MEM_SS_CONFIG,
-				points_mask,
-				ICL_PCODE_REP_QGV_MASK | ADLS_PCODE_REP_PSF_MASK,
-				ICL_PCODE_REP_QGV_SAFE | ADLS_PCODE_REP_PSF_SAFE,
-				1);
+	ret = intel_pcode_request(display->drm, ICL_PCODE_SAGV_DE_MEM_SS_CONFIG,
+				  points_mask,
+				  ICL_PCODE_REP_QGV_MASK | ADLS_PCODE_REP_PSF_MASK,
+				  ICL_PCODE_REP_QGV_SAFE | ADLS_PCODE_REP_PSF_SAFE,
+				  1);
 
 	if (ret < 0) {
 		drm_err(display->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 8c5c9ebb75c1..95fab2ee3d94 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -841,7 +841,6 @@ static void bdw_set_cdclk(struct intel_display *display,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int cdclk = cdclk_config->cdclk;
 	int ret;
 
@@ -854,7 +853,7 @@ static void bdw_set_cdclk(struct intel_display *display,
 		     "trying to change cdclk frequency with cdclk not enabled\n"))
 		return;
 
-	ret = snb_pcode_write(&dev_priv->uncore, BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ, 0x0);
+	ret = intel_pcode_write(display->drm, BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ, 0x0);
 	if (ret) {
 		drm_err(display->drm,
 			"failed to inform pcode about cdclk change\n");
@@ -882,8 +881,8 @@ static void bdw_set_cdclk(struct intel_display *display,
 			 LCPLL_CD_SOURCE_FCLK_DONE) == 0, 1))
 		drm_err(display->drm, "Switching back to LCPLL failed\n");
 
-	snb_pcode_write(&dev_priv->uncore, HSW_PCODE_DE_WRITE_FREQ_REQ,
-			cdclk_config->voltage_level);
+	intel_pcode_write(display->drm, HSW_PCODE_DE_WRITE_FREQ_REQ,
+			  cdclk_config->voltage_level);
 
 	intel_de_write(display, CDCLK_FREQ,
 		       DIV_ROUND_CLOSEST(cdclk, 1000) - 1);
@@ -1123,7 +1122,6 @@ static void skl_set_cdclk(struct intel_display *display,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int cdclk = cdclk_config->cdclk;
 	int vco = cdclk_config->vco;
 	u32 freq_select, cdclk_ctl;
@@ -1140,10 +1138,10 @@ static void skl_set_cdclk(struct intel_display *display,
 	drm_WARN_ON_ONCE(display->drm,
 			 display->platform.skylake && vco == 8640000);
 
-	ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
-				SKL_CDCLK_PREPARE_FOR_CHANGE,
-				SKL_CDCLK_READY_FOR_CHANGE,
-				SKL_CDCLK_READY_FOR_CHANGE, 3);
+	ret = intel_pcode_request(display->drm, SKL_PCODE_CDCLK_CONTROL,
+				  SKL_CDCLK_PREPARE_FOR_CHANGE,
+				  SKL_CDCLK_READY_FOR_CHANGE,
+				  SKL_CDCLK_READY_FOR_CHANGE, 3);
 	if (ret) {
 		drm_err(display->drm,
 			"Failed to inform PCU about cdclk change (%d)\n", ret);
@@ -1186,8 +1184,8 @@ static void skl_set_cdclk(struct intel_display *display,
 	intel_de_posting_read(display, CDCLK_CTL);
 
 	/* inform PCU of the change */
-	snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
-			cdclk_config->voltage_level);
+	intel_pcode_write(display->drm, SKL_PCODE_CDCLK_CONTROL,
+			  cdclk_config->voltage_level);
 
 	intel_update_cdclk(display);
 }
@@ -2123,7 +2121,6 @@ static void bxt_set_cdclk(struct intel_display *display,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_cdclk_config mid_cdclk_config;
 	int cdclk = cdclk_config->cdclk;
 	int ret = 0;
@@ -2137,18 +2134,18 @@ static void bxt_set_cdclk(struct intel_display *display,
 	if (DISPLAY_VER(display) >= 14 || display->platform.dg2)
 		; /* NOOP */
 	else if (DISPLAY_VER(display) >= 11)
-		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
-					SKL_CDCLK_PREPARE_FOR_CHANGE,
-					SKL_CDCLK_READY_FOR_CHANGE,
-					SKL_CDCLK_READY_FOR_CHANGE, 3);
+		ret = intel_pcode_request(display->drm, SKL_PCODE_CDCLK_CONTROL,
+					  SKL_CDCLK_PREPARE_FOR_CHANGE,
+					  SKL_CDCLK_READY_FOR_CHANGE,
+					  SKL_CDCLK_READY_FOR_CHANGE, 3);
 	else
 		/*
 		 * BSpec requires us to wait up to 150usec, but that leads to
 		 * timeouts; the 2ms used here is based on experiment.
 		 */
-		ret = snb_pcode_write_timeout(&dev_priv->uncore,
-					      HSW_PCODE_DE_WRITE_FREQ_REQ,
-					      0x80000000, 2);
+		ret = intel_pcode_write_timeout(display->drm,
+						HSW_PCODE_DE_WRITE_FREQ_REQ,
+						0x80000000, 2);
 
 	if (ret) {
 		drm_err(display->drm,
@@ -2177,8 +2174,8 @@ static void bxt_set_cdclk(struct intel_display *display,
 		 * Display versions 14 and beyond
 		 */;
 	else if (DISPLAY_VER(display) >= 11 && !display->platform.dg2)
-		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
-				      cdclk_config->voltage_level);
+		ret = intel_pcode_write(display->drm, SKL_PCODE_CDCLK_CONTROL,
+					cdclk_config->voltage_level);
 	if (DISPLAY_VER(display) < 11) {
 		/*
 		 * The timeout isn't specified, the 2ms used here is based on
@@ -2186,9 +2183,9 @@ static void bxt_set_cdclk(struct intel_display *display,
 		 * FIXME: Waiting for the request completion could be delayed
 		 * until the next PCODE request based on BSpec.
 		 */
-		ret = snb_pcode_write_timeout(&dev_priv->uncore,
-					      HSW_PCODE_DE_WRITE_FREQ_REQ,
-					      cdclk_config->voltage_level, 2);
+		ret = intel_pcode_write_timeout(display->drm,
+						HSW_PCODE_DE_WRITE_FREQ_REQ,
+						cdclk_config->voltage_level, 2);
 	}
 	if (ret) {
 		drm_err(display->drm,
@@ -2474,7 +2471,6 @@ static void intel_pcode_notify(struct intel_display *display,
 			       bool cdclk_update_valid,
 			       bool pipe_count_update_valid)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	int ret;
 	u32 update_mask = 0;
 
@@ -2489,11 +2485,11 @@ static void intel_pcode_notify(struct intel_display *display,
 	if (pipe_count_update_valid)
 		update_mask |= DISPLAY_TO_PCODE_PIPE_COUNT_VALID;
 
-	ret = skl_pcode_request(&i915->uncore, SKL_PCODE_CDCLK_CONTROL,
-				SKL_CDCLK_PREPARE_FOR_CHANGE |
-				update_mask,
-				SKL_CDCLK_READY_FOR_CHANGE,
-				SKL_CDCLK_READY_FOR_CHANGE, 3);
+	ret = intel_pcode_request(display->drm, SKL_PCODE_CDCLK_CONTROL,
+				  SKL_CDCLK_PREPARE_FOR_CHANGE |
+				  update_mask,
+				  SKL_CDCLK_READY_FOR_CHANGE,
+				  SKL_CDCLK_READY_FOR_CHANGE, 3);
 	if (ret)
 		drm_err(display->drm,
 			"Failed to inform PCU about display config (err %d)\n",
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index fe3a8e90b97a..273054c22325 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1257,10 +1257,8 @@ static u32 hsw_read_dcomp(struct intel_display *display)
 
 static void hsw_write_dcomp(struct intel_display *display, u32 val)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	if (display->platform.haswell) {
-		if (snb_pcode_write(&dev_priv->uncore, GEN6_PCODE_WRITE_D_COMP, val))
+		if (intel_pcode_write(display->drm, GEN6_PCODE_WRITE_D_COMP, val))
 			drm_dbg_kms(display->drm, "Failed to write to D_COMP\n");
 	} else {
 		intel_de_write(display, D_COMP_BDW, val);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 825602d959ac..c4840d66deb9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -486,7 +486,7 @@ static void icl_tc_cold_exit(struct intel_display *display)
 	int ret, tries = 0;
 
 	while (1) {
-		ret = snb_pcode_write(&i915->uncore, ICL_PCODE_EXIT_TCCOLD, 0);
+		ret = intel_pcode_write(display->drm, ICL_PCODE_EXIT_TCCOLD, 0);
 		if (ret != -EAGAIN || ++tries == 3)
 			break;
 		msleep(1);
@@ -1765,7 +1765,7 @@ tgl_tc_cold_request(struct intel_display *display, bool block)
 		 * Spec states that we should timeout the request after 200us
 		 * but the function below will timeout after 500us
 		 */
-		ret = snb_pcode_read(&i915->uncore, TGL_PCODE_TCCOLD, &low_val, &high_val);
+		ret = intel_pcode_read(display->drm, TGL_PCODE_TCCOLD, &low_val, &high_val);
 		if (ret == 0) {
 			if (block &&
 			    (low_val & TGL_PCODE_EXIT_TCCOLD_DATA_L_EXIT_FAILED))
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 5235e4162555..d5cb8698f00a 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -374,7 +374,6 @@ static void intel_hdcp_clear_keys(struct intel_display *display)
 
 static int intel_hdcp_load_keys(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	int ret;
 	u32 val;
 
@@ -399,7 +398,7 @@ static int intel_hdcp_load_keys(struct intel_display *display)
 	 * Mailbox interface.
 	 */
 	if (DISPLAY_VER(display) == 9 && !display->platform.broxton) {
-		ret = snb_pcode_write(&i915->uncore, SKL_PCODE_LOAD_HDCP_KEYS, 1);
+		ret = intel_pcode_write(display->drm, SKL_PCODE_LOAD_HDCP_KEYS, 1);
 		if (ret) {
 			drm_err(display->drm,
 				"Failed to initiate HDCP key load (%d)\n",
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index c2e11d9ee652..85327cd627dd 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -6,11 +6,12 @@
 #include <linux/debugfs.h>
 
 #include <drm/drm_blend.h>
+#include <drm/drm_file.h>
+#include <drm/drm_print.h>
 
 #include "soc/intel_dram.h"
-
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "i9xx_wm.h"
 #include "intel_atomic.h"
 #include "intel_bw.h"
@@ -87,8 +88,6 @@ intel_has_sagv(struct intel_display *display)
 static u32
 intel_sagv_block_time(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	if (DISPLAY_VER(display) >= 14) {
 		u32 val;
 
@@ -99,9 +98,9 @@ intel_sagv_block_time(struct intel_display *display)
 		u32 val = 0;
 		int ret;
 
-		ret = snb_pcode_read(&i915->uncore,
-				     GEN12_PCODE_READ_SAGV_BLOCK_TIME_US,
-				     &val, NULL);
+		ret = intel_pcode_read(display->drm,
+				       GEN12_PCODE_READ_SAGV_BLOCK_TIME_US,
+				       &val, NULL);
 		if (ret) {
 			drm_dbg_kms(display->drm, "Couldn't read SAGV block time!\n");
 			return 0;
@@ -159,7 +158,6 @@ static void intel_sagv_init(struct intel_display *display)
  */
 static void skl_sagv_enable(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	int ret;
 
 	if (!intel_has_sagv(display))
@@ -169,8 +167,8 @@ static void skl_sagv_enable(struct intel_display *display)
 		return;
 
 	drm_dbg_kms(display->drm, "Enabling SAGV\n");
-	ret = snb_pcode_write(&i915->uncore, GEN9_PCODE_SAGV_CONTROL,
-			      GEN9_SAGV_ENABLE);
+	ret = intel_pcode_write(display->drm, GEN9_PCODE_SAGV_CONTROL,
+				GEN9_SAGV_ENABLE);
 
 	/* We don't need to wait for SAGV when enabling */
 
@@ -192,7 +190,6 @@ static void skl_sagv_enable(struct intel_display *display)
 
 static void skl_sagv_disable(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	int ret;
 
 	if (!intel_has_sagv(display))
@@ -203,10 +200,9 @@ static void skl_sagv_disable(struct intel_display *display)
 
 	drm_dbg_kms(display->drm, "Disabling SAGV\n");
 	/* bspec says to keep retrying for at least 1 ms */
-	ret = skl_pcode_request(&i915->uncore, GEN9_PCODE_SAGV_CONTROL,
-				GEN9_SAGV_DISABLE,
-				GEN9_SAGV_IS_DISABLED, GEN9_SAGV_IS_DISABLED,
-				1);
+	ret = intel_pcode_request(display->drm, GEN9_PCODE_SAGV_CONTROL,
+				  GEN9_SAGV_DISABLE,
+				  GEN9_SAGV_IS_DISABLED, GEN9_SAGV_IS_DISABLED, 1);
 	/*
 	 * Some skl systems, pre-release machines in particular,
 	 * don't actually have SAGV.
@@ -3279,7 +3275,6 @@ static void mtl_read_wm_latency(struct intel_display *display, u16 wm[])
 
 static void skl_read_wm_latency(struct intel_display *display, u16 wm[])
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	int num_levels = display->wm.num_levels;
 	int read_latency = DISPLAY_VER(display) >= 12 ? 3 : 2;
 	int mult = display->platform.dg2 ? 2 : 1;
@@ -3288,7 +3283,7 @@ static void skl_read_wm_latency(struct intel_display *display, u16 wm[])
 
 	/* read the first set of memory latencies[0:3] */
 	val = 0; /* data0 to be programmed to 0 for first set */
-	ret = snb_pcode_read(&i915->uncore, GEN9_PCODE_READ_MEM_LATENCY, &val, NULL);
+	ret = intel_pcode_read(display->drm, GEN9_PCODE_READ_MEM_LATENCY, &val, NULL);
 	if (ret) {
 		drm_err(display->drm, "SKL Mailbox read error = %d\n", ret);
 		return;
@@ -3301,7 +3296,7 @@ static void skl_read_wm_latency(struct intel_display *display, u16 wm[])
 
 	/* read the second set of memory latencies[4:7] */
 	val = 1; /* data0 to be programmed to 1 for second set */
-	ret = snb_pcode_read(&i915->uncore, GEN9_PCODE_READ_MEM_LATENCY, &val, NULL);
+	ret = intel_pcode_read(display->drm, GEN9_PCODE_READ_MEM_LATENCY, &val, NULL);
 	if (ret) {
 		drm_err(display->drm, "SKL Mailbox read error = %d\n", ret);
 		return;
-- 
2.39.5

