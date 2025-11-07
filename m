Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 203E1C413A4
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 19:11:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F5DB10EB6C;
	Fri,  7 Nov 2025 18:11:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cKW7Wgq6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BDD810EB6C;
 Fri,  7 Nov 2025 18:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762539096; x=1794075096;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=54JjDnj9k9+/FkOH96NEykunhEKL2/W/uNcIxldVYco=;
 b=cKW7Wgq6ZIz5mENHnCuhKzpXGiqve54wkrc0XUHENN+khe78urADmr8J
 MPU/WSN5rMaGHbEjUc6PNph5iKO98tbWOqoLHlRLuxjXqPI3LQbWeqOUZ
 wudND9313MRGDOHnCRmBcCpZMag53CuU31bQoJ2RrptKYe4Ws8kPUO7lS
 0f+auyf+BwTejXsLvvVcd1GbU/ULSrfqnBYuy9WC3DlssShIb9ROi4yEy
 MH0Btj8bXBHMBFBYaP17GF7fLvkzhgVqFQQHkvke4IZYF7OxNoO0xBQqb
 WqCYYPBTd1sfZC72vhSio7YIDURWYocffsj27ayeUtA2Qtr6Vt3MsZ3BN g==;
X-CSE-ConnectionGUID: pIin9QpIS5KVeQM+r4BgaQ==
X-CSE-MsgGUID: UDRnNSNQQI+vd9EMF8ELNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="64574531"
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="64574531"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:11:36 -0800
X-CSE-ConnectionGUID: aPUktK1DQZ23JZb22xzTPQ==
X-CSE-MsgGUID: 327d0Ra8SVGQDWWpwtvUxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="218754606"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.106])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:11:34 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/9] drm/i915: Introduce intel_dumb_fb_max_stride()
Date: Fri,  7 Nov 2025 20:11:18 +0200
Message-ID: <20251107181126.5743-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251107181126.5743-1-ville.syrjala@linux.intel.com>
References: <20251107181126.5743-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Wrap intel_plane_fb_max_stride() in intel_dumb_fb_max_stride()
for the purposes of dumb fb creation. I want to change
intel_plane_fb_max_stride() to take a 'struct drm_format_info'
instead of the 'u32 pixel_format' so we need an excplicit format
info lookup in the dumb fb path and I don't really want to have
that in i915_gem_dumb_create() directly.

This makes intel_plane_fb_max_stride() internal to the display
code again, and thus we can pass in struct intel_display instead
of struct drm_device.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 17 ++++++++++++-----
 drivers/gpu/drm/i915/display/intel_display.h |  4 +++-
 drivers/gpu/drm/i915/display/intel_fb.c      |  4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_create.c   |  4 ++--
 4 files changed, 19 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 25986bd8fbdd..c5ce481b26b1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -547,16 +547,12 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
 		intel_wait_for_pipe_off(old_crtc_state);
 }
 
-u32 intel_plane_fb_max_stride(struct drm_device *drm,
+u32 intel_plane_fb_max_stride(struct intel_display *display,
 			      u32 pixel_format, u64 modifier)
 {
-	struct intel_display *display = to_intel_display(drm);
 	struct intel_crtc *crtc;
 	struct intel_plane *plane;
 
-	if (!HAS_DISPLAY(display))
-		return 0;
-
 	/*
 	 * We assume the primary plane for pipe A has
 	 * the highest stride limits of them all,
@@ -572,6 +568,17 @@ u32 intel_plane_fb_max_stride(struct drm_device *drm,
 				 DRM_MODE_ROTATE_0);
 }
 
+u32 intel_dumb_fb_max_stride(struct drm_device *drm,
+			     u32 pixel_format, u64 modifier)
+{
+	struct intel_display *display = to_intel_display(drm);
+
+	if (!HAS_DISPLAY(display))
+		return 0;
+
+	return intel_plane_fb_max_stride(display, pixel_format, modifier);
+}
+
 void intel_set_plane_visible(struct intel_crtc_state *crtc_state,
 			     struct intel_plane_state *plane_state,
 			     bool visible)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index fc2ef92ccf68..9e3fe0bcf62e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -402,8 +402,10 @@ void intel_link_compute_m_n(u16 bpp, int nlanes,
 			    int pixel_clock, int link_clock,
 			    int bw_overhead,
 			    struct intel_link_m_n *m_n);
-u32 intel_plane_fb_max_stride(struct drm_device *drm,
+u32 intel_plane_fb_max_stride(struct intel_display *display,
 			      u32 pixel_format, u64 modifier);
+u32 intel_dumb_fb_max_stride(struct drm_device *drm,
+			     u32 pixel_format, u64 modifier);
 enum drm_mode_status
 intel_mode_valid_max_plane_size(struct intel_display *display,
 				const struct drm_display_mode *mode,
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index f9e0333e2674..19e3dc008caf 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1982,7 +1982,7 @@ u32 intel_fb_max_stride(struct intel_display *display,
 	 */
 	if (DISPLAY_VER(display) < 4 || intel_fb_is_ccs_modifier(modifier) ||
 	    intel_fb_modifier_uses_dpt(display, modifier))
-		return intel_plane_fb_max_stride(display->drm, pixel_format, modifier);
+		return intel_plane_fb_max_stride(display, pixel_format, modifier);
 	else if (DISPLAY_VER(display) >= 7)
 		return 256 * 1024;
 	else
@@ -1996,7 +1996,7 @@ intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_plane)
 	unsigned int tile_width;
 
 	if (is_surface_linear(fb, color_plane)) {
-		unsigned int max_stride = intel_plane_fb_max_stride(display->drm,
+		unsigned int max_stride = intel_plane_fb_max_stride(display,
 								    fb->format->format,
 								    fb->modifier);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index cd9686a7ded2..189ecdd0a9c1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -194,8 +194,8 @@ i915_gem_dumb_create(struct drm_file *file,
 	args->pitch = ALIGN(args->width * cpp, 64);
 
 	/* align stride to page size so that we can remap */
-	if (args->pitch > intel_plane_fb_max_stride(dev, format,
-						    DRM_FORMAT_MOD_LINEAR))
+	if (args->pitch > intel_dumb_fb_max_stride(dev, format,
+						   DRM_FORMAT_MOD_LINEAR))
 		args->pitch = ALIGN(args->pitch, 4096);
 
 	if (args->pitch < args->width)
-- 
2.49.1

