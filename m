Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E766827B8DF
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 02:29:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D4846E3F0;
	Tue, 29 Sep 2020 00:29:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54EF089F07
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 00:29:36 +0000 (UTC)
IronPort-SDR: G7bA/e+uAr7ixvvongp5Po8MEI7T7erm/aKtvgPOxGoVWbWLfIaAEkzaKYzl2sPSUOBo+K5J+K
 sgyhJFkweJoQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9758"; a="180242835"
X-IronPort-AV: E=Sophos;i="5.77,315,1596524400"; d="scan'208";a="180242835"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 17:29:35 -0700
IronPort-SDR: FahgqsyL4etcqPdGOPGcEhlLXQ+X/P3NGTg0WNRh9eu9epS3JHsy3Xj7/icLHCKc/0aj9isqPQ
 aKV4hFfEcFpA==
X-IronPort-AV: E=Sophos;i="5.77,315,1596524400"; d="scan'208";a="488817659"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 17:29:34 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Sep 2020 03:29:27 +0300
Message-Id: <20200929002929.783620-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200929002929.783620-1-imre.deak@intel.com>
References: <20200929002929.783620-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/icl: Cross check the combo PLL
 WRPLL parameters wrt. hard-coded PLL freqs
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

When selecting the WRPLL dividers for a given port clock/PLL freq, the
hard-coded PLL freq in a table entry can be calculated using the rest of
parameters in the same entry. Cross-check if the hard coded values match
what we calculate with the formula.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 26 ++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index e3370c8dccc8..ded2b2dfe319 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3002,6 +3002,30 @@ static const struct skl_wrpll_params tgl_tbt_pll_38_4MHz_values = {
 	.pdiv = 0, .kdiv = 0, .qdiv_mode = 0, .qdiv_ratio = 0,
 };
 
+static int icl_wrpll_ref_clock(struct drm_i915_private *i915);
+
+static bool icl_dp_combo_pll_clock_match(struct drm_i915_private *i915, int clock,
+					 const struct icl_combo_pll_params *p)
+{
+	int ref_clock = icl_wrpll_ref_clock(i915);
+	int pll_freq;
+	u32 pdiv;
+	u32 qdiv;
+	u32 kdiv;
+
+	cnl_wrpll_decode_divs(&p->wrpll, &pdiv, &qdiv, &kdiv);
+
+	pll_freq = skl_wrpll_calc_freq(ref_clock,
+				       p->wrpll.dco_integer, p->wrpll.dco_fraction,
+				       pdiv, qdiv, kdiv);
+	drm_WARN_ON(&i915->drm, pll_freq != p->clock);
+
+	if (clock == pll_freq)
+		return true;
+
+	return false;
+}
+
 static bool icl_calc_dp_combo_pll(struct intel_crtc_state *crtc_state,
 				  struct skl_wrpll_params *pll_params)
 {
@@ -3014,7 +3038,7 @@ static bool icl_calc_dp_combo_pll(struct intel_crtc_state *crtc_state,
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(icl_dp_combo_pll_24MHz_values); i++) {
-		if (clock == params[i].clock) {
+		if (icl_dp_combo_pll_clock_match(dev_priv, clock, &params[i])) {
 			*pll_params = params[i].wrpll;
 			return true;
 		}
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
