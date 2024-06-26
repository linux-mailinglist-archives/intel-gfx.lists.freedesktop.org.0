Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F03A9177C7
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 07:00:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7623D10E76D;
	Wed, 26 Jun 2024 05:00:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fDRVfiL8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC9F910E770;
 Wed, 26 Jun 2024 05:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719378022; x=1750914022;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bVFQcUPoBjkRqOpYF+q8nxZwhC1E4dll3yXW73Pliko=;
 b=fDRVfiL8FW7e5sBM25+qboNDbsFC1EAiMJznEjz9FzTTncgIJKaCnIKD
 wL88qAsxUSzoHLePxeohc8EZLjyV01hBK1M39mFXgXgY5yTMlRv9xW1P2
 ldGSrbD6ypn8qt/jtU7F1FDoW68TYFMpMxsA2lLYP8zkoDqA1JVjCnU4R
 yiwaVLObRV94EEs7XOtc9ywfjD5tzENdcIsB5axvHOlm7L5RMUbOpCURb
 nnKhzKnIRerRvr5T9ZCYyQ+EPCUfNdSWMPNj6GcRIxXUS27HG/9RtqJ5+
 GhGkbWcXGqsWioNEYxRgND7bcR9XwHyjNKTdIU3stRiIQQ2U3YYJyOz14 w==;
X-CSE-ConnectionGUID: +/LZbrInR/C6wf54hu5D/Q==
X-CSE-MsgGUID: YvI3hdcJTu6mIwjrSuvbwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="33962372"
X-IronPort-AV: E=Sophos;i="6.08,265,1712646000"; d="scan'208";a="33962372"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2024 22:00:21 -0700
X-CSE-ConnectionGUID: Lbt4jnzuSpu2tpOpGT1cfg==
X-CSE-MsgGUID: XVX4t4X+RBOQ58STbGEfSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,265,1712646000"; d="scan'208";a="44588254"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2024 22:00:19 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mika.kahola@intel.com, matthew.d.roper@intel.com
Subject: [PATCH 3/5] drm/i915/cx0_phy_regs: Add C10 registers bits
Date: Wed, 26 Jun 2024 10:30:54 +0530
Message-Id: <20240626050056.3996349-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240626050056.3996349-1-ankit.k.nautiyal@intel.com>
References: <20240626050056.3996349-1-ankit.k.nautiyal@intel.com>
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

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index ab3ae110b68f..56443bf3e7cf 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -202,10 +202,34 @@
 
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
2.40.1

