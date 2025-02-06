Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9782A2B1BB
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 19:55:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F77610E91E;
	Thu,  6 Feb 2025 18:55:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bn8JAil1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D3F310E2E7;
 Thu,  6 Feb 2025 18:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738868143; x=1770404143;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Oapgjb28ZGtmu90OuOKWEgyEmVXhNq7pdhocfDRL2Os=;
 b=Bn8JAil1TsrCUvvUcPLsah7fTLol/gvZsjymnUdihlFcuwdQr0ocQ1TO
 Q22osYmLNiZzzIfG1J5pagQVnGh9ONo4Lxq3o4ZfVDKDzMHiZJZXmR1bg
 RTRZ7d1TSGJd9drfTcgubSNaj2FRVqPaXLOGbK4pvhroJ1HKNnw1Or6NV
 gOlVoqSLsB7ms34B1o6FH2sPOOOg9t51YXk8Ej8AK9doBu/PWiLKDsLB0
 Z3eF61rSPKO0sU5TFqwAJYHL1LsWmVOA14KbZHVXguL7RVoknZj6y0FVx
 D9tJz8rEol27eYp+KIpeskfTwm/I78AHR5fnDObdN8KvNp0HfRX/WhJv7 w==;
X-CSE-ConnectionGUID: SZMAk07MTc6FhELV7K1rlQ==
X-CSE-MsgGUID: 3DHZo0hdTvazLOdfpyNUyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39395040"
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="39395040"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 10:55:43 -0800
X-CSE-ConnectionGUID: WHNBZ2gPQ0O4LvccOK5KdA==
X-CSE-MsgGUID: ZuLpZEqyTCaMNMeQfuRrRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="111499541"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Feb 2025 10:55:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Feb 2025 20:55:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 02/12] drm/i915: Decouple i915_gem_dumb_create() from the
 display a bit
Date: Thu,  6 Feb 2025 20:55:23 +0200
Message-ID: <20250206185533.32306-3-ville.syrjala@linux.intel.com>
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

Pass the device argument as drm_device to intel_plane_fb_max_stride()
to decouple i915_gem_dumb_create() vs. the display code a bit.

xe currently doesn't even call this, but it probably should...

v2: s/dev/drm/ (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
 drivers/gpu/drm/i915/display/intel_display.h | 2 +-
 drivers/gpu/drm/i915/display/intel_fb.c      | 4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_create.c   | 2 +-
 4 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0f4d4a86cb98..a04eeaf6f819 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -713,13 +713,15 @@ void intel_add_fb_offsets(int *x, int *y,
 	*y += state->view.color_plane[color_plane].y;
 }
 
-u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
+u32 intel_plane_fb_max_stride(struct drm_device *drm,
 			      u32 pixel_format, u64 modifier)
 {
+	struct intel_display *display = to_intel_display(drm);
+	struct drm_i915_private *dev_priv = to_i915(drm);
 	struct intel_crtc *crtc;
 	struct intel_plane *plane;
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(display))
 		return 0;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 793c9d30c582..e594492bade7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -421,7 +421,7 @@ void intel_link_compute_m_n(u16 bpp, int nlanes,
 			    int pixel_clock, int link_clock,
 			    int bw_overhead,
 			    struct intel_link_m_n *m_n);
-u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
+u32 intel_plane_fb_max_stride(struct drm_device *drm,
 			      u32 pixel_format, u64 modifier);
 enum drm_mode_status
 intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index d9328877cc6d..42c46376daae 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1895,7 +1895,7 @@ u32 intel_fb_max_stride(struct drm_i915_private *dev_priv,
 	 */
 	if (DISPLAY_VER(dev_priv) < 4 || intel_fb_is_ccs_modifier(modifier) ||
 	    intel_fb_modifier_uses_dpt(dev_priv, modifier))
-		return intel_plane_fb_max_stride(dev_priv, pixel_format, modifier);
+		return intel_plane_fb_max_stride(&dev_priv->drm, pixel_format, modifier);
 	else if (DISPLAY_VER(dev_priv) >= 7)
 		return 256 * 1024;
 	else
@@ -1909,7 +1909,7 @@ intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_plane)
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

