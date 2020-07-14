Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A71F21F75B
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 18:32:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DAB36E40F;
	Tue, 14 Jul 2020 16:32:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 318896E40F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 16:32:45 +0000 (UTC)
IronPort-SDR: 9muUeanBAQM4pF3kI4Dm8SAjmz86B1zMGqvDqjwzQIHiccu4Ecn1tUZian4Po30JIncSmz7DPp
 nXl/q1mfYLYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="137092803"
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="137092803"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 09:32:44 -0700
IronPort-SDR: LHZ8D8gDB0wR9tSQlc1yYZdAyEm5Uuy2idWrm2CufkDLyNovcNk9HBHYILGB4MPLJTTEF1WFQS
 F6PJIpXf7Ong==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="281799835"
Received: from ideak-desk.fi.intel.com ([10.237.68.147])
 by orsmga003.jf.intel.com with ESMTP; 14 Jul 2020 09:32:43 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2020 19:32:36 +0300
Message-Id: <20200714163236.14105-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl+: Fix Combo PHY DPLL fractional
 divider for 38.4MHz ref clock
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Apply Display WA #22010492432 for combo PHY PLLs too. This should fix a
problem where the PLL output frequency is slightly off with the current
PLL fractional divider value.

I haven't seen an actual case where this causes a problem, but let's
follow the spec. It's also needed on some EHL platforms, but for that we
also need a way to distinguish the affected EHL SKUs, so I leave that
for a follow-up.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 54 +++++++++++++++++--
 1 file changed, 49 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index aeb6ee395cce..aee9101f5e7c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2887,7 +2887,7 @@ static const struct icl_combo_pll_params icl_dp_combo_pll_24MHz_values[] = {
 };
 
 
-/* Also used for 38.4 MHz values. */
+/* On ICL also used for 38.4 MHz values. */
 static const struct icl_combo_pll_params icl_dp_combo_pll_19_2MHz_values[] = {
 	{ 540000,
 	  { .dco_integer = 0x1A5, .dco_fraction = 0x7000,		/* [0]: 5.4 */
@@ -2915,6 +2915,37 @@ static const struct icl_combo_pll_params icl_dp_combo_pll_19_2MHz_values[] = {
 	    .pdiv = 0x1 /* 2 */, .kdiv = 1, .qdiv_mode = 0, .qdiv_ratio = 0, }, },
 };
 
+/*
+ * Display WA #22010492432: tgl
+ * Divide the nominal .dco_fraction value by 2.
+ */
+static const struct icl_combo_pll_params tgl_dp_combo_pll_38_4MHz_values[] = {
+	{ 540000,
+	  { .dco_integer = 0x1A5, .dco_fraction = 0x3800,		/* [0]: 5.4 */
+	    .pdiv = 0x2 /* 3 */, .kdiv = 1, .qdiv_mode = 0, .qdiv_ratio = 0, }, },
+	{ 270000,
+	  { .dco_integer = 0x1A5, .dco_fraction = 0x3800,		/* [1]: 2.7 */
+	    .pdiv = 0x2 /* 3 */, .kdiv = 2, .qdiv_mode = 0, .qdiv_ratio = 0, }, },
+	{ 162000,
+	  { .dco_integer = 0x1A5, .dco_fraction = 0x3800,		/* [2]: 1.62 */
+	    .pdiv = 0x4 /* 5 */, .kdiv = 2, .qdiv_mode = 0, .qdiv_ratio = 0, }, },
+	{ 324000,
+	  { .dco_integer = 0x1A5, .dco_fraction = 0x3800,		/* [3]: 3.24 */
+	    .pdiv = 0x4 /* 5 */, .kdiv = 1, .qdiv_mode = 0, .qdiv_ratio = 0, }, },
+	{ 216000,
+	  { .dco_integer = 0x1C2, .dco_fraction = 0x0000,		/* [4]: 2.16 */
+	    .pdiv = 0x1 /* 2 */, .kdiv = 2, .qdiv_mode = 1, .qdiv_ratio = 2, }, },
+	{ 432000,
+	  { .dco_integer = 0x1C2, .dco_fraction = 0x0000,		/* [5]: 4.32 */
+	    .pdiv = 0x1 /* 2 */, .kdiv = 2, .qdiv_mode = 0, .qdiv_ratio = 0, }, },
+	{ 648000,
+	  { .dco_integer = 0x1FA, .dco_fraction = 0x1000,		/* [6]: 6.48 */
+	    .pdiv = 0x2 /* 3 */, .kdiv = 1, .qdiv_mode = 0, .qdiv_ratio = 0, }, },
+	{ 810000,
+	  { .dco_integer = 0x1A5, .dco_fraction = 0x3800,		/* [7]: 8.1 */
+	    .pdiv = 0x1 /* 2 */, .kdiv = 1, .qdiv_mode = 0, .qdiv_ratio = 0, }, },
+};
+
 static const struct skl_wrpll_params icl_tbt_pll_24MHz_values = {
 	.dco_integer = 0x151, .dco_fraction = 0x4000,
 	.pdiv = 0x4 /* 5 */, .kdiv = 1, .qdiv_mode = 0, .qdiv_ratio = 0,
@@ -2950,13 +2981,26 @@ static bool icl_calc_dp_combo_pll(struct intel_crtc_state *crtc_state,
 				  struct skl_wrpll_params *pll_params)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
-	const struct icl_combo_pll_params *params =
-		dev_priv->dpll.ref_clks.nssc == 24000 ?
-		icl_dp_combo_pll_24MHz_values :
-		icl_dp_combo_pll_19_2MHz_values;
+	const struct icl_combo_pll_params *params;
 	int clock = crtc_state->port_clock;
 	int i;
 
+	switch (dev_priv->dpll.ref_clks.nssc) {
+	case 19200:
+		params = icl_dp_combo_pll_19_2MHz_values;
+		break;
+	case 24000:
+		params = icl_dp_combo_pll_24MHz_values;
+		break;
+	case 38400:
+		/* TODO: Apply WA #22010492432 on EHL too. */
+		if (IS_TIGERLAKE(dev_priv))
+			params = tgl_dp_combo_pll_38_4MHz_values;
+		else
+			params = icl_dp_combo_pll_19_2MHz_values;
+		break;
+	}
+
 	for (i = 0; i < ARRAY_SIZE(icl_dp_combo_pll_24MHz_values); i++) {
 		if (clock == params[i].clock) {
 			*pll_params = params[i].wrpll;
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
