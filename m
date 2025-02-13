Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB670A3444B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 16:02:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AD2310EAFC;
	Thu, 13 Feb 2025 15:02:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dMFXT1Xd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 753D210EAFC
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 15:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739458969; x=1770994969;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=a1KQPdE473lSe968V+x/53lapbqE/4mDSILd6dOkdwA=;
 b=dMFXT1Xd0ti8EfiGXbbsRnTHbWzJ29v9x119qyJaDyE84BHKXooKHIYU
 r9yoNVGpfE3QWw52O4ygUxLNtnSsGGaHWSJ9vULa/iWTi2moNWvj6XkJx
 gVY6Hovvdr41H6X29txDfiZZ5HjQIIdqeakFbOugGc9m3+h60swa3I9LS
 mhi5gu46HQqz5+ygJetX3GTHYMtoi/HdAuCUfmLdCiFaV4AHZh807wzF+
 G35fEk3T/Yeej/3bhqOdDOI9I6HA9C3AnF+cIcaH//2K9S8IhyNXcKrre
 Yhx5+MFZe/+g6HRGIqF4ZpSrx0rkDJ5aWuik8ZzMP/v9zrSv6h5NZhzqm Q==;
X-CSE-ConnectionGUID: Ffmkb6LzRk+bxRStboSVEA==
X-CSE-MsgGUID: YjZjjes5TtGH04UbMwHBNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="57567603"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="57567603"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 07:02:48 -0800
X-CSE-ConnectionGUID: oSQKVqMgRbGXncjNnKx3Kg==
X-CSE-MsgGUID: Y/mMVHfHTDaQ/AfqqMtY1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113349615"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 Feb 2025 07:02:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Feb 2025 17:02:45 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/12] drm/i915: Relocate intel_plane_uses_fence()
Date: Thu, 13 Feb 2025 17:02:17 +0200
Message-ID: <20250213150220.13580-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
References: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
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

Relocate intel_plane_uses_fence() into intel_fb.c. Not sure
that's the best place, but since this is mostly about the
fb and vma I can't think of anything truly better right now.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 ----------
 drivers/gpu/drm/i915/display/intel_display.h |  2 --
 drivers/gpu/drm/i915/display/intel_fb.c      | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_fb.h      |  1 +
 4 files changed, 11 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c2bde539a4ff..4800fefd6321 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -637,16 +637,6 @@ unsigned int intel_remapped_info_size(const struct intel_remapped_info *rem_info
 	return size;
 }
 
-bool intel_plane_uses_fence(const struct intel_plane_state *plane_state)
-{
-	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
-
-	return DISPLAY_VER(dev_priv) < 4 ||
-		(plane->fbc && !plane_state->no_fbc_reason &&
-		 plane_state->view.gtt.type == I915_GTT_VIEW_NORMAL);
-}
-
 /*
  * Convert the x/y offsets into a linear offset.
  * Only valid with 0/180 degree rotation, which is fine since linear
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index b3cdf7f04450..d3afd134f70e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -526,8 +526,6 @@ void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state);
 int bdw_get_pipe_misc_bpp(struct intel_crtc *crtc);
 unsigned int intel_plane_fence_y_offset(const struct intel_plane_state *plane_state);
 
-bool intel_plane_uses_fence(const struct intel_plane_state *plane_state);
-
 struct intel_encoder *
 intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
 			   const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 5af93235057c..5875af2b61e6 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1283,6 +1283,16 @@ bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb)
 		intel_fb_uses_dpt(&fb->base);
 }
 
+bool intel_plane_uses_fence(const struct intel_plane_state *plane_state)
+{
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+
+	return DISPLAY_VER(dev_priv) < 4 ||
+		(plane->fbc && !plane_state->no_fbc_reason &&
+		 plane_state->view.gtt.type == I915_GTT_VIEW_NORMAL);
+}
+
 static int intel_fb_pitch(const struct intel_framebuffer *fb, int color_plane, unsigned int rotation)
 {
 	if (drm_rotation_90_or_270(rotation))
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index e6ef1783e351..63728520eb06 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -77,6 +77,7 @@ u32 intel_plane_compute_aligned_offset(int *x, int *y,
 				       int color_plane);
 
 bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb);
+bool intel_plane_uses_fence(const struct intel_plane_state *plane_state);
 bool intel_fb_supports_90_270_rotation(const struct intel_framebuffer *fb);
 
 int intel_fill_fb_info(struct intel_display *display, struct intel_framebuffer *fb);
-- 
2.45.3

