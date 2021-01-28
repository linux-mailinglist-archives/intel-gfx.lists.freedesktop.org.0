Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0A9307EAA
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 20:24:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDDCB6E9E9;
	Thu, 28 Jan 2021 19:24:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D5696E9DD
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 19:24:39 +0000 (UTC)
IronPort-SDR: Bw2FWT6z+oQuI6Vwsy704vG1acLRL+ooQuOepxUkz/akG9dGw3EdQgO7lShdOLkjy/2MwTyWRc
 JAVoqG6GboKg==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="167395491"
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="167395491"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 11:24:38 -0800
IronPort-SDR: KDWOjeY6M60XlDIsffV1VEFwbEOFV3Wf1uQsVL277q2xKaDrAw9wpi5tOI42c494ZG3ZwAa9X3
 aq6EdmKB6LFg==
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="411110187"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 11:24:37 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 11:24:09 -0800
Message-Id: <20210128192413.1715802-15-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210128192413.1715802-1-matthew.d.roper@intel.com>
References: <20210128192413.1715802-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/18] drm/i915/display13: Support DP1.4
 compression BPPs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Vandita Kulkarni <vandita.kulkarni@intel.com>

Support compression BPPs from bpc to uncompressed BPP -1.
So far we have 8,10,12 as valid compressed BPPS now the
support is extended.

Cc: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 32 ++++++++++++++++++-------
 1 file changed, 24 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a531103fb0b5..1feafd038db1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -153,6 +153,7 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
 static void intel_dp_link_down(struct intel_encoder *encoder,
 			       const struct intel_crtc_state *old_crtc_state);
 static void intel_dp_unset_edid(struct intel_dp *intel_dp);
+static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
 
 /* update sink rates from dpcd */
 static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
@@ -538,7 +539,8 @@ small_joiner_ram_size_bits(struct drm_i915_private *i915)
 static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 				       u32 link_clock, u32 lane_count,
 				       u32 mode_clock, u32 mode_hdisplay,
-				       bool bigjoiner)
+				       bool bigjoiner,
+				       u32 pipe_bpp)
 {
 	u32 bits_per_pixel, max_bpp_small_joiner_ram;
 	int i;
@@ -563,6 +565,7 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 	drm_dbg_kms(&i915->drm, "Max small joiner bpp: %u\n",
 		    max_bpp_small_joiner_ram);
 
+
 	/*
 	 * Greatest allowed DSC BPP = MIN (output BPP from available Link BW
 	 * check, output bpp from small joiner RAM check)
@@ -585,12 +588,17 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 		return 0;
 	}
 
-	/* Find the nearest match in the array of known BPPs from VESA */
-	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp) - 1; i++) {
-		if (bits_per_pixel < valid_dsc_bpp[i + 1])
-			break;
+	/* From Display13 onwards we support from bpc upto uncompressed bpp-1 BPPs */
+	if (HAS_DISPLAY13(i915)) {
+		bits_per_pixel = min(bits_per_pixel, pipe_bpp - 1);
+	} else {
+		/* Find the nearest match in the array of known BPPs from VESA */
+		for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp) - 1; i++) {
+			if (bits_per_pixel < valid_dsc_bpp[i + 1])
+				break;
+		}
+		bits_per_pixel = valid_dsc_bpp[i];
 	}
-	bits_per_pixel = valid_dsc_bpp[i];
 
 	/*
 	 * Compressed BPP in U6.4 format so multiply by 16, for Gen 11,
@@ -824,6 +832,12 @@ intel_dp_mode_valid(struct drm_connector *connector,
 	 */
 	if ((INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) &&
 	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
+		/*
+		 * TBD pass the connector BPC,
+		 * for now U8_MAX so that max BPC on that platform would be picked
+		 */
+		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
+
 		if (intel_dp_is_edp(intel_dp)) {
 			dsc_max_output_bpp =
 				drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4;
@@ -837,7 +851,8 @@ intel_dp_mode_valid(struct drm_connector *connector,
 							    max_lanes,
 							    target_clock,
 							    mode->hdisplay,
-							    bigjoiner) >> 4;
+							    bigjoiner,
+							    pipe_bpp) >> 4;
 			dsc_slice_count =
 				intel_dp_dsc_get_slice_count(intel_dp,
 							     target_clock,
@@ -1355,7 +1370,8 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 						    pipe_config->lane_count,
 						    adjusted_mode->crtc_clock,
 						    adjusted_mode->crtc_hdisplay,
-						    pipe_config->bigjoiner);
+						    pipe_config->bigjoiner,
+						    pipe_bpp);
 		dsc_dp_slice_count =
 			intel_dp_dsc_get_slice_count(intel_dp,
 						     adjusted_mode->crtc_clock,
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
