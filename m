Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A465A2D3AAE
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 06:37:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C192F6E103;
	Wed,  9 Dec 2020 05:37:13 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BD936E0F1
 for <Intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 05:37:04 +0000 (UTC)
IronPort-SDR: dfBfncToBfOQWlZh3Xz45d1kbnr4bS3b4jHUFzjtP2NhqAX4GJ2MV8nCf8bVGyEB0UNs8D07nI
 SSzw1AFh379Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9829"; a="171449798"
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; d="scan'208";a="171449798"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 21:37:02 -0800
IronPort-SDR: sQZ+dVzHeJ+XoVyHv6Rq37ECXhTzD5OhyTaOp4R97yozpbK1g89cy+5xvkCxE4CATkZc96ygwA
 kmtsit5Y8Uew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; d="scan'208";a="318670180"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga007.fm.intel.com with ESMTP; 08 Dec 2020 21:37:02 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  8 Dec 2020 21:36:28 -0800
Message-Id: <20201209053628.22584-14-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201209053628.22584-1-sean.z.huang@intel.com>
References: <20201209053628.22584-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v2 13/13] drm/i915/pxp: Add plane decryption
 support
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
Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Anshuman Gupta <anshuman.gupta@intel.com>

Add support to enable/disable PLANE_SURF Decryption Request bit.
It requires only to enable plane decryption support when following
condition met.
1. PAVP session is enabled.
2. Buffer object is protected.

v2:
- Rebased to libva_cp-drm-tip_tgl_cp tree.
- Used gen fb obj user_flags instead gem_object_metadata. [Krishna]

Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Cc: Huang, Sean Z <sean.z.huang@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sprite.c | 21 ++++++++++++++++++---
 drivers/gpu/drm/i915/i915_reg.h             |  1 +
 2 files changed, 19 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 019a2d6d807a..158c8dea0930 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -39,6 +39,8 @@
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_rect.h>
 
+#include "pxp/intel_pxp.h"
+
 #include "i915_drv.h"
 #include "i915_trace.h"
 #include "i915_vgpu.h"
@@ -752,6 +754,11 @@ icl_program_input_csc(struct intel_plane *plane,
 			  PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 2), 0x0);
 }
 
+static bool intel_fb_obj_protected(const struct drm_i915_gem_object *obj)
+{
+	return obj->user_flags & I915_BO_PROTECTED ? true : false;
+}
+
 static void
 skl_plane_async_flip(struct intel_plane *plane,
 		     const struct intel_crtc_state *crtc_state,
@@ -788,6 +795,7 @@ skl_program_plane(struct intel_plane *plane,
 	u32 surf_addr = plane_state->color_plane[color_plane].offset;
 	u32 stride = skl_plane_stride(plane_state, color_plane);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	const struct drm_i915_gem_object *obj = intel_fb_obj(fb);
 	int aux_plane = intel_main_to_aux_plane(fb, color_plane);
 	int crtc_x = plane_state->uapi.dst.x1;
 	int crtc_y = plane_state->uapi.dst.y1;
@@ -798,7 +806,7 @@ skl_program_plane(struct intel_plane *plane,
 	u8 alpha = plane_state->hw.alpha >> 8;
 	u32 plane_color_ctl = 0, aux_dist = 0;
 	unsigned long irqflags;
-	u32 keymsk, keymax;
+	u32 keymsk, keymax, plane_surf;
 	u32 plane_ctl = plane_state->ctl;
 
 	plane_ctl |= skl_plane_ctl_crtc(crtc_state);
@@ -874,8 +882,15 @@ skl_program_plane(struct intel_plane *plane,
 	 * the control register just before the surface register.
 	 */
 	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
-	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
-			  intel_plane_ggtt_offset(plane_state) + surf_addr);
+	plane_surf = intel_plane_ggtt_offset(plane_state) + surf_addr;
+
+	if (intel_pxp_gem_object_status(dev_priv) &&
+	    intel_fb_obj_protected(obj))
+		plane_surf |= PLANE_SURF_DECRYPTION_ENABLED;
+	else
+		plane_surf &= ~PLANE_SURF_DECRYPTION_ENABLED;
+
+	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), plane_surf);
 
 	if (plane_state->scaler_id >= 0)
 		skl_program_scaler(plane, crtc_state, plane_state);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 6a11698e7724..b38df3ac78c6 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7208,6 +7208,7 @@ enum {
 #define _PLANE_SURF_3(pipe)	_PIPE(pipe, _PLANE_SURF_3_A, _PLANE_SURF_3_B)
 #define PLANE_SURF(pipe, plane)	\
 	_MMIO_PLANE(plane, _PLANE_SURF_1(pipe), _PLANE_SURF_2(pipe))
+#define   PLANE_SURF_DECRYPTION_ENABLED		REG_BIT(2)
 
 #define _PLANE_OFFSET_1_B			0x711a4
 #define _PLANE_OFFSET_2_B			0x712a4
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
