Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F36388152B
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 17:04:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 621B510FDC5;
	Wed, 20 Mar 2024 16:04:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hynL4Afw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 892E110FDA6
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 16:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710950680; x=1742486680;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qz/HMY6345VER7VAaemkt6KpcR96EjwlrAqssdMDF0w=;
 b=hynL4AfwPAtZxxa0mN4Xt4IInbBaDd/7yh7UFqbP0t9VPGXxYwqEx7p+
 01J4VUcnk0AkueXNGgaAGk/Uq9x/tn3OrawGqe2fyncnf18JW7syCR9UK
 jPO2izf/F/6WbC2kCiPW75kJAB+38j5CGLY+pIGiZq9kxTwxMoM43AjtS
 rpzMa2eIOv8yoZWEYgxzyUNjMlnVKOIybqqNRY+Q8ayaHgTOJ8pQ+8OmX
 ou9+Om2sltxHqTS7ZTagff8PD5n7yU07nz/mZNiijbdncfeea9aT/NruN
 qU3AYrO8rp3CzIMYnV0A16OAV801cKRQk7JAV/fc6pfhZqj7vZs56mL1A w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="8834773"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; 
   d="scan'208";a="8834773"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 09:04:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="827782601"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="827782601"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 20 Mar 2024 09:04:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Mar 2024 18:04:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/6] drm/i915: Eliminate extra frame from skl-glk sync->async
 flip change
Date: Wed, 20 Mar 2024 18:04:22 +0200
Message-ID: <20240320160424.700-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240320160424.700-1-ville.syrjala@linux.intel.com>
References: <20240320160424.700-1-ville.syrjala@linux.intel.com>
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

