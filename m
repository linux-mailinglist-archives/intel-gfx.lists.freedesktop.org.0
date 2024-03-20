Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD11688152C
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 17:04:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57F7210FDA6;
	Wed, 20 Mar 2024 16:04:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cueJ8eS1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81C1B10FDA6
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 16:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710950683; x=1742486683;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6nFVUaqN7IzsDcNhINgMHT97YvS6pAOPpsFrdMOhK7g=;
 b=cueJ8eS1pChRyCHliuF/aUu2obR8QsIAzpPexm7pYzTRzaCShTVRwW9h
 i2POxvmApN6abRCDjOYrGLWj6VHPYUg04XpLF/4SQpMoseQRcv+dE48xe
 eliodzJFgIyZtL1iWGLLlT7k8MLG3/qKF4i79UVSdHLBYH9VNzApVCYE3
 n8QGCpVdK9Fh/PBSh3HCQKY9UUYspoVZOadeLgdvXT84QlEpPSM2JfZYt
 LgrIt3CGcTQiwwtJAMUwY5IaRiPho+INAq6muKxER5sE8C7+iq08pXobN
 C/APgI5n0kdvKi2kSFg5s0dowQEQGOgDjVHtbui2UDCW8HOAOheZV3km+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="8834776"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; 
   d="scan'208";a="8834776"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 09:04:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="827782602"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="827782602"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 20 Mar 2024 09:04:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Mar 2024 18:04:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/6] drm/i915:
 s/need_async_flip_disable_wa/need_async_flip_toggle_wa/
Date: Wed, 20 Mar 2024 18:04:23 +0200
Message-ID: <20240320160424.700-6-ville.syrjala@linux.intel.com>
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

Rename need_async_flip_disable_wa to need_async_flip_toggle_wa to
better reflect the fact that we need to deal with the bad
PLANE_CTL_ASYNC_FLIP double buffering behaviour going both
ways.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c          | 4 ++--
 drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c       | 2 +-
 drivers/gpu/drm/i915/display/intel_display_types.h | 2 +-
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 5 ++---
 5 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 76fc7626051b..3442264443e5 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -456,7 +456,7 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
 	dspcntr = plane_state->ctl | i9xx_plane_ctl_crtc(crtc_state);
 
 	/* see intel_plane_atomic_calc_changes() */
-	if (plane->need_async_flip_disable_wa &&
+	if (plane->need_async_flip_toggle_wa &&
 	    crtc_state->async_flip_planes & BIT(plane->id))
 		dspcntr |= DISP_ASYNC_FLIP;
 
@@ -878,7 +878,7 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 		plane->enable_flip_done = vlv_primary_enable_flip_done;
 		plane->disable_flip_done = vlv_primary_disable_flip_done;
 	} else if (IS_BROADWELL(dev_priv)) {
-		plane->need_async_flip_disable_wa = true;
+		plane->need_async_flip_toggle_wa = true;
 		plane->async_flip = g4x_primary_async_flip;
 		plane->enable_flip_done = bdw_primary_enable_flip_done;
 		plane->disable_flip_done = bdw_primary_disable_flip_done;
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 7098a34a17c8..b083b985d170 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -600,7 +600,7 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
 	if (intel_plane_do_async_flip(plane, old_crtc_state, new_crtc_state)) {
 		new_crtc_state->do_async_flip = true;
 		new_crtc_state->async_flip_planes |= BIT(plane->id);
-	} else if (plane->need_async_flip_disable_wa &&
+	} else if (plane->need_async_flip_toggle_wa &&
 		   new_crtc_state->uapi.async_flip) {
 		/*
 		 * On platforms with double buffered async flip bit we
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index dbcda79cf53c..8a10130c6f37 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1109,7 +1109,7 @@ static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
 	int i;
 
 	for_each_old_intel_plane_in_state(state, plane, old_plane_state, i) {
-		if (plane->need_async_flip_disable_wa &&
+		if (plane->need_async_flip_toggle_wa &&
 		    plane->pipe == crtc->pipe &&
 		    disable_async_flip_planes & BIT(plane->id)) {
 			/*
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8b9860cefaae..4cbb6be5ff48 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1557,7 +1557,7 @@ struct intel_plane {
 	enum i9xx_plane_id i9xx_plane;
 	enum plane_id id;
 	enum pipe pipe;
-	bool need_async_flip_disable_wa;
+	bool need_async_flip_toggle_wa;
 	u32 frontbuffer_bit;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index ad4c90344f68..0a8e781a3648 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1175,7 +1175,7 @@ skl_plane_update_arm(struct intel_plane *plane,
 		skl_plane_ctl_crtc(crtc_state);
 
 	/* see intel_plane_atomic_calc_changes() */
-	if (plane->need_async_flip_disable_wa &&
+	if (plane->need_async_flip_toggle_wa &&
 	    crtc_state->async_flip_planes & BIT(plane->id))
 		plane_ctl |= PLANE_CTL_ASYNC_FLIP;
 
@@ -2371,8 +2371,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	plane->check_plane = skl_plane_check;
 
 	if (plane_id == PLANE_PRIMARY) {
-		plane->need_async_flip_disable_wa = IS_DISPLAY_VER(dev_priv,
-								   9, 10);
+		plane->need_async_flip_toggle_wa = IS_DISPLAY_VER(dev_priv, 9, 10);
 		plane->async_flip = skl_plane_async_flip;
 		plane->enable_flip_done = skl_plane_enable_flip_done;
 		plane->disable_flip_done = skl_plane_disable_flip_done;
-- 
2.43.2

