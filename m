Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F2D5BFDC7
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 14:24:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0475A10E956;
	Wed, 21 Sep 2022 12:23:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD4A810E952
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 12:23:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663763032; x=1695299032;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=r6zGv/0966rD5Kzx6vwXHolY7/asKdVQWuRBoFvDFPI=;
 b=fksfKA3HqKfUM+SQASzoyvmd2ifUsfRmcAd+4nYkLBlvGi6rHIEnvNqM
 1v5MpzRQqwnP4f49rJGeBN360W61GJlkS5REuUr394RtkSQ8pztgaPGYa
 MGatDw3hPLqJ28ZksKaOvwGE1QAKA5xax21rsKSdulXXC3lyJWfTKN824
 WBgHXsVWQBYLYtCKanIRQD8TBK+mtvIQQoUfw4sq5/lw9p3/sbLf1gczj
 goRavc4v44eAIslyCMMGdh7P1dgZZpowcHZ5GPRLWPwxp4OG3tnerqTNB
 CUvtj5X5nIuEUg7w/fLN5tydHuUSnzPpFglsubq9o1fsRUMciCcsqVQqM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="363963054"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="363963054"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 05:23:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="596961332"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 21 Sep 2022 05:23:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Sep 2022 15:23:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Sep 2022 15:23:41 +0300
Message-Id: <20220921122343.13061-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220921122343.13061-1-ville.syrjala@linux.intel.com>
References: <20220921122343.13061-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Nuke intel_get_shared_dpll_id()
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

Each PLL knows its own ID so intel_get_shared_dpll_id() is
pointless. Get rid of it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  4 ++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 22 -------------------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  3 ---
 3 files changed, 2 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 643832d55c28..5057ee3c93fc 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3536,7 +3536,7 @@ static void icl_ddi_tc_get_clock(struct intel_encoder *encoder,
 	if (drm_WARN_ON(&i915->drm, !pll))
 		return;
 
-	if (intel_get_shared_dpll_id(i915, pll) == DPLL_ID_ICL_TBTPLL)
+	if (pll->info->id == DPLL_ID_ICL_TBTPLL)
 		port_dpll_id = ICL_PORT_DPLL_DEFAULT;
 	else
 		port_dpll_id = ICL_PORT_DPLL_MG_PHY;
@@ -3549,7 +3549,7 @@ static void icl_ddi_tc_get_clock(struct intel_encoder *encoder,
 
 	icl_set_active_port_dpll(crtc_state, port_dpll_id);
 
-	if (intel_get_shared_dpll_id(i915, crtc_state->shared_dpll) == DPLL_ID_ICL_TBTPLL)
+	if (crtc_state->shared_dpll->info->id == DPLL_ID_ICL_TBTPLL)
 		crtc_state->port_clock = icl_calc_tbt_pll_link(i915, encoder->port);
 	else
 		crtc_state->port_clock = intel_dpll_get_freq(i915, crtc_state->shared_dpll,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 9c60cf69cde1..f900c4c73cc6 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -152,28 +152,6 @@ intel_get_shared_dpll_by_id(struct drm_i915_private *dev_priv,
 	return &dev_priv->display.dpll.shared_dplls[id];
 }
 
-/**
- * intel_get_shared_dpll_id - get the id of a DPLL
- * @dev_priv: i915 device instance
- * @pll: the DPLL
- *
- * Returns:
- * The id of @pll
- */
-enum intel_dpll_id
-intel_get_shared_dpll_id(struct drm_i915_private *dev_priv,
-			 struct intel_shared_dpll *pll)
-{
-	long pll_idx = pll - dev_priv->display.dpll.shared_dplls;
-
-	if (drm_WARN_ON(&dev_priv->drm,
-			pll_idx < 0 ||
-			pll_idx >= dev_priv->display.dpll.num_shared_dpll))
-		return -1;
-
-	return pll_idx;
-}
-
 /* For ILK+ */
 void assert_shared_dpll(struct drm_i915_private *dev_priv,
 			struct intel_shared_dpll *pll,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 3247dc300ae4..3854f1b4299a 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -328,9 +328,6 @@ struct intel_shared_dpll {
 struct intel_shared_dpll *
 intel_get_shared_dpll_by_id(struct drm_i915_private *dev_priv,
 			    enum intel_dpll_id id);
-enum intel_dpll_id
-intel_get_shared_dpll_id(struct drm_i915_private *dev_priv,
-			 struct intel_shared_dpll *pll);
 void assert_shared_dpll(struct drm_i915_private *dev_priv,
 			struct intel_shared_dpll *pll,
 			bool state);
-- 
2.35.1

