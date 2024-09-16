Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF41597A5EB
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 18:24:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77B7310E3BE;
	Mon, 16 Sep 2024 16:24:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ChLj77kS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BB0E10E3B9
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 16:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726503870; x=1758039870;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=B8molFDaXvENqneGpgJ9T5jYn0yG2vUdRYiUOesuXQA=;
 b=ChLj77kSQa5KX0G2PBM9krwFhemmQzIOb9LXtGSJQhEwyLorNE5UgL4X
 ZB6yA553Pkm347PWT+1k84KNznvETvr5scj9lAOTteEzOsVNjypipdT6J
 Mph2nJysh1xT8bOibf47CeuphiLmAI6OwBjuFa6YZcT6dpNKQKSv9o/62
 NBz8LxhmTenbsbkOyRdqlElMas84vGk2fFayDAjSXDBY/PcmxHQwhRYt+
 9U9K1rpSQd8KAuAfNlpxPzXijrln3WsbgbGcHWf/xBegrT3tYeM/s/oLa
 Z8AQxXuZkYfabePSNo7r3G6CkCQFec5v31OP7bvpiuvDYHahFxB3b56Ut w==;
X-CSE-ConnectionGUID: ZO4HKq3QSymZoKlE/fhb+Q==
X-CSE-MsgGUID: 66N/DkAmSfSyOUarTVlZcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="42811734"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="42811734"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 09:24:30 -0700
X-CSE-ConnectionGUID: y7oaed/KSJCWC3ViSCUsaw==
X-CSE-MsgGUID: 12QTOTugS/qGEQZMbFzfpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="69029963"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Sep 2024 09:24:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 16 Sep 2024 19:24:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/7] drm/i915: Move the dodgy pre-g4x wm stuff into i9xx_wm
Date: Mon, 16 Sep 2024 19:24:11 +0300
Message-ID: <20240916162413.8555-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240916162413.8555-1-ville.syrjala@linux.intel.com>
References: <20240916162413.8555-1-ville.syrjala@linux.intel.com>
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

As with other watermark calculations, the dodgy pre-g4x
update_wm_{pre,post} flag calcultion would like to know
if a modeset is about to happen or not, and technically
later stages in the atomic_check() may still flag one.
In practice that shouldn't happen as we don't have dynamic
CDCLK implemented for these old platforms.

Regardless it'll be nice to move this old cruft out from
the supposedly platform agnostic plane code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c        | 74 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_atomic_plane.c | 36 ---------
 2 files changed, 74 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 3151a31a5653..15ed3b810947 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -705,6 +705,76 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
 	}
 }
 
+static bool i9xx_wm_need_update(const struct intel_plane_state *old_plane_state,
+				const struct intel_plane_state *new_plane_state)
+{
+	/* Update watermarks on tiling or size changes. */
+	if (old_plane_state->uapi.visible != new_plane_state->uapi.visible)
+		return true;
+
+	if (!old_plane_state->hw.fb || !new_plane_state->hw.fb)
+		return false;
+
+	if (old_plane_state->hw.fb->modifier != new_plane_state->hw.fb->modifier ||
+	    old_plane_state->hw.rotation != new_plane_state->hw.rotation ||
+	    drm_rect_width(&old_plane_state->uapi.src) != drm_rect_width(&new_plane_state->uapi.src) ||
+	    drm_rect_height(&old_plane_state->uapi.src) != drm_rect_height(&new_plane_state->uapi.src) ||
+	    drm_rect_width(&old_plane_state->uapi.dst) != drm_rect_width(&new_plane_state->uapi.dst) ||
+	    drm_rect_height(&old_plane_state->uapi.dst) != drm_rect_height(&new_plane_state->uapi.dst))
+		return true;
+
+	return false;
+}
+
+static void i9xx_wm_compute(struct intel_crtc_state *new_crtc_state,
+			    const struct intel_plane_state *old_plane_state,
+			    const struct intel_plane_state *new_plane_state)
+{
+	bool turn_off, turn_on, visible, was_visible, mode_changed;
+
+	mode_changed = intel_crtc_needs_modeset(new_crtc_state);
+	was_visible = old_plane_state->uapi.visible;
+	visible = new_plane_state->uapi.visible;
+
+	if (!was_visible && !visible)
+		return;
+
+	turn_off = was_visible && (!visible || mode_changed);
+	turn_on = visible && (!was_visible || mode_changed);
+
+	/* FIXME nuke when all wm code is atomic */
+	if (turn_on) {
+		new_crtc_state->update_wm_pre = true;
+	} else if (turn_off) {
+		new_crtc_state->update_wm_post = true;
+	} else if (i9xx_wm_need_update(old_plane_state, new_plane_state)) {
+		/* FIXME bollocks */
+		new_crtc_state->update_wm_pre = true;
+		new_crtc_state->update_wm_post = true;
+	}
+}
+
+static int i9xx_compute_watermarks(struct intel_atomic_state *state,
+				   struct intel_crtc *crtc)
+{
+	struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct intel_plane_state *old_plane_state;
+	const struct intel_plane_state *new_plane_state;
+	struct intel_plane *plane;
+	int i;
+
+	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
+					     new_plane_state, i) {
+		if (plane->pipe != crtc->pipe)
+			continue;
+
+		i9xx_wm_compute(new_crtc_state, old_plane_state, new_plane_state);
+	}
+
+	return 0;
+}
+
 /*
  * Documentation says:
  * "If the line size is small, the TLB fetches can get in the way of the
@@ -4056,18 +4126,22 @@ static const struct intel_wm_funcs g4x_wm_funcs = {
 };
 
 static const struct intel_wm_funcs pnv_wm_funcs = {
+	.compute_watermarks = i9xx_compute_watermarks,
 	.update_wm = pnv_update_wm,
 };
 
 static const struct intel_wm_funcs i965_wm_funcs = {
+	.compute_watermarks = i9xx_compute_watermarks,
 	.update_wm = i965_update_wm,
 };
 
 static const struct intel_wm_funcs i9xx_wm_funcs = {
+	.compute_watermarks = i9xx_compute_watermarks,
 	.update_wm = i9xx_update_wm,
 };
 
 static const struct intel_wm_funcs i845_wm_funcs = {
+	.compute_watermarks = i9xx_compute_watermarks,
 	.update_wm = i845_update_wm,
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 2aeb4cd5b5a1..33fec36ec0bd 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -392,28 +392,6 @@ void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
 	plane_state->uapi.visible = false;
 }
 
-/* FIXME nuke when all wm code is atomic */
-static bool intel_wm_need_update(const struct intel_plane_state *old_plane_state,
-				 const struct intel_plane_state *new_plane_state)
-{
-	/* Update watermarks on tiling or size changes. */
-	if (old_plane_state->uapi.visible != new_plane_state->uapi.visible)
-		return true;
-
-	if (!old_plane_state->hw.fb || !new_plane_state->hw.fb)
-		return false;
-
-	if (old_plane_state->hw.fb->modifier != new_plane_state->hw.fb->modifier ||
-	    old_plane_state->hw.rotation != new_plane_state->hw.rotation ||
-	    drm_rect_width(&old_plane_state->uapi.src) != drm_rect_width(&new_plane_state->uapi.src) ||
-	    drm_rect_height(&old_plane_state->uapi.src) != drm_rect_height(&new_plane_state->uapi.src) ||
-	    drm_rect_width(&old_plane_state->uapi.dst) != drm_rect_width(&new_plane_state->uapi.dst) ||
-	    drm_rect_height(&old_plane_state->uapi.dst) != drm_rect_height(&new_plane_state->uapi.dst))
-		return true;
-
-	return false;
-}
-
 static bool intel_plane_is_scaled(const struct intel_plane_state *plane_state)
 {
 	int src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
@@ -602,20 +580,6 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
 		       was_visible, visible,
 		       turn_off, turn_on, mode_changed);
 
-	if (turn_on) {
-		if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
-			new_crtc_state->update_wm_pre = true;
-	} else if (turn_off) {
-		if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
-			new_crtc_state->update_wm_post = true;
-	} else if (intel_wm_need_update(old_plane_state, new_plane_state)) {
-		if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv)) {
-			/* FIXME bollocks */
-			new_crtc_state->update_wm_pre = true;
-			new_crtc_state->update_wm_post = true;
-		}
-	}
-
 	if (visible || was_visible)
 		new_crtc_state->fb_bits |= plane->frontbuffer_bit;
 
-- 
2.44.2

