Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 933373EA098
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 10:34:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED5666E323;
	Thu, 12 Aug 2021 08:34:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A7906E323
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 08:34:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10073"; a="212193156"
X-IronPort-AV: E=Sophos;i="5.84,315,1620716400"; d="scan'208";a="212193156"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 01:34:33 -0700
X-IronPort-AV: E=Sophos;i="5.84,315,1620716400"; d="scan'208";a="469688656"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.179])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 01:34:30 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, Anshuman Gupta <anshuman.gupta@intel.com>,
 Bommu Krishnaiah <krishnaiah.bommu@intel.com>,
 Huang Sean Z <sean.z.huang@intel.com>,
 Gaurav Kumar <kumar.gaurav@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Juston Li <juston.li@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Thu, 12 Aug 2021 13:47:06 +0530
Message-Id: <20210812081706.29458-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210729020106.18346-14-daniele.ceraolospurio@intel.com>
References: <20210729020106.18346-14-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 13/15] drm/i915/pxp: Add plane decryption
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add support to enable/disable PLANE_SURF Decryption Request bit.
It requires only to enable plane decryption support when following
condition met.
1. PXP session is enabled.
2. Buffer object is protected.

v2:
- Used gen fb obj user_flags instead gem_object_metadata. [Krishna]

v3:
- intel_pxp_gem_object_status() API changes.

v4: use intel_pxp_is_active (Daniele)

v5: rebase and use the new protected object status checker (Daniele)

v6: used plane state for plane_decryption to handle async flip
    as suggested by Ville.

v7: check pxp session while plane decrypt state computation. [Ville]
    removed pointless code. [Ville]

v8 (Daniele): update PXP check

v9: move decrypt check after icl_check_nv12_planes() when overlays
    have fb set (Juston)

Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Cc: Huang Sean Z <sean.z.huang@intel.com>
Cc: Gaurav Kumar <kumar.gaurav@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Juston Li <juston.li@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 27 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  3 +++
 .../drm/i915/display/skl_universal_plane.c    | 15 ++++++++---
 drivers/gpu/drm/i915/i915_reg.h               |  1 +
 4 files changed, 43 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b25c596f6f7e..accdd6614681 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -70,6 +70,8 @@
 #include "gt/intel_rps.h"
 #include "gt/gen8_ppgtt.h"
 
+#include "pxp/intel_pxp.h"
+
 #include "g4x_dp.h"
 #include "g4x_hdmi.h"
 #include "i915_drv.h"
@@ -9610,13 +9612,24 @@ static int intel_bigjoiner_add_affected_planes(struct intel_atomic_state *state)
 	return 0;
 }
 
+static int bo_has_valid_encryption(const struct drm_i915_gem_object *obj)
+{
+        struct drm_i915_private *i915 = to_i915(obj->base.dev);
+
+        return i915_gem_object_has_valid_protection(obj) &&
+               intel_pxp_is_active(&i915->gt.pxp);
+}
+
 static int intel_atomic_check_planes(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
 	struct intel_plane_state *plane_state;
 	struct intel_plane *plane;
+	struct intel_plane_state *new_plane_state;
+	struct intel_plane_state *old_plane_state;
 	struct intel_crtc *crtc;
+	const struct drm_framebuffer *fb;
 	int i, ret;
 
 	ret = icl_add_linked_planes(state);
@@ -9664,6 +9677,16 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
 			return ret;
 	}
 
+	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
+		new_plane_state = intel_atomic_get_new_plane_state(state, plane);
+		old_plane_state = intel_atomic_get_old_plane_state(state, plane);
+		fb = new_plane_state->hw.fb;
+		if (fb)
+			new_plane_state->decrypt = bo_has_valid_encryption(intel_fb_obj(fb));
+		else
+			new_plane_state->decrypt = old_plane_state->decrypt;
+        }
+
 	return 0;
 }
 
@@ -9950,6 +9973,10 @@ static int intel_atomic_check_async(struct intel_atomic_state *state)
 			drm_dbg_kms(&i915->drm, "Color range cannot be changed in async flip\n");
 			return -EINVAL;
 		}
+
+		/* plane decryption is allow to change only in synchronous flips */
+		if (old_plane_state->decrypt != new_plane_state->decrypt)
+			return -EINVAL;
 	}
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6beeeeba1bed..53b5db3c6228 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -629,6 +629,9 @@ struct intel_plane_state {
 
 	struct intel_fb_view view;
 
+	/* Plane pxp decryption state */
+	bool decrypt;
+
 	/* plane control register */
 	u32 ctl;
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 724e7b04f3b6..55e3f093b951 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -18,6 +18,7 @@
 #include "intel_sprite.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
+#include "pxp/intel_pxp.h"
 
 static const u32 skl_plane_formats[] = {
 	DRM_FORMAT_C8,
@@ -1024,7 +1025,7 @@ skl_program_plane(struct intel_plane *plane,
 	u8 alpha = plane_state->hw.alpha >> 8;
 	u32 plane_color_ctl = 0, aux_dist = 0;
 	unsigned long irqflags;
-	u32 keymsk, keymax;
+	u32 keymsk, keymax, plane_surf;
 	u32 plane_ctl = plane_state->ctl;
 
 	plane_ctl |= skl_plane_ctl_crtc(crtc_state);
@@ -1113,8 +1114,16 @@ skl_program_plane(struct intel_plane *plane,
 	 * the control register just before the surface register.
 	 */
 	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
-	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
-			  intel_plane_ggtt_offset(plane_state) + surf_addr);
+	plane_surf = intel_plane_ggtt_offset(plane_state) + surf_addr;
+
+	/*
+	 * FIXME: pxp session invalidation can hit any time even at time of commit
+	 * or after the commit, display content will be garbage.
+	 */
+	if (plane_state->decrypt)
+		plane_surf |= PLANE_SURF_DECRYPT;
+
+	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), plane_surf);
 
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f76eaed8e855..57f22f54d9f7 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7347,6 +7347,7 @@ enum {
 #define _PLANE_SURF_3(pipe)	_PIPE(pipe, _PLANE_SURF_3_A, _PLANE_SURF_3_B)
 #define PLANE_SURF(pipe, plane)	\
 	_MMIO_PLANE(plane, _PLANE_SURF_1(pipe), _PLANE_SURF_2(pipe))
+#define   PLANE_SURF_DECRYPT			REG_BIT(2)
 
 #define _PLANE_OFFSET_1_B			0x711a4
 #define _PLANE_OFFSET_2_B			0x712a4
-- 
2.26.2

