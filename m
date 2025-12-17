Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 110CACC86F3
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 16:28:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C47610ED0B;
	Wed, 17 Dec 2025 15:28:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SpWuumtj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77BEB10E8CC;
 Wed, 17 Dec 2025 15:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765985327; x=1797521327;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=A2mLH1yBrU3fuyAxVA2viSeQ3nwnOKxhgGlhrrWStJQ=;
 b=SpWuumtjvsn4r5EQWlWYEUnlJ7sHM46wrkHSQgmxL6T4KOuwKjO6lhfW
 BwJbHl+y5rndk40p/bgNF721B/nZLcOCcYCmtcSbOCRvPPa7cwjXJWLlR
 ykt9Omj5YAOCr/d51+SxrN7IjOZes63e3by0SQsgOdmStXWZV75weg1a6
 Yi7n9rzAG2bM1lN6liY41oNv1XuOybSS7TM1TExAdi/KcVJg84FkHEiLC
 lxa+hQu90PM+dxgl39Z4bfbncTGF8ox3nnciE7iK8K26XuYqDguBccvG0
 P6tGuWQOaPZNVVTBisSrlvoMqSX9ouXnwjE4MIA1IPqfoQoyrT3VNnOz2 g==;
X-CSE-ConnectionGUID: MbFaAd2uReyqWZsWqYGQAw==
X-CSE-MsgGUID: 1OKMIfagSC2IujLYn7+jLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="71781436"
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="71781436"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 07:28:47 -0800
X-CSE-ConnectionGUID: rF2KcuwoRVyq9Gsuqk1iGg==
X-CSE-MsgGUID: 2Kax5y+TQzSwz1GoAzyXgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="198097299"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa009.jf.intel.com with ESMTP; 17 Dec 2025 07:28:45 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 05/15] drm/i915/cx0: Drop encoder from port clock
 calculation
Date: Wed, 17 Dec 2025 17:19:45 +0200
Message-Id: <20251217151955.1690202-6-mika.kahola@intel.com>
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

For C10 and C20 we have unused encoder parameter passed
to port clock calculation function. Remove encoder from
passing it to port clock calculation function.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 664c48dc0ce3..b7ac89e32586 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2103,8 +2103,7 @@ static bool cx0pll_state_is_dp(const struct intel_cx0pll_state *pll_state)
 	return c20pll_state_is_dp(&pll_state->c20);
 }
 
-static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
-					const struct intel_c10pll_state *pll_state)
+static int intel_c10pll_calc_port_clock(const struct intel_c10pll_state *pll_state)
 {
 	unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
 	unsigned int multiplier, tx_clk_div, hdmi_div, refclk = 38400;
@@ -2135,8 +2134,7 @@ static bool intel_c20phy_use_mpllb(const struct intel_c20pll_state *state)
 	return state->tx[0] & C20_PHY_USE_MPLLB;
 }
 
-static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
-					const struct intel_c20pll_state *pll_state)
+static int intel_c20pll_calc_port_clock(const struct intel_c20pll_state *pll_state)
 {
 	unsigned int frac, frac_en, frac_quot, frac_rem, frac_den;
 	unsigned int multiplier, refclk = 38400;
@@ -2325,7 +2323,7 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
 
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 
-	pll_state->clock = intel_c10pll_calc_port_clock(encoder, pll_state);
+	pll_state->clock = intel_c10pll_calc_port_clock(pll_state);
 
 	cx0pll_state->ssc_enabled = readout_ssc_state(encoder, true);
 
@@ -2821,7 +2819,7 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 		}
 	}
 
-	pll_state->clock = intel_c20pll_calc_port_clock(encoder, pll_state);
+	pll_state->clock = intel_c20pll_calc_port_clock(pll_state);
 
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 
@@ -3713,9 +3711,9 @@ int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
 				 const struct intel_cx0pll_state *pll_state)
 {
 	if (intel_encoder_is_c10phy(encoder))
-		return intel_c10pll_calc_port_clock(encoder, &pll_state->c10);
+		return intel_c10pll_calc_port_clock(&pll_state->c10);
 
-	return intel_c20pll_calc_port_clock(encoder, &pll_state->c20);
+	return intel_c20pll_calc_port_clock(&pll_state->c20);
 }
 
 /*
-- 
2.34.1

