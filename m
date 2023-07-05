Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 596B1748EC5
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 22:21:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6CC210E3C4;
	Wed,  5 Jul 2023 20:21:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22A5710E3C4
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 20:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688588501; x=1720124501;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Su8LIlWn3JNuvfJ05PTBAoU3HUAGGKJhe9JgJve6sTc=;
 b=N4eNFgbl3z+1wUd9VeSoSDsJ3MwNt2oaEJYJdXOUqX2pO0Z5S+trHLz9
 oL8WFHAPWPbEuw18cNNLvXtiuhqkvFooXY0XHHGpEEo3NubWtdlK1phyr
 vVLjeRi0LgknmG2e50R/ArtPV4jspZ8Q8rRluN7Xp0KIfYyaSD7bTyL1j
 aaHp11kkn/Zcg3rjKKa7xWuLq7c/KgXF6smbomvhV6hkA0ZxPDN5vgjGA
 9ahu7GlSpvoLa4CIL1Ihfm5uESfOH0R0nHzZBFsrLYYGq/q61k+PLvX/4
 +RMzmz/McooGbzsf8TTHC5Gw6gwjmFYNMLFjcKF/87+k8BIlju2t5bwpr Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="353269048"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="353269048"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 13:21:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="754491108"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="754491108"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 05 Jul 2023 13:21:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jul 2023 23:21:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jul 2023 23:21:14 +0300
Message-Id: <20230705202122.17915-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/13] drm/i915: Fully populate crtc_state->dpll
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

Call *_calc_dpll_params() even in cases where the encoder has
computed the DPLL params for us.

The SDVO TV output code doesn't populate crtc_state->dpll.dot
leading to the dotclock getting calculated as zero, and that
leads to all kinds of real problems. The g4x DP code also
doesn't populate the derived dividers nor .vco, which could
also create some confusion.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 71bfeea4cef2..2255ad651486 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1182,6 +1182,8 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 				refclk, NULL, &crtc_state->dpll))
 		return -EINVAL;
 
+	i9xx_calc_dpll_params(refclk, &crtc_state->dpll);
+
 	ilk_compute_dpll(crtc_state, &crtc_state->dpll,
 			 &crtc_state->dpll);
 
@@ -1256,6 +1258,8 @@ static int chv_crtc_compute_clock(struct intel_atomic_state *state,
 				refclk, NULL, &crtc_state->dpll))
 		return -EINVAL;
 
+	chv_calc_dpll_params(refclk, &crtc_state->dpll);
+
 	chv_compute_dpll(crtc_state);
 
 	/* FIXME this is a mess */
@@ -1278,9 +1282,10 @@ static int vlv_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (!crtc_state->clock_set &&
 	    !vlv_find_best_dpll(limit, crtc_state, crtc_state->port_clock,
-				refclk, NULL, &crtc_state->dpll)) {
+				refclk, NULL, &crtc_state->dpll))
 		return -EINVAL;
-	}
+
+	vlv_calc_dpll_params(refclk, &crtc_state->dpll);
 
 	vlv_compute_dpll(crtc_state);
 
@@ -1330,6 +1335,8 @@ static int g4x_crtc_compute_clock(struct intel_atomic_state *state,
 				refclk, NULL, &crtc_state->dpll))
 		return -EINVAL;
 
+	i9xx_calc_dpll_params(refclk, &crtc_state->dpll);
+
 	i9xx_compute_dpll(crtc_state, &crtc_state->dpll,
 			  &crtc_state->dpll);
 
@@ -1368,6 +1375,8 @@ static int pnv_crtc_compute_clock(struct intel_atomic_state *state,
 				refclk, NULL, &crtc_state->dpll))
 		return -EINVAL;
 
+	pnv_calc_dpll_params(refclk, &crtc_state->dpll);
+
 	i9xx_compute_dpll(crtc_state, &crtc_state->dpll,
 			  &crtc_state->dpll);
 
@@ -1404,6 +1413,8 @@ static int i9xx_crtc_compute_clock(struct intel_atomic_state *state,
 				 refclk, NULL, &crtc_state->dpll))
 		return -EINVAL;
 
+	i9xx_calc_dpll_params(refclk, &crtc_state->dpll);
+
 	i9xx_compute_dpll(crtc_state, &crtc_state->dpll,
 			  &crtc_state->dpll);
 
@@ -1444,6 +1455,8 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
 				 refclk, NULL, &crtc_state->dpll))
 		return -EINVAL;
 
+	i9xx_calc_dpll_params(refclk, &crtc_state->dpll);
+
 	i8xx_compute_dpll(crtc_state, &crtc_state->dpll,
 			  &crtc_state->dpll);
 
-- 
2.39.3

