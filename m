Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 308DB4AF004
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 12:35:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5CAD10E701;
	Wed,  9 Feb 2022 11:35:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F264F10E69B
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 11:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644406541; x=1675942541;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mLhKSv0qtXxFqaZ2as4D5Hi+87yNwuQzMTCnN2DjS8E=;
 b=K71+CxknHgxUXh2523GeECQpMFNuANSOV8H9kI9IioKHM7TQHVnwSm+x
 h2axWD5ArKWE5d3K9QefWZXM7qdQfb+2tonGKhjaAJ7a6bq3S1LAEWnor
 fH51R2wjQGdI/CLCWVx9zIkQ5vdAau52BYDibsl0fHy78tQaSwFqJ2bsN
 /fHjV8eQvEHc6gfrhlOLSh4+Tftu3YXqdtFqoAyIxwoqDEvIQitpa7Uy/
 Q9d60FM8S25DPf8HEHBwXs4RSbVCkBtmPYmCQqJwEaO95bpzWAI17bX+B
 3V+bLVNcmJmGV//uc7lJ3xlQtdOyeJvfRviwanKL7iuuuRHrE1CEjfh8t A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="248943677"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="248943677"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 03:35:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="568209935"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 09 Feb 2022 03:35:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Feb 2022 13:35:33 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Feb 2022 13:35:22 +0200
Message-Id: <20220209113526.7595-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220209113526.7595-1-ville.syrjala@linux.intel.com>
References: <20220209113526.7595-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/7] drm/i915: Hoover the IPS enable/disable
 calls into the pre/post update hooks
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

No reason the caller of the IPS pre/post update hooks should
be responsible for the actual IPS enab/disable. Just pull those
calls into the pre/post update hooks themselves. And while
at it let's adjust the function naming a bit to have a consistent
namespace.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 46 +++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_display.h |  2 -
 2 files changed, 34 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c5d30c683911..08c59fdb24e5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -125,6 +125,7 @@ static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state);
 static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
 static void intel_modeset_setup_hw_state(struct drm_device *dev,
 					 struct drm_modeset_acquire_ctx *ctx);
+static bool hsw_ips_disable(const struct intel_crtc_state *crtc_state);
 
 /**
  * intel_update_watermarks - update FIFO watermark values based on current modes
@@ -753,7 +754,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	crtc_state->min_cdclk[plane->id] = 0;
 
 	if (plane->id == PLANE_PRIMARY &&
-	    hsw_disable_ips(crtc_state))
+	    hsw_ips_disable(crtc_state))
 		intel_crtc_wait_for_next_vblank(crtc);
 
 	/*
@@ -1091,7 +1092,7 @@ static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state)
 	intel_de_write(dev_priv, PF_WIN_SZ(pipe), width << 16 | height);
 }
 
-void hsw_enable_ips(const struct intel_crtc_state *crtc_state)
+static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_device *dev = crtc->base.dev;
@@ -1128,7 +1129,7 @@ void hsw_enable_ips(const struct intel_crtc_state *crtc_state)
 	}
 }
 
-bool hsw_disable_ips(const struct intel_crtc_state *crtc_state)
+static bool hsw_ips_disable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_device *dev = crtc->base.dev;
@@ -1170,8 +1171,8 @@ static void intel_crtc_dpms_overlay_disable(struct intel_crtc *crtc)
 	 */
 }
 
-static bool hsw_pre_update_disable_ips(struct intel_atomic_state *state,
-				       struct intel_crtc *crtc)
+static bool hsw_ips_need_disable(struct intel_atomic_state *state,
+				 struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	const struct intel_crtc_state *old_crtc_state =
@@ -1200,8 +1201,20 @@ static bool hsw_pre_update_disable_ips(struct intel_atomic_state *state,
 	return !new_crtc_state->ips_enabled;
 }
 
-static bool hsw_post_update_enable_ips(struct intel_atomic_state *state,
-				       struct intel_crtc *crtc)
+static bool hsw_ips_pre_update(struct intel_atomic_state *state,
+			       struct intel_crtc *crtc)
+{
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+
+	if (!hsw_ips_need_disable(state, crtc))
+		return false;
+
+	return hsw_ips_disable(old_crtc_state);
+}
+
+static bool hsw_ips_need_enable(struct intel_atomic_state *state,
+				struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	const struct intel_crtc_state *old_crtc_state =
@@ -1237,6 +1250,18 @@ static bool hsw_post_update_enable_ips(struct intel_atomic_state *state,
 	return !old_crtc_state->ips_enabled;
 }
 
+static void hsw_ips_post_update(struct intel_atomic_state *state,
+				struct intel_crtc *crtc)
+{
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+
+	if (!hsw_ips_need_enable(state, crtc))
+		return;
+
+	hsw_ips_enable(new_crtc_state);
+}
+
 static bool needs_nv12_wa(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
@@ -1331,9 +1356,7 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 	if (new_crtc_state->update_wm_post && new_crtc_state->hw.active)
 		intel_update_watermarks(dev_priv);
 
-	if (hsw_post_update_enable_ips(state, crtc))
-		hsw_enable_ips(new_crtc_state);
-
+	hsw_ips_post_update(state, crtc);
 	intel_fbc_post_update(state, crtc);
 	intel_drrs_page_flip(state, crtc);
 
@@ -1436,8 +1459,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 
 	intel_psr_pre_plane_update(state, crtc);
 
-	if (hsw_pre_update_disable_ips(state, crtc) &&
-	    hsw_disable_ips(old_crtc_state))
+	if (hsw_ips_pre_update(state, crtc))
 		intel_crtc_wait_for_next_vblank(crtc);
 
 	if (intel_fbc_pre_update(state, crtc))
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 8f9bec36898e..2315088a280d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -633,8 +633,6 @@ void i9xx_crtc_clock_get(struct intel_crtc *crtc,
 			 struct intel_crtc_state *pipe_config);
 int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n *m_n);
 bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state);
-void hsw_enable_ips(const struct intel_crtc_state *crtc_state);
-bool hsw_disable_ips(const struct intel_crtc_state *crtc_state);
 enum intel_display_power_domain intel_port_to_power_domain(enum port port);
 enum intel_display_power_domain
 intel_aux_power_domain(struct intel_digital_port *dig_port);
-- 
2.34.1

