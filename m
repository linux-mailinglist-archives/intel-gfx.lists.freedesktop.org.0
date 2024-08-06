Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8377948FC3
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 14:57:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74B4310E362;
	Tue,  6 Aug 2024 12:57:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T9wy2whx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A0E610E361;
 Tue,  6 Aug 2024 12:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722949038; x=1754485038;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7k8Fw8W1hX2E5MMGTnXeg9nMlZ4tAbtiULQuJgIQexk=;
 b=T9wy2whxTOqmAxNY0BWvNlkrtzQsb9c4+Uibbmw3Wtl9MtgMnD3s2Er3
 uNrWxHr/a0ETU46KPrs7F+PGb4mNW2GzJSt7O1boV3DLrzM+igNUO68+T
 hnxSZMulzFEaWHQ/UcaJEHC+8/qrCgnVh8XZupAVH5RAcm8s/+NCEW+q9
 r68hua7tbDVha/OgLrYpgI1jDcb9HGC1o/ZwxabLcm/r8Ve9lQRjNCwbD
 gdVlhXGXYNClKsh3COknDBZoZyQAkyrySH0Z1/LmdaTiT9AcPmwKwHFAl
 Kuz+SYFShrM8zEcHrYz0XcjRfofn66vIxtx7MG0G3k7+8NofK+B7mj0VC Q==;
X-CSE-ConnectionGUID: 5AcPns6+TxuygCxY0NbvOg==
X-CSE-MsgGUID: C0gJT+8qRBSEsvtDY9gtkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="21142076"
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="21142076"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 05:57:18 -0700
X-CSE-ConnectionGUID: 1CLyYkEYQTa9LZSt7oXVFg==
X-CSE-MsgGUID: hSDXxcb+Syy0oh8NDMNCaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="79762925"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 05:57:16 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com
Subject: [PATCH 3/5] drm/i915/cx0_phy_regs: Add C10 registers bits
Date: Tue,  6 Aug 2024 18:28:24 +0530
Message-ID: <20240806125827.2183899-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240806125827.2183899-1-ankit.k.nautiyal@intel.com>
References: <20240806125827.2183899-1-ankit.k.nautiyal@intel.com>
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
2.45.2

