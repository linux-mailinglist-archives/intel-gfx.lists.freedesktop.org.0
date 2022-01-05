Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0277D4859A2
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 20:57:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42F3910E31F;
	Wed,  5 Jan 2022 19:57:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1862F10E31F
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 19:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641412652; x=1672948652;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u/q7ewFnXmS2Cf38+gkwM9ZcQJevZQYoLcD3/S/j4xU=;
 b=aukwrp9gmq0ktZacEanx0DapVmt4V7vU3PzP6Nu7Leh6uUnPS8/xK+/V
 ybukDZzVvJSxqxbVO9PM+K+xeHcRmYPMqvmfLlDw8GEoiye1ubD2eI9rk
 /fBOdBZxxks+6elMrBCE+2spI6Vy+/GCdbhxVwNaoXtOgmgau/DUybcaf
 D5VyjUwxqEWAsmEMLWaPO5rxFI7f2nir68+wvAy+vp+Qs+EzbBiOD4fdc
 E5sL7BjunNxFaDwUdpPU1Ucu1vTQ08hR9TPjOb84HoQ0d5owedo3h+VLd
 IGqf+/AXJS3NZE/Rvt62K5n+f04fN/lCVOT30LcvJ6RIJaUZkF9TdjKxR w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="303277235"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="303277235"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:57:31 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="472623510"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:57:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jan 2022 21:56:25 +0200
Message-Id: <cd2ed0799dec7f77aafe3178b6a0781a40fddc72.1641411696.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641411696.git.jani.nikula@intel.com>
References: <cover.1641411696.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/21] drm/i915: split out gem/i915_gem_dmabuf.h
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

We already have the gem/i915_gem_dmabuf.c file.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.h | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_object.c |  2 ++
 drivers/gpu/drm/i915/gvt/dmabuf.c          |  2 ++
 drivers/gpu/drm/i915/i915_driver.c         |  1 +
 drivers/gpu/drm/i915/i915_drv.h            |  5 -----
 6 files changed, 24 insertions(+), 5 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.h

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index 1b526039a60d..29877894352e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -11,6 +11,7 @@
 
 #include <asm/smp.h>
 
+#include "gem/i915_gem_dmabuf.h"
 #include "i915_drv.h"
 #include "i915_gem_object.h"
 #include "i915_scatterlist.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.h b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.h
new file mode 100644
index 000000000000..6e0405d47ce1
--- /dev/null
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __I915_GEM_DMABUF_H__
+#define __I915_GEM_DMABUF_H__
+
+struct drm_gem_object;
+struct drm_device;
+struct dma_buf;
+
+struct drm_gem_object *i915_gem_prime_import(struct drm_device *dev,
+					     struct dma_buf *dma_buf);
+
+struct dma_buf *i915_gem_prime_export(struct drm_gem_object *gem_obj, int flags);
+
+#endif /* __I915_GEM_DMABUF_H__ */
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index d87b508b59b1..6b719368467e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -26,9 +26,11 @@
 
 #include "display/intel_frontbuffer.h"
 #include "pxp/intel_pxp.h"
+
 #include "i915_drv.h"
 #include "i915_gem_clflush.h"
 #include "i915_gem_context.h"
+#include "i915_gem_dmabuf.h"
 #include "i915_gem_mman.h"
 #include "i915_gem_object.h"
 #include "i915_gem_ttm.h"
diff --git a/drivers/gpu/drm/i915/gvt/dmabuf.c b/drivers/gpu/drm/i915/gvt/dmabuf.c
index 8e65cd8258b9..509b6fed0b5b 100644
--- a/drivers/gpu/drm/i915/gvt/dmabuf.c
+++ b/drivers/gpu/drm/i915/gvt/dmabuf.c
@@ -31,6 +31,8 @@
 #include <linux/dma-buf.h>
 #include <linux/vfio.h>
 
+#include "gem/i915_gem_dmabuf.h"
+
 #include "i915_drv.h"
 #include "gvt.h"
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 68017a945b3e..5b9355a73f53 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -62,6 +62,7 @@
 #include "display/intel_vga.h"
 
 #include "gem/i915_gem_context.h"
+#include "gem/i915_gem_dmabuf.h"
 #include "gem/i915_gem_ioctls.h"
 #include "gem/i915_gem_mman.h"
 #include "gem/i915_gem_pm.h"
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index cbee09231fdb..50d1fa6c8938 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1661,11 +1661,6 @@ static inline u32 i915_reset_engine_count(struct i915_gpu_error *error,
 int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
 				    enum i915_cache_level cache_level);
 
-struct drm_gem_object *i915_gem_prime_import(struct drm_device *dev,
-				struct dma_buf *dma_buf);
-
-struct dma_buf *i915_gem_prime_export(struct drm_gem_object *gem_obj, int flags);
-
 static inline struct i915_address_space *
 i915_gem_vm_lookup(struct drm_i915_file_private *file_priv, u32 id)
 {
-- 
2.30.2

