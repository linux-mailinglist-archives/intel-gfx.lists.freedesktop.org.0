Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD0B2DBF71
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 12:31:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 200196E169;
	Wed, 16 Dec 2020 11:31:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 390706E174
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Dec 2020 11:30:59 +0000 (UTC)
IronPort-SDR: IgBhqCUzo0oe8zDMmM5BLA2wMxE5ZUrAZwxO7UAIvke9MdzM2+XYgx5L2OgHNpNyYFkxHjfVCu
 QAAcSeuTO9lw==
X-IronPort-AV: E=McAfee;i="6000,8403,9836"; a="174275741"
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="174275741"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 03:30:58 -0800
IronPort-SDR: SeuQeNpfIjRxvZC1W9IhViPaMM0hGP8I7i5lnWSGXPXQLX87F483QtNLD9oPe+yZ/9AeP2Yl8z
 Fy4qZJ3JFk6Q==
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="412555024"
Received: from slevy-mobl.ger.corp.intel.com (HELO localhost)
 ([10.214.192.176])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 03:30:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Dec 2020 13:29:18 +0200
Message-Id: <80bdfd91b04f301db0e2c64752b1e10665bba7d8.1608117676.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1608117676.git.jani.nikula@intel.com>
References: <cover.1608117676.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 11/11] drm/i915: split fb scalable checks
 into g4x and skl versions
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
Cc: jani.nikula@intel.com, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Dave Airlie <airlied@redhat.com>

This just cleans these up a bit.

Signed-off-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_gen9_plane.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_sprite.c     | 7 +++----
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gen9_plane.c b/drivers/gpu/drm/i915/display/intel_gen9_plane.c
index 8549b262f095..c695ee990a82 100644
--- a/drivers/gpu/drm/i915/display/intel_gen9_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_gen9_plane.c
@@ -2139,7 +2139,7 @@ static int skl_check_plane_surface(struct intel_plane_state *plane_state)
 	return 0;
 }
 
-static bool intel_fb_scalable(const struct drm_framebuffer *fb)
+static bool skl_fb_scalable(const struct drm_framebuffer *fb)
 {
 	if (!fb)
 		return false;
@@ -2172,7 +2172,7 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
 		return ret;
 
 	/* use scaler when colorkey is not required */
-	if (!plane_state->ckey.flags && intel_fb_scalable(fb)) {
+	if (!plane_state->ckey.flags && skl_fb_scalable(fb)) {
 		min_scale = 1;
 		max_scale = skl_plane_max_scale(dev_priv, fb);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index cc3bec42d04c..4cb6339d12be 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -1282,19 +1282,18 @@ g4x_plane_get_hw_state(struct intel_plane *plane,
 	return ret;
 }
 
-static bool intel_fb_scalable(const struct drm_framebuffer *fb)
+static bool g4x_fb_scalable(const struct drm_framebuffer *fb)
 {
 	if (!fb)
 		return false;
 
 	switch (fb->format->format) {
 	case DRM_FORMAT_C8:
-		return false;
 	case DRM_FORMAT_XRGB16161616F:
 	case DRM_FORMAT_ARGB16161616F:
 	case DRM_FORMAT_XBGR16161616F:
 	case DRM_FORMAT_ABGR16161616F:
-		return INTEL_GEN(to_i915(fb->dev)) >= 11;
+		return false;
 	default:
 		return true;
 	}
@@ -1371,7 +1370,7 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state,
 	int max_scale = DRM_PLANE_HELPER_NO_SCALING;
 	int ret;
 
-	if (intel_fb_scalable(plane_state->hw.fb)) {
+	if (g4x_fb_scalable(plane_state->hw.fb)) {
 		if (INTEL_GEN(dev_priv) < 7) {
 			min_scale = 1;
 			max_scale = 16 << 16;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
