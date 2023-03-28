Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 489196CBEF7
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 14:24:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D565210E089;
	Tue, 28 Mar 2023 12:24:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 510B810E089
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 12:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680006245; x=1711542245;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=F8Uk7hUcRwkALXYf8eGxHXAFunLwIXzN90m6iBQdoC8=;
 b=Kh+lw9SM/UvDr5sir2rho5l5SelH0yjINBBCco+wg/5Yl9qpwe7hWrdk
 tqOV+4H75u0lm/kbiilDTyoZGwxmSPNnxA5pVLGht7ierRWSp3rzdZaj2
 zXkRbFpbiLer9wnYhE72d+JY87tKV3Hkers6qnA42KIY8IbDFMwKiRHwN
 jY0gA7ncDEyvyYLvpHrjdSOh1oicFFMLjmkVZLe9KR2LwvHbsLK+/euq8
 md/krPK3n0iM8l8qiNGiI8yYG/lE45gD7mJoEwLZ33JvslEcNsxKDWnRW
 2EJld9pvH8tbRDo3iuz9/mrmWmfbwTZUFSC0a/xJBuTGJIoN+dzQaMZgF A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="368307672"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="368307672"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 05:24:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="661148012"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="661148012"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga006.jf.intel.com with SMTP; 28 Mar 2023 05:23:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Mar 2023 15:23:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Mar 2023 15:23:57 +0300
Message-Id: <20230328122357.1697-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Flag purely internal commits to not
 clear crtc_state->inherited
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

If we have to force the hardware to go through a full modeset
due to eg. cdclk reprogramming, we need to preserve
crtc_state->inherited for all crtcs that have not otherwise
gone through the whole compute_config() stuff after connectors
have been detected.

Otherwise eg. cdclk induced modeset glk_force_audio_cdclk()
will clear the inherited flag, and thus the first real commit
coming from userspace later on will not be forced through
the full .compute_config() path and so eg. audio state may
not get properly recomputed.

But instead of adding all kinds of ad-hoc crtc_state->inherited
preservation hacks all over, let's change things so that we
only clear it for the crtcs directly included in userspace/client
initiated commits.

Should be far less fragile since now we just need to remember
to flag the internal commits, and not worry about where new
crtcs might get pulled in.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5260
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c        |  3 ++-
 drivers/gpu/drm/i915/display/intel_atomic.c   |  3 ++-
 drivers/gpu/drm/i915/display/intel_audio.c    |  1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  1 +
 drivers/gpu/drm/i915/display/intel_display.c  | 22 ++++++++++---------
 .../drm/i915/display/intel_display_types.h    |  3 +++
 .../drm/i915/display/intel_modeset_setup.c    |  1 +
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      |  3 ++-
 .../gpu/drm/i915/display/intel_sprite_uapi.c  |  1 +
 10 files changed, 26 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index caef72d38798..6288826a9497 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -3447,9 +3447,10 @@ void ilk_wm_sanitize(struct drm_i915_private *dev_priv)
 
 	drm_modeset_acquire_init(&ctx, 0);
 
-retry:
 	state->acquire_ctx = &ctx;
+	to_intel_atomic_state(state)->internal = true;
 
+retry:
 	/*
 	 * Hardware readout is the only time we don't want to calculate
 	 * intermediate watermarks (since we don't trust the current
diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index a9a3f3715279..61011641f6ab 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -265,7 +265,6 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
 	crtc_state->update_wm_post = false;
 	crtc_state->fifo_changed = false;
 	crtc_state->preload_luts = false;
-	crtc_state->inherited = false;
 	crtc_state->wm.need_postvbl_update = false;
 	crtc_state->do_async_flip = false;
 	crtc_state->fb_bits = 0;
@@ -599,6 +598,8 @@ void intel_atomic_state_clear(struct drm_atomic_state *s)
 	drm_atomic_state_default_clear(&state->base);
 	intel_atomic_clear_global_state(state);
 
+	/* state->internal not reset on purpose */
+
 	state->dpll_set = state->modeset = false;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 3d5a9bbc6fde..3d9c9b4f27f8 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -1039,6 +1039,7 @@ static void glk_force_audio_cdclk(struct drm_i915_private *i915,
 		return;
 
 	state->acquire_ctx = &ctx;
+	to_intel_atomic_state(state)->internal = true;
 
 retry:
 	ret = glk_force_audio_cdclk_commit(to_intel_atomic_state(state), crtc,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 73240cf78c8b..a0058fc0a197 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3922,6 +3922,7 @@ static int modeset_pipe(struct drm_crtc *crtc,
 		return -ENOMEM;
 
 	state->acquire_ctx = ctx;
+	to_intel_atomic_state(state)->internal = true;
 
 	crtc_state = drm_atomic_get_crtc_state(state, crtc);
 	if (IS_ERR(crtc_state)) {
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b53a1d969344..d274faf520ec 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4180,7 +4180,10 @@ int intel_get_load_detect_pipe(struct drm_connector *connector,
 	}
 
 	state->acquire_ctx = ctx;
+	to_intel_atomic_state(state)->internal = true;
+
 	restore_state->acquire_ctx = ctx;
+	to_intel_atomic_state(restore_state)->internal = true;
 
 	connector_state = drm_atomic_get_connector_state(state, connector);
 	if (IS_ERR(connector_state)) {
@@ -6606,6 +6609,13 @@ int intel_atomic_check(struct drm_device *dev,
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
+		/*
+		 * crtc's state no longer considered to be inherited
+		 * after the first userspace/client initiated commit.
+		 */
+		if (!state->internal)
+			new_crtc_state->inherited = false;
+
 		if (new_crtc_state->inherited != old_crtc_state->inherited)
 			new_crtc_state->uapi.mode_changed = true;
 
@@ -8296,9 +8306,10 @@ static int intel_initial_commit(struct drm_device *dev)
 
 	drm_modeset_acquire_init(&ctx, 0);
 
-retry:
 	state->acquire_ctx = &ctx;
+	to_intel_atomic_state(state)->internal = true;
 
+retry:
 	for_each_intel_crtc(dev, crtc) {
 		struct intel_crtc_state *crtc_state =
 			intel_atomic_get_crtc_state(state, crtc);
@@ -8311,15 +8322,6 @@ static int intel_initial_commit(struct drm_device *dev)
 		if (crtc_state->hw.active) {
 			struct intel_encoder *encoder;
 
-			/*
-			 * We've not yet detected sink capabilities
-			 * (audio,infoframes,etc.) and thus we don't want to
-			 * force a full state recomputation yet. We want that to
-			 * happen only for the first real commit from userspace.
-			 * So preserve the inherited flag for the time being.
-			 */
-			crtc_state->inherited = true;
-
 			ret = drm_atomic_add_affected_planes(state, &crtc->base);
 			if (ret)
 				goto out;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ab146b5b68bd..adbf0dfa91d8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -648,6 +648,9 @@ struct intel_atomic_state {
 	struct __intel_global_objs_state *global_objs;
 	int num_global_objs;
 
+	/* Internal commit, as opposed to userspace/client initiated one */
+	bool internal;
+
 	bool dpll_set, modeset;
 
 	struct intel_shared_dpll_state shared_dpll[I915_NUM_PLLS];
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 4558d02641fe..2324ee83f6aa 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -69,6 +69,7 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 	}
 
 	state->acquire_ctx = ctx;
+	to_intel_atomic_state(state)->internal = true;
 
 	/* Everything's already locked, -EDEADLK can't happen. */
 	temp_crtc_state = intel_atomic_get_crtc_state(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
index 8d3ea8d7b737..5a468ed6e26c 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
@@ -293,6 +293,7 @@ intel_crtc_crc_setup_workarounds(struct intel_crtc *crtc, bool enable)
 	}
 
 	state->acquire_ctx = &ctx;
+	to_intel_atomic_state(state)->internal = true;
 
 retry:
 	pipe_config = intel_atomic_get_crtc_state(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 31084d95711d..d1f26309429f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2096,10 +2096,11 @@ static int intel_psr_fastset_force(struct drm_i915_private *dev_priv)
 		return -ENOMEM;
 
 	drm_modeset_acquire_init(&ctx, DRM_MODESET_ACQUIRE_INTERRUPTIBLE);
+
 	state->acquire_ctx = &ctx;
+	to_intel_atomic_state(state)->internal = true;
 
 retry:
-
 	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
 	drm_for_each_connector_iter(conn, &conn_iter) {
 		struct drm_connector_state *conn_state;
diff --git a/drivers/gpu/drm/i915/display/intel_sprite_uapi.c b/drivers/gpu/drm/i915/display/intel_sprite_uapi.c
index 70a391083751..a76b48ebc2d3 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite_uapi.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite_uapi.c
@@ -86,6 +86,7 @@ int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
 		goto out;
 	}
 	state->acquire_ctx = &ctx;
+	to_intel_atomic_state(state)->internal = true;
 
 	while (1) {
 		plane_state = drm_atomic_get_plane_state(state, plane);
-- 
2.39.2

