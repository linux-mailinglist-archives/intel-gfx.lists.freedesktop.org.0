Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8E6C63AA4
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:59:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A5CC10E33F;
	Mon, 17 Nov 2025 10:59:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UbFwOABB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C6F110E369;
 Mon, 17 Nov 2025 10:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763377160; x=1794913160;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1CuHEHzI8b4JJCZPwvQ5KQA0uVU1iHKYrS0GBG+euMo=;
 b=UbFwOABBYN1jWNpvTA7145pZrv8BkfNu2E4KYh9rUDUiHk3s5Rcni6ML
 JfGpAPh7KLYcFP3wZhsG0QhS0Y/fXtInqoG10OlEa1HUQEI2o55nPe4Hc
 hNjulGBx23FToYWu8HTpvQpTx+93+DaKR7zFKqH//qu285RYls5gkETsL
 wUi5o9x3llkwm6UkzR35WLHmaYFMl9wogVfsgVBvBJTETYfmmneoaxPM2
 gyEpzsYI8pBUyjsTmXg6oNwfE5qxt7wC5/f16cqTtn2GVfjfrMP0+hznN
 dnZnIlWQ7sstaipxY2Fmb/OEHGEUAgBdL2ea1S6vREzaha6ea3uxb9hNW g==;
X-CSE-ConnectionGUID: qNfSq8x9QXC6Iy+tHLztIQ==
X-CSE-MsgGUID: r54XmQh5TryTDVZsgeKQFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76475379"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76475379"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:59:20 -0800
X-CSE-ConnectionGUID: mivRoFWKQa6YtdGax6ICsg==
X-CSE-MsgGUID: enb5H6uFRlKpZioQvLmBcg==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 02:59:19 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 14/32] drm/i915/cx0: Print additional Cx0 PLL HW state
Date: Mon, 17 Nov 2025 12:45:44 +0200
Message-Id: <20251117104602.2363671-15-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251117104602.2363671-1-mika.kahola@intel.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
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

v2: Use BUILD_BUG_ON() instead of WARN_ON() (Jani)

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index df3daa81a698..763546fe152b 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2306,8 +2306,8 @@ static void intel_c10pll_dump_hw_state(struct intel_display *display,
 	unsigned int multiplier, tx_clk_div;
 
 	fracen = hw_state->pll[0] & C10_PLL0_FRACEN;
-	drm_dbg_kms(display->drm, "c10pll_hw_state: fracen: %s, ",
-		    str_yes_no(fracen));
+	drm_dbg_kms(display->drm, "c10pll_hw_state: clock: %d, fracen: %s, ",
+		    hw_state->clock, str_yes_no(fracen));
 
 	if (fracen) {
 		frac_quot = hw_state->pll[12] << 8 | hw_state->pll[11];
@@ -2816,7 +2816,7 @@ static void intel_c20pll_dump_hw_state(struct intel_display *display,
 {
 	int i;
 
-	drm_dbg_kms(display->drm, "c20pll_hw_state:\n");
+	drm_dbg_kms(display->drm, "c20pll_hw_state clock: %d:\n", hw_state->clock);
 	drm_dbg_kms(display->drm,
 		    "tx[0] = 0x%.4x, tx[1] = 0x%.4x, tx[2] = 0x%.4x\n",
 		    hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]);
@@ -2832,12 +2832,24 @@ static void intel_c20pll_dump_hw_state(struct intel_display *display,
 		for (i = 0; i < ARRAY_SIZE(hw_state->mplla); i++)
 			drm_dbg_kms(display->drm, "mplla[%d] = 0x%.4x\n", i,
 				    hw_state->mplla[i]);
+
+		/* For full coverage, also print the additional PLL B entry. */
+		BUILD_BUG_ON(ARRAY_SIZE(hw_state->mplla) + 1 != ARRAY_SIZE(hw_state->mpllb));
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

