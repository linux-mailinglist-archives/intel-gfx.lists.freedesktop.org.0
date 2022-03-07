Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 814B24D0C2A
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 00:40:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B13B210E1E5;
	Mon,  7 Mar 2022 23:40:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D857F10E1E5
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Mar 2022 23:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646696412; x=1678232412;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=AkOiPXzqrxnOAPseJRj1RI3GnrmBcPz5ZtxV9mQtevs=;
 b=jO/T2z6/DmqbFNuSbo6EFhupuLQAotpLqteduwZvxL3W/YcAQOXDazdZ
 neGlbsnS0g9Rq33PVWa1ST/wKtXryKKGz31P5dkdCHbDIIzjXCflAMC3p
 quGNSFXa8vlMrE22/FdVINHlS3A/2f5SySWeDXXhnmvKJB2tVwT5PBEJ2
 j3TxBQLPHOgUO6tLTHrLXywWJICcaTtnV2ILeNytERfD8vLArIAst3Qhl
 7wC68jffkWIqzWyHYuibazBC+i3YUsHiXncVt92JPkEUCVZHEtEVsbfl2
 OmKJYGF4S/O5Yv1k1EPOq6+vfIj44GWFRzXCPMjtK7QJHDgrlh6L5Tgba Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="254726922"
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400"; d="scan'208";a="254726922"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 15:39:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400"; d="scan'208";a="577785959"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 07 Mar 2022 15:39:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Mar 2022 01:39:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Mar 2022 01:39:36 +0200
Message-Id: <20220307233940.4161-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220307233940.4161-1-ville.syrjala@linux.intel.com>
References: <20220307233940.4161-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/8] drm/i915: Store the m2 divider as a
 whole in bxt_clk_div
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Get rid of the pointless m2 int vs. frac split in bxt_clk_div
and just store the whole divider as one.

v2: Document the full divider as a proper decimal number

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 27 +++++++++----------
 1 file changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 2a88c6fa1f34..ae3c07cc2eaa 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2088,8 +2088,7 @@ struct bxt_clk_div {
 	int clock;
 	u32 p1;
 	u32 p2;
-	u32 m2_int;
-	u32 m2_frac;
+	u32 m2;
 	u32 n;
 
 	int vco;
@@ -2097,13 +2096,14 @@ struct bxt_clk_div {
 
 /* pre-calculated values for DP linkrates */
 static const struct bxt_clk_div bxt_dp_clk_val[] = {
-	{ .clock = 162000, .p1 = 4, .p2 = 2, .m2_int = 32, .m2_frac = 1677722, .n = 1, },
-	{ .clock = 270000, .p1 = 4, .p2 = 1, .m2_int = 27, .m2_frac =       0, .n = 1, },
-	{ .clock = 540000, .p1 = 2, .p2 = 1, .m2_int = 27, .m2_frac =       0, .n = 1, },
-	{ .clock = 216000, .p1 = 3, .p2 = 2, .m2_int = 32, .m2_frac = 1677722, .n = 1, },
-	{ .clock = 243000, .p1 = 4, .p2 = 1, .m2_int = 24, .m2_frac = 1258291, .n = 1, },
-	{ .clock = 324000, .p1 = 4, .p2 = 1, .m2_int = 32, .m2_frac = 1677722, .n = 1, },
-	{ .clock = 432000, .p1 = 3, .p2 = 1, .m2_int = 32, .m2_frac = 1677722, .n = 1, },
+	/* m2 is .22 binary fixed point */
+	{ .clock = 162000, .p1 = 4, .p2 = 2, .n = 1, .m2 = 0x819999a /* 32.4 */ },
+	{ .clock = 270000, .p1 = 4, .p2 = 1, .n = 1, .m2 = 0x6c00000 /* 27.0 */ },
+	{ .clock = 540000, .p1 = 2, .p2 = 1, .n = 1, .m2 = 0x6c00000 /* 27.0 */ },
+	{ .clock = 216000, .p1 = 3, .p2 = 2, .n = 1, .m2 = 0x819999a /* 32.4 */ },
+	{ .clock = 243000, .p1 = 4, .p2 = 1, .n = 1, .m2 = 0x6133333 /* 24.3 */ },
+	{ .clock = 324000, .p1 = 4, .p2 = 1, .n = 1, .m2 = 0x819999a /* 32.4 */ },
+	{ .clock = 432000, .p1 = 3, .p2 = 1, .n = 1, .m2 = 0x819999a /* 32.4 */ },
 };
 
 static bool
@@ -2130,8 +2130,7 @@ bxt_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state,
 	clk_div->p2 = best_clock.p2;
 	drm_WARN_ON(&i915->drm, best_clock.m1 != 2);
 	clk_div->n = best_clock.n;
-	clk_div->m2_int = best_clock.m2 >> 22;
-	clk_div->m2_frac = best_clock.m2 & ((1 << 22) - 1);
+	clk_div->m2 = best_clock.m2;
 
 	clk_div->vco = best_clock.vco;
 
@@ -2200,11 +2199,11 @@ static bool bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
 		lanestagger = 0x02;
 
 	dpll_hw_state->ebb0 = PORT_PLL_P1(clk_div->p1) | PORT_PLL_P2(clk_div->p2);
-	dpll_hw_state->pll0 = PORT_PLL_M2_INT(clk_div->m2_int);
+	dpll_hw_state->pll0 = PORT_PLL_M2_INT(clk_div->m2 >> 22);
 	dpll_hw_state->pll1 = PORT_PLL_N(clk_div->n);
-	dpll_hw_state->pll2 = PORT_PLL_M2_FRAC(clk_div->m2_frac);
+	dpll_hw_state->pll2 = PORT_PLL_M2_FRAC(clk_div->m2 & 0x3fffff);
 
-	if (clk_div->m2_frac)
+	if (clk_div->m2 & 0x3fffff)
 		dpll_hw_state->pll3 = PORT_PLL_M2_FRAC_ENABLE;
 
 	dpll_hw_state->pll6 = PORT_PLL_PROP_COEFF(prop_coef) |
-- 
2.34.1

