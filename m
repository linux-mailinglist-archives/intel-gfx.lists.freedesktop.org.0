Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44296AC624B
	for <lists+intel-gfx@lfdr.de>; Wed, 28 May 2025 08:46:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5BB289130;
	Wed, 28 May 2025 06:46:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RIjSkUr8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 970B310E1BB;
 Wed, 28 May 2025 06:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748414783; x=1779950783;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HxGW1Hc90m8Vw6yc/2Wred5RXvir8nVjO5v/GR1JKhs=;
 b=RIjSkUr8xD8cv159HdVNJ+3FpZy3b89bH+RiFrDfGXGRwENAcjDlAo5k
 ood7GqwARBhq+hVWTQabLIRlJpc/bhuCNy27CHozUVZ/dPCItHOldZ9rw
 aEv6wSAjUbH4xYkcM/A8/55H8LB9b2VoY+54D0iVnZS0JYxYRv3k+OZDv
 4fS4WJca81aLIOBUZ+KElYnP3uzjqh1MGliFfd0uo0C2BGOGARaFJe4mB
 86hb5FBPqwzvr9RODDLXAnYWX7ao9A2bIovK+Wz3JGwtEQKYe+o7bSlMX
 AENmrwSUUKTsd29muZKa7vPzO0ctfnkL4azgL1me70dd+8rXQXMs275yz g==;
X-CSE-ConnectionGUID: wDmxT4aaSwORfbZ8sBY4Fg==
X-CSE-MsgGUID: 2pwAx5ooTG2Ak0Cb9n1HVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11446"; a="61480928"
X-IronPort-AV: E=Sophos;i="6.15,320,1739865600"; d="scan'208";a="61480928"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 23:46:22 -0700
X-CSE-ConnectionGUID: gEAuVNMzSLOxqmDkjIaxUw==
X-CSE-MsgGUID: epfsI4t2RfSLlfulCfreEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,320,1739865600"; d="scan'208";a="143177531"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 23:46:21 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [PATCH] drm/i915/display: Fix u32 overflow in SNPS PHY HDMI PLL setup
Date: Wed, 28 May 2025 12:15:56 +0530
Message-ID: <20250528064557.4172149-1-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
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

When configuring the HDMI PLL, calculations use DIV_ROUND_UP_ULL and
DIV_ROUND_DOWN_ULL macros, which internally rely on do_div. However, do_div
expects a 32-bit (u32) divisor, and at higher data rates, the divisor can
exceed this limit. This leads to incorrect division results and
ultimately misconfigured PLL values.
This fix replaces do_div calls with  div64_base64 calls where diviser
can exceed u32 limit.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Fixes: 5947642004bf ("drm/i915/display: Add support for SNPS PHY HDMI PLL algorithm for DG2")
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_snps_hdmi_pll.c   | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
index c6321dafef4f..74bb3bedf30f 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
@@ -41,12 +41,12 @@ static s64 interp(s64 x, s64 x1, s64 x2, s64 y1, s64 y2)
 {
 	s64 dydx;
 
-	dydx = DIV_ROUND_UP_ULL((y2 - y1) * 100000, (x2 - x1));
+	dydx = DIV64_U64_ROUND_UP((y2 - y1) * 100000, (x2 - x1));
 
-	return (y1 + DIV_ROUND_UP_ULL(dydx * (x - x1), 100000));
+	return (y1 + DIV64_U64_ROUND_UP(dydx * (x - x1), 100000));
 }
 
-static void get_ana_cp_int_prop(u32 vco_clk,
+static void get_ana_cp_int_prop(u64 vco_clk,
 				u32 refclk_postscalar,
 				int mpll_ana_v2i,
 				int c, int a,
@@ -115,16 +115,16 @@ static void get_ana_cp_int_prop(u32 vco_clk,
 								      CURVE0_MULTIPLIER));
 
 	scaled_interpolated_sqrt =
-			int_sqrt(DIV_ROUND_UP_ULL(interpolated_product, vco_div_refclk_float) *
+			int_sqrt(DIV64_U64_ROUND_UP(interpolated_product, vco_div_refclk_float) *
 			DIV_ROUND_DOWN_ULL(1000000000000ULL, 55));
 
 	/* Scale vco_div_refclk for ana_cp_int */
 	scaled_vco_div_refclk2 = DIV_ROUND_UP_ULL(vco_div_refclk_float, 1000000);
-	adjusted_vco_clk2 = 1460281 * DIV_ROUND_UP_ULL(scaled_interpolated_sqrt *
+	adjusted_vco_clk2 = 1460281 * DIV64_U64_ROUND_UP(scaled_interpolated_sqrt *
 						       scaled_vco_div_refclk2,
 						       curve_1_interpolated);
 
-	*ana_cp_prop = DIV_ROUND_UP_ULL(adjusted_vco_clk2, curve_2_scaled2);
+	*ana_cp_prop = DIV64_U64_ROUND_UP(adjusted_vco_clk2, curve_2_scaled2);
 	*ana_cp_prop = max(1, min(*ana_cp_prop, 127));
 }
 
@@ -165,10 +165,10 @@ static void compute_hdmi_tmds_pll(u64 pixel_clock, u32 refclk,
 	/* Select appropriate v2i point */
 	if (datarate <= INTEL_SNPS_PHY_HDMI_9999MHZ) {
 		mpll_ana_v2i = 2;
-		tx_clk_div = ilog2(DIV_ROUND_DOWN_ULL(INTEL_SNPS_PHY_HDMI_9999MHZ, datarate));
+		tx_clk_div = ilog2(div64_u64(INTEL_SNPS_PHY_HDMI_9999MHZ, datarate));
 	} else {
 		mpll_ana_v2i = 3;
-		tx_clk_div = ilog2(DIV_ROUND_DOWN_ULL(INTEL_SNPS_PHY_HDMI_16GHZ, datarate));
+		tx_clk_div = ilog2(div64_u64(INTEL_SNPS_PHY_HDMI_16GHZ, datarate));
 	}
 	vco_clk = (datarate << tx_clk_div) >> 1;
 
-- 
2.43.0

