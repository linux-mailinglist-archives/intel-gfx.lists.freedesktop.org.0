Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 592632D6A82
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 23:39:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF4096EB7E;
	Thu, 10 Dec 2020 22:39:39 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3544589CF8
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 22:39:38 +0000 (UTC)
IronPort-SDR: urpql+jhn3VTF5APi1kNQ3bpNyie71Gperuvj3IoTT6+bVukUSnLfRHzOdkbZ2ZApVjaSiWK6c
 qMROWn0EBNog==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="192676674"
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="192676674"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 14:39:33 -0800
IronPort-SDR: JDIIAu8W9/WFzc5bTmcQR6GYJ40owahVJ2dyq4cNn0y9ctNO6ZBKZxOwIPuFMXf1Z1pZiD5Wug
 P7JZsbrfkIAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="544017010"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga005.fm.intel.com with ESMTP; 10 Dec 2020 14:39:32 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 10 Dec 2020 14:38:51 -0800
Message-Id: <20201210223859.23882-14-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201210223859.23882-1-sean.z.huang@intel.com>
References: <20201210223859.23882-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v6 13/21] drm/i915/pxp: Add plane decryption
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
index b7e208816074..273bdc031e8d 100644
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
@@ -767,6 +769,11 @@ icl_program_input_csc(struct intel_plane *plane,
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
@@ -803,6 +810,7 @@ skl_program_plane(struct intel_plane *plane,
 	u32 surf_addr = plane_state->color_plane[color_plane].offset;
 	u32 stride = skl_plane_stride(plane_state, color_plane);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	const struct drm_i915_gem_object *obj = intel_fb_obj(fb);
 	int aux_plane = intel_main_to_aux_plane(fb, color_plane);
 	int crtc_x = plane_state->uapi.dst.x1;
 	int crtc_y = plane_state->uapi.dst.y1;
@@ -813,7 +821,7 @@ skl_program_plane(struct intel_plane *plane,
 	u8 alpha = plane_state->hw.alpha >> 8;
 	u32 plane_color_ctl = 0, aux_dist = 0;
 	unsigned long irqflags;
-	u32 keymsk, keymax;
+	u32 keymsk, keymax, plane_surf;
 	u32 plane_ctl = plane_state->ctl;
 
 	plane_ctl |= skl_plane_ctl_crtc(crtc_state);
@@ -889,8 +897,15 @@ skl_program_plane(struct intel_plane *plane,
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
index 1e8dfe435ca8..0ea7e2a402ae 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7209,6 +7209,7 @@ enum {
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
