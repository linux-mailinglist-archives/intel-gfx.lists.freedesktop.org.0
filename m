Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8029A934A
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 00:28:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBD2410E5CA;
	Mon, 21 Oct 2024 22:28:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cEa1u09s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4E5F10E5C8;
 Mon, 21 Oct 2024 22:28:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729549695; x=1761085695;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cxy4BgqIVfn5bOCrWwMtGPLEbGxGjnusvWjemorOorQ=;
 b=cEa1u09sw/1pR0dsmCXpgBwRBEHhph/2Wzr2ZPtLaeqBtDiv3i9bdshe
 FXAjMf+gytqJ3Hp3RlNoKuC+LNiobvsM/DDsaYW9/S6zAb6fhIlwnUYbl
 XSJ0dhIT4x6tq4EWacapijBOTc1gWrCx5uRPH5GRArH9zgDsxW+FONyib
 /tgf2uB5W0FuK22KbFq5EgaRGKgtzf6wRcvee9iCWRVXs0qXuosAwzrdB
 5K+jM9q+EjUkRMh/fvLbCpgR697lrqaV+wo0w/d4ChSiSYGcssR2B6/Be
 3DT5KCcmwI9mj18M1C/mAhKQ74bEX6nvtH3NgGITSVEPkW31On+vR/+lH A==;
X-CSE-ConnectionGUID: 9ts7y62YS9Wa90WGUjIIhg==
X-CSE-MsgGUID: o7uka75FSlScwycThi3+vw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28934466"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28934466"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:14 -0700
X-CSE-ConnectionGUID: 5qixM0HeTyWvjxQEL+/sNQ==
X-CSE-MsgGUID: Y12hp/DURaKkoeRJ9+lcmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="80009623"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.125.110.79])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:13 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 08/13] drm/i915/dmc_wl: Allow simpler syntax for single reg in
 range tables
Date: Mon, 21 Oct 2024 19:27:27 -0300
Message-ID: <20241021222744.294371-9-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241021222744.294371-1-gustavo.sousa@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
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

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 118 ++++++++++----------
 1 file changed, 60 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 8bf2f32be859..6992ce654e75 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -54,82 +54,82 @@ static struct intel_dmc_wl_range lnl_wl_range[] = {
 };
 
 static struct intel_dmc_wl_range xe3lpd_dc5_dc6_wl_ranges[] = {
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
 
 static struct intel_dmc_wl_range xe3lpd_dc3co_wl_ranges[] = {
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
@@ -181,7 +181,9 @@ static bool intel_dmc_wl_addr_in_range(u32 address,
 				       const struct intel_dmc_wl_range ranges[])
 {
 	for (int i = 0; ranges[i].start; i++) {
-		if (ranges[i].start <= address && address <= ranges[i].end)
+		u32 end = ranges[i].end ?: ranges[i].start;
+
+		if (ranges[i].start <= address && address <= end)
 			return true;
 	}
 
-- 
2.47.0

