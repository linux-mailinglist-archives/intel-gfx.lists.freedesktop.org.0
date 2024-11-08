Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0B19C1D8C
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 14:03:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F7DB10E9A8;
	Fri,  8 Nov 2024 13:03:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SB0jGVin";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BAC510E98A;
 Fri,  8 Nov 2024 13:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731070984; x=1762606984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U5d3KQIXyWwI25Tzrm2yGJjBkgqzraL7XypiEZePtps=;
 b=SB0jGVint7edqHgdqowYTyHB0NXuBGDeip6muAGk5X5Qh+RZ+Sax66N8
 wiWdUFa/mH1u5fhyaHTPZBkRatgdByYpLhEg03+NdPwIB2pyyzDV4bE+U
 D3J9dvVnjPy3V0+nxX0TwBrr8jjmoYKnwZeSnjGW9NsF3YNT1YpMzX0Kl
 1mtvyak0PTEhGtqIjkeWdhiu3DNDcS+1PfLolMXmZbw9nEY5oDDlJ97j7
 Z8iNzB3eUvNRzHfFToH04vUgDrWmEW7TuFRTTd83sGPrvy/PUlk8T+/k7
 ilXy1kt6mn4Teul2IuRqFTvD/r3Qa8ITRs7KNCYLJOf2WQNSb12kVXNC1 g==;
X-CSE-ConnectionGUID: QWLPXMAkSNa6YjVB3mn/JQ==
X-CSE-MsgGUID: FZ72VMN6TkaCQah83OgTHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41513133"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41513133"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:03:04 -0800
X-CSE-ConnectionGUID: eSnrBxgwRJa/sDQF8F33tQ==
X-CSE-MsgGUID: glEAyCKFQsOaEJVaPBz1Wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="85692489"
Received: from ldmartin-desk2.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.232])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:02:57 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v4 10/15] drm/i915/dmc_wl: Allow simpler syntax for single reg
 in range tables
Date: Fri,  8 Nov 2024 09:57:15 -0300
Message-ID: <20241108130218.24125-11-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241108130218.24125-1-gustavo.sousa@intel.com>
References: <20241108130218.24125-1-gustavo.sousa@intel.com>
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

Allow simpler syntax for defining entries for single registers in range
tables. That makes them easier to type as well as to read, allowing one
to quickly tell whether a range actually refers to a single register or
a "true range".

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 118 ++++++++++----------
 1 file changed, 60 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index db01b65cb05d..4a182a049374 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -58,82 +58,82 @@ static struct intel_dmc_wl_range powered_off_ranges[] = {
 };
 
 static struct intel_dmc_wl_range xe3lpd_dc5_dc6_dmc_ranges[] = {
-	{ .start = 0x45500, .end = 0x45500 }, /* DC_STATE_SEL */
+	{ .start = 0x45500 }, /* DC_STATE_SEL */
 	{ .start = 0x457a0, .end = 0x457b0 }, /* DC*_RESIDENCY_COUNTER */
-	{ .start = 0x45504, .end = 0x45504 }, /* DC_STATE_EN */
+	{ .start = 0x45504 }, /* DC_STATE_EN */
 	{ .start = 0x45400, .end = 0x4540c }, /* PWR_WELL_CTL_* */
-	{ .start = 0x454f0, .end = 0x454f0 }, /* RETENTION_CTRL */
+	{ .start = 0x454f0 }, /* RETENTION_CTRL */
 
 	/* DBUF_CTL_* */
-	{ .start = 0x44300, .end = 0x44300 },
-	{ .start = 0x44304, .end = 0x44304 },
-	{ .start = 0x44f00, .end = 0x44f00 },
-	{ .start = 0x44f04, .end = 0x44f04 },
-	{ .start = 0x44fe8, .end = 0x44fe8 },
-	{ .start = 0x45008, .end = 0x45008 },
+	{ .start = 0x44300 },
+	{ .start = 0x44304 },
+	{ .start = 0x44f00 },
+	{ .start = 0x44f04 },
+	{ .start = 0x44fe8 },
+	{ .start = 0x45008 },
 
-	{ .start = 0x46070, .end = 0x46070 }, /* CDCLK_PLL_ENABLE */
-	{ .start = 0x46000, .end = 0x46000 }, /* CDCLK_CTL */
-	{ .start = 0x46008, .end = 0x46008 }, /* CDCLK_SQUASH_CTL */
+	{ .start = 0x46070 }, /* CDCLK_PLL_ENABLE */
+	{ .start = 0x46000 }, /* CDCLK_CTL */
+	{ .start = 0x46008 }, /* CDCLK_SQUASH_CTL */
 
 	/* TRANS_CMTG_CTL_* */
-	{ .start = 0x6fa88, .end = 0x6fa88 },
-	{ .start = 0x6fb88, .end = 0x6fb88 },
-
-	{ .start = 0x46430, .end = 0x46430 }, /* CHICKEN_DCPR_1 */
-	{ .start = 0x46434, .end = 0x46434 }, /* CHICKEN_DCPR_2 */
-	{ .start = 0x454a0, .end = 0x454a0 }, /* CHICKEN_DCPR_4 */
-	{ .start = 0x42084, .end = 0x42084 }, /* CHICKEN_MISC_2 */
-	{ .start = 0x42088, .end = 0x42088 }, /* CHICKEN_MISC_3 */
-	{ .start = 0x46160, .end = 0x46160 }, /* CMTG_CLK_SEL */
+	{ .start = 0x6fa88 },
+	{ .start = 0x6fb88 },
+
+	{ .start = 0x46430 }, /* CHICKEN_DCPR_1 */
+	{ .start = 0x46434 }, /* CHICKEN_DCPR_2 */
+	{ .start = 0x454a0 }, /* CHICKEN_DCPR_4 */
+	{ .start = 0x42084 }, /* CHICKEN_MISC_2 */
+	{ .start = 0x42088 }, /* CHICKEN_MISC_3 */
+	{ .start = 0x46160 }, /* CMTG_CLK_SEL */
 	{ .start = 0x8f000, .end = 0x8ffff }, /* Main DMC registers */
 
 	{},
 };
 
 static struct intel_dmc_wl_range xe3lpd_dc3co_dmc_ranges[] = {
-	{ .start = 0x454a0, .end = 0x454a0 }, /* CHICKEN_DCPR_4 */
+	{ .start = 0x454a0 }, /* CHICKEN_DCPR_4 */
 
-	{ .start = 0x45504, .end = 0x45504 }, /* DC_STATE_EN */
+	{ .start = 0x45504 }, /* DC_STATE_EN */
 
 	/* DBUF_CTL_* */
-	{ .start = 0x44300, .end = 0x44300 },
-	{ .start = 0x44304, .end = 0x44304 },
-	{ .start = 0x44f00, .end = 0x44f00 },
-	{ .start = 0x44f04, .end = 0x44f04 },
-	{ .start = 0x44fe8, .end = 0x44fe8 },
-	{ .start = 0x45008, .end = 0x45008 },
-
-	{ .start = 0x46070, .end = 0x46070 }, /* CDCLK_PLL_ENABLE */
-	{ .start = 0x46000, .end = 0x46000 }, /* CDCLK_CTL */
-	{ .start = 0x46008, .end = 0x46008 }, /* CDCLK_SQUASH_CTL */
+	{ .start = 0x44300 },
+	{ .start = 0x44304 },
+	{ .start = 0x44f00 },
+	{ .start = 0x44f04 },
+	{ .start = 0x44fe8 },
+	{ .start = 0x45008 },
+
+	{ .start = 0x46070 }, /* CDCLK_PLL_ENABLE */
+	{ .start = 0x46000 }, /* CDCLK_CTL */
+	{ .start = 0x46008 }, /* CDCLK_SQUASH_CTL */
 	{ .start = 0x8f000, .end = 0x8ffff }, /* Main DMC registers */
 
 	/* Scanline registers */
-	{ .start = 0x70000, .end = 0x70000 },
-	{ .start = 0x70004, .end = 0x70004 },
-	{ .start = 0x70014, .end = 0x70014 },
-	{ .start = 0x70018, .end = 0x70018 },
-	{ .start = 0x71000, .end = 0x71000 },
-	{ .start = 0x71004, .end = 0x71004 },
-	{ .start = 0x71014, .end = 0x71014 },
-	{ .start = 0x71018, .end = 0x71018 },
-	{ .start = 0x72000, .end = 0x72000 },
-	{ .start = 0x72004, .end = 0x72004 },
-	{ .start = 0x72014, .end = 0x72014 },
-	{ .start = 0x72018, .end = 0x72018 },
-	{ .start = 0x73000, .end = 0x73000 },
-	{ .start = 0x73004, .end = 0x73004 },
-	{ .start = 0x73014, .end = 0x73014 },
-	{ .start = 0x73018, .end = 0x73018 },
-	{ .start = 0x7b000, .end = 0x7b000 },
-	{ .start = 0x7b004, .end = 0x7b004 },
-	{ .start = 0x7b014, .end = 0x7b014 },
-	{ .start = 0x7b018, .end = 0x7b018 },
-	{ .start = 0x7c000, .end = 0x7c000 },
-	{ .start = 0x7c004, .end = 0x7c004 },
-	{ .start = 0x7c014, .end = 0x7c014 },
-	{ .start = 0x7c018, .end = 0x7c018 },
+	{ .start = 0x70000 },
+	{ .start = 0x70004 },
+	{ .start = 0x70014 },
+	{ .start = 0x70018 },
+	{ .start = 0x71000 },
+	{ .start = 0x71004 },
+	{ .start = 0x71014 },
+	{ .start = 0x71018 },
+	{ .start = 0x72000 },
+	{ .start = 0x72004 },
+	{ .start = 0x72014 },
+	{ .start = 0x72018 },
+	{ .start = 0x73000 },
+	{ .start = 0x73004 },
+	{ .start = 0x73014 },
+	{ .start = 0x73018 },
+	{ .start = 0x7b000 },
+	{ .start = 0x7b004 },
+	{ .start = 0x7b014 },
+	{ .start = 0x7b018 },
+	{ .start = 0x7c000 },
+	{ .start = 0x7c004 },
+	{ .start = 0x7c014 },
+	{ .start = 0x7c018 },
 
 	{},
 };
@@ -187,7 +187,9 @@ static bool intel_dmc_wl_reg_in_range(i915_reg_t reg,
 	u32 offset = i915_mmio_reg_offset(reg);
 
 	for (int i = 0; ranges[i].start; i++) {
-		if (ranges[i].start <= offset && offset <= ranges[i].end)
+		u32 end = ranges[i].end ?: ranges[i].start;
+
+		if (ranges[i].start <= offset && offset <= end)
 			return true;
 	}
 
-- 
2.47.0

