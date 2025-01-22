Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F08A194E2
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 16:18:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90C8A10E712;
	Wed, 22 Jan 2025 15:18:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ben8L/KP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2676F10E700;
 Wed, 22 Jan 2025 15:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737559090; x=1769095090;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0UKXNoT71jbgIxpeJJC/F9P3kEvs5gZFfoQAmh6PhHk=;
 b=ben8L/KPbptsEBRnMh7iXsEnY3GMgwhWRZe9UdBlFPLpcnO+36RsCLk1
 69mt0CndZ5q3pd5S5pauRYVbawIMQ1ecGDO6J3l8qW4IpOFKAPS8qFcq2
 WWZHiLLrN5LVvjDb8eqe+hUi7SBa3MB6t1ZgCsW0BmeOwvAo74MRDLW0N
 BeNwGl2qsxYjFWJGuB5i58OKYQu0lwzlI+uO+b8Zsyfkx598URnM6wBM4
 nVSufJlobR37GQFtKaFz80fJviuZe11D9pESTfiD2geiQ1ZtabWcgVyWW
 B1oA11Ptp0PIP6G350sITIORDuJJ+WnR/EW0vNmVtYOLggR68XUD3mIDA A==;
X-CSE-ConnectionGUID: 9dujhH7ZTTmvsXfGYvE13w==
X-CSE-MsgGUID: o6Cv4RxxTLCQHvhv1rBWsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11323"; a="40841204"
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="40841204"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 07:18:10 -0800
X-CSE-ConnectionGUID: PuPh2HCxQrGEzf97iWCJpA==
X-CSE-MsgGUID: 0CaEaiF5TzqP7lJ9+CIA3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="107274696"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Jan 2025 07:18:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Jan 2025 17:18:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 4/5] drm/i915: Use per-plane VT-d guard numbers
Date: Wed, 22 Jan 2025 17:17:54 +0200
Message-ID: <20250122151755.6928-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250122151755.6928-1-ville.syrjala@linux.intel.com>
References: <20250122151755.6928-1-ville.syrjala@linux.intel.com>
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

Bspec lists different VT-d guard numbers (the number of dummy
padding PTEs) for different platforms and plane types. Use those
instead of just assuming the max glk+ number for everything.
This could avoid a bit of overhead on older platforms due to
reduced padding, and it makes it easier to cross check with the
spec.

Note that VLV/CHV do not document this w/a at all, so not sure
if it's actually needed or not. Nor do we actually know how much
padding is required if it is needed. For now use the same 128
PTEs that we use for snb-bdw primary planes.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  4 ++++
 drivers/gpu/drm/i915/display/intel_cursor.c   |  3 +++
 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_fb.c       | 23 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_sprite.c   | 10 ++++++++
 .../drm/i915/display/skl_universal_plane.c    |  3 +++
 6 files changed, 41 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 65a2eb9e92c4..bd3f8db13700 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -958,6 +958,10 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 	else
 		plane->min_alignment = i9xx_plane_min_alignment;
 
+	/* FIXME undocumented for VLV/CHV so not sure what's actually needed */
+	if (intel_scanout_needs_vtd_wa(dev_priv))
+		plane->vtd_guard = 128;
+
 	if (IS_I830(dev_priv) || IS_I845G(dev_priv)) {
 		plane->update_arm = i830_plane_update_arm;
 	} else {
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index ea7cd7b5093c..911388d0c9b5 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -1019,6 +1019,9 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
 		else
 			cursor->min_alignment = i9xx_cursor_min_alignment;
 
+		if (intel_scanout_needs_vtd_wa(dev_priv))
+			cursor->vtd_guard = 2;
+
 		cursor->update_arm = i9xx_cursor_update_arm;
 		cursor->disable_arm = i9xx_cursor_disable_arm;
 		cursor->get_hw_state = i9xx_cursor_get_hw_state;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 083eb86f0904..db8685465b23 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -144,6 +144,7 @@ struct intel_framebuffer {
 	struct i915_address_space *dpt_vm;
 
 	unsigned int min_alignment;
+	unsigned int vtd_guard;
 };
 
 enum intel_hotplug_state {
@@ -1445,6 +1446,7 @@ struct intel_plane {
 	enum plane_id id;
 	enum pipe pipe;
 	bool need_async_flip_toggle_wa;
+	u8 vtd_guard;
 	u32 frontbuffer_bit;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index ea8c8a99c5c7..d9328877cc6d 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1660,6 +1660,22 @@ static unsigned int intel_fb_min_alignment(const struct drm_framebuffer *fb)
 	return min_alignment;
 }
 
+static unsigned int intel_fb_vtd_guard(const struct drm_framebuffer *fb)
+{
+	struct drm_i915_private *i915 = to_i915(fb->dev);
+	struct intel_plane *plane;
+	unsigned int vtd_guard = 0;
+
+	for_each_intel_plane(&i915->drm, plane) {
+		if (!drm_plane_has_format(&plane->base, fb->format->format, fb->modifier))
+			continue;
+
+		vtd_guard = max_t(unsigned int, vtd_guard, plane->vtd_guard);
+	}
+
+	return vtd_guard;
+}
+
 int intel_fill_fb_info(struct drm_i915_private *i915, struct intel_framebuffer *fb)
 {
 	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
@@ -1757,6 +1773,7 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct intel_framebuffer *
 	}
 
 	fb->min_alignment = intel_fb_min_alignment(&fb->base);
+	fb->vtd_guard = intel_fb_vtd_guard(&fb->base);
 
 	return 0;
 }
@@ -1765,15 +1782,13 @@ unsigned int intel_fb_view_vtd_guard(const struct drm_framebuffer *fb,
 				     const struct intel_fb_view *view,
 				     unsigned int rotation)
 {
-	struct drm_i915_private *i915 = to_i915(fb->dev);
 	unsigned int vtd_guard;
 	int color_plane;
 
-	if (!intel_scanout_needs_vtd_wa(i915))
+	vtd_guard = to_intel_framebuffer(fb)->vtd_guard;
+	if (!vtd_guard)
 		return 0;
 
-	vtd_guard = 168;
-
 	for (color_plane = 0; color_plane < fb->format->num_planes; color_plane++) {
 		unsigned int stride, tile;
 
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index af121c720b89..a6b27798fdc3 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -1609,6 +1609,10 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 		plane->min_alignment = vlv_plane_min_alignment;
 		plane->min_cdclk = vlv_plane_min_cdclk;
 
+		/* FIXME undocumented for VLV/CHV so not sure what's actually needed */
+		if (intel_scanout_needs_vtd_wa(dev_priv))
+			plane->vtd_guard = 128;
+
 		if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B) {
 			formats = chv_pipe_b_sprite_formats;
 			num_formats = ARRAY_SIZE(chv_pipe_b_sprite_formats);
@@ -1635,6 +1639,9 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 
 		plane->min_alignment = g4x_sprite_min_alignment;
 
+		if (intel_scanout_needs_vtd_wa(dev_priv))
+			plane->vtd_guard = 64;
+
 		formats = snb_sprite_formats;
 		num_formats = ARRAY_SIZE(snb_sprite_formats);
 
@@ -1649,6 +1656,9 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 		plane->min_alignment = g4x_sprite_min_alignment;
 		plane->min_cdclk = g4x_sprite_min_cdclk;
 
+		if (intel_scanout_needs_vtd_wa(dev_priv))
+			plane->vtd_guard = 64;
+
 		if (IS_SANDYBRIDGE(dev_priv)) {
 			formats = snb_sprite_formats;
 			num_formats = ARRAY_SIZE(snb_sprite_formats);
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 5cec2df0baca..7b49309a6d8c 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2754,6 +2754,9 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	else
 		plane->min_alignment = skl_plane_min_alignment;
 
+	if (intel_scanout_needs_vtd_wa(dev_priv))
+		plane->vtd_guard = DISPLAY_VER(dev_priv) >= 10 ? 168 : 136;
+
 	if (DISPLAY_VER(dev_priv) >= 11) {
 		plane->update_noarm = icl_plane_update_noarm;
 		plane->update_arm = icl_plane_update_arm;
-- 
2.45.2

