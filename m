Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCA9838A5B
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 10:32:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C510810E6FE;
	Tue, 23 Jan 2024 09:31:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C491B10E6FE
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 09:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706002307; x=1737538307;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=dXAFj9C95ckkItqJX7PYEWrC/saa8XJI/lcf0x50dUM=;
 b=M3arv+n30UTmS1ZvI41wH6NdZDsw4v2GpmWlbVIANEzNzXyBrwdDEYG6
 ZMbYR4t3anwUFoiVKGqr3LMlNRHynrdgoDzuZYbts2ql6XOVYXcVH7ben
 PF3EMH75AuMuUJYi6h9MAD7Q4TSgpw3dFxEoam8jfycrgRwwNu+ARqGm4
 2zih5wWNHf8Au9u7iZs9vmqubTjmchKYqWZ9EJVQIljKkyQt7Qk6koQH9
 v/Qfq5HYDaZwZn7cNa6flneRAopbo1TdREmiigajms+ggmiFW58fLsDXH
 TrMW3FV3dr2XLUl076LBFgdJNYgZYKM39P+qnMXX6rsc0wuCxLh4TGptI A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="14817498"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="14817498"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 01:31:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="820028880"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="820028880"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 23 Jan 2024 01:31:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 23 Jan 2024 11:31:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 3/3] drm/i915: Convert PLL flags to booleans
Date: Tue, 23 Jan 2024 11:31:37 +0200
Message-ID: <20240123093137.9133-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240123093137.9133-1-ville.syrjala@linux.intel.com>
References: <20240123093137.9133-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

No real reason why the PLL flags need to be a bitmask. Switch
to booleans to make the code simpler.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 19 ++++++++--------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 22 ++++++++++---------
 2 files changed, 21 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 085cd6204520..e7e0a4cf9f93 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -1263,11 +1263,11 @@ static const struct dpll_info hsw_plls[] = {
 	{ .name = "WRPLL 2", .funcs = &hsw_ddi_wrpll_funcs, .id = DPLL_ID_WRPLL2, },
 	{ .name = "SPLL", .funcs = &hsw_ddi_spll_funcs, .id = DPLL_ID_SPLL, },
 	{ .name = "LCPLL 810", .funcs = &hsw_ddi_lcpll_funcs, .id = DPLL_ID_LCPLL_810,
-	  .flags = INTEL_DPLL_ALWAYS_ON, },
+	  .always_on = true, },
 	{ .name = "LCPLL 1350", .funcs = &hsw_ddi_lcpll_funcs, .id = DPLL_ID_LCPLL_1350,
-	  .flags = INTEL_DPLL_ALWAYS_ON, },
+	  .always_on = true, },
 	{ .name = "LCPLL 2700", .funcs = &hsw_ddi_lcpll_funcs, .id = DPLL_ID_LCPLL_2700,
-	  .flags = INTEL_DPLL_ALWAYS_ON, },
+	  .always_on = true, },
 	{}
 };
 
@@ -1945,7 +1945,7 @@ static const struct intel_shared_dpll_funcs skl_ddi_dpll0_funcs = {
 
 static const struct dpll_info skl_plls[] = {
 	{ .name = "DPLL 0", .funcs = &skl_ddi_dpll0_funcs, .id = DPLL_ID_SKL_DPLL0,
-	  .flags = INTEL_DPLL_ALWAYS_ON, },
+	  .always_on = true, },
 	{ .name = "DPLL 1", .funcs = &skl_ddi_pll_funcs, .id = DPLL_ID_SKL_DPLL1, },
 	{ .name = "DPLL 2", .funcs = &skl_ddi_pll_funcs, .id = DPLL_ID_SKL_DPLL2, },
 	{ .name = "DPLL 3", .funcs = &skl_ddi_pll_funcs, .id = DPLL_ID_SKL_DPLL3, },
@@ -4030,7 +4030,7 @@ static const struct dpll_info icl_plls[] = {
 	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
 	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
 	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
-	  .flags = INTEL_DPLL_IS_ALT_PORT_DPLL, },
+	  .is_alt_port_dpll = true, },
 	{ .name = "MG PLL 1", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
 	{ .name = "MG PLL 2", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
 	{ .name = "MG PLL 3", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL3, },
@@ -4076,7 +4076,7 @@ static const struct dpll_info tgl_plls[] = {
 	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
 	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
 	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
-	  .flags = INTEL_DPLL_IS_ALT_PORT_DPLL, },
+	  .is_alt_port_dpll = true, },
 	{ .name = "TC PLL 1", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
 	{ .name = "TC PLL 2", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
 	{ .name = "TC PLL 3", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL3, },
@@ -4150,7 +4150,7 @@ static const struct dpll_info adlp_plls[] = {
 	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
 	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
 	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
-	  .flags = INTEL_DPLL_IS_ALT_PORT_DPLL, },
+	  .is_alt_port_dpll = true, },
 	{ .name = "TC PLL 1", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
 	{ .name = "TC PLL 2", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
 	{ .name = "TC PLL 3", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL3, },
@@ -4480,7 +4480,7 @@ verify_single_dpll_state(struct drm_i915_private *i915,
 
 	active = intel_dpll_get_hw_state(i915, pll, &dpll_hw_state);
 
-	if (!(pll->info->flags & INTEL_DPLL_ALWAYS_ON)) {
+	if (!pll->info->always_on) {
 		I915_STATE_WARN(i915, !pll->on && pll->active_mask,
 				"%s: pll in active use but not on in sw tracking\n",
 				pll->info->name);
@@ -4527,8 +4527,7 @@ static bool has_alt_port_dpll(const struct intel_shared_dpll *old_pll,
 			      const struct intel_shared_dpll *new_pll)
 {
 	return old_pll && new_pll && old_pll != new_pll &&
-		(old_pll->info->flags & INTEL_DPLL_IS_ALT_PORT_DPLL ||
-		 new_pll->info->flags & INTEL_DPLL_IS_ALT_PORT_DPLL);
+		(old_pll->info->is_alt_port_dpll || new_pll->info->is_alt_port_dpll);
 }
 
 void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 5cdec77cfd9d..616afe861b46 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -276,19 +276,21 @@ struct dpll_info {
 	 */
 	enum intel_display_power_domain power_domain;
 
-#define INTEL_DPLL_ALWAYS_ON	(1 << 0)
-#define INTEL_DPLL_IS_ALT_PORT_DPLL	(1 << 1)
 	/**
-	 * @flags:
+	 * @always_on:
 	 *
-	 * INTEL_DPLL_ALWAYS_ON
-	 *     Inform the state checker that the DPLL is kept enabled even if
-	 *     not in use by any CRTC.
-	 * INTEL_DPLL_IS_ALT_PORT_DPLL
-	 *     Inform the state checker that the DPLL can be used as a fallback
-	 *     (for TC->TBT fallback).
+	 * Inform the state checker that the DPLL is kept enabled even if
+	 * not in use by any CRTC.
 	 */
-	u32 flags;
+	bool always_on;
+
+	/**
+	 * @is_alt_port_dpll:
+	 *
+	 * Inform the state checker that the DPLL can be used as a fallback
+	 * (for TC->TBT fallback).
+	 */
+	bool is_alt_port_dpll;
 };
 
 /**
-- 
2.43.0

