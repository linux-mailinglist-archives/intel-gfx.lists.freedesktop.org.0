Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC5A5AD5A9
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 17:01:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0E4D10E3FF;
	Mon,  5 Sep 2022 15:01:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 624BF10E404
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 15:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662390090; x=1693926090;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e0PVjh35ONGv6b7YyHk19PKqe4Ev/ZjCwaGvZc9xmXE=;
 b=FQqUNsqOqjKbanJFvhg4+bzAMMoKuC/7z58hOBXzou28eHqg4DePDhtf
 WYIlmIOm/CsQsxaOAV+gkHVplpwRRbuRJj6Jq5+SW3AOJbPxRHh17xcyS
 w6HYj1EuXi7gO9/CgFUqjEks4wSK6YgAEJ6FcQzp0z7c76dbvyFBHLdHS
 fKzuCayi8M4ZmnB/PLPeF/EdifXBcHeop9FdlAomBaqIs5Lra9fe1NNYg
 cza4ZsBGP43ruSF9oSQo2QKq4uRtYgsasSe+oCCp1uuaZUKMxyID4O/+q
 aU+aaS3XYrPSefE2fZW5IogM7FXI4yR7ehLXMDyPkXVkFHm3TXeh4AU43 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="297192831"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="297192831"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 08:01:29 -0700
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="643836243"
Received: from smaciag-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.57])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 08:01:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Sep 2022 18:00:53 +0300
Message-Id: <82a353c5c4b52df2354f9413b547c7619a45d92d.1662390010.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662390010.git.jani.nikula@intel.com>
References: <cover.1662390010.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915: split out i915_gem.c declarations
 to i915_gem.h
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Declutter i915_drv.h by splitting out the declarations for
i915_gem.[ch].

Add a fixme comment about the rest of the stuff in i915_gem.h that
doesn't really belong there.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 36 ---------------------------
 drivers/gpu/drm/i915/i915_gem.h | 43 +++++++++++++++++++++++++++++++++
 2 files changed, 43 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index bbfc295f386b..befb167b3c49 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -972,42 +972,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_ONE_EU_PER_FUSE_BIT(i915)	(INTEL_INFO(i915)->has_one_eu_per_fuse_bit)
 
-/* i915_gem.c */
-void i915_gem_init_early(struct drm_i915_private *dev_priv);
-void i915_gem_cleanup_early(struct drm_i915_private *dev_priv);
-
-void i915_gem_drain_freed_objects(struct drm_i915_private *i915);
-void i915_gem_drain_workqueue(struct drm_i915_private *i915);
-
-struct i915_vma * __must_check
-i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
-			    struct i915_gem_ww_ctx *ww,
-			    const struct i915_ggtt_view *view,
-			    u64 size, u64 alignment, u64 flags);
-
-struct i915_vma * __must_check
-i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
-			 const struct i915_ggtt_view *view,
-			 u64 size, u64 alignment, u64 flags);
-
-int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
-			   unsigned long flags);
-#define I915_GEM_OBJECT_UNBIND_ACTIVE BIT(0)
-#define I915_GEM_OBJECT_UNBIND_BARRIER BIT(1)
-#define I915_GEM_OBJECT_UNBIND_TEST BIT(2)
-#define I915_GEM_OBJECT_UNBIND_VM_TRYLOCK BIT(3)
-#define I915_GEM_OBJECT_UNBIND_ASYNC BIT(4)
-
-void i915_gem_runtime_suspend(struct drm_i915_private *dev_priv);
-
-int __must_check i915_gem_init(struct drm_i915_private *dev_priv);
-void i915_gem_driver_register(struct drm_i915_private *i915);
-void i915_gem_driver_unregister(struct drm_i915_private *i915);
-void i915_gem_driver_remove(struct drm_i915_private *dev_priv);
-void i915_gem_driver_release(struct drm_i915_private *dev_priv);
-
-int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
-
 /* intel_device_info.c */
 static inline struct intel_device_info *
 mkwrite_device_info(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
index 68d8d52bd541..2fccb19ed9f7 100644
--- a/drivers/gpu/drm/i915/i915_gem.h
+++ b/drivers/gpu/drm/i915/i915_gem.h
@@ -26,12 +26,55 @@
 #define __I915_GEM_H__
 
 #include <linux/bug.h>
+#include <linux/types.h>
 
 #include <drm/drm_drv.h>
 
 #include "i915_utils.h"
 
+struct drm_file;
+struct drm_i915_gem_object;
 struct drm_i915_private;
+struct i915_gem_ww_ctx;
+struct i915_ggtt_view;
+struct i915_vma;
+
+void i915_gem_init_early(struct drm_i915_private *i915);
+void i915_gem_cleanup_early(struct drm_i915_private *i915);
+
+void i915_gem_drain_freed_objects(struct drm_i915_private *i915);
+void i915_gem_drain_workqueue(struct drm_i915_private *i915);
+
+struct i915_vma * __must_check
+i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
+			    struct i915_gem_ww_ctx *ww,
+			    const struct i915_ggtt_view *view,
+			    u64 size, u64 alignment, u64 flags);
+
+struct i915_vma * __must_check
+i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
+			 const struct i915_ggtt_view *view,
+			 u64 size, u64 alignment, u64 flags);
+
+int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
+			   unsigned long flags);
+#define I915_GEM_OBJECT_UNBIND_ACTIVE BIT(0)
+#define I915_GEM_OBJECT_UNBIND_BARRIER BIT(1)
+#define I915_GEM_OBJECT_UNBIND_TEST BIT(2)
+#define I915_GEM_OBJECT_UNBIND_VM_TRYLOCK BIT(3)
+#define I915_GEM_OBJECT_UNBIND_ASYNC BIT(4)
+
+void i915_gem_runtime_suspend(struct drm_i915_private *i915);
+
+int __must_check i915_gem_init(struct drm_i915_private *i915);
+void i915_gem_driver_register(struct drm_i915_private *i915);
+void i915_gem_driver_unregister(struct drm_i915_private *i915);
+void i915_gem_driver_remove(struct drm_i915_private *i915);
+void i915_gem_driver_release(struct drm_i915_private *i915);
+
+int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
+
+/* FIXME: All of the below belong somewhere else. */
 
 #ifdef CONFIG_DRM_I915_DEBUG_GEM
 
-- 
2.34.1

