Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B40BE77F90D
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 16:31:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 598BB10E4BA;
	Thu, 17 Aug 2023 14:31:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A621310E4B9;
 Thu, 17 Aug 2023 14:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692282645; x=1723818645;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SZHfisiQaQ3ze7+EKAJ9VCBYeEOkm+ALdF54SNs0nEI=;
 b=hSbNTZGLKE4fCSSgo7oifBcuSBdTZoDKMoL6c1YlkN4IbWb13vfFqrJc
 YerjTwGbG3jcTO1VtWpeq1AdpfREqk3IDz4QyvuolxJZkNA63XEkiH4cj
 SihREfAhQhhOOQKtaoN89I71FRoRix2TaxG16Qx9gj2/Ov3MdxDg+VAkA
 OF8B/AMikETZBYsExq66BBS9j0KlqDYQfrhrcG5lIIiDRnbMCngFsLDQp
 6yHuHv8K71Y5GxpHOjI8lwfw7EGdoobro8o2lZa+dHd7QLNjiTOvxgSdQ
 oMDYe4gQ9WmrCn5yUJXJTrWLhWpUr/ryULLSOuRRrS8doZkhQ8FLG6JsZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="376581703"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="376581703"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 07:28:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="858244103"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="858244103"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 07:28:41 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 17 Aug 2023 19:54:51 +0530
Message-Id: <20230817142459.89764-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230817142459.89764-1-ankit.k.nautiyal@intel.com>
References: <20230817142459.89764-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/18] drm/i915/dp: Check min bpc DSC limits for
 dsc_force_bpc also
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

For DSC the min BPC is 8 for ICL+ and so the min pipe_bpp is 24.
Check this condition for cases where bpc is forced by debugfs flag
dsc_force_bpc. If the check fails, then WARN and ignore the debugfs
flag.

For MST case the pipe_bpp is already computed (hardcoded to be 24),
and this check is not required.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 48 ++++++++++++++++---------
 1 file changed, 31 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fcf94b22e99d..52c47e1b42a0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1694,6 +1694,12 @@ u8 intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)
 	return HAS_DSC(i915) ? 8 : 0;
 }
 
+static
+bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915, int pipe_bpp)
+{
+	return pipe_bpp >= intel_dp_dsc_min_src_input_bpc(i915) * 3;
+}
+
 int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct intel_crtc_state *pipe_config,
 				struct drm_connector_state *conn_state,
@@ -1705,7 +1711,6 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
-	int pipe_bpp;
 	int ret;
 
 	pipe_config->fec_enable = !intel_dp_is_edp(intel_dp) &&
@@ -1717,28 +1722,37 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	if (!intel_dp_dsc_supports_format(intel_dp, pipe_config->output_format))
 		return -EINVAL;
 
-	if (intel_dp->force_dsc_bpc && compute_pipe_bpp) {
-		pipe_bpp = intel_dp->force_dsc_bpc * 3;
-		drm_dbg_kms(&dev_priv->drm, "Input DSC BPC forced to %d\n",
-			    intel_dp->force_dsc_bpc);
-	} else if (compute_pipe_bpp) {
-		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
-	} else {
-		pipe_bpp = pipe_config->pipe_bpp;
-	}
+	if (compute_pipe_bpp) {
+		int pipe_bpp;
+		int forced_bpp = intel_dp->force_dsc_bpc * 3;
 
-	if (pipe_bpp < intel_dp_dsc_min_src_input_bpc(dev_priv) * 3) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "Computed BPC less than min supported by source for DSC\n");
-		return -EINVAL;
+		if (forced_bpp && is_dsc_pipe_bpp_sufficient(dev_priv, forced_bpp)) {
+			pipe_bpp = forced_bpp;
+			drm_dbg_kms(&dev_priv->drm, "Input DSC BPC forced to %d\n",
+				    intel_dp->force_dsc_bpc);
+		} else {
+			drm_WARN(&dev_priv->drm, forced_bpp,
+				 "Cannot force DSC BPC:%d, due to DSC BPC limits\n",
+				 intel_dp->force_dsc_bpc);
+
+			pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp,
+							    conn_state->max_requested_bpc);
+
+			if (!is_dsc_pipe_bpp_sufficient(dev_priv, pipe_bpp)) {
+				drm_dbg_kms(&dev_priv->drm,
+					    "Computed BPC less than min supported by source for DSC\n");
+				return -EINVAL;
+			}
+		}
+
+		pipe_config->pipe_bpp = pipe_bpp;
 	}
 
 	/*
-	 * For now enable DSC for max bpp, max link rate, max lane count.
+	 * For now enable DSC for max link rate, max lane count.
 	 * Optimize this later for the minimum possible link rate/lane count
 	 * with DSC enabled for the requested mode.
 	 */
-	pipe_config->pipe_bpp = pipe_bpp;
 	pipe_config->port_clock = limits->max_rate;
 	pipe_config->lane_count = limits->max_lane_count;
 
@@ -1767,7 +1781,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 								    adjusted_mode->crtc_hdisplay,
 								    pipe_config->bigjoiner_pipes,
 								    pipe_config->output_format,
-								    pipe_bpp,
+								    pipe_config->pipe_bpp,
 								    timeslots);
 			if (!dsc_max_compressed_bpp) {
 				drm_dbg_kms(&dev_priv->drm,
-- 
2.40.1

