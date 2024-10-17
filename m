Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FFB9A1D05
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 10:21:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AC7610E7BB;
	Thu, 17 Oct 2024 08:21:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zll+d2FW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EAB210E7BB;
 Thu, 17 Oct 2024 08:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729153299; x=1760689299;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l1ANL0cBD4JyGolzDxgckIklKJveXzAfNipltIE+UxA=;
 b=Zll+d2FWjR48wlHIPhp9X3SXYxdA8O0E8PXc1n/fPCBPxolbwhZ6/arM
 W9baqMc9JZy8LDIdJersC8nDTgUCvxw7XvjGcz8YVpfulyDq4H5W0T8u+
 1/sd6Ey7xDRjD9kFhf+pmDAORp1f169Iz58Pdo/y6xufrSmEjbBwnfBwh
 tIO3vUnLUGoDHzguzG8Pvb/BnxUdhWR/nc60U8HLVKjCgITzN7xPdx3qz
 9NABWjVuHDVvL4Y7epmoNYzLsF9/XScem7L/cErU1Fyn0+2DDJma65q1J
 jC/PdqHugZ1XQG4luERoVC5dLDHB0gpLSTUUiV5fS/AfE9WX+p6bKm6mr w==;
X-CSE-ConnectionGUID: lpDqPt2URoaBBx+Is/sT5Q==
X-CSE-MsgGUID: o/8oy+hKRMqkH321IE4IfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28724829"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28724829"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 01:21:39 -0700
X-CSE-ConnectionGUID: N71I8/BRQVmFvh1LJ+ITBg==
X-CSE-MsgGUID: AxapUWwORfWw+TZextp3kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="78086177"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 01:21:37 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 01/10] drm/i915/display: Prepare for dsc 3 stream splitter
Date: Thu, 17 Oct 2024 13:53:39 +0530
Message-ID: <20241017082348.3413727-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241017082348.3413727-1-ankit.k.nautiyal@intel.com>
References: <20241017082348.3413727-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

At the moment dsc_split represents that dsc splitter is used or not.
With 3 DSC engines, the splitter can split into two streams or three
streams. Use enum for dsc_split to make space for case with three
streams.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 .../drm/i915/display/intel_display_types.h    |  7 ++++-
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 30 ++++++++++++++++---
 5 files changed, 35 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 87a27d91d15d..5dc077c8200e 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1595,7 +1595,7 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
 
 	/* FIXME: split only when necessary */
 	if (crtc_state->dsc.slice_count > 1)
-		crtc_state->dsc.dsc_split = true;
+		crtc_state->dsc.dsc_split = INTEL_DSC_SPLIT_2_STREAMS;
 
 	/* FIXME: initialize from VBT */
 	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ef1436146325..9e2f0fd0558f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5741,7 +5741,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(dsc.config.nsl_bpg_offset);
 
 	PIPE_CONF_CHECK_BOOL(dsc.compression_enable);
-	PIPE_CONF_CHECK_BOOL(dsc.dsc_split);
+	PIPE_CONF_CHECK_I(dsc.dsc_split);
 	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
 
 	PIPE_CONF_CHECK_BOOL(splitter.enable);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 2bb1fa64da2f..8bd63da8516c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -909,6 +909,11 @@ struct intel_csc_matrix {
 	u16 postoff[3];
 };
 
+enum intel_dsc_split_state {
+	INTEL_DSC_SPLIT_DISABLED,
+	INTEL_DSC_SPLIT_2_STREAMS,
+};
+
 void intel_io_mmio_fw_write(void *ctx, i915_reg_t reg, u32 val);
 
 typedef void (*intel_io_reg_write)(void *ctx, i915_reg_t reg, u32 val);
@@ -1235,7 +1240,7 @@ struct intel_crtc_state {
 	/* Display Stream compression state */
 	struct {
 		bool compression_enable;
-		bool dsc_split;
+		enum intel_dsc_split_state dsc_split;
 		/* Compressed Bpp in U6.4 format (first 4 bits for fractional part) */
 		u16 compressed_bpp_x16;
 		u8 slice_count;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6b27fabd61c3..04d22f0c1524 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2403,7 +2403,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	 * then we need to use 2 VDSC instances.
 	 */
 	if (pipe_config->joiner_pipes || pipe_config->dsc.slice_count > 1)
-		pipe_config->dsc.dsc_split = true;
+		pipe_config->dsc.dsc_split = INTEL_DSC_SPLIT_2_STREAMS;
 
 	ret = intel_dp_dsc_compute_params(connector, pipe_config);
 	if (ret < 0) {
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 40525f5c4c42..65c884b4f064 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -379,7 +379,14 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 
 static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state)
 {
-	return crtc_state->dsc.dsc_split ? 2 : 1;
+	switch (crtc_state->dsc.dsc_split) {
+	case INTEL_DSC_SPLIT_2_STREAMS:
+		return 2;
+	case INTEL_DSC_SPLIT_DISABLED:
+	default:
+		break;
+	}
+	return 1;
 }
 
 int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
@@ -976,14 +983,29 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	if (!crtc_state->dsc.compression_enable)
 		goto out;
 
-	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
-		(dss_ctl1 & JOINER_ENABLE);
+	if ((dss_ctl1 & JOINER_ENABLE) &&
+	    (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE))
+		crtc_state->dsc.dsc_split = INTEL_DSC_SPLIT_2_STREAMS;
+	else
+		crtc_state->dsc.dsc_split = INTEL_DSC_SPLIT_DISABLED;
 
 	intel_dsc_get_pps_config(crtc_state);
 out:
 	intel_display_power_put(dev_priv, power_domain, wakeref);
 }
 
+static const char * const dsc_split_str[] = {
+	[INTEL_DSC_SPLIT_DISABLED] = "DISABLED",
+	[INTEL_DSC_SPLIT_2_STREAMS] = "2 STREAMS",
+};
+
+static const char *dsc_split_name(enum intel_dsc_split_state dsc_split)
+{
+	if (dsc_split >= ARRAY_SIZE(dsc_split_str))
+		return "invalid";
+	return dsc_split_str[dsc_split];
+}
+
 static void intel_vdsc_dump_state(struct drm_printer *p, int indent,
 				  const struct intel_crtc_state *crtc_state)
 {
@@ -991,7 +1013,7 @@ static void intel_vdsc_dump_state(struct drm_printer *p, int indent,
 			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-count: %d, split: %s\n",
 			  FXP_Q4_ARGS(crtc_state->dsc.compressed_bpp_x16),
 			  crtc_state->dsc.slice_count,
-			  str_yes_no(crtc_state->dsc.dsc_split));
+			  dsc_split_name(crtc_state->dsc.dsc_split));
 }
 
 void intel_vdsc_state_dump(struct drm_printer *p, int indent,
-- 
2.45.2

