Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE35831B42
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jan 2024 15:24:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1379B10E0A6;
	Thu, 18 Jan 2024 14:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 135DF10E79B
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jan 2024 14:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705587881; x=1737123881;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ilp679WbDDCWLvPe38wZdhyHImHOXFuSXZRU3MosLGA=;
 b=chYzjhTYmTC3UPnYi6+imm/YUoOt2gk/UyRHAleJE1rTw+7u3v9wdzF5
 T2ZjNfA1f7u/paNhzfr/2GJ0ptDxIBFtNcesqnRYD18LqQhVnHoltVfEK
 4JWtVwYJqYNgUJ6ALoAHAcF2zeevF6KU7JhrDo/EGYB45mL0In+QBbwtS
 U/rnPYXQ8AondWqRdJO1FQ/mLtcDwD2H4d4xxoASgfZF7dU9+TgrsNXFs
 gvPl9zxgnGReTE1MGwGx1SI/Zq8AAFYncBEULIrgvZSCCvTE5rpS3UA4/
 pLOTiG61GssAz4jq6SP/fhgXZTCF4ihQQZ+veErBZdQC9bao5Q6B3u4/L A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="19053288"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="19053288"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 06:24:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="777734218"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="777734218"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 18 Jan 2024 06:24:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Jan 2024 16:24:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915: Try to preserve the current shared_dpll for fastset
 on type-c ports
Date: Thu, 18 Jan 2024 16:24:36 +0200
Message-ID: <20240118142436.25928-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
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

Currently icl_compute_tc_phy_dplls() assumes that the active
PLL will be the TC PLL (as opposed to the TBT PLL). The actual
PLL will be selected during the modeset enable sequence, but
we need to put *something* into the crtc_state->shared_dpll
already during compute_config().

The downside of assuming one PLL or the other is that we'll
fail to fastset if the assumption doesn't match what was in
use previously. So let's instead keep the same PLL that was
in use previously (assuming there was one). This should allow
fastset to work again when using TBT PLL, at least in the
steady state.

Now, assuming we want keep the same PLL may not be entirely
correct either. But we should be covered by the typ-c link
reset handling which will force a full modeset by flagging
connectors_changed=true which means the resulting modeset
can't be converted into a fastset even if the full crtc state
looks identical.

Cc: Imre Deak <imre.deak@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index ef57dad1a9cb..1008e18177c9 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3308,6 +3308,8 @@ static int icl_compute_tc_phy_dplls(struct intel_atomic_state *state,
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
 	struct icl_port_dpll *port_dpll =
 		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
 	struct skl_wrpll_params pll_params = {};
@@ -3326,7 +3328,11 @@ static int icl_compute_tc_phy_dplls(struct intel_atomic_state *state,
 		return ret;
 
 	/* this is mainly for the fastset check */
-	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_MG_PHY);
+	if (old_crtc_state->shared_dpll &&
+	    old_crtc_state->shared_dpll->info->id == DPLL_ID_ICL_TBTPLL)
+		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
+	else
+		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_MG_PHY);
 
 	crtc_state->port_clock = icl_ddi_mg_pll_get_freq(i915, NULL,
 							 &port_dpll->hw_state);
-- 
2.41.0

