Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C2BA446D5
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 17:49:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66E6E10E768;
	Tue, 25 Feb 2025 16:49:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GsGh9iUX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CFD610E74A;
 Tue, 25 Feb 2025 16:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740502198; x=1772038198;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+9p5InrNBRZ16Vtan+RZZUmRUOd6WCi5mY0ix5+lF7o=;
 b=GsGh9iUXZpD9usSusChvB71l7Pl/GZ7pigltK0K85lkj+7HVP09eLCTk
 3A1mIvoylChAigah4vbK5gCip1Pm+8rC22OYv7ktD3QIjRwqO8VfHNeSb
 sLIoLexHK5k35xkdSFOk+HeVulPwQ8/Pt+PKzMzptSi7HA3HNuyj0+xS5
 w3m2TU/Y2XxzymXTueOmxss8Hr19BdMJYzOT3RZYivSJzH3pT+aopWrXp
 mbmjOFuNlBo0zzIY2OFJoiHcGPt6a9ikHAvNOf84fkfZZMuK/lXpzNhQn
 QNRDhI/7LuoJrzlr/AnsNyaQm/I29FSRMNlI1143cZUyaCDqlQ7hdRM/Z g==;
X-CSE-ConnectionGUID: 1RNDv0CwSeaw2XJ/JnFSgQ==
X-CSE-MsgGUID: xVlCLaBzRq6ts4KkVINFxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="52741767"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="52741767"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:49:57 -0800
X-CSE-ConnectionGUID: frIvNXTQRvWpxowLTXh5Gg==
X-CSE-MsgGUID: CKM5fsVURgWfjwphnoiZkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121691825"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:49:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 08/12] drm/i915/dpt: convert intel_dpt.[ch] interfaces to
 struct intel_display
Date: Tue, 25 Feb 2025 18:49:09 +0200
Message-Id: <df2bf715639caeb662f08b776ba81bfe3c9288b9.1740502116.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740502116.git.jani.nikula@intel.com>
References: <cover.1740502116.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Going forward, struct intel_display is the main display device data
pointer. Convert the intel_dpt.[ch] interfaces to struct intel_display,
though the file being very i915 specific, it's hard to convert the
implementation.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c | 24 ++++++++++++------------
 drivers/gpu/drm/i915/display/intel_dpt.h |  7 +++----
 drivers/gpu/drm/i915/i915_driver.c       |  4 ++--
 3 files changed, 17 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 8b1f0e92a11c..fca7294b1def 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -183,7 +183,7 @@ void intel_dpt_unpin_from_ggtt(struct i915_address_space *vm)
 
 /**
  * intel_dpt_resume - restore the memory mapping for all DPT FBs during system resume
- * @i915: device instance
+ * @display: display device instance
  *
  * Restore the memory mapping during system resume for all framebuffers which
  * are mapped to HW via a GGTT->DPT page table. The content of these page
@@ -193,26 +193,26 @@ void intel_dpt_unpin_from_ggtt(struct i915_address_space *vm)
  * This function must be called after the mappings in GGTT have been restored calling
  * i915_ggtt_resume().
  */
-void intel_dpt_resume(struct drm_i915_private *i915)
+void intel_dpt_resume(struct intel_display *display)
 {
 	struct drm_framebuffer *drm_fb;
 
-	if (!HAS_DISPLAY(i915))
+	if (!HAS_DISPLAY(display))
 		return;
 
-	mutex_lock(&i915->drm.mode_config.fb_lock);
-	drm_for_each_fb(drm_fb, &i915->drm) {
+	mutex_lock(&display->drm->mode_config.fb_lock);
+	drm_for_each_fb(drm_fb, display->drm) {
 		struct intel_framebuffer *fb = to_intel_framebuffer(drm_fb);
 
 		if (fb->dpt_vm)
 			i915_ggtt_resume_vm(fb->dpt_vm, true);
 	}
-	mutex_unlock(&i915->drm.mode_config.fb_lock);
+	mutex_unlock(&display->drm->mode_config.fb_lock);
 }
 
 /**
  * intel_dpt_suspend - suspend the memory mapping for all DPT FBs during system suspend
- * @i915: device instance
+ * @display: display device instance
  *
  * Suspend the memory mapping during system suspend for all framebuffers which
  * are mapped to HW via a GGTT->DPT page table.
@@ -220,23 +220,23 @@ void intel_dpt_resume(struct drm_i915_private *i915)
  * This function must be called before the mappings in GGTT are suspended calling
  * i915_ggtt_suspend().
  */
-void intel_dpt_suspend(struct drm_i915_private *i915)
+void intel_dpt_suspend(struct intel_display *display)
 {
 	struct drm_framebuffer *drm_fb;
 
-	if (!HAS_DISPLAY(i915))
+	if (!HAS_DISPLAY(display))
 		return;
 
-	mutex_lock(&i915->drm.mode_config.fb_lock);
+	mutex_lock(&display->drm->mode_config.fb_lock);
 
-	drm_for_each_fb(drm_fb, &i915->drm) {
+	drm_for_each_fb(drm_fb, display->drm) {
 		struct intel_framebuffer *fb = to_intel_framebuffer(drm_fb);
 
 		if (fb->dpt_vm)
 			i915_ggtt_suspend_vm(fb->dpt_vm, true);
 	}
 
-	mutex_unlock(&i915->drm.mode_config.fb_lock);
+	mutex_unlock(&display->drm->mode_config.fb_lock);
 }
 
 struct i915_address_space *
diff --git a/drivers/gpu/drm/i915/display/intel_dpt.h b/drivers/gpu/drm/i915/display/intel_dpt.h
index 1f88b0ee17e7..db521401b828 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.h
+++ b/drivers/gpu/drm/i915/display/intel_dpt.h
@@ -8,18 +8,17 @@
 
 #include <linux/types.h>
 
-struct drm_i915_private;
-
 struct i915_address_space;
 struct i915_vma;
+struct intel_display;
 struct intel_framebuffer;
 
 void intel_dpt_destroy(struct i915_address_space *vm);
 struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
 				       unsigned int alignment);
 void intel_dpt_unpin_from_ggtt(struct i915_address_space *vm);
-void intel_dpt_suspend(struct drm_i915_private *i915);
-void intel_dpt_resume(struct drm_i915_private *i915);
+void intel_dpt_suspend(struct intel_display *display);
+void intel_dpt_resume(struct intel_display *display);
 struct i915_address_space *
 intel_dpt_create(struct intel_framebuffer *fb);
 u64 intel_dpt_offset(struct i915_vma *dpt_vma);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 1dfd6269b355..613084fd0097 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1070,7 +1070,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 	intel_encoder_suspend_all(&dev_priv->display);
 
 	/* Must be called before GGTT is suspended. */
-	intel_dpt_suspend(dev_priv);
+	intel_dpt_suspend(display);
 	i915_ggtt_suspend(to_gt(dev_priv)->ggtt);
 
 	i9xx_display_sr_save(display);
@@ -1187,7 +1187,7 @@ static int i915_drm_resume(struct drm_device *dev)
 			setup_private_pat(gt);
 
 	/* Must be called after GGTT is resumed. */
-	intel_dpt_resume(dev_priv);
+	intel_dpt_resume(display);
 
 	intel_dmc_resume(display);
 
-- 
2.39.5

