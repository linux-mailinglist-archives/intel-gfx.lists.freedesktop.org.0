Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0A98B6EE1
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 11:57:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 388AB10F576;
	Tue, 30 Apr 2024 09:56:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="boqk7my6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9ABB10F576
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 09:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471014; x=1746007014;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qz/HMY6345VER7VAaemkt6KpcR96EjwlrAqssdMDF0w=;
 b=boqk7my6vKwyxCKhAwzupK3B5jUgkC7BBJ7lzG1GtCfQydiKxvO4slC5
 yy9Q41xXqjXh2BBJ3iKTUXIZzBLpnxwyoION7HeDEqHr32lFFDMlD/oWv
 omNbdAQT82G5DnkLxz8Ok7ToprC5r1nBsJTTkPVsveWKiZd1jqRQnsN8x
 XCphLLcsVjU2O+QjY1JAj4us7A8Oaw44pa0MfZG2shfBVbJ92cuAyD5x+
 FAaoHBnlS60G4g9EVuYWXKXsr78b8JagU/VmmvkfddXD3nkoeT0XbZA8B
 99gHcMp3sNtqlpoBvVBXU/HL07IjDzB3zgcuS85ppWqiCQR45pmbYv+Bs g==;
X-CSE-ConnectionGUID: gbntHz6wTRuCYYqpx3e/kA==
X-CSE-MsgGUID: P3neUlPdTfuVSojuT6bMHg==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="27617860"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="27617860"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 02:56:53 -0700
X-CSE-ConnectionGUID: fptZ/MlNR8qgplNYTZsHrw==
X-CSE-MsgGUID: RoTQlyGDTdiCTBUHIAB5CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26419317"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Apr 2024 02:56:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 30 Apr 2024 12:56:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 4/5] drm/i915: Eliminate extra frame from skl-glk
 sync->async flip change
Date: Tue, 30 Apr 2024 12:56:38 +0300
Message-ID: <20240430095639.26390-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240430095639.26390-1-ville.syrjala@linux.intel.com>
References: <20240430095639.26390-1-ville.syrjala@linux.intel.com>
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

On bdw-glk the sync->async flip change takes an extra frame due to
the double buffering behaviour of the async flip plane control bit.

Since on skl+ we are now explicitly converting the first async flip
to a sync flip (in order to allow changing the modifier and/or
ddb/watermarks) we are now taking two extra frames until async flips
are actually active. We can drop that back down to one frame by
setting the async flip bit already during the sync flip.

Note that on bdw we don't currently do the extra sync flip (see
intel_plane_do_async_flip()) so technically we wouldn't have
to deal with this in i9xx_plane_update_arm(). But I added the
relevant snippet of code there as well, just in case we ever
decide to go for the extra sync flip on pre-skl platforms as
well (we might, for example, want to change the fb stride).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c         |  5 +++++
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 15 +++++++++++----
 .../gpu/drm/i915/display/skl_universal_plane.c    |  5 +++++
 3 files changed, 21 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 0279c8aabdd1..76fc7626051b 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -455,6 +455,11 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
 
 	dspcntr = plane_state->ctl | i9xx_plane_ctl_crtc(crtc_state);
 
+	/* see intel_plane_atomic_calc_changes() */
+	if (plane->need_async_flip_disable_wa &&
+	    crtc_state->async_flip_planes & BIT(plane->id))
+		dspcntr |= DISP_ASYNC_FLIP;
+
 	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
 
 	if (DISPLAY_VER(dev_priv) >= 4)
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 769010d0ebc4..7098a34a17c8 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -437,10 +437,6 @@ static bool intel_plane_do_async_flip(struct intel_plane *plane,
 	 * only X-tile is supported with async flips, though we could
 	 * extend this so other scanout parameters (stride/etc) could
 	 * be changed as well...
-	 *
-	 * FIXME: Platforms with need_async_flip_disable_wa==true will
-	 * now end up doing two sync flips initially. Would be nice to
-	 * combine those into just the one sync flip...
 	 */
 	return DISPLAY_VER(i915) < 9 || old_crtc_state->uapi.async_flip;
 }
@@ -604,6 +600,17 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
 	if (intel_plane_do_async_flip(plane, old_crtc_state, new_crtc_state)) {
 		new_crtc_state->do_async_flip = true;
 		new_crtc_state->async_flip_planes |= BIT(plane->id);
+	} else if (plane->need_async_flip_disable_wa &&
+		   new_crtc_state->uapi.async_flip) {
+		/*
+		 * On platforms with double buffered async flip bit we
+		 * set the bit already one frame early during the sync
+		 * flip (see {i9xx,skl}_plane_update_arm()). The
+		 * hardware will therefore be ready to perform a real
+		 * async flip during the next commit, without having
+		 * to wait yet another frame for the bit to latch.
+		 */
+		new_crtc_state->async_flip_planes |= BIT(plane->id);
 	}
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 860574d04f88..ad4c90344f68 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1174,6 +1174,11 @@ skl_plane_update_arm(struct intel_plane *plane,
 	plane_ctl = plane_state->ctl |
 		skl_plane_ctl_crtc(crtc_state);
 
+	/* see intel_plane_atomic_calc_changes() */
+	if (plane->need_async_flip_disable_wa &&
+	    crtc_state->async_flip_planes & BIT(plane->id))
+		plane_ctl |= PLANE_CTL_ASYNC_FLIP;
+
 	if (DISPLAY_VER(dev_priv) >= 10)
 		plane_color_ctl = plane_state->color_ctl |
 			glk_plane_color_ctl_crtc(crtc_state);
-- 
2.43.2

