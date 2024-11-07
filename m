Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 156499C0DC9
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 19:30:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACEBF10E8B6;
	Thu,  7 Nov 2024 18:30:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DUoYHDhY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B561610E8BC;
 Thu,  7 Nov 2024 18:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731004198; x=1762540198;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U5d3KQIXyWwI25Tzrm2yGJjBkgqzraL7XypiEZePtps=;
 b=DUoYHDhYuUbRl2SnaRDnXI835KfHbWeS/CkB1VvkvBNKkaNUgEME564T
 mHmGVUJEE0MXfWVI9Qzs4Uv4dy8yuz4MWNmvhA/DEKCyJeSH+1Z8VFxY2
 nA0Wzw5Bo5i5dYyyuDfzbFtWlWRF23KXp9fEgkYKNkCAmf5PTRoNaHUOn
 KHqSA+SbZ+HUzNFiElEbOD4b2gEaoD2+sG7juNdLg6af26YwPOjYKpmu/
 B2Llku0YorXe0Wh7h2GCbiQdUD/dL+aDP7p5hS80RB2a1LG+uPyV0TH8L
 Dum+OWqcPermCGud/XjIL30XL38mE3SAJIQYUeiassIyxdeFG0SfwD1zU Q==;
X-CSE-ConnectionGUID: 1M2PhwhZTbmO1rOl8/sW5Q==
X-CSE-MsgGUID: 9w2QZBT3T7ePyrNCVZAlNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="18494865"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="18494865"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:29:58 -0800
X-CSE-ConnectionGUID: GVHQqjSUSUOBuO7Xv58+nQ==
X-CSE-MsgGUID: zwKuNm2uSNO4GzLkIzNaUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85329645"
Received: from rchatre-mobl4.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.154])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:29:57 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 10/18] drm/i915/dmc_wl: Allow simpler syntax for single reg
 in range tables
Date: Thu,  7 Nov 2024 15:27:15 -0300
Message-ID: <20241107182921.102193-11-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241107182921.102193-1-gustavo.sousa@intel.com>
References: <20241107182921.102193-1-gustavo.sousa@intel.com>
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

