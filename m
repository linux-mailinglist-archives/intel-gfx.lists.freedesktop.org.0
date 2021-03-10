Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39018334B51
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 23:17:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B77726EA7B;
	Wed, 10 Mar 2021 22:17:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C7406EA78
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 22:17:49 +0000 (UTC)
IronPort-SDR: ChpdD/cqfKNc2winOpmt0VV0kcQDibeMmVw+p2keC2UTR4Ev3B/qYvEigWG2FbeukJBTOY1M4j
 LWtTnNT9uZDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="252592071"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="252592071"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:49 -0800
IronPort-SDR: 0l3GYrr5tZ4U70rFRlc573b30ooVQiH/dNQ6xZwnPcUqdGbJcjNx6vhX8gN2ZYutZVivGqihUW
 CqTrROSbiNCw==
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="403852226"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:48 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 00:17:23 +0200
Message-Id: <20210310221736.2963264-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210310221736.2963264-1-imre.deak@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/23] drm/i915/intel_fb: Pull FB plane
 functions from intel_sprite.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the FB plane specific function from intel_sprite.c to intel_fb.c

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c     | 32 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb.h     |  4 +++
 drivers/gpu/drm/i915/display/intel_sprite.c | 32 ---------------------
 drivers/gpu/drm/i915/display/intel_sprite.h |  1 -
 4 files changed, 36 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 74157d5f2d7f..8ebcded6a472 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -64,3 +64,35 @@ int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_plane)
 	else
 		return 0;
 }
+
+int intel_plane_check_stride(const struct intel_plane_state *plane_state)
+{
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	unsigned int rotation = plane_state->hw.rotation;
+	u32 stride, max_stride;
+
+	/*
+	 * We ignore stride for all invisible planes that
+	 * can be remapped. Otherwise we could end up
+	 * with a false positive when the remapping didn't
+	 * kick in due the plane being invisible.
+	 */
+	if (intel_plane_can_remap(plane_state) &&
+	    !plane_state->uapi.visible)
+		return 0;
+
+	/* FIXME other color planes? */
+	stride = plane_state->color_plane[0].stride;
+	max_stride = plane->max_stride(plane, fb->format->format,
+				       fb->modifier, rotation);
+
+	if (stride > max_stride) {
+		DRM_DEBUG_KMS("[FB:%d] stride (%d) exceeds [PLANE:%d:%s] max stride (%d)\n",
+			      fb->base.id, stride,
+			      plane->base.base.id, plane->base.name, max_stride);
+		return -EINVAL;
+	}
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 6ea220438f9a..8c15f4c9561b 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -10,6 +10,8 @@
 
 struct drm_framebuffer;
 
+struct intel_plane_state;
+
 bool is_ccs_plane(const struct drm_framebuffer *fb, int plane);
 bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane);
 bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane);
@@ -20,4 +22,6 @@ int main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane);
 int skl_ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plane);
 int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_plane);
 
+int intel_plane_check_stride(const struct intel_plane_state *plane_state);
+
 #endif /* __INTEL_FB_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 4cbdb8fd4bb1..0815f10b2246 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -49,38 +49,6 @@
 #include "i9xx_plane.h"
 #include "intel_vrr.h"
 
-int intel_plane_check_stride(const struct intel_plane_state *plane_state)
-{
-	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	const struct drm_framebuffer *fb = plane_state->hw.fb;
-	unsigned int rotation = plane_state->hw.rotation;
-	u32 stride, max_stride;
-
-	/*
-	 * We ignore stride for all invisible planes that
-	 * can be remapped. Otherwise we could end up
-	 * with a false positive when the remapping didn't
-	 * kick in due the plane being invisible.
-	 */
-	if (intel_plane_can_remap(plane_state) &&
-	    !plane_state->uapi.visible)
-		return 0;
-
-	/* FIXME other color planes? */
-	stride = plane_state->color_plane[0].stride;
-	max_stride = plane->max_stride(plane, fb->format->format,
-				       fb->modifier, rotation);
-
-	if (stride > max_stride) {
-		DRM_DEBUG_KMS("[FB:%d] stride (%d) exceeds [PLANE:%d:%s] max stride (%d)\n",
-			      fb->base.id, stride,
-			      plane->base.base.id, plane->base.name, max_stride);
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
 int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 {
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.h b/drivers/gpu/drm/i915/display/intel_sprite.h
index f6989da2dc4b..c085eb87705c 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.h
+++ b/drivers/gpu/drm/i915/display/intel_sprite.h
@@ -35,7 +35,6 @@ int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
 				    struct drm_file *file_priv);
 void intel_pipe_update_start(const struct intel_crtc_state *new_crtc_state);
 void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state);
-int intel_plane_check_stride(const struct intel_plane_state *plane_state);
 int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state);
 int chv_plane_check_rotation(const struct intel_plane_state *plane_state);
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
