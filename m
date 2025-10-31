Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3811C24961
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:48:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 341E810EB6D;
	Fri, 31 Oct 2025 10:48:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LWeOaQVN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F5BB10EB5C;
 Fri, 31 Oct 2025 10:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907680; x=1793443680;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cyxZhZcvWW0tx2UT0vgV/rBnGt3yGDx1l2nqc+4Qmzw=;
 b=LWeOaQVNLnKvGYgJLOWS0NnEdLIQNMGHmcdbBewfwe7+l0tr2xrGlJrI
 6pvqz72mxz2mziXp+12iw224CWtYnh34ASrzskbJ3eBQaGhQw0krbfXVw
 QLjXUqvVR7+hUss8HaMi1ROFk4yy2/BLHzsIkyqqoD3l90kLTT6plGruC
 4o8DLBak6P20Rn4BUANMrPLI/p+XFZcLPxOBeaIk6Qzz0C6lAy3RC55VS
 YpXS5N0+QLAaluips1mGtJZpOhtdh8S7D2NEjurNI9KihOT56hV+Kuy/5
 bCvvR3yCbKTPVIc/tBh3UANsxg72HutiU3FdhuT7cmFi/5+5FWGXKC+j2 g==;
X-CSE-ConnectionGUID: yMiaZ4BdTmGSZAgdbCvMxw==
X-CSE-MsgGUID: zjEBpga9R3+c9RFVGN2/vA==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64217566"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="64217566"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:48:00 -0700
X-CSE-ConnectionGUID: 5turwzXpT+Gchqe2lswuwg==
X-CSE-MsgGUID: Yo4m00qxSdSIV6EKOCj9Rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="223441370"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa001.jf.intel.com with ESMTP; 31 Oct 2025 03:47:59 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [CI 14/32] drm/i915/display: Print additional Cx0 PLL HW state
Date: Fri, 31 Oct 2025 12:35:31 +0200
Message-Id: <20251031103549.173208-15-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251031103549.173208-1-mika.kahola@intel.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
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

From: Imre Deak <imre.deak@intel.com>

Print all the Cx0 PLL state in the PLL state dumper.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 3418fc560faf..1e68a73c2ca8 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2311,8 +2311,8 @@ static void intel_c10pll_dump_hw_state(struct intel_display *display,
 	unsigned int multiplier, tx_clk_div;
 
 	fracen = hw_state->pll[0] & C10_PLL0_FRACEN;
-	drm_dbg_kms(display->drm, "c10pll_hw_state: fracen: %s, ",
-		    str_yes_no(fracen));
+	drm_dbg_kms(display->drm, "c10pll_hw_state: clock: %d, fracen: %s, ",
+		    hw_state->clock, str_yes_no(fracen));
 
 	if (fracen) {
 		frac_quot = hw_state->pll[12] << 8 | hw_state->pll[11];
@@ -2835,7 +2835,7 @@ static void intel_c20pll_dump_hw_state(struct intel_display *display,
 {
 	int i;
 
-	drm_dbg_kms(display->drm, "c20pll_hw_state:\n");
+	drm_dbg_kms(display->drm, "c20pll_hw_state clock: %d:\n", hw_state->clock);
 	drm_dbg_kms(display->drm,
 		    "tx[0] = 0x%.4x, tx[1] = 0x%.4x, tx[2] = 0x%.4x\n",
 		    hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]);
@@ -2851,12 +2851,24 @@ static void intel_c20pll_dump_hw_state(struct intel_display *display,
 		for (i = 0; i < ARRAY_SIZE(hw_state->mplla); i++)
 			drm_dbg_kms(display->drm, "mplla[%d] = 0x%.4x\n", i,
 				    hw_state->mplla[i]);
+
+		/* For full coverage, also print the additional PLL B entry. */
+		WARN_ON(i + 1 != ARRAY_SIZE(hw_state->mpllb));
+		drm_dbg_kms(display->drm, "mpllb[%d] = 0x%.4x\n", i, hw_state->mpllb[i]);
 	}
+
+	drm_dbg_kms(display->drm, "vdr: custom width: 0x%02x, serdes rate: 0x%02x, hdmi rate: 0x%02x\n",
+		    hw_state->vdr.custom_width, hw_state->vdr.serdes_rate, hw_state->vdr.hdmi_rate);
 }
 
 void intel_cx0pll_dump_hw_state(struct intel_display *display,
 				const struct intel_cx0pll_state *hw_state)
 {
+	drm_dbg_kms(display->drm,
+		    "cx0pll_hw_state: lane_count: %d, ssc_enabled: %s, use_c10: %s, tbt_mode: %s\n",
+		    hw_state->lane_count, str_yes_no(hw_state->ssc_enabled),
+		    str_yes_no(hw_state->use_c10), str_yes_no(hw_state->tbt_mode));
+
 	if (hw_state->use_c10)
 		intel_c10pll_dump_hw_state(display, &hw_state->c10);
 	else
-- 
2.34.1

