Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 317536C22CA
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 21:34:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6812310E66E;
	Mon, 20 Mar 2023 20:34:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D912510E66E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 20:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679344447; x=1710880447;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hx2fscTdZ7ILTbJfDbHQrYs2fB9/y2cm6+TK3eHL4X8=;
 b=nEglI6XtchT43x0FI1eq2OyWSbQIxwm7raQ6OUgBOIqAEOBXTWXAZhWK
 JuQ7SZ/G23TmplimFJWFlyn7pu3EIH4h4L8rFqAEVZ/eGqQ/dSuDlG8hc
 XPK6ye1HVn/+1aLf8gcwH3EqbkcIhGFSkkxBc44QS7RPkSGr80wkExNDG
 Vo/CC4CwWvHUchmuihhSsqHtUujsQVyUYPyD6Eicjg42ruyixKwr9oobE
 gBXZKI7QnHAfVEhBdAvq3tVATczFyyHqvNViEkQkk3s9HOi4JKqRovRXs
 tFs0GXeROg3bFqv4BJn0XfXXKzHuAvE9vmQBekNwVDaTANCJvAr+FLQK8 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="327148284"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="327148284"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 13:34:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="770339212"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="770339212"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 20 Mar 2023 13:34:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 22:34:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 22:33:50 +0200
Message-Id: <20230320203352.19515-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320203352.19515-1-ville.syrjala@linux.intel.com>
References: <20230320203352.19515-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/vrr: Tell
 intel_crtc_update_active_timings() about VRR explicitly
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

In order to move VRR enable/disable to a place where it's also
applicable to fastsets we need to be prepared to configure
the pipe into non-VRR mode initially, and then later switch
to VRR mode. To that end allow the active timings to be configured
in non-VRR mode temporarily even when the crtc_state says we're
going to be using VRR.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c          |  3 ++-
 drivers/gpu/drm/i915/display/intel_display.c       |  3 ++-
 drivers/gpu/drm/i915/display/intel_modeset_setup.c |  3 ++-
 drivers/gpu/drm/i915/display/intel_vblank.c        | 12 +++++++++---
 drivers/gpu/drm/i915/display/intel_vblank.h        |  3 ++-
 5 files changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 41d381bbb57a..c59c4b416dcb 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -692,7 +692,8 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
 	 * FIXME Should be synchronized with the start of vblank somehow...
 	 */
 	if (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_crtc_state))
-		intel_crtc_update_active_timings(new_crtc_state);
+		intel_crtc_update_active_timings(new_crtc_state,
+						 new_crtc_state->vrr.enable);
 
 	local_irq_enable();
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5ee93824861b..fc8eafd5fa61 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6956,7 +6956,8 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 	if (!intel_crtc_needs_modeset(new_crtc_state))
 		return;
 
-	intel_crtc_update_active_timings(new_crtc_state);
+	intel_crtc_update_active_timings(new_crtc_state,
+					 new_crtc_state->vrr.enable);
 
 	dev_priv->display.funcs.display->crtc_enable(state, crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 4558d02641fe..64d12a13887d 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -560,7 +560,8 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 			 */
 			crtc_state->inherited = true;
 
-			intel_crtc_update_active_timings(crtc_state);
+			intel_crtc_update_active_timings(crtc_state,
+							 crtc_state->vrr.enable);
 
 			intel_crtc_copy_hw_to_uapi_state(crtc_state);
 		}
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index f8bf9810527d..2e4f7de199d6 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -488,21 +488,27 @@ static int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
 	}
 }
 
-void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state)
+void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
+				      bool vrr_enable)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	u8 mode_flags = crtc_state->mode_flags;
 	struct drm_display_mode adjusted_mode;
 	int vmax_vblank_start = 0;
 	unsigned long irqflags;
 
 	drm_mode_init(&adjusted_mode, &crtc_state->hw.adjusted_mode);
 
-	if (crtc_state->vrr.enable) {
+	if (vrr_enable) {
+		drm_WARN_ON(&i915->drm, (mode_flags & I915_MODE_FLAG_VRR) == 0);
+
 		adjusted_mode.crtc_vtotal = crtc_state->vrr.vmax;
 		adjusted_mode.crtc_vblank_end = crtc_state->vrr.vmax;
 		adjusted_mode.crtc_vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
 		vmax_vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
+	} else {
+		mode_flags &= ~I915_MODE_FLAG_VRR;
 	}
 
 	/*
@@ -524,7 +530,7 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state)
 
 	crtc->vmax_vblank_start = vmax_vblank_start;
 
-	crtc->mode_flags = crtc_state->mode_flags;
+	crtc->mode_flags = mode_flags;
 
 	crtc->scanline_offset = intel_crtc_scanline_offset(crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
index 0884db7e76ae..08e706b29149 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.h
+++ b/drivers/gpu/drm/i915/display/intel_vblank.h
@@ -20,6 +20,7 @@ bool intel_crtc_get_vblank_timestamp(struct drm_crtc *crtc, int *max_error,
 int intel_get_crtc_scanline(struct intel_crtc *crtc);
 void intel_wait_for_pipe_scanline_stopped(struct intel_crtc *crtc);
 void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc);
-void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state);
+void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
+				      bool vrr_enable);
 
 #endif /* __INTEL_VBLANK_H__ */
-- 
2.39.2

