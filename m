Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0805088152D
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 17:04:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4702710FDC9;
	Wed, 20 Mar 2024 16:04:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OcuohQ1U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66A1510FDC9
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 16:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710950686; x=1742486686;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=48fOdUqA4Q7iFBnfv+cvAasjXCAaB3B58b3kkt75lXQ=;
 b=OcuohQ1U5THKAq9GkQYFQnKjqKUHf+icVdbhemQ0FnQKpqDQaqEb7gFd
 c+xidrR+IZ3ZopdD0CyAY29Y5ZPKNamGL7H41XROHKYJdZpFd8Ezb0piX
 2dhAT8OQ8oiky7dKDIXdHycKsKQk4d7PNXHOWYfknWvkc+vkFKsgEsn/3
 TYusnRbxm50U4VS6xPTgNrZRMzLd7R/wWZzIkLsCICLQakByGfROChzds
 7BW9wAyXxD1AjRiqyn76jbDngVcsUXHOmgwpwcFnMy37Olik8PndikpGs
 2E6bUHaUOAhbqfYHk05FLkwu6XlCpLNqjSCol3jMGK3ALBBCEjLZyvZl9 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="8834778"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; 
   d="scan'208";a="8834778"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 09:04:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="827782603"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="827782603"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 20 Mar 2024 09:04:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Mar 2024 18:04:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 6/6] drm/i915: Extract ilk_must_disable_lp_wm()
Date: Wed, 20 Mar 2024 18:04:24 +0200
Message-ID: <20240320160424.700-7-ville.syrjala@linux.intel.com>
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

Pull the ilk/snb/ivb LP watermark disable checks into a separate
function similar to the gmch counterpart (i9xx_must_disable_cxsr()).
Reduces the clutter in intel_plane_atomic_calc_changes() significantly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c | 95 +++++++++++--------
 1 file changed, 57 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index b083b985d170..19bcf5754ee2 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -482,6 +482,61 @@ static bool i9xx_must_disable_cxsr(const struct intel_crtc_state *new_crtc_state
 	return old_ctl != new_ctl;
 }
 
+static bool ilk_must_disable_lp_wm(const struct intel_crtc_state *new_crtc_state,
+				   const struct intel_plane_state *old_plane_state,
+				   const struct intel_plane_state *new_plane_state)
+{
+	struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
+	bool old_visible = old_plane_state->uapi.visible;
+	bool new_visible = new_plane_state->uapi.visible;
+	bool modeset, turn_on;
+
+	if (plane->id == PLANE_CURSOR)
+		return false;
+
+	modeset = intel_crtc_needs_modeset(new_crtc_state);
+	turn_on = new_visible && (!old_visible || modeset);
+
+	/*
+	 * ILK/SNB DVSACNTR/Sprite Enable
+	 * IVB SPR_CTL/Sprite Enable
+	 * "When in Self Refresh Big FIFO mode, a write to enable the
+	 *  plane will be internally buffered and delayed while Big FIFO
+	 *  mode is exiting."
+	 *
+	 * Which means that enabling the sprite can take an extra frame
+	 * when we start in big FIFO mode (LP1+). Thus we need to drop
+	 * down to LP0 and wait for vblank in order to make sure the
+	 * sprite gets enabled on the next vblank after the register write.
+	 * Doing otherwise would risk enabling the sprite one frame after
+	 * we've already signalled flip completion. We can resume LP1+
+	 * once the sprite has been enabled.
+	 *
+	 * With experimental results seems this is needed also for primary
+	 * plane, not only sprite plane.
+	 */
+	if (turn_on)
+		return true;
+
+	/*
+	 * WaCxSRDisabledForSpriteScaling:ivb
+	 * IVB SPR_SCALE/Scaling Enable
+	 * "Low Power watermarks must be disabled for at least one
+	 *  frame before enabling sprite scaling, and kept disabled
+	 *  until sprite scaling is disabled."
+	 *
+	 * ILK/SNB DVSASCALE/Scaling Enable
+	 * "When in Self Refresh Big FIFO mode, scaling enable will be
+	 *  masked off while Big FIFO mode is exiting."
+	 *
+	 * Despite the w/a only being listed for IVB we assume that
+	 * the ILK/SNB note has similar ramifications, hence we apply
+	 * the w/a on all three platforms.
+	 */
+	return !intel_plane_is_scaled(old_plane_state) &&
+		intel_plane_is_scaled(new_plane_state);
+}
+
 static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_state,
 					   struct intel_crtc_state *new_crtc_state,
 					   const struct intel_plane_state *old_plane_state,
@@ -557,44 +612,8 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
 	    i9xx_must_disable_cxsr(new_crtc_state, old_plane_state, new_plane_state))
 		new_crtc_state->disable_cxsr = true;
 
-	/*
-	 * ILK/SNB DVSACNTR/Sprite Enable
-	 * IVB SPR_CTL/Sprite Enable
-	 * "When in Self Refresh Big FIFO mode, a write to enable the
-	 *  plane will be internally buffered and delayed while Big FIFO
-	 *  mode is exiting."
-	 *
-	 * Which means that enabling the sprite can take an extra frame
-	 * when we start in big FIFO mode (LP1+). Thus we need to drop
-	 * down to LP0 and wait for vblank in order to make sure the
-	 * sprite gets enabled on the next vblank after the register write.
-	 * Doing otherwise would risk enabling the sprite one frame after
-	 * we've already signalled flip completion. We can resume LP1+
-	 * once the sprite has been enabled.
-	 *
-	 *
-	 * WaCxSRDisabledForSpriteScaling:ivb
-	 * IVB SPR_SCALE/Scaling Enable
-	 * "Low Power watermarks must be disabled for at least one
-	 *  frame before enabling sprite scaling, and kept disabled
-	 *  until sprite scaling is disabled."
-	 *
-	 * ILK/SNB DVSASCALE/Scaling Enable
-	 * "When in Self Refresh Big FIFO mode, scaling enable will be
-	 *  masked off while Big FIFO mode is exiting."
-	 *
-	 * Despite the w/a only being listed for IVB we assume that
-	 * the ILK/SNB note has similar ramifications, hence we apply
-	 * the w/a on all three platforms.
-	 *
-	 * With experimental results seems this is needed also for primary
-	 * plane, not only sprite plane.
-	 */
-	if (plane->id != PLANE_CURSOR &&
-	    (IS_IRONLAKE(dev_priv) || IS_SANDYBRIDGE(dev_priv) ||
-	     IS_IVYBRIDGE(dev_priv)) &&
-	    (turn_on || (!intel_plane_is_scaled(old_plane_state) &&
-			 intel_plane_is_scaled(new_plane_state))))
+	if ((IS_IRONLAKE(dev_priv) || IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv)) &&
+	    ilk_must_disable_lp_wm(new_crtc_state, old_plane_state, new_plane_state))
 		new_crtc_state->disable_lp_wm = true;
 
 	if (intel_plane_do_async_flip(plane, old_crtc_state, new_crtc_state)) {
-- 
2.43.2

