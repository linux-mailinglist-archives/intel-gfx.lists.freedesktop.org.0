Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE1D552317
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 19:52:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8804510EDFB;
	Mon, 20 Jun 2022 17:52:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0E0E10EE02
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 17:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655747567; x=1687283567;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SSdrciIJ3BgnNCi181QM9o1zFAaTXROrGyZg2KFdAag=;
 b=R7obgh0i0uUfRtCm3H/ujfv31GE3CnuseCPrlBzzQ4w9iWnxEET+Szig
 obhaHcFG1oTtuUHFF73tBGujukXXw3s0in5iGcGrdo+nq037Oz0VCE7NW
 4EWas4q/cbF0BcmYRycWE+mGF2Z3pMyjVJ1C8A+1JBMAX9/LrHDnXgSnd
 wL7Zz2+bIXYR/PnqVwEjIz0im9eXPlr94Yt2njt3GhymR4Ogk7G3224FP
 dEFueutLGZt3e32fRp9E/O39VDRiyGNmh/+f5vd8T1tI9IkHMw283zhWG
 Avl2rZiXvX5msJt7jW/BglqoPKC/xGcxhQAarpmD+XoYQ5SKQ5DyBLHnl A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="259770545"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="259770545"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 10:52:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="591276143"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga007.fm.intel.com with SMTP; 20 Jun 2022 10:52:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jun 2022 20:52:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 20:52:04 +0300
Message-Id: <20220620175210.28788-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
References: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 11/17] drm/i915: Set active dpll early for
 icl+
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

To make the fastboot checks at least somewhat sensible let's mark
the expected DPLL as the active one right after we finished the
state computation. Otherwise intel_pipe_config_compare() will
always be comparing things against NULL/0.

TODO: This is still not really right. If the previous commit
had to fall back to the other PLL then the comparisong will
now fail. I guess intel_pipe_config_compare() should rather
be comparing port_dplls[] instead. But to do that we really
should just unify every platform to use the port_dplls[]
approach whether they have any need for PLL fallbacks or not.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 09816526c5e4..c99ec8da20e0 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3213,6 +3213,9 @@ static int icl_compute_combo_phy_dpll(struct intel_atomic_state *state,
 
 	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
 
+	/* this is mainly for the fastset check */
+	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
+
 	crtc_state->port_clock = icl_ddi_combo_pll_get_freq(dev_priv, NULL,
 							    &port_dpll->hw_state);
 
@@ -3301,6 +3304,9 @@ static int icl_compute_tc_phy_dplls(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
+	/* this is mainly for the fastset check */
+	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_MG_PHY);
+
 	crtc_state->port_clock = icl_ddi_mg_pll_get_freq(dev_priv, NULL,
 							 &port_dpll->hw_state);
 
-- 
2.35.1

