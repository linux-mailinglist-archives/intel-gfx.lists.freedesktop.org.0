Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C46A2B1B9
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 19:55:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC1DD10E310;
	Thu,  6 Feb 2025 18:55:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JfZBqcdH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3A3910E310;
 Thu,  6 Feb 2025 18:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738868140; x=1770404140;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KhGKm2kkbs68HGctwgtBF+G44HsqW0F8x2qWNXzIPYE=;
 b=JfZBqcdH1rawFKDwmYyep17dLWhTey+OIqH5mDBfLgMloW6zpLs0P6lt
 NN5xoxoG7iENe4Wh3VdSr7sV5v1enJtUYYUM/H+eaCJzDdXuIttLhjps/
 NIUwhFElxMTfH3W2HlHO6YBv2i/goZnLdD27etKkKkT0FXLG+2ihydwpX
 xR6JfEIVI/Kao7Pe8LoluEumlrLz3ePVtlXt7IQE+9SL/j+Myjo2XDNFu
 /MwFKTO3M18DSjoyMV+MVteF3VsrZ5CHksWxfgrTE069UT8EWknF9UV3V
 Ec2lxsfQfPWLj4SKpHcm3iHMfG9uKk2NQhsPQ9e8jGE85rWpI+XNgQi0c A==;
X-CSE-ConnectionGUID: bbpxWhmeSTaQoXT95hLHUw==
X-CSE-MsgGUID: HDak/NGHQpK0jujtHZbfeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39395037"
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="39395037"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 10:55:39 -0800
X-CSE-ConnectionGUID: /MWY9CRpRdSZcdR4wGqiXw==
X-CSE-MsgGUID: yG7AofNwRPWUFEMpEXtuKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="111499536"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Feb 2025 10:55:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Feb 2025 20:55:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 01/12] drm/i915: Pass intel_display to
 intel_scanout_needs_vtd_wa()
Date: Thu,  6 Feb 2025 20:55:22 +0200
Message-ID: <20250206185533.32306-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250206185533.32306-1-ville.syrjala@linux.intel.com>
References: <20250206185533.32306-1-ville.syrjala@linux.intel.com>
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

Now that intel_scanout_needs_vtd_wa() is no longer used from
the gem code we can convert it to take struct intel_display.
which will help with converting the low level plane code over
as well.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c          | 11 ++++++-----
 drivers/gpu/drm/i915/display/intel_cursor.c        |  7 ++++---
 drivers/gpu/drm/i915/display/intel_display.c       |  6 ++++--
 drivers/gpu/drm/i915/display/intel_display.h       |  2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c        | 10 +++++-----
 drivers/gpu/drm/i915/display/skl_universal_plane.c |  3 ++-
 6 files changed, 22 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index bd3f8db13700..110ad49884be 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -780,13 +780,13 @@ unsigned int vlv_plane_min_alignment(struct intel_plane *plane,
 				     const struct drm_framebuffer *fb,
 				     int color_plane)
 {
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 
 	if (intel_plane_can_async_flip(plane, fb->modifier))
 		return 256 * 1024;
 
 	/* FIXME undocumented so not sure what's actually needed */
-	if (intel_scanout_needs_vtd_wa(i915))
+	if (intel_scanout_needs_vtd_wa(display))
 		return 256 * 1024;
 
 	switch (fb->modifier) {
@@ -804,12 +804,12 @@ static unsigned int g4x_primary_min_alignment(struct intel_plane *plane,
 					      const struct drm_framebuffer *fb,
 					      int color_plane)
 {
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 
 	if (intel_plane_can_async_flip(plane, fb->modifier))
 		return 256 * 1024;
 
-	if (intel_scanout_needs_vtd_wa(i915))
+	if (intel_scanout_needs_vtd_wa(display))
 		return 256 * 1024;
 
 	switch (fb->modifier) {
@@ -865,6 +865,7 @@ static const struct drm_plane_funcs i8xx_plane_funcs = {
 struct intel_plane *
 intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_plane *plane;
 	const struct drm_plane_funcs *plane_funcs;
 	unsigned int supported_rotations;
@@ -959,7 +960,7 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 		plane->min_alignment = i9xx_plane_min_alignment;
 
 	/* FIXME undocumented for VLV/CHV so not sure what's actually needed */
-	if (intel_scanout_needs_vtd_wa(dev_priv))
+	if (intel_scanout_needs_vtd_wa(display))
 		plane->vtd_guard = 128;
 
 	if (IS_I830(dev_priv) || IS_I845G(dev_priv)) {
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 6a1035a22b0a..791557b99d94 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -372,9 +372,9 @@ static unsigned int i9xx_cursor_min_alignment(struct intel_plane *plane,
 					      const struct drm_framebuffer *fb,
 					      int color_plane)
 {
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 
-	if (intel_scanout_needs_vtd_wa(i915))
+	if (intel_scanout_needs_vtd_wa(display))
 		return 64 * 1024;
 
 	return 4 * 1024; /* physical for i915/i945 */
@@ -989,6 +989,7 @@ struct intel_plane *
 intel_cursor_plane_create(struct drm_i915_private *dev_priv,
 			  enum pipe pipe)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_plane *cursor;
 	int ret, zpos;
 	u64 *modifiers;
@@ -1019,7 +1020,7 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
 		else
 			cursor->min_alignment = i9xx_cursor_min_alignment;
 
-		if (intel_scanout_needs_vtd_wa(dev_priv))
+		if (intel_scanout_needs_vtd_wa(display))
 			cursor->vtd_guard = 2;
 
 		cursor->update_arm = i9xx_cursor_update_arm;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a6383ddde871..0f4d4a86cb98 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8782,7 +8782,9 @@ void intel_hpd_poll_fini(struct drm_i915_private *i915)
 	drm_connector_list_iter_end(&conn_iter);
 }
 
-bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915)
+bool intel_scanout_needs_vtd_wa(struct intel_display *display)
 {
-	return IS_DISPLAY_VER(i915, 6, 11) && i915_vtd_active(i915);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	return IS_DISPLAY_VER(display, 6, 11) && i915_vtd_active(i915);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 49a246feb1ae..793c9d30c582 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -596,7 +596,7 @@ bool assert_port_valid(struct drm_i915_private *i915, enum port port);
 	unlikely(__ret_warn_on);					\
 })
 
-bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915);
+bool intel_scanout_needs_vtd_wa(struct intel_display *display);
 int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index a6b27798fdc3..d873c3ea5fa6 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -980,9 +980,9 @@ static unsigned int g4x_sprite_min_alignment(struct intel_plane *plane,
 					     const struct drm_framebuffer *fb,
 					     int color_plane)
 {
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 
-	if (intel_scanout_needs_vtd_wa(i915))
+	if (intel_scanout_needs_vtd_wa(display))
 		return 128 * 1024;
 
 	return 4 * 1024;
@@ -1610,7 +1610,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 		plane->min_cdclk = vlv_plane_min_cdclk;
 
 		/* FIXME undocumented for VLV/CHV so not sure what's actually needed */
-		if (intel_scanout_needs_vtd_wa(dev_priv))
+		if (intel_scanout_needs_vtd_wa(display))
 			plane->vtd_guard = 128;
 
 		if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B) {
@@ -1639,7 +1639,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 
 		plane->min_alignment = g4x_sprite_min_alignment;
 
-		if (intel_scanout_needs_vtd_wa(dev_priv))
+		if (intel_scanout_needs_vtd_wa(display))
 			plane->vtd_guard = 64;
 
 		formats = snb_sprite_formats;
@@ -1656,7 +1656,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 		plane->min_alignment = g4x_sprite_min_alignment;
 		plane->min_cdclk = g4x_sprite_min_cdclk;
 
-		if (intel_scanout_needs_vtd_wa(dev_priv))
+		if (intel_scanout_needs_vtd_wa(display))
 			plane->vtd_guard = 64;
 
 		if (IS_SANDYBRIDGE(dev_priv)) {
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index ee93361bba09..e166e1915afa 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2697,6 +2697,7 @@ struct intel_plane *
 skl_universal_plane_create(struct drm_i915_private *dev_priv,
 			   enum pipe pipe, enum plane_id plane_id)
 {
+	struct intel_display *display = &dev_priv->display;
 	const struct drm_plane_funcs *plane_funcs;
 	struct intel_plane *plane;
 	enum drm_plane_type plane_type;
@@ -2750,7 +2751,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	else
 		plane->min_alignment = skl_plane_min_alignment;
 
-	if (intel_scanout_needs_vtd_wa(dev_priv))
+	if (intel_scanout_needs_vtd_wa(display))
 		plane->vtd_guard = DISPLAY_VER(dev_priv) >= 10 ? 168 : 136;
 
 	if (DISPLAY_VER(dev_priv) >= 11) {
-- 
2.45.3

