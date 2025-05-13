Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07AF2AB4E48
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 10:38:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2ECB10E553;
	Tue, 13 May 2025 08:38:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M7hLq3Ng";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 510FA10E54E;
 Tue, 13 May 2025 08:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747125481; x=1778661481;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1n9+d1R8GlvbPejZ7xItEU6oHMxU+2gL5rgmzglq4b0=;
 b=M7hLq3NglLmAoXhhd80r5waszEdREe/1jXwi7QLAK9NcHdk1nvRvtfRa
 UkmaJgcPVQ0eZQH1b2AQJaPt8lXj0/yYQL47PFr0uCn2+xQj/abTeOjI0
 qSB7Y+n43zZrsANkrcmMFiS0A2bS+HP6COXWDT+LINigQ/EvPbUNYWf0I
 jQu2KnWupZPX9pS4VZCncmoxEfb+wK5jzubQY/SP36qbkjp9TQDSJGe7S
 A2cc5P6Fl7YnN6qNstI1iuJzZM/PGl+XSKxc+ogDHn5VQ28RgDNr23qA8
 DVQXMPjRXzyKmJ8W7gumV8uXI7kh3QLP5dwMts6K+FePSIoecK5QMSIX1 Q==;
X-CSE-ConnectionGUID: 8culIJPQTt+yxc8AIlpvmw==
X-CSE-MsgGUID: aJ2nm+oER8K94arSakQnIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="36581997"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="36581997"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 01:38:01 -0700
X-CSE-ConnectionGUID: BZp+k+kZRfO8kPN4hjwQGQ==
X-CSE-MsgGUID: MI6OxSwyQg6wtyu4FnWr2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="168738849"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 01:38:00 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [PATCH 2/2] drm/i915/display: Fix intel_snps_hdmi_pll.c overflow
 issues
Date: Tue, 13 May 2025 14:08:03 +0530
Message-ID: <20250513083803.2596286-3-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250513083803.2596286-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20250513083803.2596286-1-dibin.moolakadan.subrahmanian@intel.com>
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

intel_snps_hdmi_pll.c calls do_div  function from DIV_ROUND_UP_ULL
and DIV_ROUND_DOWN_ULL macros. do_div  expects the arg2 type to be u32.
On higher data rate arg2 exceeds u32 and ends up in wrong pll
configuration.

So change do_div calls to div64_base64 calls where ever arg2 exceeds u32.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
index 41c6c111af1d..74bb3bedf30f 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
@@ -41,9 +41,9 @@ static s64 interp(s64 x, s64 x1, s64 x2, s64 y1, s64 y2)
 {
 	s64 dydx;
 
-	dydx = DIV_ROUND_UP_ULL((y2 - y1) * 100000, (x2 - x1));
+	dydx = DIV64_U64_ROUND_UP((y2 - y1) * 100000, (x2 - x1));
 
-	return (y1 + DIV_ROUND_UP_ULL(dydx * (x - x1), 100000));
+	return (y1 + DIV64_U64_ROUND_UP(dydx * (x - x1), 100000));
 }
 
 static void get_ana_cp_int_prop(u64 vco_clk,
@@ -115,16 +115,16 @@ static void get_ana_cp_int_prop(u64 vco_clk,
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

