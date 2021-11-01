Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F932442038
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Nov 2021 19:41:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53FDA6E24D;
	Mon,  1 Nov 2021 18:41:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B67C16E24D
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Nov 2021 18:41:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="317288662"
X-IronPort-AV: E=Sophos;i="5.87,200,1631602800"; d="scan'208";a="317288662"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 11:35:57 -0700
X-IronPort-AV: E=Sophos;i="5.87,200,1631602800"; d="scan'208";a="599123393"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 11:35:55 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Nov 2021 20:35:51 +0200
Message-Id: <20211101183551.3580546-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211101183551.3580546-1-imre.deak@intel.com>
References: <20211101183551.3580546-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Restore memory mapping for DPT
 FBs across system suspend/resume
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

At least during hibernation the DPT mappings are lost with all stolen
memory content, so suspend/resume these mappings similarly to GGTT
mappings.

This fixes a problem where the restoring modeset during system resume fails
with pipe faults if a tiled framebuffer was active before suspend.

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Vunny Sodhi <vunny.sodhi@intel.com>
Reported-and-tested-by: Vunny Sodhi <vunny.sodhi@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c | 50 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dpt.h |  4 ++
 drivers/gpu/drm/i915/i915_drv.c          |  5 +++
 3 files changed, 59 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 8f7b1f7534a48..3a7f185746c89 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -167,6 +167,56 @@ void intel_dpt_unpin(struct i915_address_space *vm)
 	i915_vma_put(dpt->vma);
 }
 
+/**
+ * intel_dpt_resume - restore the memory mapping for all DPT FBs during system resume
+ * @i915: device instance
+ *
+ * Restore the memory mapping during system resume for all framebuffers which
+ * are mapped to HW via a GGTT->DPT page table.
+ *
+ * This function must be called after the mappings in GGTT have been restored calling
+ * i915_ggtt_resume().
+ */
+void intel_dpt_resume(struct drm_i915_private *i915)
+{
+	struct drm_framebuffer *drm_fb;
+
+	mutex_lock(&i915->drm.mode_config.fb_lock);
+	drm_for_each_fb(drm_fb, &i915->drm) {
+		struct intel_framebuffer *fb = to_intel_framebuffer(drm_fb);
+
+		if (fb->dpt_vm)
+			i915_ggtt_resume_vm(fb->dpt_vm);
+	}
+	mutex_unlock(&i915->drm.mode_config.fb_lock);
+}
+
+/**
+ * intel_dpt_suspend - suspend the memory mapping for all DPT FBs during system suspend
+ * @i915: device instance
+ *
+ * Suspend the memory mapping during system suspend for all framebuffers which
+ * are mapped to HW via a GGTT->DPT page table.
+ *
+ * This function must be called before the mappings in GGTT are suspended calling
+ * i915_ggtt_suspend().
+ */
+void intel_dpt_suspend(struct drm_i915_private *i915)
+{
+	struct drm_framebuffer *drm_fb;
+
+	mutex_lock(&i915->drm.mode_config.fb_lock);
+
+	drm_for_each_fb(drm_fb, &i915->drm) {
+		struct intel_framebuffer *fb = to_intel_framebuffer(drm_fb);
+
+		if (fb->dpt_vm)
+			i915_ggtt_suspend_vm(fb->dpt_vm);
+	}
+
+	mutex_unlock(&i915->drm.mode_config.fb_lock);
+}
+
 struct i915_address_space *
 intel_dpt_create(struct intel_framebuffer *fb)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dpt.h b/drivers/gpu/drm/i915/display/intel_dpt.h
index 45142b8f849f6..e18a9f767b112 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.h
+++ b/drivers/gpu/drm/i915/display/intel_dpt.h
@@ -6,6 +6,8 @@
 #ifndef __INTEL_DPT_H__
 #define __INTEL_DPT_H__
 
+struct drm_i915_private;
+
 struct i915_address_space;
 struct i915_vma;
 struct intel_framebuffer;
@@ -13,6 +15,8 @@ struct intel_framebuffer;
 void intel_dpt_destroy(struct i915_address_space *vm);
 struct i915_vma *intel_dpt_pin(struct i915_address_space *vm);
 void intel_dpt_unpin(struct i915_address_space *vm);
+void intel_dpt_suspend(struct drm_i915_private *i915);
+void intel_dpt_resume(struct drm_i915_private *i915);
 struct i915_address_space *
 intel_dpt_create(struct intel_framebuffer *fb);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 1e5b75ae99329..4a054aa1860b0 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -51,6 +51,7 @@
 #include "display/intel_dmc.h"
 #include "display/intel_display_types.h"
 #include "display/intel_dp.h"
+#include "display/intel_dpt.h"
 #include "display/intel_fbdev.h"
 #include "display/intel_hotplug.h"
 #include "display/intel_overlay.h"
@@ -1128,6 +1129,8 @@ static int i915_drm_suspend(struct drm_device *dev)
 
 	intel_suspend_hw(dev_priv);
 
+	/* Must be called before GGTT is suspended. */
+	intel_dpt_suspend(dev_priv);
 	i915_ggtt_suspend(&dev_priv->ggtt);
 
 	i915_save_display(dev_priv);
@@ -1244,6 +1247,8 @@ static int i915_drm_resume(struct drm_device *dev)
 		drm_err(&dev_priv->drm, "failed to re-enable GGTT\n");
 
 	i915_ggtt_resume(&dev_priv->ggtt);
+	/* Must be called after GGTT is resumed. */
+	intel_dpt_resume(dev_priv);
 
 	intel_dmc_ucode_resume(dev_priv);
 
-- 
2.27.0

