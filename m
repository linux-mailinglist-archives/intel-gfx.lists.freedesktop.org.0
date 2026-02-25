Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YCjeETAMn2neYgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 15:50:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D15198FCC
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 15:50:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 493BC10E7B2;
	Wed, 25 Feb 2026 14:50:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cOWn8YIn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B10CD10E7B7;
 Wed, 25 Feb 2026 14:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772031012; x=1803567012;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6uQ9Sn0ABuHCEy/9vYwWevDgPUMLM3kbH1+LLoMAww0=;
 b=cOWn8YInFaBASncb7Jf79cW9lw6SBjcIBu8uLq6m98YtFy0AaiPxzLOJ
 hKS/mSs6UX6EmH7b00XR+FpWEjsuV1bC34wez7MZKEp4t6KeTRdLTRiy8
 1SBv11uO5F3n9UQDVz8ZvAGGzS9aEQMHSK4z97da3tgyNj0ZKvz6X9HqV
 8KUIKkki0fSk9JG29De+daxKmdwnOX2IDwnyTima5irlBoUN9qF7w5Fs/
 d958xIXLNUapFcizoyFDhEEDtI9daxyvzRqLyyRkI9ok9wbOAbcqILNK6
 0c6Yf45s1VWiIabATgHAhlBxeZ8eGU0AyahROWcuyMWJMhJOqKf8nzFuY A==;
X-CSE-ConnectionGUID: 2WI0Q0k2Q5W0hGWWh4Rw8g==
X-CSE-MsgGUID: DCCgfn/dTGKsvDzoLLXnZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73043523"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="73043523"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 06:50:12 -0800
X-CSE-ConnectionGUID: T1wnrnSbTZW2WM9hU6UtaA==
X-CSE-MsgGUID: gzQM2bAwSCqwRTKStbNXAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216135689"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.68])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 06:50:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 10/10] drm/i915/dpt: pass opaque struct intel_dpt around
 instead of i915_address_space
Date: Wed, 25 Feb 2026 16:49:16 +0200
Message-ID: <daa39178c0b0305b010564952d691f06e3cd63ca.1772030909.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: C4D15198FCC
X-Rspamd-Action: no action

struct i915_address_space is used in an opaque fashion in the display
parent interface, but it's just one include away from being
non-opaque. And anyway the name is rather specific.

Switch to using the struct intel_dpt instead, which embeds struct
i915_address_space anyway. With the definition hidden in i915_dpt.c,
this can't be accidentally made non-opaque, and the type seems rather
more generic anyway.

We do have to add a new helper i915_dpt_to_vm(), as there's one case in
intel_fb_pin_to_dpt() that requires direct access to struct
i915_address_space. But this just underlines the point about opacity.

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dpt.c      |  8 ++---
 drivers/gpu/drm/i915/display/intel_fb.c       | 14 ++++-----
 drivers/gpu/drm/i915/display/intel_fb_pin.c   | 11 +++----
 drivers/gpu/drm/i915/display/intel_parent.c   | 17 +++++------
 drivers/gpu/drm/i915/display/intel_parent.h   | 13 ++++----
 drivers/gpu/drm/i915/i915_dpt.c               | 30 +++++++++----------
 drivers/gpu/drm/i915/i915_dpt.h               |  6 ++--
 include/drm/intel/display_parent_interface.h  | 10 +++----
 9 files changed, 56 insertions(+), 55 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e8e4af03a6a6..8a2b37c7bccf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -145,7 +145,7 @@ struct intel_framebuffer {
 		struct intel_fb_view remapped_view;
 	};
 
-	struct i915_address_space *dpt_vm;
+	struct intel_dpt *dpt;
 
 	unsigned int min_alignment;
 	unsigned int vtd_guard;
diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index dffd500d378e..145dc9511116 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -57,8 +57,8 @@ void intel_dpt_suspend(struct intel_display *display)
 	drm_for_each_fb(drm_fb, display->drm) {
 		struct intel_framebuffer *fb = to_intel_framebuffer(drm_fb);
 
-		if (fb->dpt_vm)
-			intel_parent_dpt_suspend(display, fb->dpt_vm);
+		if (fb->dpt)
+			intel_parent_dpt_suspend(display, fb->dpt);
 	}
 
 	mutex_unlock(&display->drm->mode_config.fb_lock);
@@ -87,8 +87,8 @@ void intel_dpt_resume(struct intel_display *display)
 	drm_for_each_fb(drm_fb, display->drm) {
 		struct intel_framebuffer *fb = to_intel_framebuffer(drm_fb);
 
-		if (fb->dpt_vm)
-			intel_parent_dpt_resume(display, fb->dpt_vm);
+		if (fb->dpt)
+			intel_parent_dpt_resume(display, fb->dpt);
 	}
 	mutex_unlock(&display->drm->mode_config.fb_lock);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index f718eb139d69..6be07d8a7e81 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -2109,7 +2109,7 @@ static void intel_user_framebuffer_destroy(struct drm_framebuffer *fb)
 	drm_framebuffer_cleanup(fb);
 
 	if (intel_fb_uses_dpt(fb))
-		intel_parent_dpt_destroy(display, intel_fb->dpt_vm);
+		intel_parent_dpt_destroy(display, intel_fb->dpt);
 
 	intel_fb_bo_framebuffer_fini(intel_fb_bo(fb));
 
@@ -2305,20 +2305,20 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 
 	if (intel_fb_uses_dpt(fb)) {
 		struct drm_gem_object *obj = intel_fb_bo(&intel_fb->base);
-		struct i915_address_space *vm;
+		struct intel_dpt *dpt;
 		size_t size = 0;
 
 		if (intel_fb_needs_pot_stride_remap(intel_fb))
 			size = intel_remapped_info_size(&intel_fb->remapped_view.gtt.remapped);
 
-		vm = intel_parent_dpt_create(display, obj, size);
-		if (IS_ERR(vm)) {
+		dpt = intel_parent_dpt_create(display, obj, size);
+		if (IS_ERR(dpt)) {
 			drm_dbg_kms(display->drm, "failed to create DPT\n");
-			ret = PTR_ERR(vm);
+			ret = PTR_ERR(dpt);
 			goto err_frontbuffer_put;
 		}
 
-		intel_fb->dpt_vm = vm;
+		intel_fb->dpt = dpt;
 	}
 
 	ret = drm_framebuffer_init(display->drm, fb, &intel_fb_funcs);
@@ -2331,7 +2331,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 
 err_free_dpt:
 	if (intel_fb_uses_dpt(fb))
-		intel_parent_dpt_destroy(display, intel_fb->dpt_vm);
+		intel_parent_dpt_destroy(display, intel_fb->dpt);
 err_bo_framebuffer_fini:
 	intel_fb_bo_framebuffer_fini(obj);
 err_frontbuffer_put:
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index d2e4200f2cef..738d77a1468a 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -27,13 +27,14 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
 		    const struct i915_gtt_view *view,
 		    unsigned int alignment,
 		    unsigned long *out_flags,
-		    struct i915_address_space *vm)
+		    struct intel_dpt *dpt)
 {
 	struct drm_device *dev = fb->dev;
 	struct intel_display *display = to_intel_display(dev);
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct drm_gem_object *_obj = intel_fb_bo(fb);
 	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
+	struct i915_address_space *vm = i915_dpt_to_vm(dpt);
 	struct i915_gem_ww_ctx ww;
 	struct i915_vma *vma;
 	int ret;
@@ -284,7 +285,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 	} else {
 		unsigned int alignment = intel_plane_fb_min_alignment(plane_state);
 
-		vma = i915_dpt_pin_to_ggtt(fb->dpt_vm, alignment / 512);
+		vma = i915_dpt_pin_to_ggtt(fb->dpt, alignment / 512);
 		if (IS_ERR(vma))
 			return PTR_ERR(vma);
 
@@ -292,9 +293,9 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 
 		vma = intel_fb_pin_to_dpt(&fb->base, &plane_state->view.gtt,
 					  alignment, &plane_state->flags,
-					  fb->dpt_vm);
+					  fb->dpt);
 		if (IS_ERR(vma)) {
-			i915_dpt_unpin_from_ggtt(fb->dpt_vm);
+			i915_dpt_unpin_from_ggtt(fb->dpt);
 			plane_state->ggtt_vma = NULL;
 			return PTR_ERR(vma);
 		}
@@ -346,7 +347,7 @@ void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
 
 		vma = fetch_and_zero(&old_plane_state->ggtt_vma);
 		if (vma)
-			i915_dpt_unpin_from_ggtt(fb->dpt_vm);
+			i915_dpt_unpin_from_ggtt(fb->dpt);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index a79ea775bde2..7044632ef3fc 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -24,9 +24,8 @@
 #include "intel_parent.h"
 
 /* dpt */
-struct i915_address_space *intel_parent_dpt_create(struct intel_display *display,
-						   struct drm_gem_object *obj,
-						   size_t size)
+struct intel_dpt *intel_parent_dpt_create(struct intel_display *display,
+					  struct drm_gem_object *obj, size_t size)
 {
 	if (display->parent->dpt)
 		return display->parent->dpt->create(obj, size);
@@ -34,22 +33,22 @@ struct i915_address_space *intel_parent_dpt_create(struct intel_display *display
 	return NULL;
 }
 
-void intel_parent_dpt_destroy(struct intel_display *display, struct i915_address_space *vm)
+void intel_parent_dpt_destroy(struct intel_display *display, struct intel_dpt *dpt)
 {
 	if (display->parent->dpt)
-		display->parent->dpt->destroy(vm);
+		display->parent->dpt->destroy(dpt);
 }
 
-void intel_parent_dpt_suspend(struct intel_display *display, struct i915_address_space *vm)
+void intel_parent_dpt_suspend(struct intel_display *display, struct intel_dpt *dpt)
 {
 	if (display->parent->dpt)
-		display->parent->dpt->suspend(vm);
+		display->parent->dpt->suspend(dpt);
 }
 
-void intel_parent_dpt_resume(struct intel_display *display, struct i915_address_space *vm)
+void intel_parent_dpt_resume(struct intel_display *display, struct intel_dpt *dpt)
 {
 	if (display->parent->dpt)
-		display->parent->dpt->resume(vm);
+		display->parent->dpt->resume(dpt);
 }
 
 /* hdcp */
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index be577ce10c21..002234e81ce6 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -9,19 +9,18 @@
 struct dma_fence;
 struct drm_gem_object;
 struct drm_scanout_buffer;
-struct i915_address_space;
 struct intel_display;
+struct intel_dpt;
 struct intel_hdcp_gsc_context;
 struct intel_panic;
 struct intel_stolen_node;
 
 /* dpt */
-struct i915_address_space *intel_parent_dpt_create(struct intel_display *display,
-						   struct drm_gem_object *obj,
-						   size_t size);
-void intel_parent_dpt_destroy(struct intel_display *display, struct i915_address_space *vm);
-void intel_parent_dpt_suspend(struct intel_display *display, struct i915_address_space *vm);
-void intel_parent_dpt_resume(struct intel_display *display, struct i915_address_space *vm);
+struct intel_dpt *intel_parent_dpt_create(struct intel_display *display,
+					  struct drm_gem_object *obj, size_t size);
+void intel_parent_dpt_destroy(struct intel_display *display, struct intel_dpt *dpt);
+void intel_parent_dpt_suspend(struct intel_display *display, struct intel_dpt *dpt);
+void intel_parent_dpt_resume(struct intel_display *display, struct intel_dpt *dpt);
 
 /* hdcp */
 ssize_t intel_parent_hdcp_gsc_msg_send(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/i915_dpt.c b/drivers/gpu/drm/i915/i915_dpt.c
index baf45d70c152..9f47bb563c85 100644
--- a/drivers/gpu/drm/i915/i915_dpt.c
+++ b/drivers/gpu/drm/i915/i915_dpt.c
@@ -33,6 +33,11 @@ i915_vm_to_dpt(struct i915_address_space *vm)
 	return container_of(vm, struct intel_dpt, vm);
 }
 
+struct i915_address_space *i915_dpt_to_vm(struct intel_dpt *dpt)
+{
+	return &dpt->vm;
+}
+
 static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
 {
 	writeq(pte, addr);
@@ -121,11 +126,10 @@ static void dpt_cleanup(struct i915_address_space *vm)
 	i915_gem_object_put(dpt->obj);
 }
 
-struct i915_vma *i915_dpt_pin_to_ggtt(struct i915_address_space *vm, unsigned int alignment)
+struct i915_vma *i915_dpt_pin_to_ggtt(struct intel_dpt *dpt, unsigned int alignment)
 {
-	struct drm_i915_private *i915 = vm->i915;
+	struct drm_i915_private *i915 = dpt->vm.i915;
 	struct intel_display *display = i915->display;
-	struct intel_dpt *dpt = i915_vm_to_dpt(vm);
 	struct ref_tracker *wakeref;
 	struct i915_vma *vma;
 	void __iomem *iomem;
@@ -173,15 +177,13 @@ struct i915_vma *i915_dpt_pin_to_ggtt(struct i915_address_space *vm, unsigned in
 	return err ? ERR_PTR(err) : vma;
 }
 
-void i915_dpt_unpin_from_ggtt(struct i915_address_space *vm)
+void i915_dpt_unpin_from_ggtt(struct intel_dpt *dpt)
 {
-	struct intel_dpt *dpt = i915_vm_to_dpt(vm);
-
 	i915_vma_unpin_iomap(dpt->vma);
 	i915_vma_put(dpt->vma);
 }
 
-static struct i915_address_space *i915_dpt_create(struct drm_gem_object *obj, size_t size)
+static struct intel_dpt *i915_dpt_create(struct drm_gem_object *obj, size_t size)
 {
 	struct drm_i915_private *i915 = to_i915(obj->dev);
 	struct drm_i915_gem_object *dpt_obj;
@@ -243,25 +245,23 @@ static struct i915_address_space *i915_dpt_create(struct drm_gem_object *obj, si
 	dpt->obj = dpt_obj;
 	dpt->obj->is_dpt = true;
 
-	return &dpt->vm;
+	return dpt;
 }
 
-static void i915_dpt_destroy(struct i915_address_space *vm)
+static void i915_dpt_destroy(struct intel_dpt *dpt)
 {
-	struct intel_dpt *dpt = i915_vm_to_dpt(vm);
-
 	dpt->obj->is_dpt = false;
 	i915_vm_put(&dpt->vm);
 }
 
-static void i915_dpt_suspend(struct i915_address_space *vm)
+static void i915_dpt_suspend(struct intel_dpt *dpt)
 {
-	i915_ggtt_suspend_vm(vm, true);
+	i915_ggtt_suspend_vm(&dpt->vm, true);
 }
 
-static void i915_dpt_resume(struct i915_address_space *vm)
+static void i915_dpt_resume(struct intel_dpt *dpt)
 {
-	i915_ggtt_resume_vm(vm, true);
+	i915_ggtt_resume_vm(&dpt->vm, true);
 }
 
 u64 i915_dpt_offset(struct i915_vma *dpt_vma)
diff --git a/drivers/gpu/drm/i915/i915_dpt.h b/drivers/gpu/drm/i915/i915_dpt.h
index 3b76e9760600..08dbe444fe18 100644
--- a/drivers/gpu/drm/i915/i915_dpt.h
+++ b/drivers/gpu/drm/i915/i915_dpt.h
@@ -8,9 +8,11 @@
 
 struct i915_address_space;
 struct i915_vma;
+struct intel_dpt;
 
-struct i915_vma *i915_dpt_pin_to_ggtt(struct i915_address_space *vm, unsigned int alignment);
-void i915_dpt_unpin_from_ggtt(struct i915_address_space *vm);
+struct i915_address_space *i915_dpt_to_vm(struct intel_dpt *dpt);
+struct i915_vma *i915_dpt_pin_to_ggtt(struct intel_dpt *dpt, unsigned int alignment);
+void i915_dpt_unpin_from_ggtt(struct intel_dpt *dpt);
 u64 i915_dpt_offset(struct i915_vma *dpt_vma);
 
 extern const struct intel_display_dpt_interface i915_display_dpt_interface;
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 2af4d6e99fd0..50da825ec06c 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -13,8 +13,8 @@ struct drm_framebuffer;
 struct drm_gem_object;
 struct drm_plane_state;
 struct drm_scanout_buffer;
-struct i915_address_space;
 struct i915_vma;
+struct intel_dpt;
 struct intel_dsb_buffer;
 struct intel_hdcp_gsc_context;
 struct intel_initial_plane_config;
@@ -25,10 +25,10 @@ struct ref_tracker;
 /* Keep struct definitions sorted */
 
 struct intel_display_dpt_interface {
-	struct i915_address_space *(*create)(struct drm_gem_object *obj, size_t size);
-	void (*destroy)(struct i915_address_space *vm);
-	void (*suspend)(struct i915_address_space *vm);
-	void (*resume)(struct i915_address_space *vm);
+	struct intel_dpt *(*create)(struct drm_gem_object *obj, size_t size);
+	void (*destroy)(struct intel_dpt *dpt);
+	void (*suspend)(struct intel_dpt *dpt);
+	void (*resume)(struct intel_dpt *dpt);
 };
 
 struct intel_display_dsb_interface {
-- 
2.47.3

