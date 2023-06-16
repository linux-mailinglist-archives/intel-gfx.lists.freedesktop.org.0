Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B0B733327
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 16:08:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AB1A10E638;
	Fri, 16 Jun 2023 14:08:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A9AC10E638
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jun 2023 14:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686924510; x=1718460510;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=saYJj7LHtjCh4nRMDJ8sXUqdwzcvM7spHIkKuFjF0n0=;
 b=GvBsQFS7yp8Kr1WsdxulSLn167PbhxnKJHLnBWPtuKYx7m0S8eUFTLPo
 4bw5mcLMX4ukTEyFAZgjba+oOuX+rb+5q3cTcZ94rlByL4Ny4gyu7+KEk
 n/+AId5/07C1jA7pnYscjEfceAKXoL+OC79Soq/i6C43GJ7HO0zRAo0c5
 WSoFrPhdm0kSy8TsXk3P3a6qOeQKYSZO3M2/I3d+oB8qHTUlGi0jb2HOW
 bvY/EheVw/7KtSBiLEL5J8ufNhyPcic9Hmxo7YFhNRrzi3kJqsEoDngsx
 drIs41F+9q+T2k+/60GDruetSD+lgP+6l/pvYzUIzi6xaPbgkiFxDKKJk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="343957818"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="343957818"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 07:08:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="712883016"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="712883016"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 16 Jun 2023 07:08:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Jun 2023 17:08:27 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jun 2023 17:08:15 +0300
Message-Id: <20230616140820.11726-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230616140820.11726-1-ville.syrjala@linux.intel.com>
References: <20230616140820.11726-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/7] drm/i915: Introduce device info port_mask
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Declare the available DVO/SDVO/HDMI/DP/DDI ports in the
device info. The other outputs (LVDS/TV/DSI/VGA) are left
out since for most of them we don't consider them as "ports".

DSI we should probably perhaps include somehow in the device
info. Just not sure how. Or we just introduce a HAS_DSI() and
call it a day?

TODO: figure out what to do about the subplatform stuff. Would
      it be better to declare those directly with a different
      device info or not? Also not sure the icl port-f stuff
      matters even. Bspec claims there are icl SKUs with far
      less ports than that and we don't seem to check for those
      either?

v2: Fix TC5 vs. TC6 mixup on TGL (Jani)
    Drop DDI C for now on TGL, and add a FIXME (Jani)

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 158 ++++++++++++------
 .../drm/i915/display/intel_display_device.h   |   1 +
 drivers/gpu/drm/i915/intel_device_info.c      |   4 +
 3 files changed, 113 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 3fd30e7f0062..f5305447494f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -187,10 +187,6 @@ static const struct intel_display_device_info no_display = {};
 	.__runtime_defaults.cpu_transcoder_mask = \
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B)
 
-static const struct intel_display_device_info i830_display = {
-	I830_DISPLAY,
-};
-
 #define I845_DISPLAY \
 	.has_overlay = 1, \
 	.overlay_needs_physical = 1, \
@@ -203,19 +199,29 @@ static const struct intel_display_device_info i830_display = {
 	.__runtime_defaults.pipe_mask = BIT(PIPE_A), \
 	.__runtime_defaults.cpu_transcoder_mask = BIT(TRANSCODER_A)
 
+static const struct intel_display_device_info i830_display = {
+	I830_DISPLAY,
+
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C), /* DVO A/B/C */
+};
+
 static const struct intel_display_device_info i845_display = {
 	I845_DISPLAY,
+
+	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* DVO B/C */
 };
 
 static const struct intel_display_device_info i85x_display = {
 	I830_DISPLAY,
 
+	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* DVO B/C */
 	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 static const struct intel_display_device_info i865g_display = {
 	I845_DISPLAY,
 
+	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* DVO B/C */
 	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
 };
 
@@ -228,7 +234,8 @@ static const struct intel_display_device_info i865g_display = {
 	.__runtime_defaults.ip.ver = 3, \
 	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
 	.__runtime_defaults.cpu_transcoder_mask = \
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B)
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
+	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) /* SDVO B/C */
 
 static const struct intel_display_device_info i915g_display = {
 	GEN3_DISPLAY,
@@ -293,6 +300,8 @@ static const struct intel_display_device_info pnv_display = {
 static const struct intel_display_device_info i965g_display = {
 	GEN4_DISPLAY,
 	.has_overlay = 1,
+
+	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* SDVO B/C */
 };
 
 static const struct intel_display_device_info i965gm_display = {
@@ -300,17 +309,21 @@ static const struct intel_display_device_info i965gm_display = {
 	.has_overlay = 1,
 	.supports_tv = 1,
 
+	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* SDVO B/C */
 	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 static const struct intel_display_device_info g45_display = {
 	GEN4_DISPLAY,
+
+	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* SDVO/HDMI/DP B/C, DP D */
 };
 
 static const struct intel_display_device_info gm45_display = {
 	GEN4_DISPLAY,
 	.supports_tv = 1,
 
+	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* SDVO/HDMI/DP B/C, DP D */
 	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
 };
 
@@ -323,7 +336,8 @@ static const struct intel_display_device_info gm45_display = {
 	.__runtime_defaults.ip.ver = 5, \
 	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
 	.__runtime_defaults.cpu_transcoder_mask = \
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B)
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
 
 static const struct intel_display_device_info ilk_d_display = {
 	ILK_DISPLAY,
@@ -345,6 +359,7 @@ static const struct intel_display_device_info snb_display = {
 	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
 	.__runtime_defaults.cpu_transcoder_mask =
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
 	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
 };
 
@@ -358,6 +373,7 @@ static const struct intel_display_device_info ivb_display = {
 	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
 	.__runtime_defaults.cpu_transcoder_mask =
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
 	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
 };
 
@@ -373,6 +389,7 @@ static const struct intel_display_device_info vlv_display = {
 	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
 	.__runtime_defaults.cpu_transcoder_mask =
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
+	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* HDMI/DP B/C */
 };
 
 static const struct intel_display_device_info hsw_display = {
@@ -389,6 +406,7 @@ static const struct intel_display_device_info hsw_display = {
 	.__runtime_defaults.cpu_transcoder_mask =
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
 	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
 };
 
@@ -406,6 +424,7 @@ static const struct intel_display_device_info bdw_display = {
 	.__runtime_defaults.cpu_transcoder_mask =
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
 	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
 };
 
@@ -421,6 +440,7 @@ static const struct intel_display_device_info chv_display = {
 	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
 	.__runtime_defaults.cpu_transcoder_mask =
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
+	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* HDMI/DP B/C/D */
 };
 
 static const struct intel_display_device_info skl_display = {
@@ -444,6 +464,7 @@ static const struct intel_display_device_info skl_display = {
 	.__runtime_defaults.cpu_transcoder_mask =
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
 	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
 };
 
@@ -467,7 +488,8 @@ static const struct intel_display_device_info skl_display = {
 	.__runtime_defaults.cpu_transcoder_mask = \
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
-		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C)
+		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C)
 
 static const struct intel_display_device_info bxt_display = {
 	GEN9_LP_DISPLAY,
@@ -484,46 +506,57 @@ static const struct intel_display_device_info glk_display = {
 	.__runtime_defaults.ip.ver = 10,
 };
 
-static const struct intel_display_device_info gen11_display = {
-	.abox_mask = BIT(0),
-	.dbuf.size = 2048,
-	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2),
-	.has_ddi = 1,
-	.has_dp_mst = 1,
-	.has_fpga_dbg = 1,
-	.has_hotplug = 1,
-	.has_ipc = 1,
-	.has_psr = 1,
-	.has_psr_hw_tracking = 1,
-	.pipe_offsets = {
-		[TRANSCODER_A] = PIPE_A_OFFSET,
-		[TRANSCODER_B] = PIPE_B_OFFSET,
-		[TRANSCODER_C] = PIPE_C_OFFSET,
-		[TRANSCODER_EDP] = PIPE_EDP_OFFSET,
-		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET,
-		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET,
-	},
-	.trans_offsets = {
-		[TRANSCODER_A] = TRANSCODER_A_OFFSET,
-		[TRANSCODER_B] = TRANSCODER_B_OFFSET,
-		[TRANSCODER_C] = TRANSCODER_C_OFFSET,
-		[TRANSCODER_EDP] = TRANSCODER_EDP_OFFSET,
-		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET,
-		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET,
-	},
-	IVB_CURSOR_OFFSETS,
-	ICL_COLORS,
+#define ICL_DISPLAY \
+	.abox_mask = BIT(0), \
+	.dbuf.size = 2048, \
+	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2), \
+	.has_ddi = 1, \
+	.has_dp_mst = 1, \
+	.has_fpga_dbg = 1, \
+	.has_hotplug = 1, \
+	.has_ipc = 1, \
+	.has_psr = 1, \
+	.has_psr_hw_tracking = 1, \
+	.pipe_offsets = { \
+		[TRANSCODER_A] = PIPE_A_OFFSET, \
+		[TRANSCODER_B] = PIPE_B_OFFSET, \
+		[TRANSCODER_C] = PIPE_C_OFFSET, \
+		[TRANSCODER_EDP] = PIPE_EDP_OFFSET, \
+		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET, \
+		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET, \
+	}, \
+	.trans_offsets = { \
+		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
+		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
+		[TRANSCODER_C] = TRANSCODER_C_OFFSET, \
+		[TRANSCODER_EDP] = TRANSCODER_EDP_OFFSET, \
+		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET, \
+		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET, \
+	}, \
+	IVB_CURSOR_OFFSETS, \
+	ICL_COLORS, \
+	\
+	.__runtime_defaults.ip.ver = 11, \
+	.__runtime_defaults.has_dmc = 1, \
+	.__runtime_defaults.has_dsc = 1, \
+	.__runtime_defaults.has_hdcp = 1, \
+	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
+	.__runtime_defaults.cpu_transcoder_mask = \
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
+		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A)
 
-	.__runtime_defaults.ip.ver = 11,
-	.__runtime_defaults.has_dmc = 1,
-	.__runtime_defaults.has_dsc = 1,
-	.__runtime_defaults.has_hdcp = 1,
-	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
-	.__runtime_defaults.cpu_transcoder_mask =
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
-		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) |
-		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+static const struct intel_display_device_info icl_display = {
+	ICL_DISPLAY,
+
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
+};
+
+static const struct intel_display_device_info jsl_ehl_display = {
+	ICL_DISPLAY,
+
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D),
 };
 
 #define XE_D_DISPLAY \
@@ -571,6 +604,20 @@ static const struct intel_display_device_info gen11_display = {
 
 static const struct intel_display_device_info tgl_display = {
 	XE_D_DISPLAY,
+
+	/*
+	 * FIXME DDI C/combo PHY C missing due to combo PHY
+	 * code making a mess on SKUs where the PHY is missing.
+	 */
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
+		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4) | BIT(PORT_TC5) | BIT(PORT_TC6),
+};
+
+static const struct intel_display_device_info dg1_display = {
+	XE_D_DISPLAY,
+
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
+		BIT(PORT_TC1) | BIT(PORT_TC2),
 };
 
 static const struct intel_display_device_info rkl_display = {
@@ -582,12 +629,17 @@ static const struct intel_display_device_info rkl_display = {
 	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
 	.__runtime_defaults.cpu_transcoder_mask =
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
+		BIT(PORT_TC1) | BIT(PORT_TC2),
 };
 
 static const struct intel_display_device_info adl_s_display = {
 	XE_D_DISPLAY,
 	.has_hti = 1,
 	.has_psr_hw_tracking = 0,
+
+	.__runtime_defaults.port_mask = BIT(PORT_A) |
+		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
 };
 
 #define XE_LPD_FEATURES \
@@ -642,6 +694,8 @@ static const struct intel_display_device_info xe_lpd_display = {
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |
 		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
+		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
 };
 
 static const struct intel_display_device_info xe_hpd_display = {
@@ -651,6 +705,8 @@ static const struct intel_display_device_info xe_hpd_display = {
 	.__runtime_defaults.cpu_transcoder_mask =
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D_XELPD) |
+		BIT(PORT_TC1),
 };
 
 static const struct intel_display_device_info xe_lpdp_display = {
@@ -663,6 +719,8 @@ static const struct intel_display_device_info xe_lpdp_display = {
 	.__runtime_defaults.cpu_transcoder_mask =
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
+		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
 };
 
 __diag_pop();
@@ -707,11 +765,11 @@ static const struct {
 	INTEL_GLK_IDS(&glk_display),
 	INTEL_KBL_IDS(&skl_display),
 	INTEL_CFL_IDS(&skl_display),
-	INTEL_ICL_11_IDS(&gen11_display),
-	INTEL_EHL_IDS(&gen11_display),
-	INTEL_JSL_IDS(&gen11_display),
+	INTEL_ICL_11_IDS(&icl_display),
+	INTEL_EHL_IDS(&jsl_ehl_display),
+	INTEL_JSL_IDS(&jsl_ehl_display),
 	INTEL_TGL_12_IDS(&tgl_display),
-	INTEL_DG1_IDS(&tgl_display),
+	INTEL_DG1_IDS(&dg1_display),
 	INTEL_RKL_IDS(&rkl_display),
 	INTEL_ADLS_IDS(&adl_s_display),
 	INTEL_RPLS_IDS(&adl_s_display),
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 706ff2aa1f55..5b8a46114439 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -79,6 +79,7 @@ struct intel_display_runtime_info {
 
 	u8 pipe_mask;
 	u8 cpu_transcoder_mask;
+	u16 port_mask;
 
 	u8 num_sprites[I915_MAX_PIPES];
 	u8 num_scalers[I915_MAX_PIPES];
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 6e49caf241a5..9c0f02faa0d7 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -260,15 +260,19 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 	if (find_devid(devid, subplatform_ult_ids,
 		       ARRAY_SIZE(subplatform_ult_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_ULT);
+		if (IS_HASWELL(i915) || IS_BROADWELL(i915))
+			DISPLAY_RUNTIME_INFO(i915)->port_mask &= ~BIT(PORT_D);
 	} else if (find_devid(devid, subplatform_ulx_ids,
 			      ARRAY_SIZE(subplatform_ulx_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_ULX);
 		if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
 			/* ULX machines are also considered ULT. */
 			mask |= BIT(INTEL_SUBPLATFORM_ULT);
+			DISPLAY_RUNTIME_INFO(i915)->port_mask &= ~BIT(PORT_D);
 		}
 	} else if (find_devid(devid, subplatform_portf_ids,
 			      ARRAY_SIZE(subplatform_portf_ids))) {
+		DISPLAY_RUNTIME_INFO(i915)->port_mask |= BIT(PORT_F);
 		mask = BIT(INTEL_SUBPLATFORM_PORTF);
 	} else if (find_devid(devid, subplatform_uy_ids,
 			   ARRAY_SIZE(subplatform_uy_ids))) {
-- 
2.39.3

