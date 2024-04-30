Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D83878B6EE0
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 11:56:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F42B10F5A0;
	Tue, 30 Apr 2024 09:56:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EKPoQnWF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C903710E830
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 09:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471017; x=1746007017;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QQe/tGM3OTdKEzs1+c/sJ2qCMnvSdCVcs5q3rcx/+Kw=;
 b=EKPoQnWFY2UdzGh7u1g5FqhCVINbqki+r+t7ioL3wj++lMqMQG3PPnzV
 Yx0YzmJq3Y0s58VPVyaeq/fhCnTWm5O9SOFVKCYIvMX9AazBuR7C9nP/q
 w6EyGVZEn6ICJOttE6wmuU0k0awJWpd5d9YjrkCgZZTHA+9lWeQdBQU+T
 G4bVvOAdYlcd9Oo59kygU+VpwOQ8hpeoocJXq1f4bXiKRNBqF38VuesOZ
 zSHy2icclEFvIEXEqOGCG60eZH2Uzjia7VnhCmqASWR+2j03mC+pUUXug
 qut3mNUQWMVjLjNT0ttfUY7f0TdMXFgmDZE4V8pd3xieZZsTh8gd+zHKj Q==;
X-CSE-ConnectionGUID: 4a5g2kcZSaeWHeXLHHk4kQ==
X-CSE-MsgGUID: wKzDVB6gRBKIG5fpoBivWA==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="27617861"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="27617861"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 02:56:57 -0700
X-CSE-ConnectionGUID: hVrdK8eFTq2AIYCsOww/GQ==
X-CSE-MsgGUID: /3ounYGvSB6GTh6bLC4tDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26419344"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Apr 2024 02:56:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 30 Apr 2024 12:56:53 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v2 5/5] drm/i915:
 s/need_async_flip_disable_wa/need_async_flip_toggle_wa/
Date: Tue, 30 Apr 2024 12:56:39 +0300
Message-ID: <20240430095639.26390-6-ville.syrjala@linux.intel.com>
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

Rename need_async_flip_disable_wa to need_async_flip_toggle_wa to
better reflect the fact that we need to deal with the bad
PLANE_CTL_ASYNC_FLIP double buffering behaviour going both
ways.

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
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
index fa1ddb558f48..34f168e4e371 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1139,7 +1139,7 @@ static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
 	int i;
 
 	for_each_old_intel_plane_in_state(state, plane, old_plane_state, i) {
-		if (plane->need_async_flip_disable_wa &&
+		if (plane->need_async_flip_toggle_wa &&
 		    plane->pipe == crtc->pipe &&
 		    disable_async_flip_planes & BIT(plane->id)) {
 			/*
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 62f7a30c37dc..00eba3fbcdc6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1521,7 +1521,7 @@ struct intel_plane {
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

