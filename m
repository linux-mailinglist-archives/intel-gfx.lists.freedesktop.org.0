Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F09A14126
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 18:48:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FF4F10E9E4;
	Thu, 16 Jan 2025 17:48:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NKA0vhQg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B39010E9E3;
 Thu, 16 Jan 2025 17:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737049688; x=1768585688;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N3MZkvpjGtZNLit+bRlD9LjdfgwzUTpPJLCnb3P3XjE=;
 b=NKA0vhQgNb6bXeNISN1aI7IFtOAnGqPPw+v2RfSuHr0ipLTU9ynGxeb/
 y7DXf+gLaxMCqKu7gC4lgs87cN732QiSG6w/IKhQodGs3Fh9Uf6NO2ZBG
 0Rk1M9Hd6U6UuqZE06MnWctqmrDb5Yrz55eY9wZcL7PcVVMrRXh11DOJo
 g17eXqy0aBWtbm1S0egBRS8PAu3SBVLzCui7kJSE0nHDwPYhUUcrHagCA
 ztHqtKYidl8tk/ipiJAwtJV45IPG6hlTql4acgDcvzmrC+qI6z/D6PBY2
 zazKkKBBFduZ2ft9oGZgF5UX3Vj9yZ/GmWZ/JkspfsQti7NHEBAqRvMsk g==;
X-CSE-ConnectionGUID: +EyUe2oTQOORPYxbeQRR8w==
X-CSE-MsgGUID: hA3vvE+5Ssq16b9Q4km4Aw==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="48847561"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="48847561"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 09:48:08 -0800
X-CSE-ConnectionGUID: 9oXH9a59SFWWT/hNFn2JLw==
X-CSE-MsgGUID: BTxuFyLZTGW4kZtafFjqvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="105712604"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Jan 2025 09:48:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jan 2025 19:48:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/8] drm/i915: Introduce a minimal plane error state
Date: Thu, 16 Jan 2025 19:47:52 +0200
Message-ID: <20250116174758.18298-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250116174758.18298-1-ville.syrjala@linux.intel.com>
References: <20250116174758.18298-1-ville.syrjala@linux.intel.com>
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
registers contents in theret.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     | 41 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cursor.c   | 26 ++++++++++++
 .../drm/i915/display/intel_display_types.h    |  7 ++++
 drivers/gpu/drm/i915/display/intel_sprite.c   | 36 ++++++++++++++++
 .../drm/i915/display/skl_universal_plane.c    | 12 ++++++
 5 files changed, 122 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 48e657a80a16..ebfc205a480f 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -553,6 +553,40 @@ static void i9xx_plane_disable_arm(struct intel_dsb *dsb,
 		intel_de_write_fw(dev_priv, DSPADDR(dev_priv, i9xx_plane), 0);
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
@@ -955,6 +989,13 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 	plane->get_hw_state = i9xx_plane_get_hw_state;
 	plane->check_plane = i9xx_plane_check;
 
+	if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
+		plane->capture_error = g4x_primary_capture_error;
+	else if (DISPLAY_VER(dev_priv) >= 4)
+		plane->capture_error = i965_plane_capture_error;
+	else
+		plane->capture_error = i8xx_plane_capture_error;
+
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		plane->async_flip = vlv_primary_async_flip;
 		plane->enable_flip_done = vlv_primary_enable_flip_done;
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 57cf8f46a458..0bc71b5bacb6 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -758,6 +758,27 @@ static bool i9xx_cursor_get_hw_state(struct intel_plane *plane,
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
@@ -1020,6 +1041,11 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
 		cursor->check_plane = i9xx_check_cursor;
 	}
 
+	if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
+		cursor->capture_error = g4x_cursor_capture_error;
+	else
+		cursor->capture_error = i9xx_cursor_capture_error;
+
 	cursor->cursor.base = ~0;
 	cursor->cursor.cntl = ~0;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8271e50e3644..a8adae68c512 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1439,6 +1439,10 @@ struct intel_crtc {
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
index e6fadcef58e0..7197fedc4a17 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -463,6 +463,17 @@ vlv_sprite_disable_arm(struct intel_dsb *dsb,
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
@@ -894,6 +905,17 @@ ivb_sprite_disable_arm(struct intel_dsb *dsb,
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
@@ -1227,6 +1249,17 @@ g4x_sprite_disable_arm(struct intel_dsb *dsb,
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
@@ -1613,6 +1646,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 		plane->update_noarm = vlv_sprite_update_noarm;
 		plane->update_arm = vlv_sprite_update_arm;
 		plane->disable_arm = vlv_sprite_disable_arm;
+		plane->capture_error = vlv_sprite_capture_error;
 		plane->get_hw_state = vlv_sprite_get_hw_state;
 		plane->check_plane = vlv_sprite_check;
 		plane->max_stride = i965_plane_max_stride;
@@ -1632,6 +1666,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 		plane->update_noarm = ivb_sprite_update_noarm;
 		plane->update_arm = ivb_sprite_update_arm;
 		plane->disable_arm = ivb_sprite_disable_arm;
+		plane->capture_error = ivb_sprite_capture_error;
 		plane->get_hw_state = ivb_sprite_get_hw_state;
 		plane->check_plane = g4x_sprite_check;
 
@@ -1653,6 +1688,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 		plane->update_noarm = g4x_sprite_update_noarm;
 		plane->update_arm = g4x_sprite_update_arm;
 		plane->disable_arm = g4x_sprite_disable_arm;
+		plane->capture_error = g4x_sprite_capture_error;
 		plane->get_hw_state = g4x_sprite_get_hw_state;
 		plane->check_plane = g4x_sprite_check;
 		plane->max_stride = g4x_sprite_max_stride;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index ff9764cac1e7..73f9b12da3a4 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1594,6 +1594,17 @@ icl_plane_update_arm(struct intel_dsb *dsb,
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
@@ -2668,6 +2679,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 		plane->update_arm = skl_plane_update_arm;
 		plane->disable_arm = skl_plane_disable_arm;
 	}
+	plane->capture_error = skl_plane_capture_error;
 	plane->get_hw_state = skl_plane_get_hw_state;
 	plane->check_plane = skl_plane_check;
 
-- 
2.45.2

