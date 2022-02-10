Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D566B4B11F7
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 16:46:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 002A410E89F;
	Thu, 10 Feb 2022 15:46:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34EB510E89F
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 15:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644507983; x=1676043983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1+PaNyAHhIyt6zyut9pBe5ZMWWeO3aXb4ychTcW+ru8=;
 b=HADY77KATlzFXtoQH+m+orinZX8SUcaqAydG9DABDih79Alr66GojRX0
 Xr3u35GoG46X9CgywGr1/tRk+f8kUIF53TVBTxZ6XZvzst9mA2UFb7tcc
 LT6uaiZFe8JLQ0CxPNRGIPYe7trVWHTuCvE7cyZHEi1TvWSHFNil3E4Uy
 ERmaNcro/KHF+atO/aPijsRjv6l8bBxBhyeSoe7tMojPrxitgLWTMgU/J
 i8ZqScUMBBkFuZ/GIOpUsGAqPYZLe9wRDV2KdbU1lN1oOMG5Lmwn/HKrh
 Jnlczcoy5jVCQrOgISmKydixh13o/BEb3YX/vsy826G/y+0/1pIZ0Km3Y g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="249269697"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="249269697"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:46:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="633703521"
Received: from dhogarty-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.221])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:46:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 17:45:42 +0200
Message-Id: <f4d5108498ce10fff8577520276d40e86b2d5a16.1644507885.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1644507885.git.jani.nikula@intel.com>
References: <cover.1644507885.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 04/14] drm/i915: split out
 gem/i915_gem_create.h from i915_drv.h
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

We already have the gem/i915_gem_create.c file.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_create.c |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_create.h | 17 +++++++++++++++++
 drivers/gpu/drm/i915/i915_driver.c         |  1 +
 drivers/gpu/drm/i915/i915_drv.h            |  4 ----
 4 files changed, 19 insertions(+), 4 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_create.h

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index 9402d4bf4ffc..0deff550d324 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -9,6 +9,7 @@
 #include "pxp/intel_pxp.h"
 
 #include "i915_drv.h"
+#include "i915_gem_create.h"
 #include "i915_trace.h"
 #include "i915_user_extensions.h"
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.h b/drivers/gpu/drm/i915/gem/i915_gem_create.h
new file mode 100644
index 000000000000..9536aa906001
--- /dev/null
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef __I915_GEM_CREATE_H__
+#define __I915_GEM_CREATE_H__
+
+struct drm_file;
+struct drm_device;
+struct drm_mode_create_dumb;
+
+int i915_gem_dumb_create(struct drm_file *file_priv,
+			 struct drm_device *dev,
+			 struct drm_mode_create_dumb *args);
+
+#endif /* __I915_GEM_CREATE_H__ */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index eb90d04ba35a..4a41c38cf06f 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -62,6 +62,7 @@
 #include "display/intel_vga.h"
 
 #include "gem/i915_gem_context.h"
+#include "gem/i915_gem_create.h"
 #include "gem/i915_gem_dmabuf.h"
 #include "gem/i915_gem_ioctls.h"
 #include "gem/i915_gem_mman.h"
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 82f8fc9c2b88..4f057a45654a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1602,10 +1602,6 @@ int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
 
 void i915_gem_runtime_suspend(struct drm_i915_private *dev_priv);
 
-int i915_gem_dumb_create(struct drm_file *file_priv,
-			 struct drm_device *dev,
-			 struct drm_mode_create_dumb *args);
-
 int __must_check i915_gem_set_global_seqno(struct drm_device *dev, u32 seqno);
 
 static inline u32 i915_reset_count(struct i915_gpu_error *error)
-- 
2.30.2

