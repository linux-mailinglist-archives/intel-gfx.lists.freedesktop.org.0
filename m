Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7066838A5A
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 10:32:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C25D10E6F4;
	Tue, 23 Jan 2024 09:31:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9806110E6E6
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 09:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706002303; x=1737538303;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+bNC81SmnYzXYQ2isaTKFe7IwcuohJ91Hil6BVgzkdo=;
 b=YUDD81MgCxjxkEAR8ITgDb7Mk9y+/WczslScpf4TfgPJX35vam8cvcku
 pg6/hdpEiDsaqmRMHUrhnA4o1LI7TSBx62ImCz77zS2mNOpRI3mKIjDj1
 3MVMrQ/VK99KEWrpfP2uxgfVIO8O6+rSrjbfWW0suuLIg0s2/lFiecIy6
 3DAAupzJ8QaNpdrZzTNZ2QuNi/1y13e3yS7uug2fB7cWAwTu+vjopC862
 gNaXTuUm+CZGeWgaS7pU8FpVmNAzjLTKuGfxjuUpxuLWZMmKqpGLSqwWs
 WkM2F2QYPu5za0PFYC7dEfImOiGxs/lVez9FFwHyy1XKAi2TBM7hYorX2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="14817482"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="14817482"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 01:31:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="820028865"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="820028865"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 23 Jan 2024 01:31:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 23 Jan 2024 11:31:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 2/3] drm/i915: Suppress old PLL pipe_mask checks for
 MG/TC/TBT PLLs
Date: Tue, 23 Jan 2024 11:31:36 +0200
Message-ID: <20240123093137.9133-2-ville.syrjala@linux.intel.com>
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

TC ports have both the MG/TC and TBT PLLs selected simultanously (so
that we can switch from MG/TC to TBT as a fallback). This doesn't play
well with the state checker that assumes that the old PLL shouldn't
have the pipe in its pipe_mask anymore. Suppress that check for these
PLLs to avoid spurious WARNs when you disconnect a TC port and a
non-disabling modeset happens before actually disabling the port.

v2: Only suppress when one of the PLLs is the TBT PLL and the
    other one is not

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9816
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 23 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  4 ++++
 2 files changed, 23 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index ce97677d44f0..085cd6204520 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4029,7 +4029,8 @@ static const struct intel_shared_dpll_funcs mg_pll_funcs = {
 static const struct dpll_info icl_plls[] = {
 	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
 	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
-	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL, },
+	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
+	  .flags = INTEL_DPLL_IS_ALT_PORT_DPLL, },
 	{ .name = "MG PLL 1", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
 	{ .name = "MG PLL 2", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
 	{ .name = "MG PLL 3", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL3, },
@@ -4074,7 +4075,8 @@ static const struct intel_shared_dpll_funcs dkl_pll_funcs = {
 static const struct dpll_info tgl_plls[] = {
 	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
 	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
-	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL, },
+	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
+	  .flags = INTEL_DPLL_IS_ALT_PORT_DPLL, },
 	{ .name = "TC PLL 1", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
 	{ .name = "TC PLL 2", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
 	{ .name = "TC PLL 3", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL3, },
@@ -4147,7 +4149,8 @@ static const struct intel_dpll_mgr adls_pll_mgr = {
 static const struct dpll_info adlp_plls[] = {
 	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
 	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
-	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL, },
+	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
+	  .flags = INTEL_DPLL_IS_ALT_PORT_DPLL, },
 	{ .name = "TC PLL 1", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
 	{ .name = "TC PLL 2", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
 	{ .name = "TC PLL 3", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL3, },
@@ -4520,6 +4523,14 @@ verify_single_dpll_state(struct drm_i915_private *i915,
 			pll->info->name);
 }
 
+static bool has_alt_port_dpll(const struct intel_shared_dpll *old_pll,
+			      const struct intel_shared_dpll *new_pll)
+{
+	return old_pll && new_pll && old_pll != new_pll &&
+		(old_pll->info->flags & INTEL_DPLL_IS_ALT_PORT_DPLL ||
+		 new_pll->info->flags & INTEL_DPLL_IS_ALT_PORT_DPLL);
+}
+
 void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
@@ -4541,7 +4552,11 @@ void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
 		I915_STATE_WARN(i915, pll->active_mask & pipe_mask,
 				"%s: pll active mismatch (didn't expect pipe %c in active mask (0x%x))\n",
 				pll->info->name, pipe_name(crtc->pipe), pll->active_mask);
-		I915_STATE_WARN(i915, pll->state.pipe_mask & pipe_mask,
+
+		/* TC ports have both MG/TC and TBT PLL referenced simultaneously */
+		I915_STATE_WARN(i915, !has_alt_port_dpll(old_crtc_state->shared_dpll,
+							 new_crtc_state->shared_dpll) &&
+				pll->state.pipe_mask & pipe_mask,
 				"%s: pll enabled crtcs mismatch (found pipe %c in enabled mask (0x%x))\n",
 				pll->info->name, pipe_name(crtc->pipe), pll->state.pipe_mask);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 2e7ea0d8d3ff..5cdec77cfd9d 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -277,12 +277,16 @@ struct dpll_info {
 	enum intel_display_power_domain power_domain;
 
 #define INTEL_DPLL_ALWAYS_ON	(1 << 0)
+#define INTEL_DPLL_IS_ALT_PORT_DPLL	(1 << 1)
 	/**
 	 * @flags:
 	 *
 	 * INTEL_DPLL_ALWAYS_ON
 	 *     Inform the state checker that the DPLL is kept enabled even if
 	 *     not in use by any CRTC.
+	 * INTEL_DPLL_IS_ALT_PORT_DPLL
+	 *     Inform the state checker that the DPLL can be used as a fallback
+	 *     (for TC->TBT fallback).
 	 */
 	u32 flags;
 };
-- 
2.43.0

