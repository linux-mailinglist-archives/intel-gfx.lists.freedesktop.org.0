Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C78D69A0CAE
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 16:32:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FAC710E721;
	Wed, 16 Oct 2024 14:32:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f7TNaABi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0072910E721
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 14:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729089123; x=1760625123;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OUUDeYCZc5tItICOo5b71CbirMSWMnvsz15neaL+uBQ=;
 b=f7TNaABi80dJcyIu9XVe3EPE8qveunazUqf03UGlqnoFCY1njW7m6YWJ
 CbfjiIDugJtZcowWIm7V67W3rxzYRrKiLW7OgyjzLbO4ifZJq5WRGXHc2
 gTQngk1Ee14P4dl2C7gmp5UOMTF1s3XPOY1It5uXcqCZW3m8KRiHm3Ck/
 VzmVykBrHU5bC+ObvM4wWvZFoDljzNsEZJAXLeAlqpCQ0jXcJMYcebhv8
 8WpLbLfwnaabNQE7WlhdupYPnez4tC/dfdwvMXekUyxDLJJSc5dtosz9v
 IOeEMIH4cua4V7uLG3qNVcXWydZh53/WTUr9iMAwh16peCvCndhg0U73S g==;
X-CSE-ConnectionGUID: CMdTaFscRNOmspBCn9wrPA==
X-CSE-MsgGUID: cYaFyxfwQmKb5uu4wKB0iQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11226"; a="28630750"
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="28630750"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 07:32:02 -0700
X-CSE-ConnectionGUID: P+7/jSpMSwOThv17SjLidg==
X-CSE-MsgGUID: 2/L/Tg2bQ++P1lpKXI7I4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78288404"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Oct 2024 07:32:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Oct 2024 17:31:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 9/9] drm/i915: Remove ckey/format checks from
 skl_update_scaler_plane()
Date: Wed, 16 Oct 2024 17:31:34 +0300
Message-ID: <20241016143134.26903-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
References: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
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

skl_plane_check() already takes care to reject scaling when an
unsupported pixel format or color keying is used. No need to
replicate that in the scaler code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 77 +++--------------------
 1 file changed, 10 insertions(+), 67 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index baa601d27815..7dbc99b02eaa 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -272,7 +272,6 @@ int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
 		to_intel_plane(plane_state->uapi.plane);
 	struct drm_i915_private *dev_priv = to_i915(intel_plane->base.dev);
 	struct drm_framebuffer *fb = plane_state->hw.fb;
-	int ret;
 	bool force_detach = !fb || !plane_state->uapi.visible;
 	bool need_scaler = false;
 
@@ -281,72 +280,16 @@ int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
 	    fb && intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
 		need_scaler = true;
 
-	ret = skl_update_scaler(crtc_state, force_detach,
-				drm_plane_index(&intel_plane->base),
-				&plane_state->scaler_id,
-				drm_rect_width(&plane_state->uapi.src) >> 16,
-				drm_rect_height(&plane_state->uapi.src) >> 16,
-				drm_rect_width(&plane_state->uapi.dst),
-				drm_rect_height(&plane_state->uapi.dst),
-				fb ? fb->format : NULL,
-				fb ? fb->modifier : 0,
-				need_scaler);
-
-	if (ret || plane_state->scaler_id < 0)
-		return ret;
-
-	/* check colorkey */
-	if (plane_state->ckey.flags) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "[PLANE:%d:%s] scaling with color key not allowed",
-			    intel_plane->base.base.id,
-			    intel_plane->base.name);
-		return -EINVAL;
-	}
-
-	/* Check src format */
-	switch (fb->format->format) {
-	case DRM_FORMAT_RGB565:
-	case DRM_FORMAT_XBGR8888:
-	case DRM_FORMAT_XRGB8888:
-	case DRM_FORMAT_ABGR8888:
-	case DRM_FORMAT_ARGB8888:
-	case DRM_FORMAT_XRGB2101010:
-	case DRM_FORMAT_XBGR2101010:
-	case DRM_FORMAT_ARGB2101010:
-	case DRM_FORMAT_ABGR2101010:
-	case DRM_FORMAT_YUYV:
-	case DRM_FORMAT_YVYU:
-	case DRM_FORMAT_UYVY:
-	case DRM_FORMAT_VYUY:
-	case DRM_FORMAT_NV12:
-	case DRM_FORMAT_XYUV8888:
-	case DRM_FORMAT_P010:
-	case DRM_FORMAT_P012:
-	case DRM_FORMAT_P016:
-	case DRM_FORMAT_Y210:
-	case DRM_FORMAT_Y212:
-	case DRM_FORMAT_Y216:
-	case DRM_FORMAT_XVYU2101010:
-	case DRM_FORMAT_XVYU12_16161616:
-	case DRM_FORMAT_XVYU16161616:
-		break;
-	case DRM_FORMAT_XBGR16161616F:
-	case DRM_FORMAT_ABGR16161616F:
-	case DRM_FORMAT_XRGB16161616F:
-	case DRM_FORMAT_ARGB16161616F:
-		if (DISPLAY_VER(dev_priv) >= 11)
-			break;
-		fallthrough;
-	default:
-		drm_dbg_kms(&dev_priv->drm,
-			    "[PLANE:%d:%s] FB:%d unsupported scaling format 0x%x\n",
-			    intel_plane->base.base.id, intel_plane->base.name,
-			    fb->base.id, fb->format->format);
-		return -EINVAL;
-	}
-
-	return 0;
+	return skl_update_scaler(crtc_state, force_detach,
+				 drm_plane_index(&intel_plane->base),
+				 &plane_state->scaler_id,
+				 drm_rect_width(&plane_state->uapi.src) >> 16,
+				 drm_rect_height(&plane_state->uapi.src) >> 16,
+				 drm_rect_width(&plane_state->uapi.dst),
+				 drm_rect_height(&plane_state->uapi.dst),
+				 fb ? fb->format : NULL,
+				 fb ? fb->modifier : 0,
+				 need_scaler);
 }
 
 static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_state,
-- 
2.45.2

