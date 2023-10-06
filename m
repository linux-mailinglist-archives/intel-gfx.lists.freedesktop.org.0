Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D36D87BB949
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 15:37:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 953B610E50F;
	Fri,  6 Oct 2023 13:37:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D44B10E4F8
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 13:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696599444; x=1728135444;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MKsi/5PuuelfztAuE4x19vL41eZiVZ56YetXra5Ivfk=;
 b=RhOU926okYfmG4w6tTyLLtv9Q/tz4Kcq6EKbkz1AwcsFmj3lgvricwqQ
 3mpqqkQsr0oBM8Na7cCBn7tNQIE7leLGuY1Vd7FjBy6JkSsdU4VAaivTN
 KylhV/f2luP3Zdw58Jgm2r7wZ+UE/3QK0T5G4unjJSj3W/jLDWliGY5ii
 X0qD6/nkKYRUko11mN/XQATEczB1i+Uucy/HnM0qhKMdg1c6YuaqYkN/f
 DjobYFJFWyqo4b9nNDwCy8sAMkQ6aiOybuH6xyV1jtCUw90kvjaCYmkdc
 j8jMXV97TYUFjvlIfdbeW5V4+P++biQM1Hyzaf8aCyoSXaYcfZz4zJXbT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="470019121"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="470019121"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="728841476"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="728841476"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:23 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 16:37:21 +0300
Message-Id: <20231006133727.1822579-14-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231006133727.1822579-1-imre.deak@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/19] drm/i915/dp: Use connector DSC DPCD in
 intel_dp_dsc_compute_params()
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

Use the connector's DSC DPCD capabilities in
intel_dp_dsc_compute_params().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d08a206cb1237..02c020068c9c0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1636,11 +1636,10 @@ static int intel_dp_get_slice_height(int vactive)
 	return 2;
 }
 
-static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
+static int intel_dp_dsc_compute_params(const struct intel_connector *connector,
 				       struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
 	u8 line_buf_depth;
 	int ret;
@@ -1661,17 +1660,17 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
 		return ret;
 
 	vdsc_cfg->dsc_version_major =
-		(intel_dp->dsc_dpcd[DP_DSC_REV - DP_DSC_SUPPORT] &
+		(connector->dp.dsc_dpcd[DP_DSC_REV - DP_DSC_SUPPORT] &
 		 DP_DSC_MAJOR_MASK) >> DP_DSC_MAJOR_SHIFT;
 	vdsc_cfg->dsc_version_minor =
 		min(intel_dp_source_dsc_version_minor(i915),
-		    intel_dp_sink_dsc_version_minor(intel_dp->dsc_dpcd));
+		    intel_dp_sink_dsc_version_minor(connector->dp.dsc_dpcd));
 	if (vdsc_cfg->convert_rgb)
 		vdsc_cfg->convert_rgb =
-			intel_dp->dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP - DP_DSC_SUPPORT] &
+			connector->dp.dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP - DP_DSC_SUPPORT] &
 			DP_DSC_RGB;
 
-	line_buf_depth = drm_dp_dsc_sink_line_buf_depth(intel_dp->dsc_dpcd);
+	line_buf_depth = drm_dp_dsc_sink_line_buf_depth(connector->dp.dsc_dpcd);
 	if (!line_buf_depth) {
 		drm_dbg_kms(&i915->drm,
 			    "DSC Sink Line Buffer Depth invalid\n");
@@ -1686,7 +1685,7 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
 			DSC_1_1_MAX_LINEBUF_DEPTH_BITS : line_buf_depth;
 
 	vdsc_cfg->block_pred_enable =
-		intel_dp->dsc_dpcd[DP_DSC_BLK_PREDICTION_SUPPORT - DP_DSC_SUPPORT] &
+		connector->dp.dsc_dpcd[DP_DSC_BLK_PREDICTION_SUPPORT - DP_DSC_SUPPORT] &
 		DP_DSC_BLK_PREDICTION_IS_SUPPORTED;
 
 	return drm_dsc_compute_rc_parameters(vdsc_cfg);
@@ -2182,7 +2181,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	if (pipe_config->bigjoiner_pipes || pipe_config->dsc.slice_count > 1)
 		pipe_config->dsc.dsc_split = true;
 
-	ret = intel_dp_dsc_compute_params(&dig_port->base, pipe_config);
+	ret = intel_dp_dsc_compute_params(connector, pipe_config);
 	if (ret < 0) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Cannot compute valid DSC parameters for Input Bpp = %d "
-- 
2.39.2

