Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1203D20D2BC
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 20:58:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31D6489F08;
	Mon, 29 Jun 2020 18:58:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F373B89F08
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jun 2020 18:58:50 +0000 (UTC)
IronPort-SDR: gOEnoOglbJA8rO7NlAblzGE7Zd/sf1sbwx7bQLpDgBNzG+xdNW7EAh4hNtYdWb9U24FCwTuYWX
 ZvFFO4E6hY5w==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="126174492"
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="126174492"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2020 11:58:50 -0700
IronPort-SDR: mkm8rhxwK9zXJkjm3R3XKtOEWLXfDb55T9Q+byzEETK4XEouuoqyRPfHEMdIk60MzgzRf39QQi
 bB5n4FqNtjbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="277169846"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 29 Jun 2020 11:58:49 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jun 2020 21:58:47 +0300
Message-Id: <20200629185848.20550-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/tgl+: Fix TBT DPLL fractional
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

When the reference clock is 38.4MHz, using the current TBT PLL
fractional divider value results in a slightly off TBT link frequency.
This causes an endless loop of link training success followed by a bad
link signaling and retraining at least on a ThinkPad 40AC TBT dock.  The
workaround provided by the HW team is to divide the fractional divider
value by two. This fixed the link training problem on the ThinkPad dock.

The same workaround is needed on some EHL platforms and for combo PHY
PLLs, these will be addressed in a follow-up.

Bspec: 49204

References: HSDES#22010772725
References: HSDES#14011861142
Reported-and-tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index b45185b80bec..f585053d02d8 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2937,6 +2937,12 @@ static const struct skl_wrpll_params tgl_tbt_pll_24MHz_values = {
 	.pdiv = 0, .kdiv = 0, .qdiv_mode = 0, .qdiv_ratio = 0,
 };
 
+static const struct skl_wrpll_params tgl_tbt_pll_38_4MHz_values = {
+	.dco_integer = 0x54, .dco_fraction = 0x1800,
+	/* the following params are unused */
+	.pdiv = 0, .kdiv = 0, .qdiv_mode = 0, .qdiv_ratio = 0,
+};
+
 static bool icl_calc_dp_combo_pll(struct intel_crtc_state *crtc_state,
 				  struct skl_wrpll_params *pll_params)
 {
@@ -2970,12 +2976,14 @@ static bool icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
 			MISSING_CASE(dev_priv->dpll.ref_clks.nssc);
 			/* fall-through */
 		case 19200:
-		case 38400:
 			*pll_params = tgl_tbt_pll_19_2MHz_values;
 			break;
 		case 24000:
 			*pll_params = tgl_tbt_pll_24MHz_values;
 			break;
+		case 38400:
+			*pll_params = tgl_tbt_pll_38_4MHz_values;
+			break;
 		}
 	} else {
 		switch (dev_priv->dpll.ref_clks.nssc) {
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
