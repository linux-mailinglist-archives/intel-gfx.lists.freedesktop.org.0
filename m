Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A3A7A9DF0
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 21:51:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49B7A10E60A;
	Thu, 21 Sep 2023 19:51:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F66010E607
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 19:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695325902; x=1726861902;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y3rOjqXnx7niA/qz9K+SPLfTzRAXwKfcutj8EMzy/X8=;
 b=NyRXaGy8b2O0hLM0L7OP+HPLkhbWOeVhmDQR0e4eBCU4km1pdvlEnsId
 1lF2u5wQDrlqUWkFkJ8pCLpHdmUEXvPO4W7xggoXJDBTiIRglz2xojtH9
 QPVbtJK55Md1wOz3CDZnCc3GQnbsXJPvlUjPKRPh1pqfdVEwHdzuxy1n+
 2+lOCADVJCj/YY6aJWVnnmJQInVKknbggnmVv7rIKiYFNSQZlX3ZdoyQY
 Muv+i4USjwd5c0eHF9i9Ovwr1TzoWDdCvNmf/f37uch3OCUPnYqja5HPd
 Zii0kElpidTIuleziQHUe+UsZ7mF4b3nlqoP0Bqdr+hKoEMeXkfj5URwO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="379523065"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="379523065"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 12:51:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="817523709"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="817523709"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 12:51:40 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Sep 2023 22:51:50 +0300
Message-Id: <20230921195159.2646027-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230921195159.2646027-1-imre.deak@intel.com>
References: <20230921195159.2646027-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/11] drm/i915/dp: Track the pipe and link bpp
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
Cc: Luca Coelho <luciano.coelho@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A follow-up patch will need to limit the output link bpp both in the
non-DSC and DSC configuration, so track the pipe and link bpp limits
separately in the link_config_limits struct.

Use .4 fixed point format for link bpp matching the 1/16 bpp granularity
in DSC mode and for now keep this limit matching the pipe bpp limit.

v2: (Jani)
- Add to_bpp_int(), to_bpp_x16() helpers instead of opencoding them.
- Rename link_config_limits::link.min/max_bpp to min/max_bpp_x16.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    | 10 +++++++
 drivers/gpu/drm/i915/display/intel_dp.c       | 27 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_dp.h       |  9 ++++++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 17 +++++++-----
 4 files changed, 45 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 2328f5e66cd8f..ec8ff3c2630b0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2115,4 +2115,14 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
 	return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;
 }
 
+static inline int to_bpp_int(int bpp_x16)
+{
+	return bpp_x16 >> 4;
+}
+
+static inline int to_bpp_x16(int bpp)
+{
+	return bpp << 4;
+}
+
 #endif /*  __INTEL_DISPLAY_TYPES_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 04034a4c7a1f4..9a38ea58b7876 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1470,7 +1470,7 @@ intel_dp_adjust_compliance_config(struct intel_dp *intel_dp,
 	if (intel_dp->compliance.test_data.bpc != 0) {
 		int bpp = 3 * intel_dp->compliance.test_data.bpc;
 
-		limits->min_bpp = limits->max_bpp = bpp;
+		limits->pipe.min_bpp = limits->pipe.max_bpp = bpp;
 		pipe_config->dither_force_disable = bpp == 6 * 3;
 
 		drm_dbg_kms(&i915->drm, "Setting pipe_bpp to %d\n", bpp);
@@ -1532,7 +1532,9 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 	int bpp, i, lane_count, clock = intel_dp_mode_clock(pipe_config, conn_state);
 	int mode_rate, link_rate, link_avail;
 
-	for (bpp = limits->max_bpp; bpp >= limits->min_bpp; bpp -= 2 * 3) {
+	for (bpp = to_bpp_int(limits->link.max_bpp_x16);
+	     bpp >= to_bpp_int(limits->link.min_bpp_x16);
+	     bpp -= 2 * 3) {
 		int link_bpp = intel_dp_output_bpp(pipe_config->output_format, bpp);
 
 		mode_rate = intel_dp_link_required(clock, link_bpp);
@@ -1958,8 +1960,8 @@ bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
 	dsc_max_bpc = min(intel_dp_dsc_max_src_input_bpc(i915), conn_state->max_requested_bpc);
 	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
 
-	dsc_max_pipe_bpp = min(dsc_max_bpc * 3, limits->max_bpp);
-	dsc_min_pipe_bpp = max(dsc_min_bpc * 3, limits->min_bpp);
+	dsc_max_pipe_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
+	dsc_min_pipe_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
 
 	return pipe_bpp >= dsc_min_pipe_bpp &&
 	       pipe_bpp <= dsc_max_pipe_bpp;
@@ -2019,10 +2021,10 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 		return -EINVAL;
 
 	dsc_max_bpc = min_t(u8, dsc_max_bpc, max_req_bpc);
-	dsc_max_bpp = min(dsc_max_bpc * 3, limits->max_bpp);
+	dsc_max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
 
 	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
-	dsc_min_bpp = max(dsc_min_bpc * 3, limits->min_bpp);
+	dsc_min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
 
 	/*
 	 * Get the maximum DSC bpc that will be supported by any valid
@@ -2061,7 +2063,7 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	if (forced_bpp) {
 		pipe_bpp = forced_bpp;
 	} else {
-		int max_bpc = min(limits->max_bpp / 3, (int)conn_state->max_requested_bpc);
+		int max_bpc = min(limits->pipe.max_bpp / 3, (int)conn_state->max_requested_bpc);
 
 		/* For eDP use max bpp that can be supported with DSC. */
 		pipe_bpp = intel_dp_dsc_compute_max_bpp(intel_dp, max_bpc);
@@ -2204,9 +2206,9 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
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
@@ -2223,10 +2225,13 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 
 	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
 
+	limits->link.min_bpp_x16 = to_bpp_x16(limits->pipe.min_bpp);
+	limits->link.max_bpp_x16 = to_bpp_x16(limits->pipe.max_bpp);
+
 	drm_dbg_kms(&i915->drm, "DP link computation with max lane count %i "
 		    "max rate %d max bpp %d pixel clock %iKHz\n",
 		    limits->max_lane_count, limits->max_rate,
-		    limits->max_bpp, adjusted_mode->crtc_clock);
+		    to_bpp_int(limits->link.max_bpp_x16), adjusted_mode->crtc_clock);
 }
 
 static int
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index b34ddc9c352a4..98c60ab6e182e 100644
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
+		int min_bpp_x16, max_bpp_x16;
+	} link;
 };
 
 void intel_edp_fixup_vbt_bpp(struct intel_encoder *encoder, int pipe_bpp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 03d5ce92a86ca..69b1a13e45bf8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -157,8 +157,10 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 	int slots = -EINVAL;
 	int link_bpp;
 
-	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state, limits->max_bpp,
-						     limits->min_bpp, limits,
+	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state,
+						     to_bpp_int(limits->link.max_bpp_x16),
+						     to_bpp_int(limits->link.min_bpp_x16),
+						     limits,
 						     conn_state, 2 * 3, false);
 
 	if (slots < 0)
@@ -203,8 +205,8 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 	else
 		dsc_max_bpc = min_t(u8, 10, conn_state->max_requested_bpc);
 
-	max_bpp = min_t(u8, dsc_max_bpc * 3, limits->max_bpp);
-	min_bpp = limits->min_bpp;
+	max_bpp = min_t(u8, dsc_max_bpc * 3, limits->pipe.max_bpp);
+	min_bpp = limits->pipe.min_bpp;
 
 	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp->dsc_dpcd,
 						       dsc_bpc);
@@ -308,7 +310,7 @@ intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
 	limits->min_lane_count = limits->max_lane_count =
 		intel_dp_max_lane_count(intel_dp);
 
-	limits->min_bpp = intel_dp_min_bpp(crtc_state->output_format);
+	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
 	/*
 	 * FIXME: If all the streams can't fit into the link with
 	 * their current pipe_bpp we should reduce pipe_bpp across
@@ -317,9 +319,12 @@ intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
 	 * MST streams previously. This hack should be removed once
 	 * we have the proper retry logic in place.
 	 */
-	limits->max_bpp = min(crtc_state->pipe_bpp, 24);
+	limits->pipe.max_bpp = min(crtc_state->pipe_bpp, 24);
 
 	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
+
+	limits->link.min_bpp_x16 = to_bpp_x16(limits->pipe.min_bpp);
+	limits->link.max_bpp_x16 = to_bpp_x16(limits->pipe.max_bpp);
 }
 
 static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
-- 
2.37.2

