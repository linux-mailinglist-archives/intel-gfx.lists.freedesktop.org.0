Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 661A4614006
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 22:40:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B36810E087;
	Mon, 31 Oct 2022 21:40:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC4EE10E087
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 21:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667252443; x=1698788443;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sKZCfp7LYH0OlILg6/mqOIrWuTXVRvm1tr/dyPRfpg4=;
 b=jJELY3OAXEzQcM6SJdaeoujJrd7Gh2g4abA+IP3B1o6Q1pHXIRTMHDA4
 qccw7tSlmGpURjNrrvFQPYs1BHrwdv7/iTX6yoJ7G+5yA4WaeyVqanCvI
 +PtP3AFNz91stpOlN0DitkuL2GWDMlk8AFb4RzuFyW+i1qG3C8oqBtdjX
 Zxoodwnd/oZESCzmi8g6JwSus79jMxhUPDDckTCgGSnQVAQ3aGq2D9EMP
 huv7TdRg7KV+1RRtpeVfxfqes68zr/WFMmUUyvsspmNnho802KXu6uy+E
 uVvbvp946OyvS8doGUagfCW9k3dnWa8klTPnPHySjcBQKvEVyoZ8agalO Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="288719211"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="288719211"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 14:40:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="664939292"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="664939292"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 31 Oct 2022 14:40:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 31 Oct 2022 23:40:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 31 Oct 2022 23:40:36 +0200
Message-Id: <20221031214037.1636-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Use intel_crtc_needs_modeset()
 more
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

Prefer our own intel_crtc_needs_modeset() wrapper to
drm_atomic_crtc_needs_modeset() whenever we are dealing
with the intel_ types instead of drm_ types. Makes things
a bit neater in general.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_color.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c     |  2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c |  2 +-
 drivers/gpu/drm/i915/intel_pm.c              | 11 +++++------
 6 files changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index eada931cb1c8..8a9031012d74 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2755,7 +2755,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 		if (IS_ERR(crtc_state))
 			return PTR_ERR(crtc_state);
 
-		if (drm_atomic_crtc_needs_modeset(&crtc_state->uapi))
+		if (intel_crtc_needs_modeset(crtc_state))
 			pipe = INVALID_PIPE;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 4bb113c39f4b..1bd074431d89 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1240,7 +1240,7 @@ intel_color_add_affected_planes(struct intel_crtc_state *new_crtc_state)
 	struct intel_plane *plane;
 
 	if (!new_crtc_state->hw.active ||
-	    drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi))
+	    intel_crtc_needs_modeset(new_crtc_state))
 		return 0;
 
 	if (new_crtc_state->gamma_enable == old_crtc_state->gamma_enable &&
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b9393f9fc764..2d91c59a827d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5930,7 +5930,7 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
 			return PTR_ERR(crtc_state);
 
 		if (!crtc_state->hw.active ||
-		    drm_atomic_crtc_needs_modeset(&crtc_state->uapi))
+		    intel_crtc_needs_modeset(crtc_state))
 			continue;
 
 		drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] Full modeset due to %s\n",
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 3f24f326b989..b5ee5ea0d010 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1183,7 +1183,7 @@ static bool intel_fbc_can_flip_nuke(struct intel_atomic_state *state,
 	const struct drm_framebuffer *old_fb = old_plane_state->hw.fb;
 	const struct drm_framebuffer *new_fb = new_plane_state->hw.fb;
 
-	if (drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi))
+	if (intel_crtc_needs_modeset(new_crtc_state))
 		return false;
 
 	if (!intel_fbc_is_ok(old_plane_state) ||
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d58e667016e4..e0766d1be966 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2744,7 +2744,7 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
 		 * power well the hardware state will go out of sync
 		 * with the software state.
 		 */
-		if (!drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi) &&
+		if (!intel_crtc_needs_modeset(new_crtc_state) &&
 		    skl_plane_selected_wm_equals(plane,
 						 &old_crtc_state->wm.skl.optimal,
 						 &new_crtc_state->wm.skl.optimal))
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index ee34e2785636..73c88b1c9545 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -1426,7 +1426,7 @@ static int g4x_compute_intermediate_wm(struct intel_atomic_state *state,
 	enum plane_id plane_id;
 
 	if (!new_crtc_state->hw.active ||
-	    drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi)) {
+	    intel_crtc_needs_modeset(new_crtc_state)) {
 		*intermediate = *optimal;
 
 		intermediate->cxsr = false;
@@ -1914,7 +1914,6 @@ static int vlv_compute_pipe_wm(struct intel_atomic_state *state,
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	bool needs_modeset = drm_atomic_crtc_needs_modeset(&crtc_state->uapi);
 	const struct intel_plane_state *old_plane_state;
 	const struct intel_plane_state *new_plane_state;
 	struct intel_plane *plane;
@@ -1941,7 +1940,7 @@ static int vlv_compute_pipe_wm(struct intel_atomic_state *state,
 	 * FIFO setting we took over from the BIOS even if there
 	 * are no active planes on the crtc.
 	 */
-	if (needs_modeset)
+	if (intel_crtc_needs_modeset(crtc_state))
 		dirty = ~0;
 
 	if (!dirty)
@@ -1961,7 +1960,7 @@ static int vlv_compute_pipe_wm(struct intel_atomic_state *state,
 		if (ret)
 			return ret;
 
-		if (needs_modeset ||
+		if (intel_crtc_needs_modeset(crtc_state) ||
 		    memcmp(old_fifo_state, new_fifo_state,
 			   sizeof(*new_fifo_state)) != 0)
 			crtc_state->fifo_changed = true;
@@ -2084,7 +2083,7 @@ static int vlv_compute_intermediate_wm(struct intel_atomic_state *state,
 	int level;
 
 	if (!new_crtc_state->hw.active ||
-	    drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi)) {
+	    intel_crtc_needs_modeset(new_crtc_state)) {
 		*intermediate = *optimal;
 
 		intermediate->cxsr = false;
@@ -3142,7 +3141,7 @@ static int ilk_compute_intermediate_wm(struct intel_atomic_state *state,
 	 */
 	*a = new_crtc_state->wm.ilk.optimal;
 	if (!new_crtc_state->hw.active ||
-	    drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi) ||
+	    intel_crtc_needs_modeset(new_crtc_state) ||
 	    state->skip_intermediate_wm)
 		return 0;
 
-- 
2.37.4

