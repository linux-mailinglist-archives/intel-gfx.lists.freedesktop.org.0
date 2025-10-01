Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73469BAFAF3
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:39:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D204210E6D5;
	Wed,  1 Oct 2025 08:39:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q5lKV98e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F1B310E6C6;
 Wed,  1 Oct 2025 08:39:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307943; x=1790843943;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wRgyVhLZ5YbBhripZdKeTcDji08oAKg505c4NiR+mJE=;
 b=Q5lKV98ei3wZFPla9CTa+iuxD+/eRlApf4ClA4x80PnipYf7tYjNj13Z
 inpC0h22XSVS6Uvon/0+HWrmDOmCWkgb/ZfFYyEXnTBRTkp+qgRWsGK7Z
 vSequuArUcwpCrUV2cMhKgsO68KZ6+WcbcQyLqBgoF4ozwCf0xvFsW+q9
 7oeV9+puLWwf836p5kVNSK0dsG5b5Tb4LZDiQmfBfRmuzYPgYMMKzgfFB
 pQiIp0Kt29Ufvpdcpyxq8Ude4s3Z2xBSwpDYm/B+r5LIS5kOneb+crOtz
 oCrRAKq0oA03SENKcboDC5IvMT5sIrQRnpNo+1+2NsYmoxKrWci18ZxZR w==;
X-CSE-ConnectionGUID: /FYUmcwXTTaqfRoRL4hmbg==
X-CSE-MsgGUID: I4IiNjZzR2GUIuhmJGRYlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742764"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742764"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:39:02 -0700
X-CSE-ConnectionGUID: NJ1J4pVcTzG+aXU2yLwKjg==
X-CSE-MsgGUID: bk0eZ1KTQXixq1j2jqvjGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142674"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:39:00 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [RFC PATCH 21/39] drm/i915/display: Print additional Cx0 PLL HW state
Date: Wed,  1 Oct 2025 11:28:21 +0300
Message-Id: <20251001082839.2585559-22-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001082839.2585559-1-mika.kahola@intel.com>
References: <20251001082839.2585559-1-mika.kahola@intel.com>
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
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 552623d5413a..3a12060a4474 100644
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
@@ -2851,12 +2851,21 @@ static void intel_c20pll_dump_hw_state(struct intel_display *display,
 		for (i = 0; i < ARRAY_SIZE(hw_state->mplla); i++)
 			drm_dbg_kms(display->drm, "mplla[%d] = 0x%.4x\n", i,
 				    hw_state->mplla[i]);
+
+		/* For full coverage, also print the additional PLL B entry. */
+		WARN_ON(i + 1 != ARRAY_SIZE(hw_state->mpllb));
+		drm_dbg_kms(display->drm, "mpllb[%d] = 0x%.4x\n", i, hw_state->mpllb[i]);
 	}
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

