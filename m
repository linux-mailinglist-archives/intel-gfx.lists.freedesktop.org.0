Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FB354D938
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 06:21:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2B74113D1B;
	Thu, 16 Jun 2022 04:21:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 543B6113D1B
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 04:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655353280; x=1686889280;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VMd8WBuLNouVQj+NtH+yZtotnV7r0kUzl01ob3CwJG4=;
 b=fyduJAK7BLbn9E00nrv68jUTxQDmyKjh8CKcZnsDRj9rfJdgz+t8+QLj
 imZvOOo9iYBNgSGGS27RYl1SiFx6opBKZt+qivigtJ/aDcJZ4SoSmNMVs
 48O7yuxBrdApJ6MDPmXp39Hk5P4sj9Fke4hM5FWgUU6UrJb8Pr5qnEdWy
 6RJeS8Jr3e4u4kKYzbHlulc3e2jmOuBAM8UrNBGD+xxvXng36XiQB91TA
 zu85h8cRvx4AiaIqM/TC5Jr5JZL3x/i8xb7mqCtWEHQB3cjII/XT3zbNl
 RRhoHJsAiMIeCIZ3m9XDrGCh/boTAFMLSUSz54XLlv4detazMThfEYFqt Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="279219518"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="279219518"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 21:21:20 -0700
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="911993791"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 21:21:18 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jun 2022 09:52:46 +0530
Message-Id: <20220616042247.324969-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220616042247.324969-1-ankit.k.nautiyal@intel.com>
References: <20220616042247.324969-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 2/3] drm/i915/dp: Rename helper to get max
 pipe bpp with DSC
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

The helper intel_dp_dsc_compute_bpp gives the maximum pipe bpp that is
allowed with DSC. Renaming the function to reflect the same.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index eb00fdf5a3ad..d0c63888dfff 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -115,7 +115,7 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
 }
 
 static void intel_dp_unset_edid(struct intel_dp *intel_dp);
-static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
+static int intel_dp_dsc_get_bpp_max(struct intel_dp *intel_dp, u8 dsc_max_bpc);
 
 /* Is link rate UHBR and thus 128b/132b? */
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state)
@@ -1002,7 +1002,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		 * TBD pass the connector BPC,
 		 * for now U8_MAX so that max BPC on that platform would be picked
 		 */
-		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
+		int pipe_bpp_max = intel_dp_dsc_get_bpp_max(intel_dp, U8_MAX);
 
 		if (intel_dp_is_edp(intel_dp)) {
 			dsc_max_output_bpp =
@@ -1018,7 +1018,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 								target_clock,
 								mode->hdisplay,
 								bigjoiner,
-								pipe_bpp);
+								pipe_bpp_max);
 			dsc_slice_count =
 				intel_dp_dsc_get_slice_count(intel_dp,
 							     target_clock,
@@ -1323,7 +1323,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 	return -EINVAL;
 }
 
-static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
+static int intel_dp_dsc_get_bpp_max(struct intel_dp *intel_dp, u8 max_req_bpc)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int i, num_bpc;
@@ -1422,7 +1422,7 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
-	int pipe_bpp;
+	int pipe_bpp_max;
 	int ret;
 
 	pipe_config->fec_enable = !intel_dp_is_edp(intel_dp) &&
@@ -1431,10 +1431,10 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
 		return -EINVAL;
 
-	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
+	pipe_bpp_max = intel_dp_dsc_get_bpp_max(intel_dp, conn_state->max_requested_bpc);
 
 	/* Min Input BPC for ICL+ is 8 */
-	if (pipe_bpp < 8 * 3) {
+	if (pipe_bpp_max < 8 * 3) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "No DSC support for less than 8bpc\n");
 		return -EINVAL;
@@ -1445,7 +1445,7 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	 * Optimize this later for the minimum possible link rate/lane count
 	 * with DSC enabled for the requested mode.
 	 */
-	pipe_config->pipe_bpp = pipe_bpp;
+	pipe_config->pipe_bpp = pipe_bpp_max;
 	pipe_config->port_clock = limits->max_rate;
 	pipe_config->lane_count = limits->max_lane_count;
 
@@ -1467,7 +1467,7 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 							adjusted_mode->crtc_clock,
 							adjusted_mode->crtc_hdisplay,
 							pipe_config->bigjoiner_pipes,
-							pipe_bpp);
+							pipe_bpp_max);
 		dsc_dp_slice_count =
 			intel_dp_dsc_get_slice_count(intel_dp,
 						     adjusted_mode->crtc_clock,
@@ -1486,7 +1486,7 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	/* As of today we support DSC for only RGB */
 	if (intel_dp->force_dsc_bpp) {
 		if (intel_dp->force_dsc_bpp >= 8 &&
-		    intel_dp->force_dsc_bpp < pipe_bpp) {
+		    intel_dp->force_dsc_bpp < pipe_bpp_max) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "DSC BPP forced to %d",
 				    intel_dp->force_dsc_bpp);
-- 
2.25.1

