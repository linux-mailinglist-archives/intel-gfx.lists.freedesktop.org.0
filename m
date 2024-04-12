Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B210A8A35A3
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 20:27:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0CA010F7AA;
	Fri, 12 Apr 2024 18:27:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WS6Gg879";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BABD210F7A0
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 18:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712946447; x=1744482447;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XPHsCaVG9dt4ngm+Furb2frGhJMNV9cdU+f2U2X4Vfo=;
 b=WS6Gg879a+rpnG9/8h42WQMgMLQ/SJiFBc6D3G3oGDIw7E9V/SP5U7e1
 +2aG+FYsqOJwYmtCOovpNWzw7icHkYeYP5tg3WS7/UZXDeg1PNKaR52+V
 j/XckV967FhxYH6qvZuCEPZgWQk06t333+ZcrdpgKcD6Tm9n/bndbTLbO
 NOUT6CwFjL2UzyMsTUJ4zHl7BdzQ9ycQiRaMYAAG3GZs5ff7zk52HLyXI
 CwzPd8cCJyKxn4rcEJROzttxLrPDVBN6bz1H4eB6KY4SzwnW6WgqILu8z
 1trIW1OWBxUlK3uYH/PN4rypJGd6IbswkKXfzfrYwtGONF1nt+XUK/d5y Q==;
X-CSE-ConnectionGUID: w81HsvOFQpGQjNmujHE/vw==
X-CSE-MsgGUID: PSVxymIlQI23SfM9/iiiXw==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19560533"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19560533"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 11:27:26 -0700
X-CSE-ConnectionGUID: BBigrgoERVKPNrlhmKJWrA==
X-CSE-MsgGUID: 14Jp71zATvKBv+nz3ZUDZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21394589"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 11:27:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 21:27:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/18] drm/i915: Extract i9xx_dpll_get_hw_state()
Date: Fri, 12 Apr 2024 21:26:52 +0300
Message-ID: <20240412182703.19916-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
References: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
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

Start making the GMCH DPLL code a bit more like the more modern
platforms by separating out the DPLL hw state readout from the
rest of the pipe readout.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 24 +++-------------
 drivers/gpu/drm/i915/display/intel_dpll.c    | 30 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dpll.h    |  3 ++
 3 files changed, 37 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a92b67adee9c..70ba8a9c671e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3071,19 +3071,16 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 
 	i9xx_get_pfit_config(pipe_config);
 
+	i9xx_dpll_get_hw_state(crtc, &pipe_config->dpll_hw_state);
+
 	if (DISPLAY_VER(dev_priv) >= 4) {
-		/* No way to read it out on pipes B and C */
-		if (IS_CHERRYVIEW(dev_priv) && crtc->pipe != PIPE_A)
-			tmp = dev_priv->display.state.chv_dpll_md[crtc->pipe];
-		else
-			tmp = intel_de_read(dev_priv, DPLL_MD(crtc->pipe));
+		tmp = pipe_config->dpll_hw_state.dpll_md;
 		pipe_config->pixel_multiplier =
 			((tmp & DPLL_MD_UDI_MULTIPLIER_MASK)
 			 >> DPLL_MD_UDI_MULTIPLIER_SHIFT) + 1;
-		pipe_config->dpll_hw_state.dpll_md = tmp;
 	} else if (IS_I945G(dev_priv) || IS_I945GM(dev_priv) ||
 		   IS_G33(dev_priv) || IS_PINEVIEW(dev_priv)) {
-		tmp = intel_de_read(dev_priv, DPLL(crtc->pipe));
+		tmp = pipe_config->dpll_hw_state.dpll;
 		pipe_config->pixel_multiplier =
 			((tmp & SDVO_MULTIPLIER_MASK)
 			 >> SDVO_MULTIPLIER_SHIFT_HIRES) + 1;
@@ -3093,19 +3090,6 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 		 * function. */
 		pipe_config->pixel_multiplier = 1;
 	}
-	pipe_config->dpll_hw_state.dpll = intel_de_read(dev_priv,
-							DPLL(crtc->pipe));
-	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv)) {
-		pipe_config->dpll_hw_state.fp0 = intel_de_read(dev_priv,
-							       FP0(crtc->pipe));
-		pipe_config->dpll_hw_state.fp1 = intel_de_read(dev_priv,
-							       FP1(crtc->pipe));
-	} else {
-		/* Mask out read-only status bits. */
-		pipe_config->dpll_hw_state.dpll &= ~(DPLL_LOCK_VLV |
-						     DPLL_PORTC_READY_MASK |
-						     DPLL_PORTB_READY_MASK);
-	}
 
 	if (IS_CHERRYVIEW(dev_priv))
 		chv_crtc_clock_get(crtc, pipe_config);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index aa46e9e80786..693e22f06aee 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -385,6 +385,36 @@ static int i9xx_pll_refclk(struct drm_device *dev,
 		return 48000;
 }
 
+void i9xx_dpll_get_hw_state(struct intel_crtc *crtc,
+			    struct intel_dpll_hw_state *hw_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+
+	if (DISPLAY_VER(dev_priv) >= 4) {
+		u32 tmp;
+
+		/* No way to read it out on pipes B and C */
+		if (IS_CHERRYVIEW(dev_priv) && crtc->pipe != PIPE_A)
+			tmp = dev_priv->display.state.chv_dpll_md[crtc->pipe];
+		else
+			tmp = intel_de_read(dev_priv, DPLL_MD(crtc->pipe));
+
+		hw_state->dpll_md = tmp;
+	}
+
+	hw_state->dpll = intel_de_read(dev_priv, DPLL(crtc->pipe));
+
+	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv)) {
+		hw_state->fp0 = intel_de_read(dev_priv, FP0(crtc->pipe));
+		hw_state->fp1 = intel_de_read(dev_priv, FP1(crtc->pipe));
+	} else {
+		/* Mask out read-only status bits. */
+		hw_state->dpll &= ~(DPLL_LOCK_VLV |
+				    DPLL_PORTC_READY_MASK |
+				    DPLL_PORTB_READY_MASK);
+	}
+}
+
 /* Returns the clock of the currently programmed mode of the given pipe. */
 void i9xx_crtc_clock_get(struct intel_crtc *crtc,
 			 struct intel_crtc_state *pipe_config)
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.h b/drivers/gpu/drm/i915/display/intel_dpll.h
index ac01bb19cc6c..c11c18277266 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll.h
@@ -13,6 +13,7 @@ struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_dpll_hw_state;
 enum pipe;
 
 void intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv);
@@ -22,6 +23,8 @@ int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc);
 int i9xx_calc_dpll_params(int refclk, struct dpll *clock);
 u32 i9xx_dpll_compute_fp(const struct dpll *dpll);
+void i9xx_dpll_get_hw_state(struct intel_crtc *crtc,
+			    struct intel_dpll_hw_state *hw_state);
 void vlv_compute_dpll(struct intel_crtc_state *crtc_state);
 void chv_compute_dpll(struct intel_crtc_state *crtc_state);
 
-- 
2.43.2

