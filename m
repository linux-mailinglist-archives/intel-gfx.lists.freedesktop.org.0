Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F26CC870D
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 16:29:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA59910ED06;
	Wed, 17 Dec 2025 15:29:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XHNsY05k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97E3010EC72;
 Wed, 17 Dec 2025 15:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765985338; x=1797521338;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JvQMh0KZi2mfo8JqbBMLWJcDxwbZVP8JH7h3uAfmqTs=;
 b=XHNsY05koXyYFCtsqtMxEZj9u9u6HZ0elQOvW/0gkVprjdwfaCEJ0nob
 bQwU4AbIoKb3giEFr1O9YYLEgpIOkkTY6NsE6B1/4no/nkWKpiwl9fMqx
 /b8o+tTXSs7M/rNoS/g601n979ymKphXsf1XxnJa7MTC4bUJnxjZvL6FE
 0bRQBRDt5mYougwkQReZwTI++IDAp1WrdYet6Oki8Jj2uMX0unkwlpTdg
 AcfeJn+YsPcXxSKFjopgsHB4/VRb5SYjSfcNOtAndaWlZaYBfrkT079TH
 5OnxnuOb5ix1ToCvnawu9miv4zofdSdN/n/oEf+lPSe3G+yYTEFuhvYpF Q==;
X-CSE-ConnectionGUID: 5t/tCGwoS6+KmDmuYTufWw==
X-CSE-MsgGUID: qvk/lkWGTUSu/ZpocNtDtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="71781473"
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="71781473"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 07:28:58 -0800
X-CSE-ConnectionGUID: PRnjYJk4StOx5MjXonsKtw==
X-CSE-MsgGUID: lHcERoyZShG/qTnakLzaFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="198097333"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa009.jf.intel.com with ESMTP; 17 Dec 2025 07:28:56 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 14/15] drm/i915/lt_phy: Drop 27.2 MHz rate
Date: Wed, 17 Dec 2025 17:19:54 +0200
Message-Id: <20251217151955.1690202-15-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251217151955.1690202-1-mika.kahola@intel.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
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
index 13acfc7c0469..bc73b1466bc4 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -801,60 +801,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_252 = {
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
@@ -1019,7 +965,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_5p94 = {
 
 static const struct intel_lt_phy_pll_params xe3plpd_lt_hdmi_tables[] = {
 	LT_PHY_PLL_HDMI_PARAMS(25200, xe3plpd_lt_hdmi_252),
-	LT_PHY_PLL_HDMI_PARAMS(27200, xe3plpd_lt_hdmi_272),
 	LT_PHY_PLL_HDMI_PARAMS(74250, xe3plpd_lt_hdmi_742p5),
 	LT_PHY_PLL_HDMI_PARAMS(148500, xe3plpd_lt_hdmi_1p485),
 	LT_PHY_PLL_HDMI_PARAMS(594000, xe3plpd_lt_hdmi_5p94),
-- 
2.34.1

