Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D97415925
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 09:35:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E42D6ED0B;
	Thu, 23 Sep 2021 07:35:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 824196ECF8
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 07:35:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="223816416"
X-IronPort-AV: E=Sophos;i="5.85,316,1624345200"; d="scan'208";a="223816416"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 00:34:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,316,1624345200"; d="scan'208";a="558167476"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga002.fm.intel.com with ESMTP; 23 Sep 2021 00:34:58 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Anshuman Gupta <anshuman.gupta@intel.com>,
 Bommu Krishnaiah <krishnaiah.bommu@intel.com>,
 Huang Sean Z <sean.z.huang@intel.com>,
 Gaurav Kumar <kumar.gaurav@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Juston Li <juston.li@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Uma Shankar <uma.shankar@intel.com>
Date: Thu, 23 Sep 2021 00:35:25 -0700
Message-Id: <20210923073529.1058204-14-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210923073529.1058204-1-alan.previn.teres.alexis@intel.com>
References: <20210923073529.1058204-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v12 13/17] drm/i915/pxp: Add plane decryption
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

From: Anshuman Gupta <anshuman.gupta@intel.com>

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

v10 (Daniele): update PXP check again to match rework in earlier
patches and don't consider protection valid if the object has not
been used in an execbuf beforehand.

Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Cc: Huang Sean Z <sean.z.huang@intel.com>
Cc: Gaurav Kumar <kumar.gaurav@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Juston Li <juston.li@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com> #v9
---
 drivers/gpu/drm/i915/display/intel_display.c  | 26 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  3 +++
 .../drm/i915/display/skl_universal_plane.c    | 15 ++++++++---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 +-
 drivers/gpu/drm/i915/i915_reg.h               |  1 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c          |  9 ++++---
 drivers/gpu/drm/i915/pxp/intel_pxp.h          |  7 +++--
 7 files changed, 54 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 23b1e0ccc72d..4a937adff6dd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -71,6 +71,8 @@
 #include "gt/intel_rps.h"
 #include "gt/gen8_ppgtt.h"
 
+#include "pxp/intel_pxp.h"
+
 #include "g4x_dp.h"
 #include "g4x_hdmi.h"
 #include "i915_drv.h"
@@ -9004,13 +9006,23 @@ static int intel_bigjoiner_add_affected_planes(struct intel_atomic_state *state)
 	return 0;
 }
 
+static bool bo_has_valid_encryption(struct drm_i915_gem_object *obj)
+{
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+
+	return intel_pxp_key_check(&i915->gt.pxp, obj, false) == 0;
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
@@ -9058,6 +9070,16 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
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
+	}
+
 	return 0;
 }
 
@@ -9344,6 +9366,10 @@ static int intel_atomic_check_async(struct intel_atomic_state *state)
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
index e9e806d90eec..d75c8bd39abc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -625,6 +625,9 @@ struct intel_plane_state {
 
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
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d129a9f951da..c75afc8784e3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -832,7 +832,7 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
 		 */
 		if (i915_gem_context_uses_protected_content(eb->gem_context) &&
 		    i915_gem_object_is_protected(obj)) {
-			err = intel_pxp_key_check(&vm->gt->pxp, obj);
+			err = intel_pxp_key_check(&vm->gt->pxp, obj, true);
 			if (err) {
 				i915_gem_object_put(obj);
 				return ERR_PTR(err);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 810f6f31b6cb..3b8b29a61027 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7376,6 +7376,7 @@ enum {
 #define _PLANE_SURF_3(pipe)	_PIPE(pipe, _PLANE_SURF_3_A, _PLANE_SURF_3_B)
 #define PLANE_SURF(pipe, plane)	\
 	_MMIO_PLANE(plane, _PLANE_SURF_1(pipe), _PLANE_SURF_2(pipe))
+#define   PLANE_SURF_DECRYPT			REG_BIT(2)
 
 #define _PLANE_OFFSET_1_B			0x711a4
 #define _PLANE_OFFSET_2_B			0x712a4
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 77f58641f6de..cb254aeac4a7 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -190,7 +190,9 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp)
 	intel_pxp_irq_disable(pxp);
 }
 
-int intel_pxp_key_check(struct intel_pxp *pxp, struct drm_i915_gem_object *obj)
+int intel_pxp_key_check(struct intel_pxp *pxp,
+			struct drm_i915_gem_object *obj,
+			bool assign)
 {
 	if (!intel_pxp_is_active(pxp))
 		return -ENODEV;
@@ -206,9 +208,10 @@ int intel_pxp_key_check(struct intel_pxp *pxp, struct drm_i915_gem_object *obj)
 	 * as such. If the object is already encrypted, check instead if the
 	 * used key is still valid.
 	 */
-	if (!obj->pxp_key_instance)
+	if (!obj->pxp_key_instance && assign)
 		obj->pxp_key_instance = pxp->key_instance;
-	else if (obj->pxp_key_instance != pxp->key_instance)
+
+	if (obj->pxp_key_instance != pxp->key_instance)
 		return -ENOEXEC;
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index bce0014d9ff9..aa262258d4d4 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -29,7 +29,9 @@ void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
 
 int intel_pxp_start(struct intel_pxp *pxp);
 
-int intel_pxp_key_check(struct intel_pxp *pxp, struct drm_i915_gem_object *obj);
+int intel_pxp_key_check(struct intel_pxp *pxp,
+			struct drm_i915_gem_object *obj,
+			bool assign);
 
 void intel_pxp_invalidate(struct intel_pxp *pxp);
 #else
@@ -52,7 +54,8 @@ static inline bool intel_pxp_is_active(const struct intel_pxp *pxp)
 }
 
 static inline int intel_pxp_key_check(struct intel_pxp *pxp,
-				      struct drm_i915_gem_object *obj)
+				      struct drm_i915_gem_object *obj,
+				      bool assign)
 {
 	return -ENODEV;
 }
-- 
2.25.1

