Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1BD34990B
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 19:07:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BCC16EE2C;
	Thu, 25 Mar 2021 18:07:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34F286EDF5
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 18:07:30 +0000 (UTC)
IronPort-SDR: DPoNlyvPH2jvXh1vIeTjrYFL4mW8aPcU+TZfly1o1rMdIQe2f547DqX1s5n8ceru//3kBC/KRd
 4ZtOsEZ0kwAQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="276113776"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="276113776"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:29 -0700
IronPort-SDR: m6yj/8bsd5sw8At7lUc4a2hcG1nFXBfNGmOIQJnr6vVFj6hFv0ongxjPRrvzg46VivfgtyNOAk
 BTtCrS1jkGBw==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="453176576"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:29 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 11:06:43 -0700
Message-Id: <20210325180720.401410-14-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210325180720.401410-1-matthew.d.roper@intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 13/50] drm/i915/xelpd: Support DP1.4
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
Cc: me@freedesktop.org
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
index d7648a0a7d9d..af2c47e50884 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -107,6 +107,7 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
 }
 
 static void intel_dp_unset_edid(struct intel_dp *intel_dp);
+static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
 
 /* update sink rates from dpcd */
 static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
@@ -492,7 +493,8 @@ small_joiner_ram_size_bits(struct drm_i915_private *i915)
 static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 				       u32 link_clock, u32 lane_count,
 				       u32 mode_clock, u32 mode_hdisplay,
-				       bool bigjoiner)
+				       bool bigjoiner,
+				       u32 pipe_bpp)
 {
 	u32 bits_per_pixel, max_bpp_small_joiner_ram;
 	int i;
@@ -517,6 +519,7 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 	drm_dbg_kms(&i915->drm, "Max small joiner bpp: %u\n",
 		    max_bpp_small_joiner_ram);
 
+
 	/*
 	 * Greatest allowed DSC BPP = MIN (output BPP from available Link BW
 	 * check, output bpp from small joiner RAM check)
@@ -539,12 +542,17 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 		return 0;
 	}
 
-	/* Find the nearest match in the array of known BPPs from VESA */
-	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp) - 1; i++) {
-		if (bits_per_pixel < valid_dsc_bpp[i + 1])
-			break;
+	/* From XE_LPD onwards we support from bpc upto uncompressed bpp-1 BPPs */
+	if (DISPLAY_VER(i915) >= 13) {
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
@@ -778,6 +786,12 @@ intel_dp_mode_valid(struct drm_connector *connector,
 	 */
 	if (DISPLAY_VER(dev_priv) >= 10 &&
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
@@ -791,7 +805,8 @@ intel_dp_mode_valid(struct drm_connector *connector,
 							    max_lanes,
 							    target_clock,
 							    mode->hdisplay,
-							    bigjoiner) >> 4;
+							    bigjoiner,
+							    pipe_bpp) >> 4;
 			dsc_slice_count =
 				intel_dp_dsc_get_slice_count(intel_dp,
 							     target_clock,
@@ -1276,7 +1291,8 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
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
