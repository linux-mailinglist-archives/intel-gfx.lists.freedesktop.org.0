Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7CDF55505E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 17:55:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06AA31126A9;
	Wed, 22 Jun 2022 15:55:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7E641126A9
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 15:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655913313; x=1687449313;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=IlSNnwkzEcuqq06L4QGP4bIU0tDh9xs4rOXY5Kt/N1g=;
 b=XRX5uRwHhAZfGrt8TdJ/+3yK2/YA58/qC19FnJouzunrZORzMe7aTv/k
 ISh/ForWsZM8jYiaqQGv1coM3G1/iF6gK4kzlIpyHc28Q4BVmd3gspQAz
 4u4ScRN2UCbGz/7hxn/dncljsGan6EC7R81LmXzZxghxfhTP05sVb9MPp
 LgksD1vySyNxr6o0SUz4X2rYInWRsMNLb+6POIeNnRVXWkEULzdBmiBQ2
 Z/6T0WqEVeS6lcADEKOQ8dn24U1wER8Xr1n31cMEnt6tck/Kj9VD8mAfk
 Y1GjblchNwD7WMvZB3buwwsnjy2uuc1Yg2YWloynEM4SvjPJjZ5ZvRvpA A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="260277994"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="260277994"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 08:55:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="588221715"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga002.jf.intel.com with SMTP; 22 Jun 2022 08:55:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Jun 2022 18:55:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jun 2022 18:54:49 +0300
Message-Id: <20220622155452.32587-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
References: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/9] drm/i915: Fix g4x/vlv/chv CxSR vs.
 format/tiling/rotation changes
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

On g4x/vlv/chv the hardware seems incapable of changing the pixel
format, rotation, or YUV->RGB CSC matrix while in CxSR.

Additionally on VLV/CHV the sprites seem incapable of tiling
changes while in CxSR. On g4x CxSR is not even possible with
the sprite enabled. Curiously the primary plane seems perfectly
happy when changing tiling during CxSR.

Pimp up the code to account for these when determining whether
CxSR needs to be disabled. Since it looks like most of the plane
control register bits are affected let's just compare that.
But in the name of efficiency we'll make an exception for the
primary plane tiling changes (avoids some extra vblank waits).

v2: Just use the pre-computed plane control register values

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c | 53 ++++++++++++++++---
 1 file changed, 45 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index efe8591619e3..e5ad6a437a97 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -426,6 +426,47 @@ static bool intel_plane_do_async_flip(struct intel_plane *plane,
 	return DISPLAY_VER(i915) < 13 || old_crtc_state->uapi.async_flip;
 }
 
+static bool i9xx_must_disable_cxsr(const struct intel_crtc_state *new_crtc_state,
+				   const struct intel_plane_state *old_plane_state,
+				   const struct intel_plane_state *new_plane_state)
+{
+	struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
+	bool old_visible = old_plane_state->uapi.visible;
+	bool new_visible = new_plane_state->uapi.visible;
+	u32 old_ctl = old_plane_state->ctl;
+	u32 new_ctl = new_plane_state->ctl;
+	bool modeset, turn_on, turn_off;
+
+	if (plane->id == PLANE_CURSOR)
+		return false;
+
+	modeset = intel_crtc_needs_modeset(new_crtc_state);
+	turn_off = old_visible && (!new_visible || modeset);
+	turn_on = new_visible && (!old_visible || modeset);
+
+	/* Must disable CxSR around plane enable/disable */
+	if (turn_on || turn_off)
+		return true;
+
+	if (!old_visible || !new_visible)
+		return false;
+
+	/*
+	 * Most plane control register updates are blocked while in CxSR.
+	 *
+	 * Tiling mode is one exception where the primary plane can
+	 * apparently handle it, whereas the sprites can not (the
+	 * sprite issue being only relevant on VLV/CHV where CxSR
+	 * is actually possible with a sprite enabled).
+	 */
+	if (plane->id == PLANE_PRIMARY) {
+		old_ctl &= ~DISP_TILED;
+		new_ctl &= ~DISP_TILED;
+	}
+
+	return old_ctl != new_ctl;
+}
+
 static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_state,
 					   struct intel_crtc_state *new_crtc_state,
 					   const struct intel_plane_state *old_plane_state,
@@ -483,17 +524,9 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
 	if (turn_on) {
 		if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
 			new_crtc_state->update_wm_pre = true;
-
-		/* must disable cxsr around plane enable/disable */
-		if (plane->id != PLANE_CURSOR)
-			new_crtc_state->disable_cxsr = true;
 	} else if (turn_off) {
 		if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
 			new_crtc_state->update_wm_post = true;
-
-		/* must disable cxsr around plane enable/disable */
-		if (plane->id != PLANE_CURSOR)
-			new_crtc_state->disable_cxsr = true;
 	} else if (intel_wm_need_update(old_plane_state, new_plane_state)) {
 		if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv)) {
 			/* FIXME bollocks */
@@ -505,6 +538,10 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
 	if (visible || was_visible)
 		new_crtc_state->fb_bits |= plane->frontbuffer_bit;
 
+	if (HAS_GMCH(dev_priv) &&
+	    i9xx_must_disable_cxsr(new_crtc_state, old_plane_state, new_plane_state))
+		new_crtc_state->disable_cxsr = true;
+
 	/*
 	 * ILK/SNB DVSACNTR/Sprite Enable
 	 * IVB SPR_CTL/Sprite Enable
-- 
2.35.1

