Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF9D1709C9
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 21:35:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16B2C6EBBB;
	Wed, 26 Feb 2020 20:35:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B74916EBBB
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 20:35:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 12:35:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,489,1574150400"; d="scan'208";a="238155016"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 26 Feb 2020 12:35:42 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Feb 2020 22:34:49 +0200
Message-Id: <20200226203455.23032-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20200226203455.23032-1-imre.deak@intel.com>
References: <20200226203455.23032-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/13] drm/i915/skl: Parametrize the DPLL ref
 clock instead of open-coding it
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

For clarity keep the SKL DPLL ref clock in a variable instead of
open-coding it. Store the value in kHZ units as done on other platforms.
This allows us in a later patch to keep track of the DPLL ref clock in a
more unified way across all platforms.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 21 +++++++++++--------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 5057f7636534..a4d27dfaec9a 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -1369,6 +1369,7 @@ struct skl_wrpll_params {
 
 static void skl_wrpll_params_populate(struct skl_wrpll_params *params,
 				      u64 afe_clock,
+				      int ref_clock,
 				      u64 central_freq,
 				      u32 p0, u32 p1, u32 p2)
 {
@@ -1428,14 +1429,15 @@ static void skl_wrpll_params_populate(struct skl_wrpll_params *params,
 	 * Intermediate values are in Hz.
 	 * Divide by MHz to match bsepc
 	 */
-	params->dco_integer = div_u64(dco_freq, 24 * MHz(1));
+	params->dco_integer = div_u64(dco_freq, ref_clock * KHz(1));
 	params->dco_fraction =
-		div_u64((div_u64(dco_freq, 24) -
+		div_u64((div_u64(dco_freq, ref_clock / KHz(1)) -
 			 params->dco_integer * MHz(1)) * 0x8000, MHz(1));
 }
 
 static bool
 skl_ddi_calculate_wrpll(int clock /* in Hz */,
+			int ref_clock,
 			struct skl_wrpll_params *wrpll_params)
 {
 	u64 afe_clock = clock * 5; /* AFE Clock is 5x Pixel clock */
@@ -1501,8 +1503,8 @@ skl_ddi_calculate_wrpll(int clock /* in Hz */,
 	 */
 	p0 = p1 = p2 = 0;
 	skl_wrpll_get_multipliers(ctx.p, &p0, &p1, &p2);
-	skl_wrpll_params_populate(wrpll_params, afe_clock, ctx.central_freq,
-				  p0, p1, p2);
+	skl_wrpll_params_populate(wrpll_params, afe_clock, ref_clock,
+				  ctx.central_freq, p0, p1, p2);
 
 	return true;
 }
@@ -1520,7 +1522,7 @@ static bool skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 
 	ctrl1 |= DPLL_CTRL1_HDMI_MODE(0);
 
-	if (!skl_ddi_calculate_wrpll(crtc_state->port_clock * 1000,
+	if (!skl_ddi_calculate_wrpll(crtc_state->port_clock * 1000, 24000,
 				     &wrpll_params))
 		return false;
 
@@ -1545,6 +1547,7 @@ static bool skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 
 static int skl_calc_wrpll_link(const struct intel_dpll_hw_state *pll_state)
 {
+	int ref_clock = 24000;
 	u32 p0, p1, p2, dco_freq;
 
 	p0 = pll_state->cfgcr2 & DPLL_CFGCR2_PDIV_MASK;
@@ -1586,11 +1589,11 @@ static int skl_calc_wrpll_link(const struct intel_dpll_hw_state *pll_state)
 		break;
 	}
 
-	dco_freq = (pll_state->cfgcr1 & DPLL_CFGCR1_DCO_INTEGER_MASK)
-		* 24 * 1000;
+	dco_freq = (pll_state->cfgcr1 & DPLL_CFGCR1_DCO_INTEGER_MASK) *
+		   ref_clock;
 
-	dco_freq += (((pll_state->cfgcr1 & DPLL_CFGCR1_DCO_FRACTION_MASK) >> 9)
-		     * 24 * 1000) / 0x8000;
+	dco_freq += ((pll_state->cfgcr1 & DPLL_CFGCR1_DCO_FRACTION_MASK) >> 9) *
+		    ref_clock / 0x8000;
 
 	if (WARN_ON(p0 == 0 || p1 == 0 || p2 == 0))
 		return 0;
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
