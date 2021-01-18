Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C702F9A4D
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 08:01:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FEEB6E0E9;
	Mon, 18 Jan 2021 07:01:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA0FB6E0E9
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 07:01:51 +0000 (UTC)
IronPort-SDR: dW9mW5lCnVx7ewF5m3mYQ8H0q1NTSH+OPJb06/BMWyECLBvkrSjFWMMBuV7qYs5ivKU3VK55ss
 ZOQ0PYmPyt8w==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="165856437"
X-IronPort-AV: E=Sophos;i="5.79,355,1602572400"; d="scan'208";a="165856437"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2021 23:01:49 -0800
IronPort-SDR: DHEpaOVAgxwnRpT1H++hO99tOKyYs2CTWvQbubWeTOjHpG0NUQGE5veLNSnDsaZ0JktuIQZmSB
 rABgotpSQMkQ==
X-IronPort-AV: E=Sophos;i="5.79,355,1602572400"; d="scan'208";a="426040858"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2021 23:01:46 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Jan 2021 12:17:12 +0530
Message-Id: <20210118064712.27211-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210118060730.15425-2-sean.z.huang@intel.com>
References: <20210118060730.15425-2-sean.z.huang@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC-v21 13/13] drm/i915/pxp: Add plane decryption
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
Cc: Huang Sean Z <sean.z.huang@intel.com>,
 Gaurav Kumar <kumar.gaurav@intel.com>,
 Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add support to enable/disable PLANE_SURF Decryption Request bit.
It requires only to enable plane decryption support when following
condition met.
1. pxp session is enabled.
2. Buffer object is protected.

v2:
- Rebased to libva_cp-drm-tip_tgl_cp tree.
- Used gen fb obj user_flags instead gem_object_metadata. [Krishna]

v3:
- intel_pxp_gem_object_status() API changes.

Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Cc: Huang Sean Z <sean.z.huang@intel.com>
Cc: Gaurav Kumar <kumar.gaurav@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sprite.c | 21 ++++++++++++++++++---
 drivers/gpu/drm/i915/i915_reg.h             |  1 +
 2 files changed, 19 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index cf3589fd0ddb..39f8c922ce66 100644
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
@@ -768,6 +770,11 @@ icl_program_input_csc(struct intel_plane *plane,
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
@@ -804,6 +811,7 @@ skl_program_plane(struct intel_plane *plane,
 	u32 surf_addr = plane_state->color_plane[color_plane].offset;
 	u32 stride = skl_plane_stride(plane_state, color_plane);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	const struct drm_i915_gem_object *obj = intel_fb_obj(fb);
 	int aux_plane = intel_main_to_aux_plane(fb, color_plane);
 	int crtc_x = plane_state->uapi.dst.x1;
 	int crtc_y = plane_state->uapi.dst.y1;
@@ -814,7 +822,7 @@ skl_program_plane(struct intel_plane *plane,
 	u8 alpha = plane_state->hw.alpha >> 8;
 	u32 plane_color_ctl = 0, aux_dist = 0;
 	unsigned long irqflags;
-	u32 keymsk, keymax;
+	u32 keymsk, keymax, plane_surf;
 	u32 plane_ctl = plane_state->ctl;
 
 	plane_ctl |= skl_plane_ctl_crtc(crtc_state);
@@ -890,8 +898,15 @@ skl_program_plane(struct intel_plane *plane,
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
index 97bcecada87f..7a4817054bc8 100644
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
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
