Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4761299C089
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 09:00:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB43F10E13B;
	Mon, 14 Oct 2024 07:00:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U1N1/7ZK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B91A10E13B;
 Mon, 14 Oct 2024 07:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728889219; x=1760425219;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lFUTAyowPQTpkoq97XVdUvhEOU2Ql90KMRWMuOfTKZQ=;
 b=U1N1/7ZKa6cNz1dq5RbWQDPANiK5bDYq9lyweuY6CpIdHsNe2XP3UA4t
 +qgokZwBblMMrk73rdFwbv4XJdKJKBpO/JTZRjguDQ2k7daofwUku4ykM
 7dJKI0AqvIjl9lTEkxHc35kQ9xcalCTRq+2yIPLKitzOAVsd7ynaSMSe5
 w9il8x3Sd7cH9R3HypbSfIUUW8RkbwsPuyPUrHJe7Kye4kerWfgyw03o7
 0e6BN0cbZ9F5ffzck8KRdE11EKxX+VT3APnqFks0dQKwdXCd86A7IMdDc
 PjA0GAO0Sjw5zx0mjLg6qJdPdbSOAht6yy/U5f+GiLWl1xe9OlzGuLoZf w==;
X-CSE-ConnectionGUID: BMz30N23RvyBhi/SYna2mg==
X-CSE-MsgGUID: PFApOvfuTZKbuqHTnmcTjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39337969"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39337969"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 00:00:19 -0700
X-CSE-ConnectionGUID: YJnXVLZxQbC/OGpMNzrwoA==
X-CSE-MsgGUID: dXz+IW4dR5CtZiEntLHVgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="78310810"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 00:00:18 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/9] drm/i915/display: Prepare for dsc 3 stream splitter
Date: Mon, 14 Oct 2024 12:32:18 +0530
Message-ID: <20241014070226.2729008-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241014070226.2729008-1-ankit.k.nautiyal@intel.com>
References: <20241014070226.2729008-1-ankit.k.nautiyal@intel.com>
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
index 74311bb9d290..3f1b0b2dd788 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5720,7 +5720,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(dsc.config.nsl_bpg_offset);
 
 	PIPE_CONF_CHECK_BOOL(dsc.compression_enable);
-	PIPE_CONF_CHECK_BOOL(dsc.dsc_split);
+	PIPE_CONF_CHECK_I(dsc.dsc_split);
 	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
 
 	PIPE_CONF_CHECK_BOOL(splitter.enable);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 17fc21f6ae36..f446429e8fdb 100644
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
 struct intel_crtc_state {
 	/*
 	 * uapi (drm) state. This is the software state shown to userspace.
@@ -1231,7 +1236,7 @@ struct intel_crtc_state {
 	/* Display Stream compression state */
 	struct {
 		bool compression_enable;
-		bool dsc_split;
+		enum intel_dsc_split_state dsc_split;
 		/* Compressed Bpp in U6.4 format (first 4 bits for fractional part) */
 		u16 compressed_bpp_x16;
 		u8 slice_count;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c4fdae5097ec..3a8fb19eae75 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2402,7 +2402,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	 * then we need to use 2 VDSC instances.
 	 */
 	if (pipe_config->joiner_pipes || pipe_config->dsc.slice_count > 1)
-		pipe_config->dsc.dsc_split = true;
+		pipe_config->dsc.dsc_split = INTEL_DSC_SPLIT_2_STREAMS;
 
 	ret = intel_dp_dsc_compute_params(connector, pipe_config);
 	if (ret < 0) {
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 40525f5c4c42..14f3dd241e93 100644
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
+	[INTEL_DSC_SPLIT_DISABLED] = "INTEL_DSC_SPLIT_DISABLED",
+	[INTEL_DSC_SPLIT_2_STREAMS] = "INTEL_DSC_SPLIT_2_STREAMS",
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

