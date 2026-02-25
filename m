Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WOfRFgQMn2neYgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 15:49:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F72198F6A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 15:49:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E9B710E045;
	Wed, 25 Feb 2026 14:49:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="igTqe1B5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED5CF10E045;
 Wed, 25 Feb 2026 14:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772030977; x=1803566977;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kwPZwmErbB1jA3hpKVcp+q7KL5o3j6XeLpcTHa4np+g=;
 b=igTqe1B5LlMIz6fxbg/iG3GgHRRfm7hYHawWvOWb6T2QUOE+l58RJzMI
 5Nz1qqnmf2tQxCMfH1LP5CFVmP/nV4sCAh9A1AUlWVNe31wmkskU9anD5
 IvdbBBbxxI+Q1lg9zsPDEMY7oAuWV+cZGsQoAsQ91w9hjnA4ZITHYZCbi
 gH9AUnSRdI4g7NoPdiSOo2qt9y8NJJ1lUiscGv4+FImIy1+AwP+/B24II
 LzJx9j8Eb/4BJwuUcJOPSen9x2KtARV3h0Zn9bR7NWbmNE+1Ec4Yp3noA
 6yG2DGl8Jn5KN2Ef0P1edwx4vyTRoyqqoclzMeel+HpRmAIgIwD8dDFsc Q==;
X-CSE-ConnectionGUID: sQNUBfO1SsWRwL+qIz8srw==
X-CSE-MsgGUID: X/Ei42EzR72b9QVNlHaOCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="83398636"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="83398636"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 06:49:37 -0800
X-CSE-ConnectionGUID: A3K2VX/STkCe4cTyhYgWHQ==
X-CSE-MsgGUID: ywZ3eccHQkKjOfYddVBXWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="213369277"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.68])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 06:49:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 03/10] drm/i915/dpt: move create/destroy to parent interface
Date: Wed, 25 Feb 2026 16:49:09 +0200
Message-ID: <9753b21466c668872f468ccff827eab7be034b0c.1772030909.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772030909.git.jani.nikula@intel.com>
References: <cover.1772030909.git.jani.nikula@intel.com>
MIME-Version: 1.0
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[intel.com,gmail.com];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: F0F72198F6A
X-Rspamd-Action: no action

Move the DPT create/destroy calls to the display parent interface.

With this, we can remove the dummy xe implementation.

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.h     |  3 ---
 drivers/gpu/drm/i915/display/intel_fb.c      |  8 ++++----
 drivers/gpu/drm/i915/display/intel_parent.c  | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_parent.h  |  8 ++++++++
 drivers/gpu/drm/i915/i915_dpt.c              | 11 ++++++++---
 drivers/gpu/drm/i915/i915_dpt.h              |  9 +++++++++
 drivers/gpu/drm/i915/i915_driver.c           |  2 ++
 drivers/gpu/drm/xe/display/xe_fb_pin.c       | 20 --------------------
 include/drm/intel/display_parent_interface.h |  9 +++++++++
 9 files changed, 57 insertions(+), 30 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_dpt.h

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.h b/drivers/gpu/drm/i915/display/intel_dpt.h
index 79d9bb80941a..e05b3a716310 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.h
+++ b/drivers/gpu/drm/i915/display/intel_dpt.h
@@ -8,18 +8,15 @@
 
 #include <linux/types.h>
 
-struct drm_gem_object;
 struct i915_address_space;
 struct i915_vma;
 struct intel_display;
 
-void intel_dpt_destroy(struct i915_address_space *vm);
 struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
 				       unsigned int alignment);
 void intel_dpt_unpin_from_ggtt(struct i915_address_space *vm);
 void intel_dpt_suspend(struct intel_display *display);
 void intel_dpt_resume(struct intel_display *display);
-struct i915_address_space *intel_dpt_create(struct drm_gem_object *obj, size_t size);
 u64 intel_dpt_offset(struct i915_vma *dpt_vma);
 
 #endif /* __INTEL_DPT_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 4ee884639ac2..f718eb139d69 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -16,7 +16,6 @@
 #include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
-#include "intel_dpt.h"
 #include "intel_fb.h"
 #include "intel_fb_bo.h"
 #include "intel_frontbuffer.h"
@@ -2104,12 +2103,13 @@ int intel_plane_compute_gtt(struct intel_plane_state *plane_state)
 
 static void intel_user_framebuffer_destroy(struct drm_framebuffer *fb)
 {
+	struct intel_display *display = to_intel_display(fb->dev);
 	struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
 
 	drm_framebuffer_cleanup(fb);
 
 	if (intel_fb_uses_dpt(fb))
-		intel_dpt_destroy(intel_fb->dpt_vm);
+		intel_parent_dpt_destroy(display, intel_fb->dpt_vm);
 
 	intel_fb_bo_framebuffer_fini(intel_fb_bo(fb));
 
@@ -2311,7 +2311,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 		if (intel_fb_needs_pot_stride_remap(intel_fb))
 			size = intel_remapped_info_size(&intel_fb->remapped_view.gtt.remapped);
 
-		vm = intel_dpt_create(obj, size);
+		vm = intel_parent_dpt_create(display, obj, size);
 		if (IS_ERR(vm)) {
 			drm_dbg_kms(display->drm, "failed to create DPT\n");
 			ret = PTR_ERR(vm);
@@ -2331,7 +2331,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 
 err_free_dpt:
 	if (intel_fb_uses_dpt(fb))
-		intel_dpt_destroy(intel_fb->dpt_vm);
+		intel_parent_dpt_destroy(display, intel_fb->dpt_vm);
 err_bo_framebuffer_fini:
 	intel_fb_bo_framebuffer_fini(obj);
 err_frontbuffer_put:
diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index 7f73695a0444..c43e3518a139 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -23,6 +23,23 @@
 #include "intel_display_core.h"
 #include "intel_parent.h"
 
+/* dpt */
+struct i915_address_space *intel_parent_dpt_create(struct intel_display *display,
+						   struct drm_gem_object *obj,
+						   size_t size)
+{
+	if (display->parent->dpt)
+		return display->parent->dpt->create(obj, size);
+
+	return NULL;
+}
+
+void intel_parent_dpt_destroy(struct intel_display *display, struct i915_address_space *vm)
+{
+	if (display->parent->dpt)
+		display->parent->dpt->destroy(vm);
+}
+
 /* hdcp */
 ssize_t intel_parent_hdcp_gsc_msg_send(struct intel_display *display,
 				       struct intel_hdcp_gsc_context *gsc_context,
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index 04782bb26b61..88860e471a0d 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -7,12 +7,20 @@
 #include <linux/types.h>
 
 struct dma_fence;
+struct drm_gem_object;
 struct drm_scanout_buffer;
+struct i915_address_space;
 struct intel_display;
 struct intel_hdcp_gsc_context;
 struct intel_panic;
 struct intel_stolen_node;
 
+/* dpt */
+struct i915_address_space *intel_parent_dpt_create(struct intel_display *display,
+						   struct drm_gem_object *obj,
+						   size_t size);
+void intel_parent_dpt_destroy(struct intel_display *display, struct i915_address_space *vm);
+
 /* hdcp */
 ssize_t intel_parent_hdcp_gsc_msg_send(struct intel_display *display,
 				       struct intel_hdcp_gsc_context *gsc_context,
diff --git a/drivers/gpu/drm/i915/i915_dpt.c b/drivers/gpu/drm/i915/i915_dpt.c
index cd98b06d2685..5237d057119e 100644
--- a/drivers/gpu/drm/i915/i915_dpt.c
+++ b/drivers/gpu/drm/i915/i915_dpt.c
@@ -4,6 +4,7 @@
  */
 
 #include <drm/drm_print.h>
+#include <drm/intel/display_parent_interface.h>
 
 #include "display/intel_display_core.h"
 #include "display/intel_display_rpm.h"
@@ -242,8 +243,7 @@ void intel_dpt_suspend(struct intel_display *display)
 	mutex_unlock(&display->drm->mode_config.fb_lock);
 }
 
-struct i915_address_space *
-intel_dpt_create(struct drm_gem_object *obj, size_t size)
+static struct i915_address_space *i915_dpt_create(struct drm_gem_object *obj, size_t size)
 {
 	struct drm_i915_private *i915 = to_i915(obj->dev);
 	struct drm_i915_gem_object *dpt_obj;
@@ -308,7 +308,7 @@ intel_dpt_create(struct drm_gem_object *obj, size_t size)
 	return &dpt->vm;
 }
 
-void intel_dpt_destroy(struct i915_address_space *vm)
+static void i915_dpt_destroy(struct i915_address_space *vm)
 {
 	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
 
@@ -320,3 +320,8 @@ u64 intel_dpt_offset(struct i915_vma *dpt_vma)
 {
 	return i915_vma_offset(dpt_vma);
 }
+
+const struct intel_display_dpt_interface i915_display_dpt_interface = {
+	.create = i915_dpt_create,
+	.destroy = i915_dpt_destroy,
+};
diff --git a/drivers/gpu/drm/i915/i915_dpt.h b/drivers/gpu/drm/i915/i915_dpt.h
new file mode 100644
index 000000000000..494cd4af3bcd
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_dpt.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright 2026 Intel Corporation */
+
+#ifndef __I915_DPT_H__
+#define __I915_DPT_H__
+
+extern const struct intel_display_dpt_interface i915_display_dpt_interface;
+
+#endif /* __I915_DPT_H__ */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 6d8fbf845bc2..31a608ccab00 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -91,6 +91,7 @@
 
 #include "i915_debugfs.h"
 #include "i915_display_pc8.h"
+#include "i915_dpt.h"
 #include "i915_driver.h"
 #include "i915_drm_client.h"
 #include "i915_drv.h"
@@ -761,6 +762,7 @@ static bool vgpu_active(struct drm_device *drm)
 }
 
 static const struct intel_display_parent_interface parent = {
+	.dpt = &i915_display_dpt_interface,
 	.dsb = &i915_display_dsb_interface,
 	.hdcp = &i915_display_hdcp_interface,
 	.initial_plane = &i915_display_initial_plane_interface,
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 5488723f4f87..f0c89f144563 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -8,7 +8,6 @@
 #include "i915_vma.h"
 #include "intel_display_core.h"
 #include "intel_display_types.h"
-#include "intel_dpt.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
 #include "intel_fbdev.h"
@@ -451,25 +450,6 @@ void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
 	old_plane_state->ggtt_vma = NULL;
 }
 
-/*
- * For Xe introduce dummy intel_dpt_create which just return NULL,
- * intel_dpt_destroy which does nothing, and fake intel_dpt_ofsset returning 0;
- */
-struct i915_address_space *intel_dpt_create(struct drm_gem_object *obj, size_t size)
-{
-	return NULL;
-}
-
-void intel_dpt_destroy(struct i915_address_space *vm)
-{
-	return;
-}
-
-u64 intel_dpt_offset(struct i915_vma *dpt_vma)
-{
-	return 0;
-}
-
 void intel_fb_get_map(struct i915_vma *vma, struct iosys_map *map)
 {
 	*map = vma->bo->vmap;
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 41f4afe7928c..48abbe187d61 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -13,6 +13,7 @@ struct drm_framebuffer;
 struct drm_gem_object;
 struct drm_plane_state;
 struct drm_scanout_buffer;
+struct i915_address_space;
 struct i915_vma;
 struct intel_dsb_buffer;
 struct intel_hdcp_gsc_context;
@@ -23,6 +24,11 @@ struct ref_tracker;
 
 /* Keep struct definitions sorted */
 
+struct intel_display_dpt_interface {
+	struct i915_address_space *(*create)(struct drm_gem_object *obj, size_t size);
+	void (*destroy)(struct i915_address_space *vm);
+};
+
 struct intel_display_dsb_interface {
 	u32 (*ggtt_offset)(struct intel_dsb_buffer *dsb_buf);
 	void (*write)(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val);
@@ -124,6 +130,9 @@ struct intel_display_stolen_interface {
  * check the optional pointers.
  */
 struct intel_display_parent_interface {
+	/** @dsb: DPT interface. Optional. */
+	const struct intel_display_dpt_interface *dpt;
+
 	/** @dsb: DSB buffer interface */
 	const struct intel_display_dsb_interface *dsb;
 
-- 
2.47.3

