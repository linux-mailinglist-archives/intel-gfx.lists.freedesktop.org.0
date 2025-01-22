Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E70A196AC
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 17:40:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49ACA10E72B;
	Wed, 22 Jan 2025 16:40:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NkzLikvL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2618510E155;
 Wed, 22 Jan 2025 16:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737564007; x=1769100007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M9nErGbSS7IHqSWHGIC5Ossun+chQYwp7PnPBWVXtVc=;
 b=NkzLikvLa61YI3ua4xfH+OSio8oMgLD1CYYbNLm/A9UH3LdjAJI2Zceu
 U1xnDpaIGaXSg7L9hGIG8lqh8LnVYrH92jHpfMDbTWsBhWReTXfL1elG4
 sidO+iVM2IfKlFLHTGNOxUDe73MGcXXXiSoCMDKlNmmEEKbwQDsKFkrH1
 nnG+iL+/32WDB1dX8lg31Z554vf+eRcFY1P6qXavgZyrrnheFxe0k/q2a
 ZpxYORvMsyvjmKGOTfp5v6ptCsxyCFjHUrys0CyxZfelr8OY6NFoqanV0
 EAh87j6ncXb0H/dp8CA2+zl+7FbjZE54DedWPb8nb9v279nLyeDZW8KGD A==;
X-CSE-ConnectionGUID: BmSE6UWCQWmCR4FD1MrzAw==
X-CSE-MsgGUID: LO28JZn7Rw6e+1D8c/UJfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11323"; a="41700967"
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="41700967"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 08:40:07 -0800
X-CSE-ConnectionGUID: nh4Zr0mYRKuCogPM+dqhqA==
X-CSE-MsgGUID: bBpoItfoSsympjaJZJH3BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108066931"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 08:40:05 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	suraj.kandpal@intel.com
Subject: [PATCH 3/5] drm/i915/cx0_phy_regs: Add C10 registers bits
Date: Wed, 22 Jan 2025 21:58:50 +0530
Message-ID: <20250122162850.1861410-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250120042122.1029481-4-ankit.k.nautiyal@intel.com>
References: <20250120042122.1029481-4-ankit.k.nautiyal@intel.com>
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

Add C10 register bits to be used for computing HDMI PLLs with
algorithm.

v2: Add bspec reference. (Suraj)
v3: Use REG_BIT8 like other reg bits/masks. (Jani)

Bspec: 74166
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 91eb1d423c71..4a3cf08007e3 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -218,10 +218,34 @@
 
 /* C10 Vendor Registers */
 #define PHY_C10_VDR_PLL(idx)		(0xC00 + (idx))
+#define   C10_PLL0_SSC_EN		REG_BIT8(0)
+#define   C10_PLL0_DIVCLK_EN		REG_BIT8(1)
+#define   C10_PLL0_DIV5CLK_EN		REG_BIT8(2)
+#define   C10_PLL0_WORDDIV2_EN		REG_BIT8(3)
 #define   C10_PLL0_FRACEN		REG_BIT8(4)
+#define   C10_PLL0_PMIX_EN		REG_BIT8(5)
+#define   C10_PLL0_ANA_FREQ_VCO_MASK	REG_GENMASK8(7, 6)
+#define   C10_PLL1_DIV_MULTIPLIER_MASK	REG_GENMASK8(7, 0)
+#define   C10_PLL2_MULTIPLIERL_MASK	REG_GENMASK8(7, 0)
 #define   C10_PLL3_MULTIPLIERH_MASK	REG_GENMASK8(3, 0)
+#define   C10_PLL8_SSC_UP_SPREAD	REG_BIT8(5)
+#define   C10_PLL9_FRACN_DENL_MASK	REG_GENMASK8(7, 0)
+#define   C10_PLL10_FRACN_DENH_MASK	REG_GENMASK8(7, 0)
+#define   C10_PLL11_FRACN_QUOT_L_MASK	REG_GENMASK8(7, 0)
+#define   C10_PLL12_FRACN_QUOT_H_MASK	REG_GENMASK8(7, 0)
+#define   C10_PLL13_FRACN_REM_L_MASK	REG_GENMASK8(7, 0)
+#define   C10_PLL14_FRACN_REM_H_MASK	REG_GENMASK8(7, 0)
 #define   C10_PLL15_TXCLKDIV_MASK	REG_GENMASK8(2, 0)
 #define   C10_PLL15_HDMIDIV_MASK	REG_GENMASK8(5, 3)
+#define   C10_PLL15_PIXELCLKDIV_MASK	REG_GENMASK8(7, 6)
+#define   C10_PLL16_ANA_CPINT		REG_GENMASK8(6, 0)
+#define   C10_PLL16_ANA_CPINTGS_L	REG_BIT8(7)
+#define   C10_PLL17_ANA_CPINTGS_H_MASK	REG_GENMASK8(5, 0)
+#define   C10_PLL17_ANA_CPPROP_L_MASK	REG_GENMASK8(7, 6)
+#define   C10_PLL18_ANA_CPPROP_H_MASK	REG_GENMASK8(4, 0)
+#define   C10_PLL18_ANA_CPPROPGS_L_MASK	REG_GENMASK8(7, 5)
+#define   C10_PLL19_ANA_CPPROPGS_H_MASK	REG_GENMASK8(3, 0)
+#define   C10_PLL19_ANA_V2I_MASK	REG_GENMASK8(5, 4)
 
 #define PHY_C10_VDR_CMN(idx)		(0xC20 + (idx))
 #define   C10_CMN0_REF_RANGE		REG_FIELD_PREP(REG_GENMASK(4, 0), 1)
-- 
2.45.2

