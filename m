Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8292AD22F21
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jan 2026 08:51:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 042D410E6EC;
	Thu, 15 Jan 2026 07:51:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IQj1kUJ2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B11F910E6F5;
 Thu, 15 Jan 2026 07:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768463486; x=1799999486;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IOR+bMveYHJUtRa9Y2ORg4AeH2wpxGrrqWeqQTFY35c=;
 b=IQj1kUJ24qC1EM1kSazLJJuIQLPg4tZ6u9orMioQS2OpLLnLedFoqZRP
 9g6UWl7umyOFjv/cGYeUd2O4w+BCwCPztPcNhqMU5r9lrK4fg8YcoCSns
 sb0xYPjMBo8Dmrv4XtvCRN4pGWmK75KKlYclKPy7rPpM9VaDWBQrHslgp
 wCspOdPf5qpGquweOAV58sV6YjNt/tq5fJxA2JaFOyyLimN3eXSCw+E+B
 OHXQ3R6t2n3TINbgZAov/3LvVTVy9fAQVrOQcpKaKVvohuAEywWu0RcSC
 WdM/dz3uoWnh+wHmiauAYAY6vlBIMhq8ZkOa5eQ2o9mEMOMY4mi58uFWS w==;
X-CSE-ConnectionGUID: Igi7Rm/fRn6OtEmfRW0OfQ==
X-CSE-MsgGUID: t20D8D0wTSG0AMgsV2IBAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="92436231"
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="92436231"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 23:51:26 -0800
X-CSE-ConnectionGUID: +ngH28fJSzONyEVU4a0SdQ==
X-CSE-MsgGUID: pq/GzGuoSUipTkBIQWvr4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="204101786"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa010.jf.intel.com with ESMTP; 14 Jan 2026 23:51:25 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 14/15] drm/i915/lt_phy: Drop 27.2 MHz rate
Date: Thu, 15 Jan 2026 07:51:00 +0000
Message-ID: <20260115075101.2214842-15-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260115075101.2214842-1-mika.kahola@intel.com>
References: <20260115075101.2214842-1-mika.kahola@intel.com>
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

Drop 27.2 MHz PLL table as with these PLL dividers
the port clock will be incorrectly calculated to 27.0 MHz.
For 27.2 MHz rate the PLl dividers are calculated
algorithmically making PLL table for this rate redundant.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 55 ---------------------
 1 file changed, 55 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index dbe2b2dc9887..a3326057449a 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -803,60 +803,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_252 = {
 	},
 };
 
-static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_272 = {
-	.clock = 27200,
-	.config = {
-		0x84,
-		0x2d,
-		0x0,
-	},
-	.addr_msb = {
-		0x87,
-		0x87,
-		0x87,
-		0x87,
-		0x88,
-		0x88,
-		0x88,
-		0x88,
-		0x88,
-		0x88,
-		0x88,
-		0x88,
-		0x88,
-	},
-	.addr_lsb = {
-		0x10,
-		0x0c,
-		0x14,
-		0xe4,
-		0x0c,
-		0x10,
-		0x14,
-		0x18,
-		0x48,
-		0x40,
-		0x4c,
-		0x24,
-		0x44,
-	},
-	.data = {
-		{ 0x0,  0x4c, 0x2,  0x0  },
-		{ 0x0b, 0x15, 0x26, 0xa0 },
-		{ 0x60, 0x0,  0x0,  0x0  },
-		{ 0x8,  0x4,  0x96, 0x28 },
-		{ 0xfa, 0x0c, 0x84, 0x11 },
-		{ 0x80, 0x0f, 0xd9, 0x53 },
-		{ 0x86, 0x0,  0x0,  0x0  },
-		{ 0x1,  0xa0, 0x1,  0x0  },
-		{ 0x4b, 0x0,  0x0,  0x0  },
-		{ 0x28, 0x0,  0x0,  0x0  },
-		{ 0x0,  0x14, 0x2a, 0x14 },
-		{ 0x0,  0x0,  0x0,  0x0  },
-		{ 0x0,  0x0,  0x0,  0x0  },
-	},
-};
-
 static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_742p5 = {
 	.clock = 74250,
 	.config = {
@@ -1021,7 +967,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_5p94 = {
 
 static const struct intel_lt_phy_pll_params xe3plpd_lt_hdmi_tables[] = {
 	LT_PHY_PLL_HDMI_PARAMS(25200, xe3plpd_lt_hdmi_252),
-	LT_PHY_PLL_HDMI_PARAMS(27200, xe3plpd_lt_hdmi_272),
 	LT_PHY_PLL_HDMI_PARAMS(74250, xe3plpd_lt_hdmi_742p5),
 	LT_PHY_PLL_HDMI_PARAMS(148500, xe3plpd_lt_hdmi_1p485),
 	LT_PHY_PLL_HDMI_PARAMS(594000, xe3plpd_lt_hdmi_5p94),
-- 
2.43.0

