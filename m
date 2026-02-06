Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gPseFQjbhWnfHQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 13:14:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3305FD804
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 13:13:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3752510E78A;
	Fri,  6 Feb 2026 12:13:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JjhyfZPS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F35C10E76E;
 Fri,  6 Feb 2026 12:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770380036; x=1801916036;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nXw+13i6C63CY4x5I5cKGIj6fDkMnzxy20BPjavbzi8=;
 b=JjhyfZPSv2/9qAx3zt0YV156p4TSOTEV/yBQ1cbdCjDoyOQycWgz6uFP
 Lf+V8C3BnDajT9n1LjtrHNHh9l0ewkbgkpytobYcqBHdd9jhAcVoaY+S5
 BdDPYe28NsLTzBHu5cULb/SZ9RIn0Ir5F0bTswE5YibEuV9HBE4Le0ngU
 VCMPEZ0RiV/gLh5ATfrzuHpxjsu+anA2/OY/1H6em5m2HEm69Dut/cVeq
 uf9n+RJVe//3LnhNVscKbJ55ksQlOfbhgwPUygUKtUpcbFsPDOBUDdc4h
 6YJU7BY6qHa/rzGxp5M8ck1KBebFJF9rg0uIwKjw5LddZmh69yTlsrcu9 w==;
X-CSE-ConnectionGUID: p+PejppvQsuh0Z/BDKjnxQ==
X-CSE-MsgGUID: /BqEfmoCQIOTvhlzB2APOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="71765193"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="71765193"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 04:13:56 -0800
X-CSE-ConnectionGUID: dmDV+7g3T9Kqmz/DXRTShg==
X-CSE-MsgGUID: dvJopXOdQFq5ruR55LJWoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="248472610"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.129])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 04:13:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 04/10] drm/i915/dpt: move suspend/resume to parent interface
Date: Fri,  6 Feb 2026 14:13:25 +0200
Message-ID: <5ad157d505f29f72517a7b73c93d5f9876b96fb3.1770379986.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1770379986.git.jani.nikula@intel.com>
References: <cover.1770379986.git.jani.nikula@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: E3305FD804
X-Rspamd-Action: no action

Add per-vm DPT suspend/resume calls to the display parent interface, and
lift the generic code away from i915 specific code.

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
index 143929a84b62..28300ef898f6 100644
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
index d4f71d02b90e..e1c73f626b32 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -58,7 +58,7 @@
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

