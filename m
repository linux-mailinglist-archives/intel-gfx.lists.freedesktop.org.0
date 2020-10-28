Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2042B29CF36
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 10:25:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 838BA6E4BB;
	Wed, 28 Oct 2020 09:25:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1779E6E4BB
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 09:25:26 +0000 (UTC)
IronPort-SDR: XF2QTDTIbEuEL+5QypWDFWyT1WsU5rM7AdwSs5V+BHbI8NwvpWw41ibfOTlHBrgR/30AEY/QtO
 GmBBHibdx/Pw==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="165640230"
X-IronPort-AV: E=Sophos;i="5.77,425,1596524400"; d="scan'208";a="165640230"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 02:25:25 -0700
IronPort-SDR: 6FN0eDNPf0pA1malaT1sd+6QYu1h4SfsT9yJT7OQm0tqxzQ3IUP+gCuVf5Yt15tVycBo7nq0zw
 WAsF83nUQRMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,426,1596524400"; d="scan'208";a="525060019"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by fmsmga006.fm.intel.com with ESMTP; 28 Oct 2020 02:25:24 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Oct 2020 14:46:41 +0530
Message-Id: <20201028091641.137195-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/ehl: Implement W/A 22010492432
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
Cc: hariom.pandey@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As per W/A implemented for TGL to program half of the nominal
DCO divider fraction value which is also applicable on EHL.

Cc: Deak Imre <imre.deak@intel.com>
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index eaef7a2d041f..0f3208d3c083 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2636,13 +2636,15 @@ static bool cnl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 }
 
 /*
- * Display WA #22010492432: tgl
+ * Display WA #22010492432: ehl, tgl
  * Program half of the nominal DCO divider fraction value.
  */
 static bool
-tgl_combo_pll_div_frac_wa_needed(struct drm_i915_private *i915)
+combo_pll_div_frac_wa_needed(struct drm_i915_private *i915)
 {
-	return IS_TIGERLAKE(i915) && i915->dpll.ref_clks.nssc == 38400;
+	return (IS_PLATFORM(i915, INTEL_ELKHARTLAKE) ||
+		IS_TIGERLAKE(i915)) &&
+		i915->dpll.ref_clks.nssc == 38400;
 }
 
 static int __cnl_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
@@ -2696,7 +2698,7 @@ static int __cnl_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
 	dco_fraction = (pll_state->cfgcr0 & DPLL_CFGCR0_DCO_FRACTION_MASK) >>
 		       DPLL_CFGCR0_DCO_FRACTION_SHIFT;
 
-	if (tgl_combo_pll_div_frac_wa_needed(dev_priv))
+	if (combo_pll_div_frac_wa_needed(dev_priv))
 		dco_fraction *= 2;
 
 	dco_freq += (dco_fraction * ref_clock) / 0x8000;
@@ -3086,7 +3088,7 @@ static void icl_calc_dpll_state(struct drm_i915_private *i915,
 
 	memset(pll_state, 0, sizeof(*pll_state));
 
-	if (tgl_combo_pll_div_frac_wa_needed(i915))
+	if (combo_pll_div_frac_wa_needed(i915))
 		dco_fraction = DIV_ROUND_CLOSEST(dco_fraction, 2);
 
 	pll_state->cfgcr0 = DPLL_CFGCR0_DCO_FRACTION(dco_fraction) |
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
