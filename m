Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F3CA37BBC
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 08:00:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2170E10E37E;
	Mon, 17 Feb 2025 07:00:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OL4KwKa4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0B4B10E37E;
 Mon, 17 Feb 2025 07:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739775657; x=1771311657;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s77FXiKdgdgE5WXes6kt/HkXrgUx3/1ERmmBksC9opw=;
 b=OL4KwKa4zqliFbs8QIEHxaeMqughM7dCoy2Bs4q95BrPgMPMn5tU7b88
 n0Mwp1K35hjqAnsLhQVllKlasEIrvGe54RRw6L/+vBvQutZcVd2hfpJVz
 nTX2GqH+KPQ/x+QAqBj6IMnD1/5xtMFN/omxK6wB4kJZsWRspRQSVKLUX
 i64MLa1UeOXPGUQQxvNMprIJkeatWFvqDMR5MJY9GXTTVh2YevbJ31klC
 PCFybJnKrl00C7ndBhgE6VkFDQ6RSYc8I1R3Tb95lNUlohQ39RvFJFDpl
 prHwTDEwr+7I8ILzKYm5LvCeNVq3Miy4QaZZHVjRcuvVJcg8KYY7H9Ajm A==;
X-CSE-ConnectionGUID: kGPiv0oFSSeCdoySDb/yvg==
X-CSE-MsgGUID: Wa0PwAnyQ7Kc7MNnmICHoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11347"; a="39676250"
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="39676250"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2025 23:00:57 -0800
X-CSE-ConnectionGUID: sVD7mHeFTjmk6K4nSBn/2w==
X-CSE-MsgGUID: 2wRT57xySfmD1ESEX3C7aA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="114233368"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Feb 2025 23:00:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 Feb 2025 09:00:53 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH v2 2/8] drm/i915: Introduce a minimal plane error state
Date: Mon, 17 Feb 2025 09:00:41 +0200
Message-ID: <20250217070047.953-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250217070047.953-1-ville.syrjala@linux.intel.com>
References: <20250217070047.953-1-ville.syrjala@linux.intel.com>
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

I want to capture a little bit more information about the state
of the plane upon faults. To that end introduce a small plane error
state struct and provide per-plane vfuncs to read it out.

For now we just stick the CTL, SURF, and SURFLIVE (if available)
registers contents in there.

v2: Use struct intel_display instead of dev_priv

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     | 41 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cursor.c   | 26 ++++++++++++
 .../drm/i915/display/intel_display_types.h    |  7 ++++
 drivers/gpu/drm/i915/display/intel_sprite.c   | 36 ++++++++++++++++
 .../drm/i915/display/skl_universal_plane.c    | 12 ++++++
 5 files changed, 122 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index aef8d8b7ea85..013295f66d56 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -557,6 +557,40 @@ static void i9xx_plane_disable_arm(struct intel_dsb *dsb,
 		intel_de_write_fw(display, DSPADDR(display, i9xx_plane), 0);
 }
 
+static void g4x_primary_capture_error(struct intel_crtc *crtc,
+				      struct intel_plane *plane,
+				      struct intel_plane_error *error)
+{
+	struct intel_display *display = to_intel_display(plane);
+	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
+
+	error->ctl = intel_de_read(display, DSPCNTR(display, i9xx_plane));
+	error->surf = intel_de_read(display, DSPSURF(display, i9xx_plane));
+	error->surflive = intel_de_read(display, DSPSURFLIVE(display, i9xx_plane));
+}
+
+static void i965_plane_capture_error(struct intel_crtc *crtc,
+				     struct intel_plane *plane,
+				     struct intel_plane_error *error)
+{
+	struct intel_display *display = to_intel_display(plane);
+	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
+
+	error->ctl = intel_de_read(display, DSPCNTR(display, i9xx_plane));
+	error->surf = intel_de_read(display, DSPSURF(display, i9xx_plane));
+}
+
+static void i8xx_plane_capture_error(struct intel_crtc *crtc,
+				     struct intel_plane *plane,
+				     struct intel_plane_error *error)
+{
+	struct intel_display *display = to_intel_display(plane);
+	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
+
+	error->ctl = intel_de_read(display, DSPCNTR(display, i9xx_plane));
+	error->surf = intel_de_read(display, DSPADDR(display, i9xx_plane));
+}
+
 static void
 g4x_primary_async_flip(struct intel_dsb *dsb,
 		       struct intel_plane *plane,
@@ -976,6 +1010,13 @@ intel_primary_plane_create(struct intel_display *display, enum pipe pipe)
 	plane->get_hw_state = i9xx_plane_get_hw_state;
 	plane->check_plane = i9xx_plane_check;
 
+	if (DISPLAY_VER(display) >= 5 || display->platform.g4x)
+		plane->capture_error = g4x_primary_capture_error;
+	else if (DISPLAY_VER(display) >= 4)
+		plane->capture_error = i965_plane_capture_error;
+	else
+		plane->capture_error = i8xx_plane_capture_error;
+
 	if (HAS_ASYNC_FLIPS(display)) {
 		if (display->platform.valleyview || display->platform.cherryview) {
 			plane->async_flip = vlv_primary_async_flip;
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index f31efac89e95..3276a5b4a9b0 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -765,6 +765,27 @@ static bool i9xx_cursor_get_hw_state(struct intel_plane *plane,
 	return ret;
 }
 
+static void g4x_cursor_capture_error(struct intel_crtc *crtc,
+				     struct intel_plane *plane,
+				     struct intel_plane_error *error)
+{
+	struct intel_display *display = to_intel_display(plane);
+
+	error->ctl = intel_de_read(display, CURCNTR(display, crtc->pipe));
+	error->surf = intel_de_read(display, CURBASE(display, crtc->pipe));
+	error->surflive = intel_de_read(display, CURSURFLIVE(display, crtc->pipe));
+}
+
+static void i9xx_cursor_capture_error(struct intel_crtc *crtc,
+				      struct intel_plane *plane,
+				      struct intel_plane_error *error)
+{
+	struct intel_display *display = to_intel_display(plane);
+
+	error->ctl = intel_de_read(display, CURCNTR(display, crtc->pipe));
+	error->surf = intel_de_read(display, CURBASE(display, crtc->pipe));
+}
+
 static bool intel_cursor_format_mod_supported(struct drm_plane *_plane,
 					      u32 format, u64 modifier)
 {
@@ -1030,6 +1051,11 @@ intel_cursor_plane_create(struct intel_display *display,
 		cursor->check_plane = i9xx_check_cursor;
 	}
 
+	if (DISPLAY_VER(display) >= 5 || display->platform.g4x)
+		cursor->capture_error = g4x_cursor_capture_error;
+	else
+		cursor->capture_error = i9xx_cursor_capture_error;
+
 	cursor->cursor.base = ~0;
 	cursor->cursor.cntl = ~0;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6c1c88ed0ba6..a4e3f33f75eb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1437,6 +1437,10 @@ struct intel_crtc {
 	bool block_dc_for_vblank;
 };
 
+struct intel_plane_error {
+	u32 ctl, surf, surflive;
+};
+
 struct intel_plane {
 	struct drm_plane base;
 	enum i9xx_plane_id i9xx_plane;
@@ -1488,6 +1492,9 @@ struct intel_plane {
 	void (*disable_arm)(struct intel_dsb *dsb,
 			    struct intel_plane *plane,
 			    const struct intel_crtc_state *crtc_state);
+	void (*capture_error)(struct intel_crtc *crtc,
+			      struct intel_plane *plane,
+			      struct intel_plane_error *error);
 	bool (*get_hw_state)(struct intel_plane *plane, enum pipe *pipe);
 	int (*check_plane)(struct intel_crtc_state *crtc_state,
 			   struct intel_plane_state *plane_state);
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index ab5bc8a08f0f..1ad6c8a94b3d 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -447,6 +447,17 @@ vlv_sprite_disable_arm(struct intel_dsb *dsb,
 	intel_de_write_fw(display, SPSURF(pipe, plane_id), 0);
 }
 
+static void vlv_sprite_capture_error(struct intel_crtc *crtc,
+				     struct intel_plane *plane,
+				     struct intel_plane_error *error)
+{
+	struct intel_display *display = to_intel_display(plane);
+
+	error->ctl = intel_de_read(display, SPCNTR(crtc->pipe, plane->id));
+	error->surf = intel_de_read(display, SPSURF(crtc->pipe, plane->id));
+	error->surflive = intel_de_read(display, SPSURFLIVE(crtc->pipe, plane->id));
+}
+
 static bool
 vlv_sprite_get_hw_state(struct intel_plane *plane,
 			enum pipe *pipe)
@@ -872,6 +883,17 @@ ivb_sprite_disable_arm(struct intel_dsb *dsb,
 	intel_de_write_fw(display, SPRSURF(pipe), 0);
 }
 
+static void ivb_sprite_capture_error(struct intel_crtc *crtc,
+				     struct intel_plane *plane,
+				     struct intel_plane_error *error)
+{
+	struct intel_display *display = to_intel_display(plane);
+
+	error->ctl = intel_de_read(display, SPRCTL(crtc->pipe));
+	error->surf = intel_de_read(display, SPRSURF(crtc->pipe));
+	error->surflive = intel_de_read(display, SPRSURFLIVE(crtc->pipe));
+}
+
 static bool
 ivb_sprite_get_hw_state(struct intel_plane *plane,
 			enum pipe *pipe)
@@ -1207,6 +1229,17 @@ g4x_sprite_disable_arm(struct intel_dsb *dsb,
 	intel_de_write_fw(display, DVSSURF(pipe), 0);
 }
 
+static void g4x_sprite_capture_error(struct intel_crtc *crtc,
+				     struct intel_plane *plane,
+				     struct intel_plane_error *error)
+{
+	struct intel_display *display = to_intel_display(plane);
+
+	error->ctl = intel_de_read(display, DVSCNTR(crtc->pipe));
+	error->surf = intel_de_read(display, DVSSURF(crtc->pipe));
+	error->surflive = intel_de_read(display, DVSSURFLIVE(crtc->pipe));
+}
+
 static bool
 g4x_sprite_get_hw_state(struct intel_plane *plane,
 			enum pipe *pipe)
@@ -1587,6 +1620,7 @@ intel_sprite_plane_create(struct intel_display *display,
 		plane->update_noarm = vlv_sprite_update_noarm;
 		plane->update_arm = vlv_sprite_update_arm;
 		plane->disable_arm = vlv_sprite_disable_arm;
+		plane->capture_error = vlv_sprite_capture_error;
 		plane->get_hw_state = vlv_sprite_get_hw_state;
 		plane->check_plane = vlv_sprite_check;
 		plane->max_stride = i965_plane_max_stride;
@@ -1610,6 +1644,7 @@ intel_sprite_plane_create(struct intel_display *display,
 		plane->update_noarm = ivb_sprite_update_noarm;
 		plane->update_arm = ivb_sprite_update_arm;
 		plane->disable_arm = ivb_sprite_disable_arm;
+		plane->capture_error = ivb_sprite_capture_error;
 		plane->get_hw_state = ivb_sprite_get_hw_state;
 		plane->check_plane = g4x_sprite_check;
 
@@ -1634,6 +1669,7 @@ intel_sprite_plane_create(struct intel_display *display,
 		plane->update_noarm = g4x_sprite_update_noarm;
 		plane->update_arm = g4x_sprite_update_arm;
 		plane->disable_arm = g4x_sprite_disable_arm;
+		plane->capture_error = g4x_sprite_capture_error;
 		plane->get_hw_state = g4x_sprite_get_hw_state;
 		plane->check_plane = g4x_sprite_check;
 		plane->max_stride = g4x_sprite_max_stride;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 110f66dd5cf0..cd9762947f1d 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1661,6 +1661,17 @@ icl_plane_update_arm(struct intel_dsb *dsb,
 			   skl_plane_surf(plane_state, color_plane));
 }
 
+static void skl_plane_capture_error(struct intel_crtc *crtc,
+				    struct intel_plane *plane,
+				    struct intel_plane_error *error)
+{
+	struct intel_display *display = to_intel_display(plane);
+
+	error->ctl = intel_de_read(display, PLANE_CTL(crtc->pipe, plane->id));
+	error->surf = intel_de_read(display, PLANE_SURF(crtc->pipe, plane->id));
+	error->surflive = intel_de_read(display, PLANE_SURFLIVE(crtc->pipe, plane->id));
+}
+
 static void
 skl_plane_async_flip(struct intel_dsb *dsb,
 		     struct intel_plane *plane,
@@ -2803,6 +2814,7 @@ skl_universal_plane_create(struct intel_display *display,
 		plane->update_arm = skl_plane_update_arm;
 		plane->disable_arm = skl_plane_disable_arm;
 	}
+	plane->capture_error = skl_plane_capture_error;
 	plane->get_hw_state = skl_plane_get_hw_state;
 	plane->check_plane = skl_plane_check;
 
-- 
2.45.3

