Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CF554FB58
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 18:45:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A12C510E73F;
	Fri, 17 Jun 2022 16:45:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A26010E73F
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 16:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655484338; x=1687020338;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SSdrciIJ3BgnNCi181QM9o1zFAaTXROrGyZg2KFdAag=;
 b=E7fIUcko7Gv3xsk6aMQXSR3Fv8DvInSaIg+4Ohqm0c65XtHh25Dkiz9n
 FOY8E56ad925yg+Z8EfT5cvqc+WmWQfJMNL0U17RKfeVe196mW+TG47Cz
 aXxdsOyLmoSKC9Zw2f6/jm/5S/BbHJVfvR9wehPSkjIQxjNxfM0v9nNrW
 XS9fA8xlvbA6XEFtFKai9k5Zm658B+t6OEM6qBu07A3iDJuuBnNTR+FC1
 49w9/8IGR1JrHP0nbkf4M307csvGsHws3bsmVvJ3z/wwATVwYUwSihdwV
 G4Lrknz8E9brs8ShGmsqFvySG4t5oIiR+1O3qyMDZDcpsSeH2Ial4sIPB g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="262555498"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="262555498"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 09:05:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="619293027"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga001.jf.intel.com with SMTP; 17 Jun 2022 09:05:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Jun 2022 19:05:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jun 2022 19:05:04 +0300
Message-Id: <20220617160510.2082-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
References: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/16] drm/i915: Set active dpll early for
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

