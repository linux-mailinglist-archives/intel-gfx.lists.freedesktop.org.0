Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 842085B0013
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 11:12:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2C1010E4EE;
	Wed,  7 Sep 2022 09:12:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8AF610E4A0
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 09:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662541895; x=1694077895;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PiGsB+StZBRDRb/02KLsToLzQztDbsYPGTmRGIv2/58=;
 b=DV3FY5H5x2KeWv9TvpB0h5zS9yciBSSx64s+fIGNOxmdzr7vCm0zI5G7
 eU0Z0m7wZBDWnAj29GuSYJD7ncLB9dVuQWB1aM82RiS83PTH+BdqPJYVm
 fYwJF11KeBPtKh+Dra63fUz0YkzRiWCbAq1N43/1kBRBW8B4TZjGaaJg5
 e8RuQtk0R0KEl/GDfr9FIPWfzxOrDFNyatlLJkOqFizW9CaWU/VG2LwBG
 ASdYDsi9dq7WdvKTZWKbMHxkkV/IDzNj3YRKTKbCSQ9atkeyUTBSAfln+
 crip/rrEkTRqWXowPx+Sazcln0rJcJzKqne1FpNFIu3qnoio0XxbiaWQi g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="298138128"
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="298138128"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 02:11:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="647561746"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 07 Sep 2022 02:11:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Sep 2022 12:11:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 12:10:51 +0300
Message-Id: <20220907091057.11572-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
References: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 11/17] drm/i915: Set active dpll early for
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
index 48a51e196c5f..e5fb66a5dd02 100644
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

