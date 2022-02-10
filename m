Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 725774B11F8
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 16:46:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6B8A10E8A0;
	Thu, 10 Feb 2022 15:46:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 382AB10E8A1
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 15:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644507986; x=1676043986;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+QfipabCZF4o7iXC+XmW+xYjIn3ptasK4s+e0EySuwU=;
 b=P+lhyquPKCOxrRBIFlXTKDQjN5Z1iKcipGeYlHyd4umrFTCtIuQ+67pJ
 hnzLZY7lX296KjP4pWjvxYrIudTJAn64FAap/Ovj22dN+Xyhf3Ines52H
 uLuT9MyhqkUThk0oNvCSYITVmS6zKa9wsyCUEh4Mqkiam7omLprjfD9DD
 ucie5IBZTvqTPHwoazwleML+SgM6viLpWJyoMfIeRiRdgq9EN/mb32yyc
 m9SFkRwI7f+nHityncHbsAQYACRwY5A5xq+h5xKMXoCtqHc59A4a5akDU
 uEf//pQUhOzBBCpbJDGM04Uz2oD7pGaDiXT5w85/QZBE97o63rljCofPh Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="230162209"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="230162209"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:46:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="482800511"
Received: from dhogarty-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.221])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:46:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 17:45:43 +0200
Message-Id: <8208321ad09f1fb0d1a61dc0f2449cce8b23a9b9.1644507885.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1644507885.git.jani.nikula@intel.com>
References: <cover.1644507885.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 05/14] drm/i915: split out
 gem/i915_gem_domain.h from i915_drv.h
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
Cc: jani.nikula@intel.com, Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We already have the gem/i915_gem_domain.c file.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c    |  4 +++-
 drivers/gpu/drm/i915/display/intel_fb_pin.c |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_domain.c  |  5 +++--
 drivers/gpu/drm/i915/gem/i915_gem_domain.h  | 15 +++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h             |  3 ---
 5 files changed, 22 insertions(+), 6 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_domain.h

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index c2f8f853db90..05dd7dba3a5c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -3,11 +3,13 @@
  * Copyright © 2021 Intel Corporation
  */
 
+#include "gem/i915_gem_domain.h"
+#include "gt/gen8_ppgtt.h"
+
 #include "i915_drv.h"
 #include "intel_display_types.h"
 #include "intel_dpt.h"
 #include "intel_fb.h"
-#include "gt/gen8_ppgtt.h"
 
 struct i915_dpt {
 	struct i915_address_space vm;
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index c4b3d76341f3..a307b4993bcf 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -7,6 +7,7 @@
  * DOC: display pinning helpers
  */
 
+#include "gem/i915_gem_domain.h"
 #include "gem/i915_gem_object.h"
 
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 26532c07d467..3e5d6057b3ef 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -9,12 +9,13 @@
 
 #include "i915_drv.h"
 #include "i915_gem_clflush.h"
+#include "i915_gem_domain.h"
 #include "i915_gem_gtt.h"
 #include "i915_gem_ioctls.h"
-#include "i915_gem_object.h"
-#include "i915_vma.h"
 #include "i915_gem_lmem.h"
 #include "i915_gem_mman.h"
+#include "i915_gem_object.h"
+#include "i915_vma.h"
 
 static bool gpu_write_needs_clflush(struct drm_i915_gem_object *obj)
 {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.h b/drivers/gpu/drm/i915/gem/i915_gem_domain.h
new file mode 100644
index 000000000000..9622df962bfc
--- /dev/null
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __I915_GEM_DOMAIN_H__
+#define __I915_GEM_DOMAIN_H__
+
+struct drm_i915_gem_object;
+enum i915_cache_level;
+
+int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
+				    enum i915_cache_level cache_level);
+
+#endif /* __I915_GEM_DOMAIN_H__ */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 4f057a45654a..4dbab34045e8 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1623,9 +1623,6 @@ void i915_gem_driver_release(struct drm_i915_private *dev_priv);
 
 int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
 
-int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
-				    enum i915_cache_level cache_level);
-
 static inline struct i915_address_space *
 i915_gem_vm_lookup(struct drm_i915_file_private *file_priv, u32 id)
 {
-- 
2.30.2

