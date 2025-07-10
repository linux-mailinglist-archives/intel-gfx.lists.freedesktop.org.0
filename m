Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCE2B00CE2
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jul 2025 22:17:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C45B10E95C;
	Thu, 10 Jul 2025 20:17:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SIJgalb4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B088E10E95C;
 Thu, 10 Jul 2025 20:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752178659; x=1783714659;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0ZOEF6dcBrGnqP63//pIYmg3UcAw9+RU1ogauwoWb2U=;
 b=SIJgalb4XOqZ1p2yFrL050SpMZIQJckv4E+2ryy1vngicyld3vxPPkrk
 vpHaX3mxgp+Ry7Pc5WWp8xYfDhaeptGiJDTTZCD/D0RLxXWacbOuAJ71O
 +pFbZqzl1Hbqb0u6m2ZMDaEaV919ji3ultQmGVMKy3z8qfemN6HFnphqi
 vdbzp/Y5VvIBizVymFknj3sTe2QT+vIes3qFFQVRpkRxJASEeDy3T4tXI
 JieXS8Esrm9niAvHq7m//trBenmDq+57RH2u1KaemhN4TURC71tDl2Vjn
 l6w9Nt8wEnJCAyR9iLkhu1ZYQ/aWZfw+4BqHnprpUiu/mk6BFVOyG9N5L A==;
X-CSE-ConnectionGUID: KLjE0wJsR8ikdERZvigS9Q==
X-CSE-MsgGUID: Ib/PfRGURye6Fhj+hq3+wg==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="54444586"
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="54444586"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 13:17:39 -0700
X-CSE-ConnectionGUID: 060UAx2ERw6wFkOFVZASZw==
X-CSE-MsgGUID: ZUjk3JjyR4iDgHUdxUtZ5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="161877609"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.160])
 by orviesa005.jf.intel.com with SMTP; 10 Jul 2025 13:17:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Jul 2025 23:17:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Imre Deak <imre.deak@intel.com>
Subject: [PATCH 5/7] drm/i915/dp: Move intel_dp_training_pattern()
Date: Thu, 10 Jul 2025 23:17:16 +0300
Message-ID: <20250710201718.25310-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250710201718.25310-1-ville.syrjala@linux.intel.com>
References: <20250710201718.25310-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Move intel_dp_training_pattern() upwards to avoid the forward
declaration for the POST_LT_ADJ_REQ stuff.

Tested-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 114 +++++++++---------
 1 file changed, 57 insertions(+), 57 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 57b9dc52a98d..cb3870427f3f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -766,6 +766,63 @@ void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
 	}
 }
 
+/*
+ * Pick Training Pattern Sequence (TPS) for channel equalization. 128b/132b TPS2
+ * for UHBR+, TPS4 for HBR3 or for 1.4 devices that support it, TPS3 for HBR2 or
+ * 1.2 devices that support it, TPS2 otherwise.
+ */
+static u32 intel_dp_training_pattern(struct intel_dp *intel_dp,
+				     const struct intel_crtc_state *crtc_state,
+				     enum drm_dp_phy dp_phy)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	bool source_tps3, sink_tps3, source_tps4, sink_tps4;
+
+	/* UHBR+ use separate 128b/132b TPS2 */
+	if (intel_dp_is_uhbr(crtc_state))
+		return DP_TRAINING_PATTERN_2;
+
+	/*
+	 * TPS4 support is mandatory for all downstream devices that
+	 * support HBR3. There are no known eDP panels that support
+	 * TPS4 as of Feb 2018 as per VESA eDP_v1.4b_E1 specification.
+	 * LTTPRs must support TPS4.
+	 */
+	source_tps4 = intel_dp_source_supports_tps4(display);
+	sink_tps4 = dp_phy != DP_PHY_DPRX ||
+		    drm_dp_tps4_supported(intel_dp->dpcd);
+	if (source_tps4 && sink_tps4) {
+		return DP_TRAINING_PATTERN_4;
+	} else if (crtc_state->port_clock == 810000) {
+		if (!source_tps4)
+			lt_dbg(intel_dp, dp_phy,
+			       "8.1 Gbps link rate without source TPS4 support\n");
+		if (!sink_tps4)
+			lt_dbg(intel_dp, dp_phy,
+			       "8.1 Gbps link rate without sink TPS4 support\n");
+	}
+
+	/*
+	 * TPS3 support is mandatory for downstream devices that
+	 * support HBR2. However, not all sinks follow the spec.
+	 */
+	source_tps3 = intel_dp_source_supports_tps3(display);
+	sink_tps3 = dp_phy != DP_PHY_DPRX ||
+		    drm_dp_tps3_supported(intel_dp->dpcd);
+	if (source_tps3 && sink_tps3) {
+		return  DP_TRAINING_PATTERN_3;
+	} else if (crtc_state->port_clock >= 540000) {
+		if (!source_tps3)
+			lt_dbg(intel_dp, dp_phy,
+			       ">=5.4/6.48 Gbps link rate without source TPS3 support\n");
+		if (!sink_tps3)
+			lt_dbg(intel_dp, dp_phy,
+			       ">=5.4/6.48 Gbps link rate without sink TPS3 support\n");
+	}
+
+	return DP_TRAINING_PATTERN_2;
+}
+
 static void intel_dp_update_link_bw_set(struct intel_dp *intel_dp,
 					const struct intel_crtc_state *crtc_state,
 					u8 link_bw, u8 rate_select)
@@ -957,63 +1014,6 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 	return false;
 }
 
-/*
- * Pick Training Pattern Sequence (TPS) for channel equalization. 128b/132b TPS2
- * for UHBR+, TPS4 for HBR3 or for 1.4 devices that support it, TPS3 for HBR2 or
- * 1.2 devices that support it, TPS2 otherwise.
- */
-static u32 intel_dp_training_pattern(struct intel_dp *intel_dp,
-				     const struct intel_crtc_state *crtc_state,
-				     enum drm_dp_phy dp_phy)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-	bool source_tps3, sink_tps3, source_tps4, sink_tps4;
-
-	/* UHBR+ use separate 128b/132b TPS2 */
-	if (intel_dp_is_uhbr(crtc_state))
-		return DP_TRAINING_PATTERN_2;
-
-	/*
-	 * TPS4 support is mandatory for all downstream devices that
-	 * support HBR3. There are no known eDP panels that support
-	 * TPS4 as of Feb 2018 as per VESA eDP_v1.4b_E1 specification.
-	 * LTTPRs must support TPS4.
-	 */
-	source_tps4 = intel_dp_source_supports_tps4(display);
-	sink_tps4 = dp_phy != DP_PHY_DPRX ||
-		    drm_dp_tps4_supported(intel_dp->dpcd);
-	if (source_tps4 && sink_tps4) {
-		return DP_TRAINING_PATTERN_4;
-	} else if (crtc_state->port_clock == 810000) {
-		if (!source_tps4)
-			lt_dbg(intel_dp, dp_phy,
-			       "8.1 Gbps link rate without source TPS4 support\n");
-		if (!sink_tps4)
-			lt_dbg(intel_dp, dp_phy,
-			       "8.1 Gbps link rate without sink TPS4 support\n");
-	}
-
-	/*
-	 * TPS3 support is mandatory for downstream devices that
-	 * support HBR2. However, not all sinks follow the spec.
-	 */
-	source_tps3 = intel_dp_source_supports_tps3(display);
-	sink_tps3 = dp_phy != DP_PHY_DPRX ||
-		    drm_dp_tps3_supported(intel_dp->dpcd);
-	if (source_tps3 && sink_tps3) {
-		return  DP_TRAINING_PATTERN_3;
-	} else if (crtc_state->port_clock >= 540000) {
-		if (!source_tps3)
-			lt_dbg(intel_dp, dp_phy,
-			       ">=5.4/6.48 Gbps link rate without source TPS3 support\n");
-		if (!sink_tps3)
-			lt_dbg(intel_dp, dp_phy,
-			       ">=5.4/6.48 Gbps link rate without sink TPS3 support\n");
-	}
-
-	return DP_TRAINING_PATTERN_2;
-}
-
 /*
  * Perform the link training channel equalization phase on the given DP PHY
  * using one of training pattern 2, 3 or 4 depending on the source and
-- 
2.49.0

