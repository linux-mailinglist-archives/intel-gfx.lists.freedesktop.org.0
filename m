Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A1CA01F3F
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 07:37:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0216B10E1DB;
	Mon,  6 Jan 2025 06:37:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U9TUBKcd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDF8C10E1C8;
 Mon,  6 Jan 2025 06:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736145466; x=1767681466;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=oy6/dH6Vxj24iQDLePI8l+UM94Bglq0CPPSNGmOVSTw=;
 b=U9TUBKcdiKXJNu1Tf1nONWVjFZlYeIzWrGhwGkTUjtRiHTOed83NBvZT
 0YCCLaXIwDhDwNWPXi3kDq/135GjZDLH6AecL18vrlb3fRx6iFP+5Uj9m
 Mgb3H/yeHOXxa68KMnGUmJwAM9hqx56vymgKgkJ4s8b74Kl2M2Y/0OMnh
 SHQ0hDbFp/utl4MUzwBo8FzV8wMWqzOjdKr0A/B3M7rQsJjJ98bAXBbLc
 kUmTeQd9o7voxTRB8mkCTtrNQvzZ33XrEbkmeR084OgAoyJjI6H6YF9Tg
 e8I59NAGRBo5ZZH1ZVGXFrX3j41IXkOd+rJ7YZz+tcPUvfcHw5OdcAfWd A==;
X-CSE-ConnectionGUID: nE8cvxRzQtO7dC0nS8p3/g==
X-CSE-MsgGUID: tf/EYv+NQFiQZSEj0ppDEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11306"; a="36304860"
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="36304860"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2025 22:37:46 -0800
X-CSE-ConnectionGUID: RZN4/4hpTX+LQ0lDhx/JCg==
X-CSE-MsgGUID: XaF4EDWkQeS7o3HPn2qfCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="102184230"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa009.jf.intel.com with ESMTP; 05 Jan 2025 22:37:44 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
Date: Mon, 06 Jan 2025 11:52:46 +0530
Subject: [PATCH v7] drm/i915/dp: Guarantee a minimum HBlank time
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250106-hblank-v7-1-bc68dd614ea1@intel.com>
X-B4-Tracking: v=1; b=H4sIALV2e2cC/22OzQrCMBAGX0VyNiWJbZJ68j3EQ5puTNCmsv3BU
 vrupgWhoHsb2Bm+mXSAATpyPswEYQxdaGMCdTwQ6028Aw11YiKYKBhnJ+qrp4kPamsFStsKuNI
 kPb8QXHhvoestscO2ob1HMF895+lYKSTTGRdlzhnl1OAQM8yaAXs/XULs4ZnZtlmLPnR9i9O2b
 CzW7s+IsUgJIUujVa6tK6pdYR0xyv+aTJoVTuUl19xZudeWZfkAivT2VBUBAAA=
X-Change-ID: 20250103-hblank-cd7e78cbe178
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, jani.nikula@linux.intel.com, 
 Arun R Murthy <arun.r.murthy@intel.com>
X-Mailer: b4 0.15-dev
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

Mandate a minimum Hblank symbol cycle count between BlankingStart and
BlankingEnd in 8b/10b MST and 128b/132b mode.

v2: Affine calculation/updation of min HBlank to dp_mst (Jani)
v3: moved min_hblank from struct intel_dp to intel_crtc_state (Jani)
v4: use max/min functions, change intel_xx *intel_xx to intel_xx *xx
    (Jani)
    Limit hblank to 511 and accommodate BS/BE in calculated value
    (Srikanth)
v5: Some spelling corrections (Suraj)
v6: Removed DP2.1 in comment as this is applicable for both DP2.1 and
    DP1.4 (Suraj)
v7: crtc_state holds the logical values and the register value
    computation is moved to mst_enable() (Jani)

Bspec: 74379
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
Changes in v7:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v6: https://lore.kernel.org/r/20250103-hblank-v6-1-c2f749181fc6@intel.com

Changes in v6:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v5: https://lore.kernel.org/r/20250103-hblank-v5-1-269a8748cf5b@intel.com
---
 .../gpu/drm/i915/display/intel_crtc_state_dump.c   |  1 +
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c        | 52 +++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h                    |  4 ++
 4 files changed, 57 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 1faef60be4728cd80a0a6b0151797ceda5c443ce..0e7e0b7803d9865177d6f68e8afdef94a91d9697 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -248,6 +248,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 			   str_enabled_disabled(pipe_config->has_sel_update),
 			   str_enabled_disabled(pipe_config->has_panel_replay),
 			   str_enabled_disabled(pipe_config->enable_psr2_sel_fetch));
+		drm_printf(&p, "minimum HBlank: %d\n", pipe_config->min_hblank);
 	}
 
 	drm_printf(&p, "framestart delay: %d, MSA timing delay: %d\n",
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index eb9dd1125a4a09511936b81219e7f38fae106dfd..96467be97ae64aa40e985d0272016860b666c119 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1095,6 +1095,7 @@ struct intel_crtc_state {
 
 	int max_link_bpp_x16;	/* in 1/16 bpp units */
 	int pipe_bpp;		/* in 1 bpp units */
+	int min_hblank;
 	struct intel_link_m_n dp_m_n;
 
 	/* m2_n2 for eDP downclock */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index fffd199999e02eb66ea478ff872f72b277bd3970..afd5ac1939a38f1d81be372c0fc370d996286159 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -211,6 +211,28 @@ static int intel_dp_mst_dsc_get_slice_count(const struct intel_connector *connec
 					    num_joined_pipes);
 }
 
+static void intel_dp_mst_compute_min_hblank(struct intel_crtc_state *crtc_state,
+					    struct intel_connector *connector,
+					    int bpp_x16)
+{
+	struct intel_encoder *encoder = connector->encoder;
+	struct intel_display *display = to_intel_display(encoder);
+	const struct drm_display_mode *adjusted_mode =
+					&crtc_state->hw.adjusted_mode;
+	int symbol_size = intel_dp_is_uhbr(crtc_state) ? 32 : 8;
+	int hblank;
+
+	if (DISPLAY_VER(display) < 20)
+		return;
+
+	/* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b MST & 128b/132b */
+	hblank = DIV_ROUND_UP((DIV_ROUND_UP
+			       (adjusted_mode->htotal - adjusted_mode->hdisplay, 4) * bpp_x16),
+			      symbol_size);
+
+	crtc_state->min_hblank = hblank;
+}
+
 static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
 					      struct intel_crtc_state *crtc_state,
 					      int max_bpp, int min_bpp,
@@ -284,6 +306,8 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
 		remote_bw_overhead = intel_dp_mst_bw_overhead(crtc_state, connector,
 							      true, dsc_slice_count, link_bpp_x16);
 
+		intel_dp_mst_compute_min_hblank(crtc_state, connector, link_bpp_x16);
+
 		intel_dp_mst_compute_m_n(crtc_state, connector,
 					 local_bw_overhead,
 					 link_bpp_x16,
@@ -1252,7 +1276,7 @@ static void mst_stream_enable(struct intel_atomic_state *state,
 	enum transcoder trans = pipe_config->cpu_transcoder;
 	bool first_mst_stream = intel_dp->active_mst_links == 1;
 	struct intel_crtc *pipe_crtc;
-	int ret, i;
+	int ret, i, min_hblank;
 
 	drm_WARN_ON(display->drm, pipe_config->has_pch_encoder);
 
@@ -1267,6 +1291,32 @@ static void mst_stream_enable(struct intel_atomic_state *state,
 			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz & 0xffffff));
 	}
 
+	if (DISPLAY_VER(display) >= 20) {
+		/*
+		 * bit 8:0 minimum hblank symbol cylce count, i.e maximum value
+		 * would be 511
+		 */
+		min_hblank = min(511, pipe_config->min_hblank);
+
+		/*
+		 * adjust the BlankingStart/BlankingEnd framing control from
+		 * the calculated value
+		 */
+		min_hblank = min_hblank - 2;
+
+		/*
+		 * Minimum hblank accepted for 128b/132b would be 5 and for
+		 * 8b/10b would be 3 symbol count
+		 */
+		if (intel_dp_is_uhbr(pipe_config))
+			min_hblank = max(min_hblank, 5);
+		else
+			min_hblank = max(min_hblank, 3);
+
+		intel_de_write(display, DP_MIN_HBLANK_CTL(trans),
+			       min_hblank);
+	}
+
 	enable_bs_jitter_was(pipe_config);
 
 	intel_ddi_enable_transcoder_func(encoder, pipe_config);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 765e6c0528fb0b5a894395b77a5edbf0b0c80009..7bd783931199e2e5c7e15358bb4d2c904f28176a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3197,6 +3197,10 @@
 #define _TRANS_DP2_VFREQLOW_D			0x630a8
 #define TRANS_DP2_VFREQLOW(trans)		_MMIO_TRANS(trans, _TRANS_DP2_VFREQLOW_A, _TRANS_DP2_VFREQLOW_B)
 
+#define _DP_MIN_HBLANK_CTL_A			0x600ac
+#define _DP_MIN_HBLANK_CTL_B			0x610ac
+#define DP_MIN_HBLANK_CTL(trans)		_MMIO_TRANS(trans, _DP_MIN_HBLANK_CTL_A, _DP_MIN_HBLANK_CTL_B)
+
 /* SNB eDP training params */
 /* SNB A-stepping */
 #define  EDP_LINK_TRAIN_400MV_0DB_SNB_A		(0x38 << 22)

---
base-commit: 048d83e7f9dae81c058d31c371634c1c317b3013
change-id: 20250103-hblank-cd7e78cbe178

Best regards,
-- 
Arun R Murthy <arun.r.murthy@intel.com>

