Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06CCA555057
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 17:55:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E601D10FA4E;
	Wed, 22 Jun 2022 15:55:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16E4810F6B4
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 15:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655913307; x=1687449307;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ClLZJ8Y6I09Nu06Wm6YsHtnZuhyUDk4KJla2jX9NScg=;
 b=l/lECx/nceNMHqJsH3uA3Tb7aMKq788ZGxSPNOINBok7sagZHG78AlbA
 BeeiHg/kmiy/LMAKXmXlAsj1Xa4FFJttrlLb4mptvE/dR/v1yqbybDXwC
 VxdHxOvSwmwemaFzGXpSN/UqIFP1B5YRuM8CKValpmZe0Gzlq6+LSVTCI
 aTzWRiUrh9VawedVLuiEG7SiAqh0uZQXSLwuLeBxJpbObV/b+sVO26o4w
 uxWsAfK3WK3dz4hmUX8egK9yfCHSQC+3bYrLIQ7OU4KGbWqOL+JO1R9b8
 WjVSV8/zTRWCCwJIvmruTYd/tY0Efk/T5FnNjFLkdNM2ffU1BRbdlKjZe w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="344448263"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="344448263"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 08:55:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="730412349"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga001.fm.intel.com with SMTP; 22 Jun 2022 08:54:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Jun 2022 18:54:58 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jun 2022 18:54:45 +0300
Message-Id: <20220622155452.32587-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
References: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/9] drm/i915: Split vlv_compute_pipe_wm()
 into two
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

Split vlv_compute_pipe_wm() into two halves. The first half computes
the new raw watermarks, and the second half munges those up into real
watermarks for the particular pipe.

We can reuse the second half for watermark sanitation as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 114 ++++++++++++++++++--------------
 1 file changed, 64 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 395ed3c832d6..4ea43fa73075 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -1904,64 +1904,17 @@ static bool vlv_raw_crtc_wm_is_valid(const struct intel_crtc_state *crtc_state,
 		vlv_raw_plane_wm_is_valid(crtc_state, PLANE_CURSOR, level);
 }
 
-static int vlv_compute_pipe_wm(struct intel_atomic_state *state,
-			       struct intel_crtc *crtc)
+static int _vlv_compute_pipe_wm(struct intel_crtc_state *crtc_state)
 {
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_crtc_state *crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
 	struct vlv_wm_state *wm_state = &crtc_state->wm.vlv.optimal;
 	const struct vlv_fifo_state *fifo_state =
 		&crtc_state->wm.vlv.fifo_state;
 	u8 active_planes = crtc_state->active_planes & ~BIT(PLANE_CURSOR);
 	int num_active_planes = hweight8(active_planes);
-	bool needs_modeset = drm_atomic_crtc_needs_modeset(&crtc_state->uapi);
-	const struct intel_plane_state *old_plane_state;
-	const struct intel_plane_state *new_plane_state;
-	struct intel_plane *plane;
 	enum plane_id plane_id;
-	int level, ret, i;
-	unsigned int dirty = 0;
-
-	for_each_oldnew_intel_plane_in_state(state, plane,
-					     old_plane_state,
-					     new_plane_state, i) {
-		if (new_plane_state->hw.crtc != &crtc->base &&
-		    old_plane_state->hw.crtc != &crtc->base)
-			continue;
-
-		if (vlv_raw_plane_wm_compute(crtc_state, new_plane_state))
-			dirty |= BIT(plane->id);
-	}
-
-	/*
-	 * DSPARB registers may have been reset due to the
-	 * power well being turned off. Make sure we restore
-	 * them to a consistent state even if no primary/sprite
-	 * planes are initially active.
-	 */
-	if (needs_modeset)
-		crtc_state->fifo_changed = true;
-
-	if (!dirty)
-		return 0;
-
-	/* cursor changes don't warrant a FIFO recompute */
-	if (dirty & ~BIT(PLANE_CURSOR)) {
-		const struct intel_crtc_state *old_crtc_state =
-			intel_atomic_get_old_crtc_state(state, crtc);
-		const struct vlv_fifo_state *old_fifo_state =
-			&old_crtc_state->wm.vlv.fifo_state;
-
-		ret = vlv_compute_fifo(crtc_state);
-		if (ret)
-			return ret;
-
-		if (needs_modeset ||
-		    memcmp(old_fifo_state, fifo_state,
-			   sizeof(*fifo_state)) != 0)
-			crtc_state->fifo_changed = true;
-	}
+	int level;
 
 	/* initially allow all levels */
 	wm_state->num_levels = intel_wm_num_levels(dev_priv);
@@ -2008,6 +1961,67 @@ static int vlv_compute_pipe_wm(struct intel_atomic_state *state,
 	return 0;
 }
 
+static int vlv_compute_pipe_wm(struct intel_atomic_state *state,
+			       struct intel_crtc *crtc)
+{
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	bool needs_modeset = drm_atomic_crtc_needs_modeset(&crtc_state->uapi);
+	const struct intel_plane_state *old_plane_state;
+	const struct intel_plane_state *new_plane_state;
+	struct intel_plane *plane;
+	unsigned int dirty = 0;
+	int i;
+
+	for_each_oldnew_intel_plane_in_state(state, plane,
+					     old_plane_state,
+					     new_plane_state, i) {
+		if (new_plane_state->hw.crtc != &crtc->base &&
+		    old_plane_state->hw.crtc != &crtc->base)
+			continue;
+
+		if (vlv_raw_plane_wm_compute(crtc_state, new_plane_state))
+			dirty |= BIT(plane->id);
+	}
+
+	/*
+	 * DSPARB registers may have been reset due to the
+	 * power well being turned off. Make sure we restore
+	 * them to a consistent state even if no primary/sprite
+	 * planes are initially active. We also force a FIFO
+	 * recomputation so that we are sure to sanitize the
+	 * FIFO setting we took over from the BIOS even if there
+	 * are no active planes on the crtc.
+	 */
+	if (needs_modeset)
+		dirty = ~0;
+
+	if (!dirty)
+		return 0;
+
+	/* cursor changes don't warrant a FIFO recompute */
+	if (dirty & ~BIT(PLANE_CURSOR)) {
+		const struct intel_crtc_state *old_crtc_state =
+			intel_atomic_get_old_crtc_state(state, crtc);
+		const struct vlv_fifo_state *old_fifo_state =
+			&old_crtc_state->wm.vlv.fifo_state;
+		const struct vlv_fifo_state *new_fifo_state =
+			&crtc_state->wm.vlv.fifo_state;
+		int ret;
+
+		ret = vlv_compute_fifo(crtc_state);
+		if (ret)
+			return ret;
+
+		if (needs_modeset ||
+		    memcmp(old_fifo_state, new_fifo_state,
+			   sizeof(*new_fifo_state)) != 0)
+			crtc_state->fifo_changed = true;
+	}
+
+	return _vlv_compute_pipe_wm(crtc_state);
+}
+
 #define VLV_FIFO(plane, value) \
 	(((value) << DSPARB_ ## plane ## _SHIFT_VLV) & DSPARB_ ## plane ## _MASK_VLV)
 
-- 
2.35.1

