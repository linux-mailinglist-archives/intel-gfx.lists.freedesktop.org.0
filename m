Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1988269D736
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 00:41:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0DA710E7DF;
	Mon, 20 Feb 2023 23:41:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A83710E7DF
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 23:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676936486; x=1708472486;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=gH5sGbWSPZpXlWGRwNmCcp3ZiJEPTdd128hRYZieDLI=;
 b=BEPo4Og6iOy9Kb59PaDkK9C1lLkJmxSW1ZCJ613ZXKX4uuZYL6CdOEbX
 l11xF1DMmkph5AUW5O0h0S6w8NipZt9UlyAj5Jh7xLrzIb71lV5BX1Qcm
 XUo2JSOpfFBAqtlVQb4+Xu78bLbXzFSL5hJSLIMyKQDlw1uv6qDmsqn5Q
 IXw06TwwgHJeFY81QH7vOrbrgWiV4l8AeZK1cUaMzMYmyzh9c37yBxDXs
 8UeL+fmaTtunEIyxYbrnz1ZO989Ky/zRRQtT9PCGaeCLLRRFG65frzb0l
 jxOqC1rMrgDpHupaXpxEqfVsVSU7kb8D0VHYdK7MFB/+zvaSr7x49DdTX g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="394989069"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="394989069"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 15:41:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="664769745"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="664769745"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 20 Feb 2023 15:41:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Feb 2023 01:41:23 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 01:40:40 +0200
Message-Id: <20230220234046.29716-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230220234046.29716-1-ville.syrjala@linux.intel.com>
References: <20230220234046.29716-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 12/18] drm/i915: Introduce device info
 port_mask
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c          | 31 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_device_info.c |  5 ++++
 drivers/gpu/drm/i915/intel_device_info.h |  1 +
 3 files changed, 37 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index a8d942b16223..9faf2b2827ed 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -217,31 +217,36 @@
 
 static const struct intel_device_info i830_info = {
 	I830_FEATURES,
 	PLATFORM(INTEL_I830),
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C), /* DVO A/B/C */
 };
 
 static const struct intel_device_info i845g_info = {
 	I845_FEATURES,
 	PLATFORM(INTEL_I845G),
+	.__runtime.port_mask = BIT(PORT_B) | BIT(PORT_C), /* DVO B/C */
 };
 
 static const struct intel_device_info i85x_info = {
 	I830_FEATURES,
 	PLATFORM(INTEL_I85X),
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
+	.__runtime.port_mask = BIT(PORT_B) | BIT(PORT_C), /* DVO B/C */
 };
 
 static const struct intel_device_info i865g_info = {
 	I845_FEATURES,
 	PLATFORM(INTEL_I865G),
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
+	.__runtime.port_mask = BIT(PORT_B) | BIT(PORT_C), /* DVO B/C */
 };
 
 #define GEN3_FEATURES \
 	GEN(3), \
 	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
+	.__runtime.port_mask = BIT(PORT_B) | BIT(PORT_C), /* SDVO B/C */ \
 	.display.has_gmch = 1, \
 	.gpu_reset_clobbers_display = true, \
 	.__runtime.platform_engine_mask = BIT(RCS0), \
 	.has_3d_pipeline = 1, \
@@ -348,8 +353,9 @@ static const struct intel_device_info pnv_m_info = {
 
 static const struct intel_device_info i965g_info = {
 	GEN4_FEATURES,
 	PLATFORM(INTEL_I965G),
+	.__runtime.port_mask = BIT(PORT_B) | BIT(PORT_C), /* SDVO B/C */
 	.display.has_overlay = 1,
 	.hws_needs_physical = 1,
 	.has_snoop = false,
 };
@@ -358,8 +364,9 @@ static const struct intel_device_info i965gm_info = {
 	GEN4_FEATURES,
 	PLATFORM(INTEL_I965GM),
 	.is_mobile = 1,
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
+	.__runtime.port_mask = BIT(PORT_B) | BIT(PORT_C), /* SDVO B/C */
 	.display.has_overlay = 1,
 	.display.supports_tv = 1,
 	.hws_needs_physical = 1,
 	.has_snoop = false,
@@ -367,8 +374,9 @@ static const struct intel_device_info i965gm_info = {
 
 static const struct intel_device_info g45_info = {
 	GEN4_FEATURES,
 	PLATFORM(INTEL_G45),
+	.__runtime.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* SDVO/HDMI/DP B/C, DP D */
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
 	.gpu_reset_clobbers_display = false,
 };
 
@@ -376,8 +384,9 @@ static const struct intel_device_info gm45_info = {
 	GEN4_FEATURES,
 	PLATFORM(INTEL_GM45),
 	.is_mobile = 1,
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
+	.__runtime.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* SDVO/HDMI/DP B/C, DP D */
 	.display.supports_tv = 1,
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
 	.gpu_reset_clobbers_display = false,
 };
@@ -385,8 +394,9 @@ static const struct intel_device_info gm45_info = {
 #define GEN5_FEATURES \
 	GEN(5), \
 	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */ \
 	.display.has_hotplug = 1, \
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0), \
 	.has_3d_pipeline = 1, \
 	.has_snoop = true, \
@@ -416,8 +426,9 @@ static const struct intel_device_info ilk_m_info = {
 #define GEN6_FEATURES \
 	GEN(6), \
 	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */ \
 	.display.has_hotplug = 1, \
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_3d_pipeline = 1, \
@@ -469,8 +480,9 @@ static const struct intel_device_info snb_m_gt2_info = {
 #define GEN7_FEATURES  \
 	GEN(7), \
 	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C), \
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */ \
 	.display.has_hotplug = 1, \
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_3d_pipeline = 1, \
@@ -533,8 +545,9 @@ static const struct intel_device_info vlv_info = {
 	GEN(7),
 	.is_lp = 1,
 	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
+	.__runtime.port_mask = BIT(PORT_B) | BIT(PORT_C), /* HDMI/DP B/C */
 	.has_runtime_pm = 1,
 	.has_rc6 = 1,
 	.has_reset_engine = true,
 	.has_rps = true,
@@ -558,8 +571,9 @@ static const struct intel_device_info vlv_info = {
 	GEN7_FEATURES, \
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E), \
 	.display.has_ddi = 1, \
 	.display.has_fpga_dbg = 1, \
 	.display.has_dp_mst = 1, \
 	.has_rc6p = 0 /* RC6p removed-by HSW */, \
@@ -628,8 +642,9 @@ static const struct intel_device_info chv_info = {
 	PLATFORM(INTEL_CHERRYVIEW),
 	GEN(8),
 	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
+	.__runtime.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* HDMI/DP B/C/D */
 	.display.has_hotplug = 1,
 	.is_lp = 1,
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0),
 	.has_64bit_reloc = 1,
@@ -708,8 +723,9 @@ static const struct intel_device_info skl_gt4_info = {
 	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
 		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C), \
 	.has_3d_pipeline = 1, \
 	.has_64bit_reloc = 1, \
 	.display.has_ddi = 1, \
 	.display.has_fpga_dbg = 1, \
@@ -845,22 +861,25 @@ static const struct intel_device_info cml_gt2_info = {
 
 static const struct intel_device_info icl_info = {
 	GEN11_FEATURES,
 	PLATFORM(INTEL_ICELAKE),
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 };
 
 static const struct intel_device_info ehl_info = {
 	GEN11_FEATURES,
 	PLATFORM(INTEL_ELKHARTLAKE),
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D),
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
 	.__runtime.ppgtt_size = 36,
 };
 
 static const struct intel_device_info jsl_info = {
 	GEN11_FEATURES,
 	PLATFORM(INTEL_JASPERLAKE),
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D),
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
 	.__runtime.ppgtt_size = 36,
 };
 
@@ -895,8 +914,10 @@ static const struct intel_device_info jsl_info = {
 
 static const struct intel_device_info tgl_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_TIGERLAKE),
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) |
+		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4) | BIT(PORT_TC5) | BIT(PORT_TC5),
 	.display.has_modular_fia = 1,
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 };
@@ -907,8 +928,10 @@ static const struct intel_device_info rkl_info = {
 	.display.abox_mask = BIT(0),
 	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C),
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) |
+		BIT(PORT_TC1) | BIT(PORT_TC2),
 	.display.has_hti = 1,
 	.display.has_psr_hw_tracking = 0,
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0),
@@ -927,8 +950,10 @@ static const struct intel_device_info dg1_info = {
 	DGFX_FEATURES,
 	.__runtime.graphics.ip.rel = 10,
 	PLATFORM(INTEL_DG1),
 	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) |
+		BIT(PORT_TC1) | BIT(PORT_TC2),
 	.require_force_probe = 1,
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) |
 		BIT(VCS0) | BIT(VCS2),
@@ -939,8 +964,10 @@ static const struct intel_device_info dg1_info = {
 static const struct intel_device_info adl_s_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_ALDERLAKE_S),
 	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
+	.__runtime.port_mask = BIT(PORT_A) |
+		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
 	.display.has_hti = 1,
 	.display.has_psr_hw_tracking = 0,
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
@@ -994,8 +1021,10 @@ static const struct intel_device_info adl_p_info = {
 	PLATFORM(INTEL_ALDERLAKE_P),
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |
 			       BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) |
+		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
 	.display.has_cdclk_crawl = 1,
 	.display.has_modular_fia = 1,
 	.display.has_psr_hw_tracking = 0,
 	.__runtime.platform_engine_mask =
@@ -1079,8 +1108,10 @@ static const struct intel_device_info dg2_info = {
 	DG2_FEATURES,
 	XE_LPD_FEATURES,
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D_XELPD) |
+		BIT(PORT_TC1),
 };
 
 static const struct intel_device_info ats_m_info = {
 	DG2_FEATURES,
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index fc5cd14adfcc..4ef7dd1d3bbe 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -258,17 +258,21 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 	/* Find and mark subplatform bits based on the PCI device id. */
 	if (find_devid(devid, subplatform_ult_ids,
 		       ARRAY_SIZE(subplatform_ult_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_ULT);
+		if (IS_HASWELL(i915) || IS_BROADWELL(i915))
+			RUNTIME_INFO(i915)->port_mask &= ~BIT(PORT_D);
 	} else if (find_devid(devid, subplatform_ulx_ids,
 			      ARRAY_SIZE(subplatform_ulx_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_ULX);
 		if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
 			/* ULX machines are also considered ULT. */
 			mask |= BIT(INTEL_SUBPLATFORM_ULT);
+			RUNTIME_INFO(i915)->port_mask &= ~BIT(PORT_D);
 		}
 	} else if (find_devid(devid, subplatform_portf_ids,
 			      ARRAY_SIZE(subplatform_portf_ids))) {
+		RUNTIME_INFO(i915)->port_mask |= BIT(PORT_F);
 		mask = BIT(INTEL_SUBPLATFORM_PORTF);
 	} else if (find_devid(devid, subplatform_uy_ids,
 			   ARRAY_SIZE(subplatform_uy_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_UY);
@@ -533,8 +537,9 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 						   DRIVER_ATOMIC);
 		memset(&info->display, 0, sizeof(info->display));
 
 		runtime->cpu_transcoder_mask = 0;
+		runtime->port_mask = 0;
 		memset(runtime->num_sprites, 0, sizeof(runtime->num_sprites));
 		memset(runtime->num_scalers, 0, sizeof(runtime->num_scalers));
 		runtime->fbc_mask = 0;
 		runtime->has_hdcp = false;
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index b30cc8b97c3a..5f6393a2cf83 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -250,8 +250,9 @@ struct intel_runtime_info {
 	/* display */
 	struct {
 		u8 pipe_mask;
 		u8 cpu_transcoder_mask;
+		u16 port_mask; /* DVO/sDVO/DP/HDMI/DDI ports */
 
 		u8 num_sprites[I915_MAX_PIPES];
 		u8 num_scalers[I915_MAX_PIPES];
 
-- 
2.39.2

