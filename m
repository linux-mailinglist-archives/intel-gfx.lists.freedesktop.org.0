Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAB19B1DDD
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Oct 2024 14:43:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26DBD10E2E4;
	Sun, 27 Oct 2024 13:43:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bnn3guv9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FE6110E2E3;
 Sun, 27 Oct 2024 13:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730036622; x=1761572622;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b0ICVLnV/ATIN9LKh8hZ6C6Y4ULiUe3SgFsXWiBw/28=;
 b=bnn3guv99lyNoP2IN/q5Em/8k2ul6euhxxpXqtpQjLUqcQitEUMRRGHc
 ydMNQrp4zTl7HEm42Mq0k1k4V26AOfXBwMhroatJ31p/buYfxY4+OkMws
 HnabRkJgNLT24RH9nnd54uDfFNJjmW0+kG4easD5TjNsYM/C8wrk/SXG4
 heMbKxWbZQES6RFNsQbHyDsjFOxNW2D6G8d7iNcMxQ5kHBdKrUtb3XjSe
 ovmheyhuqBUae2i9hmE0bRt3iPDkOro89YLY5ncPnARohMhqQ+FWBaXng
 GSEotx1AFaqb++6dMMu5e0URUeTziwiujvCf3qx7VyJJp07X29h24E/ES g==;
X-CSE-ConnectionGUID: w0f49+QCSbOR5APjPjBcPg==
X-CSE-MsgGUID: HjqW8ej9RpKcWnI75U9GEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29780949"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29780949"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2024 06:43:42 -0700
X-CSE-ConnectionGUID: 2Juh/lD4RTqNSGNJNrwvKQ==
X-CSE-MsgGUID: euGoPlRZSlS/UCf3gflidg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,237,1725346800"; d="scan'208";a="118841446"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2024 06:43:41 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 2/7] drm/i915/display: Prepare for dsc 3 stream splitter
Date: Sun, 27 Oct 2024 19:15:52 +0530
Message-ID: <20241027134557.862036-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241027134557.862036-1-ankit.k.nautiyal@intel.com>
References: <20241027134557.862036-1-ankit.k.nautiyal@intel.com>
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

At the moment dsc_split represents whether the dsc splitter is used
or not. With 3 DSC engines, the splitter can split into two streams
or three streams.

Instead of representing the splitter's state, it is more effective to
represent the number of DSC streams per pipe.

Replace the `dsc.dsc_split` member with `dsc.num_streams` to indicate the
number of DSC streams used per pipe. This change will implicitly
convey the splitter's operation mode.

v2: Avoid new enum for dsc split. (Suraj)
v3:
-Replace dsc_split with num_stream. (Suraj)
-Avoid extra parentheses. (Jani)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c           |  4 +++-
 drivers/gpu/drm/i915/display/intel_display.c     |  2 +-
 .../gpu/drm/i915/display/intel_display_types.h   |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c          |  4 +++-
 drivers/gpu/drm/i915/display/intel_vdsc.c        | 16 +++++++++++-----
 5 files changed, 19 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 115d79c80b9a..b01dfbeb314b 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1596,7 +1596,9 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
 
 	/* FIXME: split only when necessary */
 	if (crtc_state->dsc.slice_count > 1)
-		crtc_state->dsc.dsc_split = true;
+		crtc_state->dsc.num_streams = 2;
+	else
+		crtc_state->dsc.num_streams = 1;
 
 	/* FIXME: initialize from VBT */
 	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ef1436146325..3dfff0a8c386 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5741,7 +5741,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(dsc.config.nsl_bpg_offset);
 
 	PIPE_CONF_CHECK_BOOL(dsc.compression_enable);
-	PIPE_CONF_CHECK_BOOL(dsc.dsc_split);
+	PIPE_CONF_CHECK_I(dsc.num_streams);
 	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
 
 	PIPE_CONF_CHECK_BOOL(splitter.enable);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 2bb1fa64da2f..5611a4dd6a6f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1235,7 +1235,7 @@ struct intel_crtc_state {
 	/* Display Stream compression state */
 	struct {
 		bool compression_enable;
-		bool dsc_split;
+		int num_streams;
 		/* Compressed Bpp in U6.4 format (first 4 bits for fractional part) */
 		u16 compressed_bpp_x16;
 		u8 slice_count;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index bd9f37e1a13f..dbb1d75c0576 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2410,7 +2410,9 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	 * then we need to use 2 VDSC instances.
 	 */
 	if (pipe_config->joiner_pipes || pipe_config->dsc.slice_count > 1)
-		pipe_config->dsc.dsc_split = true;
+		pipe_config->dsc.num_streams = 2;
+	else
+		pipe_config->dsc.num_streams = 1;
 
 	ret = intel_dp_dsc_compute_params(connector, pipe_config);
 	if (ret < 0) {
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 40525f5c4c42..afc40d180dec 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -379,7 +379,7 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 
 static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state)
 {
-	return crtc_state->dsc.dsc_split ? 2 : 1;
+	return crtc_state->dsc.num_streams;
 }
 
 int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
@@ -976,8 +976,14 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	if (!crtc_state->dsc.compression_enable)
 		goto out;
 
-	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
-		(dss_ctl1 & JOINER_ENABLE);
+	if (dss_ctl1 & JOINER_ENABLE) {
+		if (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE)
+			crtc_state->dsc.num_streams = 2;
+		else
+			crtc_state->dsc.num_streams = 1;
+	} else {
+		crtc_state->dsc.num_streams = 0;
+	}
 
 	intel_dsc_get_pps_config(crtc_state);
 out:
@@ -988,10 +994,10 @@ static void intel_vdsc_dump_state(struct drm_printer *p, int indent,
 				  const struct intel_crtc_state *crtc_state)
 {
 	drm_printf_indent(p, indent,
-			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-count: %d, split: %s\n",
+			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-count: %d, num_streams: %d\n",
 			  FXP_Q4_ARGS(crtc_state->dsc.compressed_bpp_x16),
 			  crtc_state->dsc.slice_count,
-			  str_yes_no(crtc_state->dsc.dsc_split));
+			  crtc_state->dsc.num_streams);
 }
 
 void intel_vdsc_state_dump(struct drm_printer *p, int indent,
-- 
2.45.2

