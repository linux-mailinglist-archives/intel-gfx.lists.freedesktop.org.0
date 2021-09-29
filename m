Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E284841CA06
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 18:24:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 492EB89BD2;
	Wed, 29 Sep 2021 16:24:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3643C89BD2
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 16:24:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="205128886"
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="205128886"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 09:24:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="520886736"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 29 Sep 2021 09:24:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Sep 2021 19:24:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Manasi Navare <manasi.d.navare@intel.com>
Date: Wed, 29 Sep 2021 19:24:04 +0300
Message-Id: <20210929162404.6717-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210319175720.5901-1-ville.syrjala@linux.intel.com>
References: <20210319175720.5901-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Enable TPS3/4 on all platforms that
 support them
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Stop using HBR2/3 support as a proxy for TPS3/4 support.
The two are no longer 1:1 in the hardware, arguably they
never were due to HSW ULX which does support TPS3 while
being limited to HBR1.

In more recent times GLK gained support for TPS4 while
being limited to HBR2. And on CNL+ some ports support
HBR3 while others are limited to HBR2, but all ports
support TPS4.

v2: s/INTEL_GEN/DISPLAY_VER/

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 12 +++-----
 drivers/gpu/drm/i915/display/intel_dp.h       |  4 +--
 .../drm/i915/display/intel_dp_link_training.c | 30 +++++++++----------
 drivers/gpu/drm/i915/display/intel_psr.c      |  2 +-
 4 files changed, 22 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 378008873e03..9dce7c0e434a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -929,18 +929,14 @@ intel_dp_mode_valid(struct drm_connector *connector,
 	return intel_mode_valid_max_plane_size(dev_priv, mode, bigjoiner);
 }
 
-bool intel_dp_source_supports_hbr2(struct intel_dp *intel_dp)
+bool intel_dp_source_supports_tps3(struct drm_i915_private *i915)
 {
-	int max_rate = intel_dp->source_rates[intel_dp->num_source_rates - 1];
-
-	return max_rate >= 540000;
+	return DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915) || IS_HASWELL(i915);
 }
 
-bool intel_dp_source_supports_hbr3(struct intel_dp *intel_dp)
+bool intel_dp_source_supports_tps4(struct drm_i915_private *i915)
 {
-	int max_rate = intel_dp->source_rates[intel_dp->num_source_rates - 1];
-
-	return max_rate >= 810000;
+	return DISPLAY_VER(i915) >= 10;
 }
 
 static void snprintf_int_array(char *str, size_t len,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 3343c2591680..ce229026dc91 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -73,8 +73,8 @@ int intel_dp_rate_select(struct intel_dp *intel_dp, int rate);
 
 void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
 			   u8 *link_bw, u8 *rate_select);
-bool intel_dp_source_supports_hbr2(struct intel_dp *intel_dp);
-bool intel_dp_source_supports_hbr3(struct intel_dp *intel_dp);
+bool intel_dp_source_supports_tps3(struct drm_i915_private *i915);
+bool intel_dp_source_supports_tps4(struct drm_i915_private *i915);
 
 bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp);
 int intel_dp_link_required(int pixel_clock, int bpp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 4f116cd32846..449499a5c4c1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -611,6 +611,7 @@ static u32 intel_dp_training_pattern(struct intel_dp *intel_dp,
 				     const struct intel_crtc_state *crtc_state,
 				     enum drm_dp_phy dp_phy)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	bool source_tps3, sink_tps3, source_tps4, sink_tps4;
 
 	/* UHBR+ use separate 128b/132b TPS2 */
@@ -618,41 +619,40 @@ static u32 intel_dp_training_pattern(struct intel_dp *intel_dp,
 		return DP_TRAINING_PATTERN_2;
 
 	/*
-	 * Intel platforms that support HBR3 also support TPS4. It is mandatory
-	 * for all downstream devices that support HBR3. There are no known eDP
-	 * panels that support TPS4 as of Feb 2018 as per VESA eDP_v1.4b_E1
-	 * specification.
+	 * TPS4 support is mandatory for all downstream devices that
+	 * support HBR3. There are no known eDP panels that support
+	 * TPS4 as of Feb 2018 as per VESA eDP_v1.4b_E1 specification.
 	 * LTTPRs must support TPS4.
 	 */
-	source_tps4 = intel_dp_source_supports_hbr3(intel_dp);
+	source_tps4 = intel_dp_source_supports_tps4(i915);
 	sink_tps4 = dp_phy != DP_PHY_DPRX ||
 		    drm_dp_tps4_supported(intel_dp->dpcd);
 	if (source_tps4 && sink_tps4) {
 		return DP_TRAINING_PATTERN_4;
 	} else if (crtc_state->port_clock == 810000) {
 		if (!source_tps4)
-			drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
-				    "8.1 Gbps link rate without source HBR3/TPS4 support\n");
+			drm_dbg_kms(&i915->drm,
+				    "8.1 Gbps link rate without source TPS4 support\n");
 		if (!sink_tps4)
-			drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
+			drm_dbg_kms(&i915->drm,
 				    "8.1 Gbps link rate without sink TPS4 support\n");
 	}
+
 	/*
-	 * Intel platforms that support HBR2 also support TPS3. TPS3 support is
-	 * also mandatory for downstream devices that support HBR2. However, not
-	 * all sinks follow the spec.
+	 * TPS3 support is mandatory for downstream devices that
+	 * support HBR2. However, not all sinks follow the spec.
 	 */
-	source_tps3 = intel_dp_source_supports_hbr2(intel_dp);
+	source_tps3 = intel_dp_source_supports_tps3(i915);
 	sink_tps3 = dp_phy != DP_PHY_DPRX ||
 		    drm_dp_tps3_supported(intel_dp->dpcd);
 	if (source_tps3 && sink_tps3) {
 		return  DP_TRAINING_PATTERN_3;
 	} else if (crtc_state->port_clock >= 540000) {
 		if (!source_tps3)
-			drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
-				    ">=5.4/6.48 Gbps link rate without source HBR2/TPS3 support\n");
+			drm_dbg_kms(&i915->drm,
+				    ">=5.4/6.48 Gbps link rate without source TPS3 support\n");
 		if (!sink_tps3)
-			drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
+			drm_dbg_kms(&i915->drm,
 				    ">=5.4/6.48 Gbps link rate without sink TPS3 support\n");
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 19a96d3c4acf..f489bf9ca096 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -426,7 +426,7 @@ static u32 intel_psr1_get_tp_time(struct intel_dp *intel_dp)
 		val |= EDP_PSR_TP2_TP3_TIME_2500us;
 
 check_tp3_sel:
-	if (intel_dp_source_supports_hbr2(intel_dp) &&
+	if (intel_dp_source_supports_tps3(dev_priv) &&
 	    drm_dp_tps3_supported(intel_dp->dpcd))
 		val |= EDP_PSR_TP1_TP3_SEL;
 	else
-- 
2.32.0

