Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C86348C46A6
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 20:00:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33D9310E914;
	Mon, 13 May 2024 18:00:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n3frph9D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D2F810E911;
 Mon, 13 May 2024 18:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715623212; x=1747159212;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4oH9U3WAJ1rxYpX51RkEnUsnciNzWHjx76ofhQxVsgA=;
 b=n3frph9DMIppprOvTSZCW4QwwwLpjQ9k1z6zZo9e87nZtTiAMgRbVK17
 shw2ALyqscn0Jd8xvelatYf5Cb9teOmrQkjQPKuDX4DEy/5Je7s63YCsz
 Tet2zixqUZAeSV1v+5hLbG0ws0mqgG777gjD5t9a2wx2hDttKQOzE9wig
 ZRQFnEeqvgb4EhZM/zq/TMxbeuod6B5kFeyxJFG95QvCCJICFcBGw8q4Z
 pA5FuXNkz+sLb2CQKt1gJhZRAbRyzvXEQt5q9yhST+sLbtXbcfjNAyXLg
 iXjclETJ0vkhWXOQRXZGAwfTYxlkA8yOv7JROhiXC13kXbFKZUGIUpXw9 w==;
X-CSE-ConnectionGUID: TzBSvyyQSJePshbOCw8yQA==
X-CSE-MsgGUID: mFpkzPFMQZGS3QFIqzi4KA==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="14517985"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="14517985"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 11:00:12 -0700
X-CSE-ConnectionGUID: s+f57PfNQN6Ib8AN0HyoTw==
X-CSE-MsgGUID: vFtBYJOKSUKY6x589mTA1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30395292"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 May 2024 11:00:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 May 2024 21:00:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Subject: [PATCH 9/9] drm/i915: Nuke the TGL+ chroma plane tile row alignment
 stuff
Date: Mon, 13 May 2024 20:59:42 +0300
Message-ID: <20240513175942.12910-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240513175942.12910-1-ville.syrjala@linux.intel.com>
References: <20240513175942.12910-1-ville.syrjala@linux.intel.com>
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

I don't think the display hardware really has such chroma
plane tile row alignment requirements as outlined in
commit d156135e6a54 ("drm/i915/tgl: Make sure a semiplanar
UV plane is tile row size aligned")

Bspec had the same exact thing to say about earlier hardware
as well, but we never cared and things work just fine.

The one thing mentioned in that commit that is definitely
true however is the fence alignment issue. But we don't
deal with that on earlier hardware either. We do have code
to deal with that issue for the first color plane, but not
the chroma planes. So I think if we did want to check this
more extensively we should do it in the same places where
we already check the first color plane (namely
convert_plane_offset_to_xy() and intel_fb_bo_framebuffer_init()).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c            | 12 +-----------
 drivers/gpu/drm/i915/display/intel_fb.h            |  1 -
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 11 -----------
 3 files changed, 1 insertion(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index c80f866f3fb6..fc18da3106fd 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -584,12 +584,6 @@ static bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int color_pl
 	return intel_fb_rc_ccs_cc_plane(fb) == color_plane;
 }
 
-bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int color_plane)
-{
-	return intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
-		color_plane == 1;
-}
-
 bool is_surface_linear(const struct drm_framebuffer *fb, int color_plane)
 {
 	return fb->modifier == DRM_FORMAT_MOD_LINEAR ||
@@ -1019,11 +1013,7 @@ static int intel_fb_offset_to_xy(int *x, int *y,
 	struct drm_i915_private *i915 = to_i915(fb->dev);
 	unsigned int height, alignment, unused;
 
-	if (DISPLAY_VER(i915) >= 12 &&
-	    !intel_fb_needs_pot_stride_remap(to_intel_framebuffer(fb)) &&
-	    is_semiplanar_uv_plane(fb, color_plane))
-		alignment = intel_tile_row_size(fb, color_plane);
-	else if (fb->modifier != DRM_FORMAT_MOD_LINEAR)
+	if (fb->modifier != DRM_FORMAT_MOD_LINEAR)
 		alignment = intel_tile_size(i915);
 	else
 		alignment = 0;
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 1b1fef2dc39a..6dee0c8b7f22 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -34,7 +34,6 @@ bool intel_fb_is_ccs_modifier(u64 modifier);
 bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
 bool intel_fb_is_mc_ccs_modifier(u64 modifier);
 
-bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int color_plane);
 bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane);
 int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index ca7fc9fae990..476f5b7d9497 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -514,17 +514,6 @@ static u32 tgl_plane_min_alignment(struct intel_plane *plane,
 	if (intel_fb_is_ccs_aux_plane(fb, color_plane))
 		return mult * 4 * 1024;
 
-	if (is_semiplanar_uv_plane(fb, color_plane)) {
-		/*
-		 * TODO: cross-check wrt. the bspec stride in bytes * 64 bytes
-		 * alignment for linear UV planes on all platforms.
-		 */
-		if (fb->modifier == DRM_FORMAT_MOD_LINEAR)
-			return 256 * 1024;
-
-		return intel_tile_row_size(fb, color_plane);
-	}
-
 	switch (fb->modifier) {
 	case DRM_FORMAT_MOD_LINEAR:
 	case I915_FORMAT_MOD_X_TILED:
-- 
2.43.2

