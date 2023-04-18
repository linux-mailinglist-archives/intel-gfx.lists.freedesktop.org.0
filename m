Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D2E6E6B91
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 19:56:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C46A710E843;
	Tue, 18 Apr 2023 17:56:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 653D010E82F
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 17:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681840559; x=1713376559;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=fBI3OhFe8FRa92o5VxwJO2F8s0aa7AoivXs/8lZR7fg=;
 b=Aj7PRy49ejMTzaAT85YF0PFaTqfdnY2hWMLzqoz483+HExrQKgC+pkBs
 UzrgNbFm3f0gezsBJNzR889crXvpiy3/B6RHIV8ZLwFoW3EeTFYFiCRPn
 YD2+kenhbib7eFPbcZzcFsXXnLuCenZhdEQ3mU7lvxcCBJ4VGqBGXfiM5
 PODObVb8heoDsFoeuGrAW3A94dVOJqz8XAf2hZgHDuc5lSEhRXhnB7s7G
 vn0u9J/Z7fWSPTp/HhK5pwa62vJL6O871u5dxYwMtnbfypW3pJ7xjJ/B8
 KjGzoAeqWVLjJwN2uCQXArFhHBYgVIzsYofS8Lk724IhWmF/H9ziVnWib w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="334052777"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="334052777"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 10:55:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="641451678"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="641451678"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga003.jf.intel.com with SMTP; 18 Apr 2023 10:55:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Apr 2023 20:55:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 20:55:17 +0300
Message-Id: <20230418175528.13117-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/15] drm/i915: Relocate skl_get_pfit_config()
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

Move skl_get_pfit_config() next to the other skl+ scaler code
and rename it to skl_scaler_get_config() so that it has a consistnet
namespace.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 49 ++------------------
 drivers/gpu/drm/i915/display/skl_scaler.c    | 37 +++++++++++++++
 drivers/gpu/drm/i915/display/skl_scaler.h    |  2 +
 3 files changed, 43 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1c264c17b6e4..a450d62e431c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3224,49 +3224,6 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 		      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
 }
 
-static void ilk_get_pfit_pos_size(struct intel_crtc_state *crtc_state,
-				  u32 pos, u32 size)
-{
-	drm_rect_init(&crtc_state->pch_pfit.dst,
-		      pos >> 16, pos & 0xffff,
-		      size >> 16, size & 0xffff);
-}
-
-static void skl_get_pfit_config(struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
-	int id = -1;
-	int i;
-
-	/* find scaler attached to this pipe */
-	for (i = 0; i < crtc->num_scalers; i++) {
-		u32 ctl, pos, size;
-
-		ctl = intel_de_read(dev_priv, SKL_PS_CTRL(crtc->pipe, i));
-		if ((ctl & (PS_SCALER_EN | PS_PLANE_SEL_MASK)) != PS_SCALER_EN)
-			continue;
-
-		id = i;
-		crtc_state->pch_pfit.enabled = true;
-
-		pos = intel_de_read(dev_priv, SKL_PS_WIN_POS(crtc->pipe, i));
-		size = intel_de_read(dev_priv, SKL_PS_WIN_SZ(crtc->pipe, i));
-
-		ilk_get_pfit_pos_size(crtc_state, pos, size);
-
-		scaler_state->scalers[i].in_use = true;
-		break;
-	}
-
-	scaler_state->scaler_id = id;
-	if (id >= 0)
-		scaler_state->scaler_users |= (1 << SKL_CRTC_INDEX);
-	else
-		scaler_state->scaler_users &= ~(1 << SKL_CRTC_INDEX);
-}
-
 static void ilk_get_pfit_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -3282,7 +3239,9 @@ static void ilk_get_pfit_config(struct intel_crtc_state *crtc_state)
 	pos = intel_de_read(dev_priv, PF_WIN_POS(crtc->pipe));
 	size = intel_de_read(dev_priv, PF_WIN_SZ(crtc->pipe));
 
-	ilk_get_pfit_pos_size(crtc_state, pos, size);
+	drm_rect_init(&crtc_state->pch_pfit.dst,
+		      pos >> 16, pos & 0xffff,
+		      size >> 16, size & 0xffff);
 
 	/*
 	 * We currently do not free assignements of panel fitters on
@@ -3773,7 +3732,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	if (intel_display_power_get_in_set_if_enabled(dev_priv, &crtc->hw_readout_power_domains,
 						      POWER_DOMAIN_PIPE_PANEL_FITTER(crtc->pipe))) {
 		if (DISPLAY_VER(dev_priv) >= 9)
-			skl_get_pfit_config(pipe_config);
+			skl_scaler_get_config(pipe_config);
 		else
 			ilk_get_pfit_config(pipe_config);
 	}
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 62443834f64e..ec930aec21c4 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -856,3 +856,40 @@ void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state)
 	for (i = 0; i < crtc->num_scalers; i++)
 		skl_detach_scaler(crtc, i);
 }
+
+void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
+	int id = -1;
+	int i;
+
+	/* find scaler attached to this pipe */
+	for (i = 0; i < crtc->num_scalers; i++) {
+		u32 ctl, pos, size;
+
+		ctl = intel_de_read(dev_priv, SKL_PS_CTRL(crtc->pipe, i));
+		if ((ctl & (PS_SCALER_EN | PS_PLANE_SEL_MASK)) != PS_SCALER_EN)
+			continue;
+
+		id = i;
+		crtc_state->pch_pfit.enabled = true;
+
+		pos = intel_de_read(dev_priv, SKL_PS_WIN_POS(crtc->pipe, i));
+		size = intel_de_read(dev_priv, SKL_PS_WIN_SZ(crtc->pipe, i));
+
+		drm_rect_init(&crtc_state->pch_pfit.dst,
+			      pos >> 16, pos & 0xffff,
+			      size >> 16, size & 0xffff);
+
+		scaler_state->scalers[i].in_use = true;
+		break;
+	}
+
+	scaler_state->scaler_id = id;
+	if (id >= 0)
+		scaler_state->scaler_users |= (1 << SKL_CRTC_INDEX);
+	else
+		scaler_state->scaler_users &= ~(1 << SKL_CRTC_INDEX);
+}
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index f040f6ac061f..63f93ca03c89 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -32,4 +32,6 @@ void skl_program_plane_scaler(struct intel_plane *plane,
 void skl_detach_scalers(const struct intel_crtc_state *crtc_state);
 void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state);
 
+void skl_scaler_get_config(struct intel_crtc_state *crtc_state);
+
 #endif
-- 
2.39.2

