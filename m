Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1225F786955
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 10:05:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3C2B10E4C2;
	Thu, 24 Aug 2023 08:05:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD3EB10E4A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 08:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692864304; x=1724400304;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HFgLPwSMaw6D3aCv5BSOntFfZksQ7PuQ/Kge+jJlkRM=;
 b=LHBnFBAf1swq0oxxxKdjQsdqbR9zkjNepBEEzs2kc8A/9YpUrrtSWD4L
 kGetdIut3sL6yesdTZ4ptKst+ffHDbv8/wyYNxDTYqxPe7dHkaxTWSD9R
 aPhv5+nAGri3EVT6ZL1elVQurq3EvlEwElbmdODVwGKKRr2BLv1udOQXH
 soyFxXOO6yKLNNNEHOrbYkCq85D0rRRfixvQgSAME024C1SSDfw3gWpcm
 wlV5ufhFKAZxX9fag2OLyBJfdMjoEfx1UMcffbEq/CZbfjRpqGm+L7PnH
 jCgvU4tIW7VKPdslwAiQJ4hombE0YPIa+1QpGWy/LsAwbyivT97kzuoMP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="374345843"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="374345843"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="880710275"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:08 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 11:04:57 +0300
Message-Id: <20230824080517.693621-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230824080517.693621-1-imre.deak@intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/22] drm/i915/dp: Track the pipe and link
 bpp limits separately
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

v2: (Jani)
- Add to_bpp_int(), to_bpp_x16() helpers instead of opencoding them.
- Rename link_config_limits::link.min/max_bpp to min/max_bpp_x16.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    | 10 ++++++++
 drivers/gpu/drm/i915/display/intel_dp.c       | 25 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_dp.h       |  9 ++++++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 17 ++++++++-----
 4 files changed, 44 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 731f2ec04d5cd..5875eff5012ce 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2108,4 +2108,14 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
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
index 53697f361f950..cf29562795f75 100644
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
@@ -2203,9 +2205,9 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
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
@@ -2222,10 +2224,13 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 
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
index 788a577ebe16e..ebc7f4e60c777 100644
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
index 218c2dfd57adc..6c1c996c74e62 100644
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
@@ -321,7 +323,7 @@ intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
 	limits->min_lane_count = limits->max_lane_count =
 		intel_dp_max_lane_count(intel_dp);
 
-	limits->min_bpp = intel_dp_min_bpp(crtc_state->output_format);
+	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
 	/*
 	 * FIXME: If all the streams can't fit into the link with
 	 * their current pipe_bpp we should reduce pipe_bpp across
@@ -330,9 +332,12 @@ intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
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

