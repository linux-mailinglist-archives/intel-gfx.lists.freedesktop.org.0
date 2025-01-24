Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FABA1BA5C
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 17:30:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1481410E9E5;
	Fri, 24 Jan 2025 16:30:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BzHwAXV1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E864D10E9E3;
 Fri, 24 Jan 2025 16:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737736247; x=1769272247;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BhP7Lnjf/ufwVecBnv+pqZdPKyTpo1qFVn0CH3n2dF4=;
 b=BzHwAXV1OK9e9VH7zdilqTfwjHiDDrz7TyizVfKyPbzWubhqTp5HkMhL
 lxFElarDEzho9wC59dYhhJiNZn6F0EtWDczWXq4LxgTMHUSGLT4L9Etoy
 ehdS+roWQWjhg9k/EpERs/kBReMOCi5FGOcuqc9vTc4WrS5gOJc+jdrNv
 bH3TBmDqTV6wg4gZgoOhnexTtZk4SMM5Jn2p2Eg+IZVvN/ikQUeRaylxn
 Q9FHZSfRTnTlP2CoH2wn2AX7fdHFU6GZxNPHmonSffjrwVurZUPRocYxq
 MSG+6hHJHtGDKK+6SIjrhjaDeN3F3/JYjcrHTPp7S6BHUXT9LoCY4IX1S Q==;
X-CSE-ConnectionGUID: yHEX9GBvQZOOtzCXlCCPOQ==
X-CSE-MsgGUID: r23MILEwRmy8t/uZ3IM3IQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="42200431"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="42200431"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 08:30:46 -0800
X-CSE-ConnectionGUID: tRRKveTSS+ut2OhCLrSpBA==
X-CSE-MsgGUID: doVPEF6yRteo7TyRyn+J6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107925905"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jan 2025 08:30:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2025 18:30:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 01/11] drm/i915: Decouple i915_gem_dumb_create() from the
 display a bit
Date: Fri, 24 Jan 2025 18:30:30 +0200
Message-ID: <20250124163040.8886-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250124163040.8886-1-ville.syrjala@linux.intel.com>
References: <20250124163040.8886-1-ville.syrjala@linux.intel.com>
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

Pass the device argument as drm_device to intel_plane_fb_max_stride()
to decouple i915_gem_dumb_create() vs. the display code a bit.

xe currently doesn't even call this, but it probably should...

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
 drivers/gpu/drm/i915/display/intel_display.h | 2 +-
 drivers/gpu/drm/i915/display/intel_fb.c      | 4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_create.c   | 2 +-
 4 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7d68d652c1bc..157863428b52 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -713,13 +713,15 @@ void intel_add_fb_offsets(int *x, int *y,
 	*y += state->view.color_plane[color_plane].y;
 }
 
-u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
+u32 intel_plane_fb_max_stride(struct drm_device *dev,
 			      u32 pixel_format, u64 modifier)
 {
+	struct intel_display *display = to_intel_display(dev);
+	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_crtc *crtc;
 	struct intel_plane *plane;
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(display))
 		return 0;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 49a246feb1ae..b9ed0deb3f69 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -421,7 +421,7 @@ void intel_link_compute_m_n(u16 bpp, int nlanes,
 			    int pixel_clock, int link_clock,
 			    int bw_overhead,
 			    struct intel_link_m_n *m_n);
-u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
+u32 intel_plane_fb_max_stride(struct drm_device *dev,
 			      u32 pixel_format, u64 modifier);
 enum drm_mode_status
 intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 9f7f1b9f3275..3121371635bb 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1847,7 +1847,7 @@ u32 intel_fb_max_stride(struct drm_i915_private *dev_priv,
 	 */
 	if (DISPLAY_VER(dev_priv) < 4 || intel_fb_is_ccs_modifier(modifier) ||
 	    intel_fb_modifier_uses_dpt(dev_priv, modifier))
-		return intel_plane_fb_max_stride(dev_priv, pixel_format, modifier);
+		return intel_plane_fb_max_stride(&dev_priv->drm, pixel_format, modifier);
 	else if (DISPLAY_VER(dev_priv) >= 7)
 		return 256 * 1024;
 	else
@@ -1861,7 +1861,7 @@ intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_plane)
 	unsigned int tile_width;
 
 	if (is_surface_linear(fb, color_plane)) {
-		unsigned int max_stride = intel_plane_fb_max_stride(dev_priv,
+		unsigned int max_stride = intel_plane_fb_max_stride(&dev_priv->drm,
 								    fb->format->format,
 								    fb->modifier);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index 19156ba4b9ef..c3e6a325872d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -193,7 +193,7 @@ i915_gem_dumb_create(struct drm_file *file,
 	args->pitch = ALIGN(args->width * cpp, 64);
 
 	/* align stride to page size so that we can remap */
-	if (args->pitch > intel_plane_fb_max_stride(to_i915(dev), format,
+	if (args->pitch > intel_plane_fb_max_stride(dev, format,
 						    DRM_FORMAT_MOD_LINEAR))
 		args->pitch = ALIGN(args->pitch, 4096);
 
-- 
2.45.3

