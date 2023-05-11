Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D224A6FF7CF
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 18:55:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E6D110E52A;
	Thu, 11 May 2023 16:55:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CFE710E52A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 16:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683824144; x=1715360144;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Y3GpyJbpPfs0lA2GiYyNGqFfnK8iEmrqkcBQX9jdkYo=;
 b=MiG2EdzBRHI5XoWrnvRfdWgQ7TSzDthUIDqZ3mqOwLouupdLCis10H26
 cz5nm83z0b8NcLUHF/BTqSPWhq+K254iXQJ0lg5HGUwCumCEELNGYUpxB
 4PL0Bfixi7qnhgqjWGf3GIwQMQlCavNgTCPNFk74OTDcBWNkzJgQaOmwL
 2XUL4pK/D+tSvqc3CyGXJW+ppoDCcTmuPBWLpr9etnH5gnJBYImIyt4sQ
 n+GbpBUH849qBXfgvndggq3WW17uhB3WywaJyy9Ybe6/oZr+oLuQtFFUA
 DAhyIyzwUwtGm3d9qxSElKG+PP0rpKlun0RFO3R/0sNgwfzuwOYRbtZwY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="352796175"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="352796175"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 09:55:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="677319528"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="677319528"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga006.jf.intel.com with SMTP; 11 May 2023 09:55:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 May 2023 19:55:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 May 2023 19:55:29 +0300
Message-Id: <20230511165534.10266-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230511165534.10266-1-ville.syrjala@linux.intel.com>
References: <20230511165534.10266-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/7] drm/i915: Introduce device info port_mask
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
 drivers/gpu/drm/i915/i915_pci.c          | 33 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_device_info.c |  5 ++++
 drivers/gpu/drm/i915/intel_device_info.h |  1 +
 3 files changed, 39 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 72dd7b9f6dfd..46511a0fbc3e 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -256,29 +256,34 @@
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
@@ -391,6 +396,7 @@ static const struct intel_device_info pnv_m_info = {
 static const struct intel_device_info i965g_info = {
 	GEN4_FEATURES,
 	PLATFORM(INTEL_I965G),
+	.__runtime.port_mask = BIT(PORT_B) | BIT(PORT_C), /* SDVO B/C */
 	.display.has_overlay = 1,
 	.hws_needs_physical = 1,
 	.has_snoop = false,
@@ -401,6 +407,7 @@ static const struct intel_device_info i965gm_info = {
 	PLATFORM(INTEL_I965GM),
 	.is_mobile = 1,
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
+	.__runtime.port_mask = BIT(PORT_B) | BIT(PORT_C), /* SDVO B/C */
 	.display.has_overlay = 1,
 	.display.supports_tv = 1,
 	.hws_needs_physical = 1,
@@ -410,6 +417,7 @@ static const struct intel_device_info i965gm_info = {
 static const struct intel_device_info g45_info = {
 	GEN4_FEATURES,
 	PLATFORM(INTEL_G45),
+	.__runtime.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* SDVO/HDMI/DP B/C, DP D */
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
 	.gpu_reset_clobbers_display = false,
 };
@@ -419,6 +427,7 @@ static const struct intel_device_info gm45_info = {
 	PLATFORM(INTEL_GM45),
 	.is_mobile = 1,
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
+	.__runtime.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* SDVO/HDMI/DP B/C, DP D */
 	.display.supports_tv = 1,
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
 	.gpu_reset_clobbers_display = false,
@@ -428,6 +437,7 @@ static const struct intel_device_info gm45_info = {
 	GEN(5), \
 	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */ \
 	.display.has_hotplug = 1, \
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0), \
 	.has_3d_pipeline = 1, \
@@ -461,6 +471,7 @@ static const struct intel_device_info ilk_m_info = {
 	GEN(6), \
 	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */ \
 	.display.has_hotplug = 1, \
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
@@ -516,6 +527,7 @@ static const struct intel_device_info snb_m_gt2_info = {
 	GEN(7), \
 	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C), \
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */ \
 	.display.has_hotplug = 1, \
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
@@ -582,6 +594,7 @@ static const struct intel_device_info vlv_info = {
 	.is_lp = 1,
 	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
+	.__runtime.port_mask = BIT(PORT_B) | BIT(PORT_C), /* HDMI/DP B/C */
 	.has_runtime_pm = 1,
 	.has_rc6 = 1,
 	.has_reset_engine = true,
@@ -609,6 +622,7 @@ static const struct intel_device_info vlv_info = {
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E), \
 	.display.has_ddi = 1, \
 	.display.has_fpga_dbg = 1, \
 	.display.has_dp_mst = 1, \
@@ -679,6 +693,7 @@ static const struct intel_device_info chv_info = {
 	GEN(8),
 	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
+	.__runtime.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* HDMI/DP B/C/D */
 	.display.has_hotplug = 1,
 	.is_lp = 1,
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0),
@@ -761,6 +776,7 @@ static const struct intel_device_info skl_gt4_info = {
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
 		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C), \
 	.has_3d_pipeline = 1, \
 	.has_64bit_reloc = 1, \
 	.display.has_ddi = 1, \
@@ -900,6 +916,7 @@ static const struct intel_device_info cml_gt2_info = {
 static const struct intel_device_info icl_info = {
 	GEN11_FEATURES,
 	PLATFORM(INTEL_ICELAKE),
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 };
@@ -907,6 +924,7 @@ static const struct intel_device_info icl_info = {
 static const struct intel_device_info ehl_info = {
 	GEN11_FEATURES,
 	PLATFORM(INTEL_ELKHARTLAKE),
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D),
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
 	.__runtime.ppgtt_size = 36,
 };
@@ -914,6 +932,7 @@ static const struct intel_device_info ehl_info = {
 static const struct intel_device_info jsl_info = {
 	GEN11_FEATURES,
 	PLATFORM(INTEL_JASPERLAKE),
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D),
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
 	.__runtime.ppgtt_size = 36,
 };
@@ -952,6 +971,8 @@ static const struct intel_device_info jsl_info = {
 static const struct intel_device_info tgl_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_TIGERLAKE),
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) |
+		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4) | BIT(PORT_TC5) | BIT(PORT_TC5),
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 };
@@ -963,6 +984,8 @@ static const struct intel_device_info rkl_info = {
 	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C),
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) |
+		BIT(PORT_TC1) | BIT(PORT_TC2),
 	.display.has_hti = 1,
 	.display.has_psr_hw_tracking = 0,
 	.__runtime.platform_engine_mask =
@@ -983,6 +1006,8 @@ static const struct intel_device_info dg1_info = {
 	.__runtime.graphics.ip.rel = 10,
 	PLATFORM(INTEL_DG1),
 	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) |
+		BIT(PORT_TC1) | BIT(PORT_TC2),
 	.require_force_probe = 1,
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) |
@@ -995,6 +1020,8 @@ static const struct intel_device_info adl_s_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_ALDERLAKE_S),
 	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
+	.__runtime.port_mask = BIT(PORT_A) |
+		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
 	.display.has_hti = 1,
 	.display.has_psr_hw_tracking = 0,
 	.__runtime.platform_engine_mask =
@@ -1050,6 +1077,8 @@ static const struct intel_device_info adl_p_info = {
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |
 			       BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) |
+		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
 	.display.has_cdclk_crawl = 1,
 	.display.has_psr_hw_tracking = 0,
 	.__runtime.platform_engine_mask =
@@ -1137,6 +1166,8 @@ static const struct intel_device_info dg2_info = {
 	XE_LPD_FEATURES,
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D_XELPD) |
+		BIT(PORT_TC1),
 };
 
 static const struct intel_device_info ats_m_info = {
@@ -1214,6 +1245,8 @@ static const struct intel_device_info mtl_info = {
 	.max_pat_index = 4,
 	.__runtime.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(CCS0),
+	.__runtime.port_mask = BIT(PORT_A) | BIT(PORT_B) |
+		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
 	.require_force_probe = 1,
 	MTL_CACHELEVEL,
 };
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 4e23be2995bf..bb10e8e78a94 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -259,15 +259,19 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
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
@@ -541,6 +545,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 		memset(&info->display, 0, sizeof(info->display));
 
 		runtime->cpu_transcoder_mask = 0;
+		runtime->port_mask = 0;
 		memset(runtime->num_sprites, 0, sizeof(runtime->num_sprites));
 		memset(runtime->num_scalers, 0, sizeof(runtime->num_scalers));
 		runtime->fbc_mask = 0;
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 959a4080840c..9001e4c2a469 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -253,6 +253,7 @@ struct intel_runtime_info {
 	struct {
 		u8 pipe_mask;
 		u8 cpu_transcoder_mask;
+		u16 port_mask; /* DVO/sDVO/DP/HDMI/DDI ports */
 
 		u8 num_sprites[I915_MAX_PIPES];
 		u8 num_scalers[I915_MAX_PIPES];
-- 
2.39.3

