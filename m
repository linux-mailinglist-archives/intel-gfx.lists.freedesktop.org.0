Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6600CC1A2C
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 09:46:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CBC010E696;
	Tue, 16 Dec 2025 08:46:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lCnEvep+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39A6410E696;
 Tue, 16 Dec 2025 08:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765874817; x=1797410817;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OU8QWjxMM27Ew8hddec+gGYKWp456xM52qRE4heWbME=;
 b=lCnEvep+oWWZuXIsgMeTkqy4E+iw607LAuks3AfVmhud4CCV3iBqIFzg
 lPdcePxjePBr/tPoA6/j+7ifFM5hvDQeYvLS9bGurqOYi42YX67gMEBP7
 BJucLEXl/wAPDDZR3rQ12kw2BWUQfvxFp9PA0XKKvG4AGcWjPDND79SZr
 bocWVB/8g3Z/SYlVCB/zvtUfYggpt932geS7EaRHTVdb+urX3m3aLiTfE
 O/uekHpHj6kvJ5PKdScd87Tn+WyEAyD9oju594SQ0UFb7GP9ld2EBDCl3
 slO9eGiGIGfkt9cyLGF9HB/oX17F4UZoOxopI9QAd0uK3Bi+hHmRAjh0t g==;
X-CSE-ConnectionGUID: JMUyg51pQa+tmnIf1C2b+Q==
X-CSE-MsgGUID: y1+/db/QQd+9Pll5MjRoug==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="71642344"
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="71642344"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 00:46:57 -0800
X-CSE-ConnectionGUID: PHotm+AsT8Gtuwb6lxgg3A==
X-CSE-MsgGUID: sWxiQvf8SeKSFhSLAHY0Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="198448915"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa009.fm.intel.com with ESMTP; 16 Dec 2025 00:46:56 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 12/13] drm/i915/lt_phy: Drop 27.2 MHz rate
Date: Tue, 16 Dec 2025 10:37:58 +0200
Message-Id: <20251216083759.383163-13-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251216083759.383163-1-mika.kahola@intel.com>
References: <20251216083759.383163-1-mika.kahola@intel.com>
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

Drop 27.2 MHz pll table as with these pll dividers
the port clock will be incorrectly calculated to 27.0 MHz.
For 27.2 MHz rate the PLl dividers are calculated
algorithmically making pll table for this rate redundant.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 55 ---------------------
 1 file changed, 55 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index d0fd36e3f80e..cf2c29c77de5 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -799,60 +799,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_252 = {
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
@@ -1017,7 +963,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_5p94 = {
 
 static const struct intel_lt_phy_pll_params xe3plpd_lt_hdmi_tables[] = {
 	LT_PHY_PLL_HDMI_PARAMS(25200, xe3plpd_lt_hdmi_252),
-	LT_PHY_PLL_HDMI_PARAMS(27200, xe3plpd_lt_hdmi_272),
 	LT_PHY_PLL_HDMI_PARAMS(74250, xe3plpd_lt_hdmi_742p5),
 	LT_PHY_PLL_HDMI_PARAMS(148500, xe3plpd_lt_hdmi_1p485),
 	LT_PHY_PLL_HDMI_PARAMS(594000, xe3plpd_lt_hdmi_5p94),
-- 
2.34.1

