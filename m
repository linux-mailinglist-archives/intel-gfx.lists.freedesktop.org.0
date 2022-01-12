Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C78748C057
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 09:52:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ADE6112E65;
	Wed, 12 Jan 2022 08:51:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0453112E78
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 08:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641977511; x=1673513511;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UHQofU3OG7eODaj0fCK1FoDh8qmo70/Ah2zpzAm8ZsY=;
 b=SBlOXPBU3rbQfDqSKfYFWWnQ7ek7CScliKyWiZVSh9lOrv9OhprNklKL
 ykuokn+Hzo475/jgCU7G5oc47FEbxAM8UsVkD05BAQ6OpXy6OU2nVGLZY
 SoyigqBzEJ8j1UrYsHFd2HCTJ+uvVCCeGwsz60aUBQYUBH5a7cna7nWKZ
 EjRb1d2r9ZIr9d8YZICukGm9JQlpj+UItHgricuRN8XZ6v4Hv2YqpkUcb
 tVOGPW0EsV9IVg3jlSoQ3pf8EO53Rs09t7h208AFLYOMwjGcFKFENGSf4
 pO70DKQyuIWDL078tAsgkFE7eVDubyevB3fBknta5Jun0JVVyee85FQG+ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="241245045"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="241245045"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 00:51:51 -0800
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="691316126"
Received: from pmasonx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.13.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 00:51:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jan 2022 10:51:27 +0200
Message-Id: <458ab12597f373b866f7f676ed33babd36111c6e.1641977369.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641977368.git.jani.nikula@intel.com>
References: <cover.1641977368.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: split out gem/i915_gem_create.h
 from i915_drv.h
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

We already have the gem/i915_gem_create.c file.

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
index 80665d3d321d..2cf26ea31c37 100644
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
index dcc4a9aa3853..95899661d567 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1665,10 +1665,6 @@ int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
 
 void i915_gem_runtime_suspend(struct drm_i915_private *dev_priv);
 
-int i915_gem_dumb_create(struct drm_file *file_priv,
-			 struct drm_device *dev,
-			 struct drm_mode_create_dumb *args);
-
 int __must_check i915_gem_set_global_seqno(struct drm_device *dev, u32 seqno);
 
 static inline u32 i915_reset_count(struct i915_gpu_error *error)
-- 
2.30.2

