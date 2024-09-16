Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 961D697A5E9
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 18:24:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DBE210E3B5;
	Mon, 16 Sep 2024 16:24:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TIt42BdC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C6FA10E3B5
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 16:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726503865; x=1758039865;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fueUvxeYZrhiD1J28arV7AWT5uG38ZXODFyVm0XDLKY=;
 b=TIt42BdC8wY5o6pzRwtYWf3xgkMwz2OJ5gbu/p8AEs6VlA3rbRGiyiaU
 Nmv19rSY8RY20gTpBsyTScqFBENf9OhS+MEegfyw2ZAr/XfGWWAq6GXEQ
 3N6U0IVNrm+Go7N3Zxi7PjUk8cpaeAlktFk4TBa5XQGmPWqm6781BfXY2
 L9CnfJgkJ6mIqBOnZnvABcyUricvM/GuMAatPIjDpR1a12U203uaXboqn
 RVR/GspQ2K7BJ9PJeg1BTXsmeuVPBFGkOYTDNDI9Z3mxPHjqukn+APBHq
 HB0wcBZAzdh/mq9D87HujqqoXv4aphsEXLdUemdWQlBxC5xNv17F/pv2c A==;
X-CSE-ConnectionGUID: R9+cUsvLTne9lLlKugJZLQ==
X-CSE-MsgGUID: 0GupDkZJR1yHkgCxULfdfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="42811722"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="42811722"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 09:24:24 -0700
X-CSE-ConnectionGUID: H200Xv+fQz2Kke2kCcKsUg==
X-CSE-MsgGUID: FmljBgCMQxG48ub9uFs2Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="69029961"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Sep 2024 09:24:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 16 Sep 2024 19:24:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH 3/7] drm/i915: Extract ilk_must_disable_lp_wm()
Date: Mon, 16 Sep 2024 19:24:09 +0300
Message-ID: <20240916162413.8555-4-ville.syrjala@linux.intel.com>
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

Pull the ilk/snb/ivb LP watermark disable checks into a separate
function similar to the gmch counterpart (i9xx_must_disable_cxsr()).
Reduces the clutter in intel_plane_atomic_calc_changes() significantly.

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c | 95 +++++++++++--------
 1 file changed, 57 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 928d985f9985..b5bbcc773ec0 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -493,6 +493,61 @@ static bool i9xx_must_disable_cxsr(const struct intel_crtc_state *new_crtc_state
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
@@ -568,44 +623,8 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
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
2.44.2

