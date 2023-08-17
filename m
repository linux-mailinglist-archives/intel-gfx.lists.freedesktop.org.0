Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA4977FBC4
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 18:16:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 284EF10E515;
	Thu, 17 Aug 2023 16:16:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0E9410E4FE
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 16:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692288963; x=1723824963;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KMLmGhc1lnPFknn7lDECVOULEwjwcR1Lx3z79zDr/Ag=;
 b=HKun5ixpuYMm5XKScby9Ui5VtAEv+DSr7dH+vSBVHS8+MoUPwKig2cMK
 ImeZIzDaWf5orQSDhJGOzu2102UxMJe+v9cnHqUMEseVRQq2uSgHhW/LE
 TSNJShbXK8HsiehzI0PSfTjg6yiz8jsugaxGk4TSaLrcxNv+4vm+FXl1s
 BnddudzVz29fSUhoPTpcxykR200+4I2kquvLm/M5SleRB+NQfxF5FQ0ra
 K38a84fKT+bb/JuvZReYI+LebN37TPYd+fXrZO32ybP9zSRF/gLoU1J1j
 DQRToBMWsaXMwVWecqtjjodjucvmD23Wc6027G+FCiR9hfztYuh6PLczc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="357826573"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="357826573"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 09:14:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="711601348"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="711601348"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 09:14:43 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Aug 2023 19:14:41 +0300
Message-Id: <20230817161456.3857111-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230817161456.3857111-1-imre.deak@intel.com>
References: <20230817161456.3857111-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/17] drm/i915/dp: Track the pipe and link bpp
 limits separately
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

A follow-up patch will need to limit the output link bpp both in the
non-DSC and DSC configuration, so track the pipe and link bpp limits
separately in the link_config_limits struct.

Use .4 fixed point format for link bpp matching the 1/16 bpp granularity
in DSC mode and for now keep this limit matching the pipe bpp limit.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 17 +++++++++++------
 drivers/gpu/drm/i915/display/intel_dp.h     |  9 ++++++++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 17 +++++++++++------
 3 files changed, 30 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 89de444cfc4da..f4952fcfb16e9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1419,7 +1419,7 @@ intel_dp_adjust_compliance_config(struct intel_dp *intel_dp,
 	if (intel_dp->compliance.test_data.bpc != 0) {
 		int bpp = 3 * intel_dp->compliance.test_data.bpc;
 
-		limits->min_bpp = limits->max_bpp = bpp;
+		limits->pipe.min_bpp = limits->pipe.max_bpp = bpp;
 		pipe_config->dither_force_disable = bpp == 6 * 3;
 
 		drm_dbg_kms(&i915->drm, "Setting pipe_bpp to %d\n", bpp);
@@ -1481,7 +1481,9 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 	int bpp, i, lane_count, clock = intel_dp_mode_clock(pipe_config, conn_state);
 	int mode_rate, link_rate, link_avail;
 
-	for (bpp = limits->max_bpp; bpp >= limits->min_bpp; bpp -= 2 * 3) {
+	for (bpp = limits->link.max_bpp >> 4;
+	     bpp >= limits->link.min_bpp >> 4;
+	     bpp -= 2 * 3) {
 		int output_bpp = intel_dp_output_bpp(pipe_config->output_format, bpp);
 
 		mode_rate = intel_dp_link_required(clock, output_bpp);
@@ -1812,9 +1814,9 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 	limits->min_lane_count = 1;
 	limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
 
-	limits->min_bpp = intel_dp_min_bpp(crtc_state->output_format);
-	limits->max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
-					   respect_downstream_limits);
+	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
+	limits->pipe.max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
+						     respect_downstream_limits);
 
 	if (intel_dp->use_max_params) {
 		/*
@@ -1831,10 +1833,13 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 
 	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
 
+	limits->link.min_bpp = limits->pipe.min_bpp << 4;
+	limits->link.max_bpp = limits->pipe.max_bpp << 4;
+
 	drm_dbg_kms(&i915->drm, "DP link computation with max lane count %i "
 		    "max rate %d max bpp %d pixel clock %iKHz\n",
 		    limits->max_lane_count, limits->max_rate,
-		    limits->max_bpp, adjusted_mode->crtc_clock);
+		    limits->link.max_bpp >> 4, adjusted_mode->crtc_clock);
 }
 
 static int
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 22099de3ca458..a1789419c0d19 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -26,7 +26,14 @@ struct intel_encoder;
 struct link_config_limits {
 	int min_rate, max_rate;
 	int min_lane_count, max_lane_count;
-	int min_bpp, max_bpp;
+	struct {
+		/* Uncompressed DSC input or link output bpp in 1 bpp units */
+		int min_bpp, max_bpp;
+	} pipe;
+	struct {
+		/* Compressed or uncompressed link output bpp in 1/16 bpp units */
+		int min_bpp, max_bpp;
+	} link;
 };
 
 void intel_edp_fixup_vbt_bpp(struct intel_encoder *encoder, int pipe_bpp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 998d8a186cc6f..1809643538d08 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -156,8 +156,10 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 		&crtc_state->hw.adjusted_mode;
 	int slots = -EINVAL;
 
-	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state, limits->max_bpp,
-						     limits->min_bpp, limits,
+	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state,
+						     limits->link.max_bpp >> 4,
+						     limits->link.min_bpp >> 4,
+						     limits,
 						     conn_state, 2 * 3, false);
 
 	if (slots < 0)
@@ -200,8 +202,8 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 	else
 		dsc_max_bpc = min_t(u8, 10, conn_state->max_requested_bpc);
 
-	max_bpp = min_t(u8, dsc_max_bpc * 3, limits->max_bpp);
-	min_bpp = limits->min_bpp;
+	max_bpp = min_t(u8, dsc_max_bpc * 3, limits->pipe.max_bpp);
+	min_bpp = limits->pipe.min_bpp;
 
 	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp->dsc_dpcd,
 						       dsc_bpc);
@@ -318,7 +320,7 @@ intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
 	limits->min_lane_count = limits->max_lane_count =
 		intel_dp_max_lane_count(intel_dp);
 
-	limits->min_bpp = intel_dp_min_bpp(crtc_state->output_format);
+	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
 	/*
 	 * FIXME: If all the streams can't fit into the link with
 	 * their current pipe_bpp we should reduce pipe_bpp across
@@ -327,9 +329,12 @@ intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
 	 * MST streams previously. This hack should be removed once
 	 * we have the proper retry logic in place.
 	 */
-	limits->max_bpp = min(crtc_state->pipe_bpp, 24);
+	limits->pipe.max_bpp = min(crtc_state->pipe_bpp, 24);
 
 	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
+
+	limits->link.min_bpp = limits->pipe.min_bpp << 4;
+	limits->link.max_bpp = limits->pipe.max_bpp << 4;
 }
 
 static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
-- 
2.37.2

