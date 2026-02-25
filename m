Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SImzIAkMn2neYgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 15:49:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CDAB198F71
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 15:49:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98DBD10E7C0;
	Wed, 25 Feb 2026 14:49:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fBmtGrz8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA85910E7B0;
 Wed, 25 Feb 2026 14:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772030982; x=1803566982;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6A1uIU7Blc8XZB1mbn3tl14Wgpiy0/0Irp+5Ts47qtA=;
 b=fBmtGrz8pI0Qvx4M0mpgIY/PbR5Ac+G0azlt6isdXmBJcotXX3WYVPOF
 T5j4713lkyNjVqSMhUOqTwPIIbjRJZlRxJJq5XydTrpaOXAxagmg7g696
 S+NKN+nesYp3nh9l1GgxBVY7+eVX3fdu8tPJxlyS6F/edAaymonaa7XT4
 WLxImL8D+p1ayjoJNNNh4a8p7/vVu1a/hOlxjCpiqgGG48/LEtcMEWnYy
 McNExWTpyhc28Ehsjz9ac3ATu5hR70i0X7nmbOonXJRG9i/xdErdyy4EJ
 bc8CqabvsObEkSZYJ02Q8IV6wsUXutubmvV/Zi43TdioI8AkWMHBKij00 A==;
X-CSE-ConnectionGUID: 0aagSLm2RFSKPndVEpJMPQ==
X-CSE-MsgGUID: o8d2hsBrQf64vil9pjPHrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="83398640"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="83398640"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 06:49:41 -0800
X-CSE-ConnectionGUID: RGWrB3SZR7WKnl2R21lSSQ==
X-CSE-MsgGUID: 7fIozyBITMGjQ07wSEGKdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="213369280"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.68])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 06:49:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 04/10] drm/i915/dpt: move suspend/resume to parent interface
Date: Wed, 25 Feb 2026 16:49:10 +0200
Message-ID: <080945a49559ec1f5183ad409e1526736e828d90.1772030909.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: 2CDAB198F71
X-Rspamd-Action: no action

Add per-vm DPT suspend/resume calls to the display parent interface, and
lift the generic code away from i915 specific code.

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.h      |  3 -
 .../gpu/drm/i915/display/intel_dpt_common.c   | 59 +++++++++++++++
 .../gpu/drm/i915/display/intel_dpt_common.h   |  3 +
 drivers/gpu/drm/i915/display/intel_parent.c   | 12 ++++
 drivers/gpu/drm/i915/display/intel_parent.h   |  2 +
 drivers/gpu/drm/i915/i915_dpt.c               | 72 ++++---------------
 drivers/gpu/drm/i915/i915_driver.c            |  2 +-
 include/drm/intel/display_parent_interface.h  |  2 +
 8 files changed, 91 insertions(+), 64 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.h b/drivers/gpu/drm/i915/display/intel_dpt.h
index e05b3a716310..0482af43e946 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.h
+++ b/drivers/gpu/drm/i915/display/intel_dpt.h
@@ -10,13 +10,10 @@
 
 struct i915_address_space;
 struct i915_vma;
-struct intel_display;
 
 struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
 				       unsigned int alignment);
 void intel_dpt_unpin_from_ggtt(struct i915_address_space *vm);
-void intel_dpt_suspend(struct intel_display *display);
-void intel_dpt_resume(struct intel_display *display);
 u64 intel_dpt_offset(struct i915_vma *dpt_vma);
 
 #endif /* __INTEL_DPT_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dpt_common.c b/drivers/gpu/drm/i915/display/intel_dpt_common.c
index 5eb88d51dba1..6551318b037b 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt_common.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt_common.c
@@ -7,6 +7,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_dpt_common.h"
+#include "intel_parent.h"
 #include "skl_universal_plane_regs.h"
 
 void intel_dpt_configure(struct intel_crtc *crtc)
@@ -33,3 +34,61 @@ void intel_dpt_configure(struct intel_crtc *crtc)
 			     CHICKEN_MISC_DISABLE_DPT);
 	}
 }
+
+/**
+ * intel_dpt_suspend - suspend the memory mapping for all DPT FBs during system suspend
+ * @display: display device instance
+ *
+ * Suspend the memory mapping during system suspend for all framebuffers which
+ * are mapped to HW via a GGTT->DPT page table.
+ *
+ * This function must be called before the mappings in GGTT are suspended calling
+ * i915_ggtt_suspend().
+ */
+void intel_dpt_suspend(struct intel_display *display)
+{
+	struct drm_framebuffer *drm_fb;
+
+	if (!HAS_DISPLAY(display))
+		return;
+
+	mutex_lock(&display->drm->mode_config.fb_lock);
+
+	drm_for_each_fb(drm_fb, display->drm) {
+		struct intel_framebuffer *fb = to_intel_framebuffer(drm_fb);
+
+		if (fb->dpt_vm)
+			intel_parent_dpt_suspend(display, fb->dpt_vm);
+	}
+
+	mutex_unlock(&display->drm->mode_config.fb_lock);
+}
+
+/**
+ * intel_dpt_resume - restore the memory mapping for all DPT FBs during system resume
+ * @display: display device instance
+ *
+ * Restore the memory mapping during system resume for all framebuffers which
+ * are mapped to HW via a GGTT->DPT page table. The content of these page
+ * tables are not stored in the hibernation image during S4 and S3RST->S4
+ * transitions, so here we reprogram the PTE entries in those tables.
+ *
+ * This function must be called after the mappings in GGTT have been restored calling
+ * i915_ggtt_resume().
+ */
+void intel_dpt_resume(struct intel_display *display)
+{
+	struct drm_framebuffer *drm_fb;
+
+	if (!HAS_DISPLAY(display))
+		return;
+
+	mutex_lock(&display->drm->mode_config.fb_lock);
+	drm_for_each_fb(drm_fb, display->drm) {
+		struct intel_framebuffer *fb = to_intel_framebuffer(drm_fb);
+
+		if (fb->dpt_vm)
+			intel_parent_dpt_resume(display, fb->dpt_vm);
+	}
+	mutex_unlock(&display->drm->mode_config.fb_lock);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dpt_common.h b/drivers/gpu/drm/i915/display/intel_dpt_common.h
index 6d7de405126a..11bd495693b2 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt_common.h
+++ b/drivers/gpu/drm/i915/display/intel_dpt_common.h
@@ -7,7 +7,10 @@
 #define __INTEL_DPT_COMMON_H__
 
 struct intel_crtc;
+struct intel_display;
 
 void intel_dpt_configure(struct intel_crtc *crtc);
+void intel_dpt_suspend(struct intel_display *display);
+void intel_dpt_resume(struct intel_display *display);
 
 #endif /* __INTEL_DPT_COMMON_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index c43e3518a139..a79ea775bde2 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -40,6 +40,18 @@ void intel_parent_dpt_destroy(struct intel_display *display, struct i915_address
 		display->parent->dpt->destroy(vm);
 }
 
+void intel_parent_dpt_suspend(struct intel_display *display, struct i915_address_space *vm)
+{
+	if (display->parent->dpt)
+		display->parent->dpt->suspend(vm);
+}
+
+void intel_parent_dpt_resume(struct intel_display *display, struct i915_address_space *vm)
+{
+	if (display->parent->dpt)
+		display->parent->dpt->resume(vm);
+}
+
 /* hdcp */
 ssize_t intel_parent_hdcp_gsc_msg_send(struct intel_display *display,
 				       struct intel_hdcp_gsc_context *gsc_context,
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index 88860e471a0d..be577ce10c21 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -20,6 +20,8 @@ struct i915_address_space *intel_parent_dpt_create(struct intel_display *display
 						   struct drm_gem_object *obj,
 						   size_t size);
 void intel_parent_dpt_destroy(struct intel_display *display, struct i915_address_space *vm);
+void intel_parent_dpt_suspend(struct intel_display *display, struct i915_address_space *vm);
+void intel_parent_dpt_resume(struct intel_display *display, struct i915_address_space *vm);
 
 /* hdcp */
 ssize_t intel_parent_hdcp_gsc_msg_send(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/i915_dpt.c b/drivers/gpu/drm/i915/i915_dpt.c
index 5237d057119e..635127ee5505 100644
--- a/drivers/gpu/drm/i915/i915_dpt.c
+++ b/drivers/gpu/drm/i915/i915_dpt.c
@@ -8,9 +8,7 @@
 
 #include "display/intel_display_core.h"
 #include "display/intel_display_rpm.h"
-#include "display/intel_display_types.h"
 #include "display/intel_dpt.h"
-#include "display/intel_fb.h"
 #include "gem/i915_gem_domain.h"
 #include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_lmem.h"
@@ -185,64 +183,6 @@ void intel_dpt_unpin_from_ggtt(struct i915_address_space *vm)
 	i915_vma_put(dpt->vma);
 }
 
-/**
- * intel_dpt_resume - restore the memory mapping for all DPT FBs during system resume
- * @display: display device instance
- *
- * Restore the memory mapping during system resume for all framebuffers which
- * are mapped to HW via a GGTT->DPT page table. The content of these page
- * tables are not stored in the hibernation image during S4 and S3RST->S4
- * transitions, so here we reprogram the PTE entries in those tables.
- *
- * This function must be called after the mappings in GGTT have been restored calling
- * i915_ggtt_resume().
- */
-void intel_dpt_resume(struct intel_display *display)
-{
-	struct drm_framebuffer *drm_fb;
-
-	if (!HAS_DISPLAY(display))
-		return;
-
-	mutex_lock(&display->drm->mode_config.fb_lock);
-	drm_for_each_fb(drm_fb, display->drm) {
-		struct intel_framebuffer *fb = to_intel_framebuffer(drm_fb);
-
-		if (fb->dpt_vm)
-			i915_ggtt_resume_vm(fb->dpt_vm, true);
-	}
-	mutex_unlock(&display->drm->mode_config.fb_lock);
-}
-
-/**
- * intel_dpt_suspend - suspend the memory mapping for all DPT FBs during system suspend
- * @display: display device instance
- *
- * Suspend the memory mapping during system suspend for all framebuffers which
- * are mapped to HW via a GGTT->DPT page table.
- *
- * This function must be called before the mappings in GGTT are suspended calling
- * i915_ggtt_suspend().
- */
-void intel_dpt_suspend(struct intel_display *display)
-{
-	struct drm_framebuffer *drm_fb;
-
-	if (!HAS_DISPLAY(display))
-		return;
-
-	mutex_lock(&display->drm->mode_config.fb_lock);
-
-	drm_for_each_fb(drm_fb, display->drm) {
-		struct intel_framebuffer *fb = to_intel_framebuffer(drm_fb);
-
-		if (fb->dpt_vm)
-			i915_ggtt_suspend_vm(fb->dpt_vm, true);
-	}
-
-	mutex_unlock(&display->drm->mode_config.fb_lock);
-}
-
 static struct i915_address_space *i915_dpt_create(struct drm_gem_object *obj, size_t size)
 {
 	struct drm_i915_private *i915 = to_i915(obj->dev);
@@ -316,6 +256,16 @@ static void i915_dpt_destroy(struct i915_address_space *vm)
 	i915_vm_put(&dpt->vm);
 }
 
+static void i915_dpt_suspend(struct i915_address_space *vm)
+{
+	i915_ggtt_suspend_vm(vm, true);
+}
+
+static void i915_dpt_resume(struct i915_address_space *vm)
+{
+	i915_ggtt_resume_vm(vm, true);
+}
+
 u64 intel_dpt_offset(struct i915_vma *dpt_vma)
 {
 	return i915_vma_offset(dpt_vma);
@@ -324,4 +274,6 @@ u64 intel_dpt_offset(struct i915_vma *dpt_vma)
 const struct intel_display_dpt_interface i915_display_dpt_interface = {
 	.create = i915_dpt_create,
 	.destroy = i915_dpt_destroy,
+	.suspend = i915_dpt_suspend,
+	.resume = i915_dpt_resume,
 };
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 31a608ccab00..570626f8a554 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -59,7 +59,7 @@
 #include "display/intel_display_power.h"
 #include "display/intel_dmc.h"
 #include "display/intel_dp.h"
-#include "display/intel_dpt.h"
+#include "display/intel_dpt_common.h"
 #include "display/intel_dram.h"
 #include "display/intel_encoder.h"
 #include "display/intel_fbdev.h"
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 48abbe187d61..2af4d6e99fd0 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -27,6 +27,8 @@ struct ref_tracker;
 struct intel_display_dpt_interface {
 	struct i915_address_space *(*create)(struct drm_gem_object *obj, size_t size);
 	void (*destroy)(struct i915_address_space *vm);
+	void (*suspend)(struct i915_address_space *vm);
+	void (*resume)(struct i915_address_space *vm);
 };
 
 struct intel_display_dsb_interface {
-- 
2.47.3

