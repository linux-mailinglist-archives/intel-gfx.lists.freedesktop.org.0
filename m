Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F8E518C3C
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:23:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 004E210E7DB;
	Tue,  3 May 2022 18:23:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEE2110E7DB
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602216; x=1683138216;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=s/kbl+iAdANPeTm/6AtzlTgpOUTxfGvu9WyVl5MivRc=;
 b=H5nwUGwmmvSUF5RChHXv7oJ8qA2M8shUS2L1qkKfIOlsmpWMvzXdZ/+9
 QMfe2R+W2qqlxV/Cg8rptY9bo31VTiS1BTFCFh9Mgh+IDx2FYnMP7iblq
 P57NlDKSR0XyuQxHhgYT7Z0mzXxrDi222EO51gWUXDF613OnFNbim0IV1
 DyjH2rdmxiI0yrF2fGIpBBkM0JdyTngRHbgfkZDRVfFnKJ9zwZMt04K8S
 3MQ+aKZR8KqgBMxw1VDSdHihE+LaowG0X/b1y0AHwtIUr5URd8aY2TtmD
 AlM9k3rQxUuL+EYytQSPwARk/t7ukNIHJXPUS6yi4IlAcMtrPb6/e/bHS A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="248095887"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="248095887"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:23:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="708130994"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga001.fm.intel.com with SMTP; 03 May 2022 11:23:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:23:33 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:33 +0300
Message-Id: <20220503182242.18797-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 17/26] drm/i915: Set active dpll early for icl+
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 416d78f9e140..6564d7baf978 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3225,6 +3225,9 @@ static int icl_compute_combo_phy_dpll(struct intel_atomic_state *state,
 
 	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
 
+	/* this is mainly for the fastset check */
+	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
+
 	crtc_state->port_clock = icl_ddi_combo_pll_get_freq(dev_priv, NULL,
 							    &port_dpll->hw_state);
 
@@ -3313,6 +3316,9 @@ static int icl_compute_tc_phy_dplls(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
+	/* this is mainly for the fastset check */
+	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_MG_PHY);
+
 	crtc_state->port_clock = icl_ddi_mg_pll_get_freq(dev_priv, NULL,
 							 &port_dpll->hw_state);
 
-- 
2.35.1

