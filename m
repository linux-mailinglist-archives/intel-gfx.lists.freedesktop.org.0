Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OBrcMEtEoGmrhAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 14:02:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A71C1A605E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 14:01:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5363710E923;
	Thu, 26 Feb 2026 13:01:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FktmxmHf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB43710E91E;
 Thu, 26 Feb 2026 13:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772110915; x=1803646915;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tIRQj0f+czSi43SSfqIxxQFxIyvOxbZE2l0M6dW4fak=;
 b=FktmxmHfapQBw06wjAGC/wpLfd/e6OQhGk7xQQImoW8eDGWvsiCkMfgM
 z6IpQ2ScdRtsmiHV0GMEIukdAWS+uy1+IrlOyDtEuTzlHUIxwr8EqmDCT
 f2smd4GzvcGSs1ShCwZAroDbjYzJwXeCPZXpuRwUifCU4czXfIV1Art/K
 2ZD32YQ6T8Aj3NFJUWmELVhFMZJ8XqGUgBqqVa7w9ga+Hk3S4SaRg9nRH
 liFwPZ3oBtwIx+OO240z4b9gCGTFP+mZ1VQsa7ph2ErbfkQ0ll4hq8cUU
 yaPn92B+Da6bSwNz+F/H8y3gnu3NIpiIVexNPuUcxO5GWBa0Im6NKhD7D g==;
X-CSE-ConnectionGUID: tssU0GNJQemOVM60YTfGIA==
X-CSE-MsgGUID: NdZVASOxRry8siwTJ0KNjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="95786668"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="95786668"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 05:01:54 -0800
X-CSE-ConnectionGUID: wZ1EWiLWQkSfo1zA+LDeKQ==
X-CSE-MsgGUID: HlE1ob1uS/KxGJZdjDtj3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="239548747"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 05:01:52 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 19/19] drm/i915/overlay: Convert overlay to parent interface
Date: Thu, 26 Feb 2026 15:01:50 +0200
Message-ID: <20260226130150.16816-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260226100738.29997-20-ville.syrjala@linux.intel.com>
References: <20260226100738.29997-20-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RSPAMD_EMAILBL_FAIL(0.00)[ville.syrjala.linux.intel.com:query timed out,jani.nikula.intel.com:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid]
X-Rspamd-Queue-Id: 6A71C1A605E
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Convert the direct i915_overlay_*() calls from the display
side to go over a new parent interface instead.

v2: Correctly handle the ERR_PTR returned by
    i915_overlay_obj_lookup() (Jani)
v3: Rebase due to the NULL check in intel_overlay_cleanup()

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 36 +++++-----
 drivers/gpu/drm/i915/display/intel_overlay.h | 30 --------
 drivers/gpu/drm/i915/display/intel_parent.c  | 76 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_parent.h  | 26 +++++++
 drivers/gpu/drm/i915/i915_driver.c           |  2 +
 drivers/gpu/drm/i915/i915_overlay.c          | 57 +++++++++------
 drivers/gpu/drm/i915/i915_overlay.h          | 34 +--------
 drivers/gpu/drm/xe/Makefile                  |  1 +
 include/drm/intel/display_parent_interface.h | 33 +++++++++
 9 files changed, 194 insertions(+), 101 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 497bd4ec2224..12a325ceae6f 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -30,13 +30,13 @@
 #include <drm/drm_gem.h>
 #include <drm/drm_print.h>
 
-#include "i915_overlay.h"
 #include "intel_color_regs.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_frontbuffer.h"
 #include "intel_overlay.h"
+#include "intel_parent.h"
 #include "intel_pfit_regs.h"
 
 /* Limits for overlay size. According to intel doc, the real limits are:
@@ -199,7 +199,7 @@ void intel_overlay_reset(struct intel_display *display)
 	overlay->old_yscale = 0;
 	overlay->crtc = NULL;
 
-	i915_overlay_reset(display->drm);
+	intel_parent_overlay_reset(display);
 }
 
 static int packed_depth_bytes(u32 format)
@@ -477,19 +477,19 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 	drm_WARN_ON(display->drm,
 		    !drm_modeset_is_locked(&display->drm->mode_config.connection_mutex));
 
-	ret = i915_overlay_release_old_vid(display->drm);
+	ret = intel_parent_overlay_release_old_vid(display);
 	if (ret != 0)
 		return ret;
 
 	atomic_inc(&display->restore.pending_fb_pin);
 
-	vma = i915_overlay_pin_fb(display->drm, obj, &offset);
+	vma = intel_parent_overlay_pin_fb(display, obj, &offset);
 	if (IS_ERR(vma)) {
 		ret = PTR_ERR(vma);
 		goto out_pin_section;
 	}
 
-	if (!i915_overlay_is_active(display->drm)) {
+	if (!intel_parent_overlay_is_active(display)) {
 		const struct intel_crtc_state *crtc_state =
 			overlay->crtc->config;
 		u32 oconfig = 0;
@@ -505,7 +505,7 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 			OCONF_PIPE_A : OCONF_PIPE_B;
 		iowrite32(oconfig, &regs->OCONFIG);
 
-		ret = i915_overlay_on(display->drm, INTEL_FRONTBUFFER_OVERLAY(pipe));
+		ret = intel_parent_overlay_on(display, INTEL_FRONTBUFFER_OVERLAY(pipe));
 		if (ret != 0)
 			goto out_unpin;
 	}
@@ -563,14 +563,14 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 	if (tmp & (1 << 17))
 		drm_dbg(display->drm, "overlay underrun, DOVSTA: %x\n", tmp);
 
-	ret = i915_overlay_continue(display->drm, vma, scale_changed);
+	ret = intel_parent_overlay_continue(display, vma, scale_changed);
 	if (ret)
 		goto out_unpin;
 
 	return 0;
 
 out_unpin:
-	i915_overlay_unpin_fb(display->drm, vma);
+	intel_parent_overlay_unpin_fb(display, vma);
 out_pin_section:
 	atomic_dec(&display->restore.pending_fb_pin);
 
@@ -585,14 +585,14 @@ int intel_overlay_switch_off(struct intel_overlay *overlay)
 	drm_WARN_ON(display->drm,
 		    !drm_modeset_is_locked(&display->drm->mode_config.connection_mutex));
 
-	ret = i915_overlay_recover_from_interrupt(display->drm);
+	ret = intel_parent_overlay_recover_from_interrupt(display);
 	if (ret != 0)
 		return ret;
 
-	if (!i915_overlay_is_active(display->drm))
+	if (!intel_parent_overlay_is_active(display))
 		return 0;
 
-	ret = i915_overlay_release_old_vid(display->drm);
+	ret = intel_parent_overlay_release_old_vid(display);
 	if (ret != 0)
 		return ret;
 
@@ -601,7 +601,7 @@ int intel_overlay_switch_off(struct intel_overlay *overlay)
 	overlay->crtc->overlay = NULL;
 	overlay->crtc = NULL;
 
-	return i915_overlay_off(display->drm);
+	return intel_parent_overlay_off(display);
 }
 
 static int check_overlay_possible_on_crtc(struct intel_overlay *overlay,
@@ -822,13 +822,13 @@ int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
 		return -ENOENT;
 	crtc = to_intel_crtc(drmmode_crtc);
 
-	obj = i915_overlay_obj_lookup(dev, file_priv, params->bo_handle);
+	obj = intel_parent_overlay_obj_lookup(display, file_priv, params->bo_handle);
 	if (IS_ERR(obj))
 		return PTR_ERR(obj);
 
 	drm_modeset_lock_all(dev);
 
-	ret = i915_overlay_recover_from_interrupt(dev);
+	ret = intel_parent_overlay_recover_from_interrupt(display);
 	if (ret != 0)
 		goto out_unlock;
 
@@ -998,7 +998,7 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 			if (DISPLAY_VER(display) == 2)
 				goto out_unlock;
 
-			if (i915_overlay_is_active(display->drm)) {
+			if (intel_parent_overlay_is_active(display)) {
 				ret = -EBUSY;
 				goto out_unlock;
 			}
@@ -1036,8 +1036,8 @@ void intel_overlay_setup(struct intel_display *display)
 	if (!overlay)
 		return;
 
-	regs = i915_overlay_setup(display->drm,
-				  OVERLAY_NEEDS_PHYSICAL(display));
+	regs = intel_parent_overlay_setup(display,
+					  OVERLAY_NEEDS_PHYSICAL(display));
 	if (IS_ERR(regs))
 		goto out_free;
 
@@ -1071,7 +1071,7 @@ void intel_overlay_cleanup(struct intel_display *display)
 	if (!display->overlay)
 		return;
 
-	i915_overlay_cleanup(display->drm);
+	intel_parent_overlay_cleanup(display);
 
 	kfree(display->overlay);
 	display->overlay = NULL;
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.h b/drivers/gpu/drm/i915/display/intel_overlay.h
index 4ef6882b9acb..a4291d6dd528 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.h
+++ b/drivers/gpu/drm/i915/display/intel_overlay.h
@@ -14,7 +14,6 @@ struct drm_printer;
 struct intel_display;
 struct intel_overlay;
 
-#ifdef I915
 void intel_overlay_setup(struct intel_display *display);
 bool intel_overlay_available(struct intel_display *display);
 void intel_overlay_cleanup(struct intel_display *display);
@@ -24,34 +23,5 @@ int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
 int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 			      struct drm_file *file_priv);
 void intel_overlay_reset(struct intel_display *display);
-#else
-static inline void intel_overlay_setup(struct intel_display *display)
-{
-}
-static inline bool intel_overlay_available(struct intel_display *display)
-{
-	return false;
-}
-static inline void intel_overlay_cleanup(struct intel_display *display)
-{
-}
-static inline int intel_overlay_switch_off(struct intel_overlay *overlay)
-{
-	return 0;
-}
-static inline int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
-						struct drm_file *file_priv)
-{
-	return 0;
-}
-static inline int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
-					    struct drm_file *file_priv)
-{
-	return 0;
-}
-static inline void intel_overlay_reset(struct intel_display *display)
-{
-}
-#endif
 
 #endif /* __INTEL_OVERLAY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index 7f73695a0444..77c9fd259ed0 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -59,6 +59,82 @@ void intel_parent_irq_synchronize(struct intel_display *display)
 	display->parent->irq->synchronize(display->drm);
 }
 
+/* overlay */
+bool intel_parent_overlay_is_active(struct intel_display *display)
+{
+	return display->parent->overlay->is_active(display->drm);
+}
+
+int intel_parent_overlay_on(struct intel_display *display,
+			    u32 frontbuffer_bits)
+{
+	return display->parent->overlay->overlay_on(display->drm,
+						    frontbuffer_bits);
+}
+
+int intel_parent_overlay_continue(struct intel_display *display,
+				  struct i915_vma *vma,
+				  bool load_polyphase_filter)
+{
+	return display->parent->overlay->overlay_continue(display->drm, vma,
+							  load_polyphase_filter);
+}
+
+int intel_parent_overlay_off(struct intel_display *display)
+{
+	return display->parent->overlay->overlay_off(display->drm);
+}
+
+int intel_parent_overlay_recover_from_interrupt(struct intel_display *display)
+{
+	return display->parent->overlay->recover_from_interrupt(display->drm);
+}
+
+int intel_parent_overlay_release_old_vid(struct intel_display *display)
+{
+	return display->parent->overlay->release_old_vid(display->drm);
+}
+
+void intel_parent_overlay_reset(struct intel_display *display)
+{
+	display->parent->overlay->reset(display->drm);
+}
+
+struct i915_vma *intel_parent_overlay_pin_fb(struct intel_display *display,
+					     struct drm_gem_object *obj,
+					     u32 *offset)
+{
+	return display->parent->overlay->pin_fb(display->drm, obj, offset);
+}
+
+void intel_parent_overlay_unpin_fb(struct intel_display *display,
+				   struct i915_vma *vma)
+{
+	return display->parent->overlay->unpin_fb(display->drm, vma);
+}
+
+struct drm_gem_object *intel_parent_overlay_obj_lookup(struct intel_display *display,
+						       struct drm_file *filp,
+						       u32 handle)
+{
+	return display->parent->overlay->obj_lookup(display->drm,
+						    filp, handle);
+}
+
+void __iomem *intel_parent_overlay_setup(struct intel_display *display,
+					 bool needs_physical)
+{
+	if (drm_WARN_ON_ONCE(display->drm, !display->parent->overlay))
+		return ERR_PTR(-ENODEV);
+
+	return display->parent->overlay->setup(display->drm, needs_physical);
+}
+
+void intel_parent_overlay_cleanup(struct intel_display *display)
+{
+	display->parent->overlay->cleanup(display->drm);
+}
+
 /* panic */
 struct intel_panic *intel_parent_panic_alloc(struct intel_display *display)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index 04782bb26b61..91c37d68348a 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -7,7 +7,10 @@
 #include <linux/types.h>
 
 struct dma_fence;
+struct drm_file;
+struct drm_gem_object;
 struct drm_scanout_buffer;
+struct i915_vma;
 struct intel_display;
 struct intel_hdcp_gsc_context;
 struct intel_panic;
@@ -27,6 +30,29 @@ void intel_parent_hdcp_gsc_context_free(struct intel_display *display,
 bool intel_parent_irq_enabled(struct intel_display *display);
 void intel_parent_irq_synchronize(struct intel_display *display);
 
+/* overlay */
+bool intel_parent_overlay_is_active(struct intel_display *display);
+int intel_parent_overlay_on(struct intel_display *display,
+			    u32 frontbuffer_bits);
+int intel_parent_overlay_continue(struct intel_display *display,
+				  struct i915_vma *vma,
+				  bool load_polyphase_filter);
+int intel_parent_overlay_off(struct intel_display *display);
+int intel_parent_overlay_recover_from_interrupt(struct intel_display *display);
+int intel_parent_overlay_release_old_vid(struct intel_display *display);
+void intel_parent_overlay_reset(struct intel_display *display);
+struct i915_vma *intel_parent_overlay_pin_fb(struct intel_display *display,
+					     struct drm_gem_object *obj,
+					     u32 *offset);
+void intel_parent_overlay_unpin_fb(struct intel_display *display,
+				   struct i915_vma *vma);
+struct drm_gem_object *intel_parent_overlay_obj_lookup(struct intel_display *display,
+						       struct drm_file *filp,
+						       u32 handle);
+void __iomem *intel_parent_overlay_setup(struct intel_display *display,
+					 bool needs_physical);
+void intel_parent_overlay_cleanup(struct intel_display *display);
+
 /* panic */
 struct intel_panic *intel_parent_panic_alloc(struct intel_display *display);
 int intel_parent_panic_setup(struct intel_display *display, struct intel_panic *panic, struct drm_scanout_buffer *sb);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 6d8fbf845bc2..5a3b0309216f 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -106,6 +106,7 @@
 #include "i915_ioctl.h"
 #include "i915_irq.h"
 #include "i915_memcpy.h"
+#include "i915_overlay.h"
 #include "i915_panic.h"
 #include "i915_perf.h"
 #include "i915_query.h"
@@ -765,6 +766,7 @@ static const struct intel_display_parent_interface parent = {
 	.hdcp = &i915_display_hdcp_interface,
 	.initial_plane = &i915_display_initial_plane_interface,
 	.irq = &i915_display_irq_interface,
+	.overlay = &i915_display_overlay_interface,
 	.panic = &i915_display_panic_interface,
 	.pc8 = &i915_display_pc8_interface,
 	.pcode = &i915_display_pcode_interface,
diff --git a/drivers/gpu/drm/i915/i915_overlay.c b/drivers/gpu/drm/i915/i915_overlay.c
index 61869747c6bb..28518dbb5b8e 100644
--- a/drivers/gpu/drm/i915/i915_overlay.c
+++ b/drivers/gpu/drm/i915/i915_overlay.c
@@ -5,6 +5,7 @@
 
 #include <drm/drm_print.h>
 
+#include <drm/intel/display_parent_interface.h>
 #include <drm/intel/intel_gmd_interrupt_regs.h>
 
 #include "gem/i915_gem_internal.h"
@@ -88,7 +89,7 @@ alloc_request(struct i915_overlay *overlay, void (*fn)(struct i915_overlay *))
 	return rq;
 }
 
-bool i915_overlay_is_active(struct drm_device *drm)
+static bool i915_overlay_is_active(struct drm_device *drm)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 	struct i915_overlay *overlay = i915->overlay;
@@ -97,8 +98,8 @@ bool i915_overlay_is_active(struct drm_device *drm)
 }
 
 /* overlay needs to be disable in OCMD reg */
-int i915_overlay_on(struct drm_device *drm,
-		    u32 frontbuffer_bits)
+static int i915_overlay_on(struct drm_device *drm,
+			   u32 frontbuffer_bits)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 	struct i915_overlay *overlay = i915->overlay;
@@ -159,9 +160,9 @@ static void i915_overlay_flip_prepare(struct i915_overlay *overlay,
 }
 
 /* overlay needs to be enabled in OCMD reg */
-int i915_overlay_continue(struct drm_device *drm,
-			  struct i915_vma *vma,
-			  bool load_polyphase_filter)
+static int i915_overlay_continue(struct drm_device *drm,
+				 struct i915_vma *vma,
+				 bool load_polyphase_filter)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 	struct i915_overlay *overlay = i915->overlay;
@@ -210,7 +211,8 @@ static void i915_overlay_release_old_vma(struct i915_overlay *overlay)
 	i915_vma_put(vma);
 }
 
-static void i915_overlay_release_old_vid_tail(struct i915_overlay *overlay)
+static void
+i915_overlay_release_old_vid_tail(struct i915_overlay *overlay)
 {
 	i915_overlay_release_old_vma(overlay);
 }
@@ -237,7 +239,7 @@ static void i915_overlay_last_flip_retire(struct i915_active *active)
 }
 
 /* overlay needs to be disabled in OCMD reg */
-int i915_overlay_off(struct drm_device *drm)
+static int i915_overlay_off(struct drm_device *drm)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 	struct i915_overlay *overlay = i915->overlay;
@@ -286,7 +288,7 @@ int i915_overlay_off(struct drm_device *drm)
  * Recover from an interruption due to a signal.
  * We have to be careful not to repeat work forever an make forward progress.
  */
-int i915_overlay_recover_from_interrupt(struct drm_device *drm)
+static int i915_overlay_recover_from_interrupt(struct drm_device *drm)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 	struct i915_overlay *overlay = i915->overlay;
@@ -299,7 +301,7 @@ int i915_overlay_recover_from_interrupt(struct drm_device *drm)
  * Needs to be called before the overlay register are changed
  * via intel_overlay_(un)map_regs.
  */
-int i915_overlay_release_old_vid(struct drm_device *drm)
+static int i915_overlay_release_old_vid(struct drm_device *drm)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 	struct i915_overlay *overlay = i915->overlay;
@@ -337,7 +339,7 @@ int i915_overlay_release_old_vid(struct drm_device *drm)
 	return i915_active_wait(&overlay->last_flip);
 }
 
-void i915_overlay_reset(struct drm_device *drm)
+static void i915_overlay_reset(struct drm_device *drm)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 	struct i915_overlay *overlay = i915->overlay;
@@ -348,9 +350,9 @@ void i915_overlay_reset(struct drm_device *drm)
 	overlay->frontbuffer_bits = 0;
 }
 
-struct i915_vma *i915_overlay_pin_fb(struct drm_device *drm,
-				     struct drm_gem_object *obj,
-				     u32 *offset)
+static struct i915_vma *i915_overlay_pin_fb(struct drm_device *drm,
+					    struct drm_gem_object *obj,
+					    u32 *offset)
 {
 	struct drm_i915_gem_object *new_bo = to_intel_bo(obj);
 	struct i915_gem_ww_ctx ww;
@@ -379,13 +381,13 @@ struct i915_vma *i915_overlay_pin_fb(struct drm_device *drm,
 	return vma;
 }
 
-void i915_overlay_unpin_fb(struct drm_device *drm,
-			   struct i915_vma *vma)
+static void i915_overlay_unpin_fb(struct drm_device *drm,
+				  struct i915_vma *vma)
 {
 	i915_vma_unpin(vma);
 }
 
-struct drm_gem_object *
+static struct drm_gem_object *
 i915_overlay_obj_lookup(struct drm_device *drm,
 			struct drm_file *file_priv,
 			u32 handle)
@@ -444,8 +446,8 @@ static int get_registers(struct i915_overlay *overlay, bool use_phys)
 	return err;
 }
 
-void __iomem *i915_overlay_setup(struct drm_device *drm,
-				 bool needs_physical)
+static void __iomem *i915_overlay_setup(struct drm_device *drm,
+					bool needs_physical)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 	struct intel_engine_cs *engine;
@@ -477,7 +479,7 @@ void __iomem *i915_overlay_setup(struct drm_device *drm,
 	return overlay->regs;
 }
 
-void i915_overlay_cleanup(struct drm_device *drm)
+static void i915_overlay_cleanup(struct drm_device *drm)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 	struct i915_overlay *overlay;
@@ -498,3 +500,18 @@ void i915_overlay_cleanup(struct drm_device *drm)
 
 	kfree(overlay);
 }
+
+const struct intel_display_overlay_interface i915_display_overlay_interface = {
+	.is_active = i915_overlay_is_active,
+	.overlay_on = i915_overlay_on,
+	.overlay_continue = i915_overlay_continue,
+	.overlay_off = i915_overlay_off,
+	.recover_from_interrupt = i915_overlay_recover_from_interrupt,
+	.release_old_vid = i915_overlay_release_old_vid,
+	.reset = i915_overlay_reset,
+	.obj_lookup = i915_overlay_obj_lookup,
+	.pin_fb = i915_overlay_pin_fb,
+	.unpin_fb = i915_overlay_unpin_fb,
+	.setup = i915_overlay_setup,
+	.cleanup = i915_overlay_cleanup,
+};
diff --git a/drivers/gpu/drm/i915/i915_overlay.h b/drivers/gpu/drm/i915/i915_overlay.h
index f553de2abeaa..f8053eb8d189 100644
--- a/drivers/gpu/drm/i915/i915_overlay.h
+++ b/drivers/gpu/drm/i915/i915_overlay.h
@@ -6,38 +6,6 @@
 #ifndef __I915_OVERLAY_H__
 #define __I915_OVERLAY_H__
 
-#include <linux/types.h>
-
-struct drm_device;
-struct drm_file;
-struct drm_gem_object;
-struct i915_vma;
-
-bool i915_overlay_is_active(struct drm_device *drm);
-int i915_overlay_on(struct drm_device *drm,
-		    u32 frontbuffer_bits);
-int i915_overlay_continue(struct drm_device *drm,
-			  struct i915_vma *vma,
-			  bool load_polyphase_filter);
-int i915_overlay_off(struct drm_device *drm);
-int i915_overlay_recover_from_interrupt(struct drm_device *drm);
-int i915_overlay_release_old_vid(struct drm_device *drm);
-
-void i915_overlay_reset(struct drm_device *drm);
-
-struct i915_vma *i915_overlay_pin_fb(struct drm_device *drm,
-				     struct drm_gem_object *obj,
-				     u32 *offset);
-void i915_overlay_unpin_fb(struct drm_device *drm,
-			   struct i915_vma *vma);
-
-struct drm_gem_object *
-i915_overlay_obj_lookup(struct drm_device *drm,
-			struct drm_file *file_priv,
-			u32 handle);
-
-void __iomem *i915_overlay_setup(struct drm_device *drm,
-				 bool needs_physical);
-void i915_overlay_cleanup(struct drm_device *drm);
+extern const struct intel_display_overlay_interface i915_display_overlay_interface;
 
 #endif /* __I915_OVERLAY_H__ */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 41ec698b3cc1..119e830498a8 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -304,6 +304,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_modeset_lock.o \
 	i915-display/intel_modeset_setup.o \
 	i915-display/intel_modeset_verify.o \
+	i915-display/intel_overlay.o \
 	i915-display/intel_panel.o \
 	i915-display/intel_parent.o \
 	i915-display/intel_pch.o \
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 41f4afe7928c..8b248b914b88 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -9,6 +9,7 @@
 struct dma_fence;
 struct drm_crtc;
 struct drm_device;
+struct drm_file;
 struct drm_framebuffer;
 struct drm_gem_object;
 struct drm_plane_state;
@@ -55,6 +56,35 @@ struct intel_display_irq_interface {
 	void (*synchronize)(struct drm_device *drm);
 };
 
+struct intel_display_overlay_interface {
+	bool (*is_active)(struct drm_device *drm);
+
+	int (*overlay_on)(struct drm_device *drm,
+			  u32 frontbuffer_bits);
+	int (*overlay_continue)(struct drm_device *drm,
+				struct i915_vma *vma,
+				bool load_polyphase_filter);
+	int (*overlay_off)(struct drm_device *drm);
+	int (*recover_from_interrupt)(struct drm_device *drm);
+	int (*release_old_vid)(struct drm_device *drm);
+
+	void (*reset)(struct drm_device *drm);
+
+	struct i915_vma *(*pin_fb)(struct drm_device *drm,
+				   struct drm_gem_object *obj,
+				   u32 *offset);
+	void (*unpin_fb)(struct drm_device *drm,
+			 struct i915_vma *vma);
+
+	struct drm_gem_object *(*obj_lookup)(struct drm_device *drm,
+					     struct drm_file *filp,
+					     u32 handle);
+
+	void __iomem *(*setup)(struct drm_device *drm,
+			       bool needs_physical);
+	void (*cleanup)(struct drm_device *drm);
+};
+
 struct intel_display_panic_interface {
 	struct intel_panic *(*alloc)(void);
 	int (*setup)(struct intel_panic *panic, struct drm_scanout_buffer *sb);
@@ -139,6 +169,9 @@ struct intel_display_parent_interface {
 	/** @panic: Panic interface */
 	const struct intel_display_panic_interface *panic;
 
+	/** @overlay: Overlay. Optional. */
+	const struct intel_display_overlay_interface *overlay;
+
 	/** @pc8: PC8 interface. Optional. */
 	const struct intel_display_pc8_interface *pc8;
 
-- 
2.52.0

