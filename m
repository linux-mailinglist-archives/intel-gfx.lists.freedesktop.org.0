Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F4E59BDF1
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 12:55:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B45AE112417;
	Mon, 22 Aug 2022 10:55:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0722011237C
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 10:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661165702; x=1692701702;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1HyfYkmuO5+3Xe/OJlp96IIfwmkHxKg0Vliv2pWXfDk=;
 b=cvw9hpwmBiBwfT0nPCicmh3WYx/rrEwqS/brYUg/R0QzqFzZX0gMvH3p
 NjiCY+3PXPZae3NNtrIu1y1oDcwCIAh5sgsDPUwPHArUuUf3nLwXCYVp4
 NriwGmE67TLpf5NMHFy31lYYdbgTruclqwkqtsyPHdIdaZ8z+C/UPI3zi
 rxAH1iQeCsHRL3q/19+IjK/H/lY/spqO+/btDHDJo9kzxsZ4OpUrMTVQH
 d9IReQk/uLWv/GVyZPMrHnI9q5lTxvYDykfZ56yx2usP7wj/jHpbyBl7T
 GdwPR6/fP6+0UG2cDjl7d/m0EqsWQXBulTgaWkdj7QeDYgOjfRjtlIRd9 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="280353995"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="280353995"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 03:55:01 -0700
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="585474063"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 03:54:59 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Aug 2022 16:24:25 +0530
Message-Id: <20220822105426.3521960-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220822105426.3521960-1-ankit.k.nautiyal@intel.com>
References: <20220822105426.3521960-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/dp: Handle BPP where HDMI2.1 DFP
 doesn't support DSC
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

Currently we use the highest input BPC supported by DP sink while using
DSC.In cases where PCON with HDMI2.1 as branch device, if PCON supports
DSC but HDMI2.1 sink does not supports DSC, The PCON tries to use same
input BPC that is used between Source and the PCON without DSC, which
might not work even with the maximum FRL rate supported by HDMI2.1
sink.

This patch calculates the max BPC that can be sufficient with either
RGB or YCBCR420 format for the maximum FRL rate supported.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 90 ++++++++++++++++++++++++-
 1 file changed, 89 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8ccbe591b9e2..f0a62f71904e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -117,6 +117,7 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
 
 static void intel_dp_unset_edid(struct intel_dp *intel_dp);
 static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
+static bool intel_dp_is_hdmi_2_1_sink(struct intel_dp *intel_dp);
 
 static bool
 is_dfp_hdmi_sink_dsc_1_2(struct intel_dp *intel_dp)
@@ -1455,6 +1456,74 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
 	return drm_dsc_compute_rc_parameters(vdsc_cfg);
 }
 
+static int
+_intel_dp_pcon_hdmi21_get_bpp_nodsc(struct intel_dp *intel_dp,
+				    const struct drm_display_mode *adjusted_mode,
+				    int max_bpc, bool is_ycbcr420)
+{
+	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	struct drm_connector *connector = &intel_connector->base;
+	int i, num_bpc;
+	u8 dsc_bpc[3] = {0};
+	int req_rate_gbps;
+	int max_frl_rate = connector->display_info.hdmi.max_lanes *
+			   connector->display_info.hdmi.max_frl_rate_per_lane;
+
+	/*
+	 * Currently DSC with Ycbcr420 is not supported. So for modes with Ycbcr420,
+	 * DSC will use RGB and support for RGB->YCBCR444->YCBCR420 conversion is
+	 * required from DP HDMI2.1 PCON.
+	 */
+	if (is_ycbcr420 && !(intel_dp->dfp.rgb_to_ycbcr || intel_dp->dfp.ycbcr_444_to_420))
+		return 0;
+
+	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp->dsc_dpcd,
+						       dsc_bpc);
+	for (i = 0; i < num_bpc; i++) {
+		if (dsc_bpc[i] > max_bpc)
+			continue;
+
+		req_rate_gbps = DIV_ROUND_UP(dsc_bpc[i] * 3 * adjusted_mode->clock, 1000000);
+
+		/* YCBCR420 reduces data rate by 2 */
+		if (is_ycbcr420)
+			req_rate_gbps /= 2;
+
+		if (req_rate_gbps < max_frl_rate)
+			return dsc_bpc[i] * 3;
+	}
+
+	return 0;
+}
+
+static int
+intel_dp_pcon_hdmi21_get_bpp_nodsc(struct intel_dp *intel_dp,
+				   struct intel_crtc_state *pipe_config,
+				   int max_bpc)
+{
+	const struct drm_display_mode *adjusted_mode =
+		&pipe_config->hw.adjusted_mode;
+	struct intel_connector *connector = intel_dp->attached_connector;
+	const struct drm_display_info *info = &connector->base.display_info;
+	bool is_ycbcr420 = drm_mode_is_420_only(info, adjusted_mode);
+	int pipe_bpp;
+
+	pipe_bpp = _intel_dp_pcon_hdmi21_get_bpp_nodsc(intel_dp, adjusted_mode,
+						       max_bpc, is_ycbcr420);
+	if (!pipe_bpp && !is_ycbcr420 && drm_mode_is_420_also(info, adjusted_mode)) {
+		is_ycbcr420 = true;
+		pipe_bpp = _intel_dp_pcon_hdmi21_get_bpp_nodsc(intel_dp, adjusted_mode,
+							       max_bpc, is_ycbcr420);
+	}
+
+	if (!pipe_bpp && is_ycbcr420) {
+		pipe_config->dp_dfp_config.rgb_to_ycbcr = true;
+		pipe_config->dp_dfp_config.ycbcr_444_to_420 = true;
+	}
+
+	return pipe_bpp;
+}
+
 static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				       struct intel_crtc_state *pipe_config,
 				       struct drm_connector_state *conn_state,
@@ -1473,7 +1542,26 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
 		return -EINVAL;
 
-	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
+	/*
+	 * In cases where PCON with HDMI2.1 as branch device, if PCON supports
+	 * DSC but HDMI2.1 sink does not supports DSC, The PCON tries to use same
+	 * input DSC bpc that is used between Source and PCON with Ycbcr420
+	 * format.
+	 * So use the max BPC that will be sufficient to show the mode in YCbcr420
+	 * without DSC from PCON->HDMI2.1
+	 */
+	if (intel_dp_is_hdmi_2_1_sink(intel_dp) &&
+	    !is_dfp_hdmi_sink_dsc_1_2(intel_dp)) {
+		pipe_bpp = intel_dp_pcon_hdmi21_get_bpp_nodsc(intel_dp, pipe_config,
+							      conn_state->max_requested_bpc);
+		if (!pipe_bpp) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "No BPC possible to support the mode without HDMI2.1 DSC\n");
+			return -EINVAL;
+		}
+	} else {
+		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
+	}
 
 	/* Min Input BPC for ICL+ is 8 */
 	if (pipe_bpp < 8 * 3) {
-- 
2.25.1

