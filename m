Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3534E4B4CB1
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 11:55:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D03610E4FA;
	Mon, 14 Feb 2022 10:55:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F5A510E4F7
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 10:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644836150; x=1676372150;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eqNUiYbsDo7gATT+mNfh8IuNM4MydhFp340ht6UmAzA=;
 b=enwGmF4UtkX9/HgtUeUbIxyXAoj1tkMO0nfh739kDtpRTjhvxmsE1xl1
 FOuxNyIvZhbk8YktXF2YlhIuZrjviN+HgTIg3i63UPglclq+IDOKiz2OK
 j1R05v9Ty8ajo3nEY5jJSU7XZis+cMjEpBFbXoleq1jaFOShWunOIBU3P
 cGNr9j8pi0k7m3OZAVKCTYLyuWLNG3OVqwRBwOaMz903qXyqA84qYltYV
 mSGTKyupq7c0IPXxUrJSMwhsx7/NIxWLBLdSzN3ZlwuXv+QGtgiJSYXor
 laMjKZR8kVKBRXSthz+jfZnfiStGTMzoumF/QqPJC5qtPBYm2amSw6SSc w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10257"; a="310802951"
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="310802951"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 02:55:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="680415328"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 14 Feb 2022 02:55:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Feb 2022 12:55:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Feb 2022 12:55:32 +0200
Message-Id: <20220214105532.13049-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220214105532.13049-1-ville.syrjala@linux.intel.com>
References: <20220214105532.13049-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Pimp async flip debugs
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

Print the offending plane/crtc id+name in the async flip debugs.

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 63 ++++++++++++++------
 1 file changed, 44 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 93db8ffa54f8..51ef393ff87b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7541,18 +7541,24 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 	if (!new_crtc_state->uapi.async_flip)
 		return 0;
 
-	if (intel_crtc_needs_modeset(new_crtc_state)) {
-		drm_dbg_kms(&i915->drm, "Modeset Required. Async flip not supported\n");
-		return -EINVAL;
-	}
-
 	if (!new_crtc_state->hw.active) {
-		drm_dbg_kms(&i915->drm, "CRTC inactive\n");
+		drm_dbg_kms(&i915->drm,
+			    "[CRTC:%d:%s] not active\n",
+			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
 	}
+
+	if (intel_crtc_needs_modeset(new_crtc_state)) {
+		drm_dbg_kms(&i915->drm,
+			    "[CRTC:%d:%s] modeset required\n",
+			    crtc->base.base.id, crtc->base.name);
+		return -EINVAL;
+	}
+
 	if (old_crtc_state->active_planes != new_crtc_state->active_planes) {
 		drm_dbg_kms(&i915->drm,
-			    "Active planes cannot be changed during async flip\n");
+			    "[CRTC:%d:%s] Active planes cannot be in async flip\n",
+			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
 	}
 
@@ -7593,75 +7599,94 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 			break;
 		default:
 			drm_dbg_kms(&i915->drm,
-				    "Linear memory/CCS does not support async flips\n");
+				    "[PLANE:%d:%s] Modifier does not support async flips\n",
+				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
 		}
 
 		if (new_plane_state->hw.fb->format->num_planes > 1) {
 			drm_dbg_kms(&i915->drm,
-				    "Planar formats not supported with async flips\n");
+				    "[PLANE:%d:%s] Planar formats do not support async flips\n",
+				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
 		}
 
 		if (old_plane_state->view.color_plane[0].mapping_stride !=
 		    new_plane_state->view.color_plane[0].mapping_stride) {
-			drm_dbg_kms(&i915->drm, "Stride cannot be changed in async flip\n");
+			drm_dbg_kms(&i915->drm,
+				    "[PLANE:%d:%s] Stride cannot be changed in async flip\n",
+				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
 		}
 
 		if (old_plane_state->hw.fb->modifier !=
 		    new_plane_state->hw.fb->modifier) {
 			drm_dbg_kms(&i915->drm,
-				    "Framebuffer modifiers cannot be changed in async flip\n");
+				    "[PLANE:%d:%s] Modifier cannot be changed in async flip\n",
+				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
 		}
 
 		if (old_plane_state->hw.fb->format !=
 		    new_plane_state->hw.fb->format) {
 			drm_dbg_kms(&i915->drm,
-				    "Framebuffer format cannot be changed in async flip\n");
+				    "[PLANE:%d:%s] Pixel format cannot be changed in async flip\n",
+				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
 		}
 
 		if (old_plane_state->hw.rotation !=
 		    new_plane_state->hw.rotation) {
-			drm_dbg_kms(&i915->drm, "Rotation cannot be changed in async flip\n");
+			drm_dbg_kms(&i915->drm,
+				    "[PLANE:%d:%s] Rotation cannot be changed in async flip\n",
+				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
 		}
 
 		if (!drm_rect_equals(&old_plane_state->uapi.src, &new_plane_state->uapi.src) ||
 		    !drm_rect_equals(&old_plane_state->uapi.dst, &new_plane_state->uapi.dst)) {
 			drm_dbg_kms(&i915->drm,
-				    "Plane size/co-ordinates cannot be changed in async flip\n");
+				    "[PLANE:%d:%s] Size/co-ordinates cannot be changed in async flip\n",
+				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
 		}
 
 		if (old_plane_state->hw.alpha != new_plane_state->hw.alpha) {
-			drm_dbg_kms(&i915->drm, "Alpha value cannot be changed in async flip\n");
+			drm_dbg_kms(&i915->drm,
+				    "[PLANES:%d:%s] Alpha value cannot be changed in async flip\n",
+				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
 		}
 
 		if (old_plane_state->hw.pixel_blend_mode !=
 		    new_plane_state->hw.pixel_blend_mode) {
 			drm_dbg_kms(&i915->drm,
-				    "Pixel blend mode cannot be changed in async flip\n");
+				    "[PLANE:%d:%s] Pixel blend mode cannot be changed in async flip\n",
+				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
 		}
 
 		if (old_plane_state->hw.color_encoding != new_plane_state->hw.color_encoding) {
 			drm_dbg_kms(&i915->drm,
-				    "Color encoding cannot be changed in async flip\n");
+				    "[PLANE:%d:%s] Color encoding cannot be changed in async flip\n",
+				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
 		}
 
 		if (old_plane_state->hw.color_range != new_plane_state->hw.color_range) {
-			drm_dbg_kms(&i915->drm, "Color range cannot be changed in async flip\n");
+			drm_dbg_kms(&i915->drm,
+				    "[PLANE:%d:%s] Color range cannot be changed in async flip\n",
+				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
 		}
 
 		/* plane decryption is allow to change only in synchronous flips */
-		if (old_plane_state->decrypt != new_plane_state->decrypt)
+		if (old_plane_state->decrypt != new_plane_state->decrypt) {
+			drm_dbg_kms(&i915->drm,
+				    "[PLANE:%d:%s] Decryption cannot be changed in async flip\n",
+				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
+		}
 	}
 
 	return 0;
-- 
2.34.1

