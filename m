Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CDAA16616
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 05:32:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0165010E2A0;
	Mon, 20 Jan 2025 04:32:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PvQ7pdji";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A4C410E2A2;
 Mon, 20 Jan 2025 04:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737347564; x=1768883564;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0SAmeA410O2KKteijFY9i5NU1U6B9cGLyd3OOq+veM8=;
 b=PvQ7pdjiMLpKSXp+BFp9j/YTJrJCNVTm2YyEcQCla7BbIRiE/txu5+TX
 q4uRIuOohFGSSuE2YsItGBl8ephXrV37s05j1M2hw+kKKZ7aSqjoAXSSR
 SHdiF4D53ur6dwFp/cnnnfe7lMz+an1nS/p2vmLyXPuSiYFwlr9GQHuoD
 0mTgnE34YwXJjAfU/fEdNDxtXlYaaTIvQP5s40kBNVvh7RTb8cETBWsLC
 Al/gDbbMBVYiBrpf8CRDUE+jAPyH53zkCQDbHrln2/HtJBhgtXBx4OgJ/
 okConGHfUsP/7J/ekIldfGxIRoCKfGGZulGb2ND6eyZrVif8BdPndDTkq Q==;
X-CSE-ConnectionGUID: PeP4Cg2MT52FUTbrRA4V/g==
X-CSE-MsgGUID: vUrdIvIGSXyfAT7T8GlMWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11320"; a="48700038"
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="48700038"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2025 20:32:44 -0800
X-CSE-ConnectionGUID: 3K+6oXWORluZQAqF7JKKCQ==
X-CSE-MsgGUID: s2OrlZX+SM60hi8BKRVPgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="106315688"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2025 20:32:42 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	suraj.kandpal@intel.com
Subject: [PATCH 3/5] drm/i915/cx0_phy_regs: Add C10 registers bits
Date: Mon, 20 Jan 2025 09:51:19 +0530
Message-ID: <20250120042122.1029481-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250120042122.1029481-1-ankit.k.nautiyal@intel.com>
References: <20250120042122.1029481-1-ankit.k.nautiyal@intel.com>
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

Bspec: 74166
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 91eb1d423c71..da27cff878a1 100644
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
+#define   C10_PLL8_SSC_UP_SPREAD	REG_BIT(5)
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
+#define   C10_PLL16_ANA_CPINTGS_L	REG_BIT(7)
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

