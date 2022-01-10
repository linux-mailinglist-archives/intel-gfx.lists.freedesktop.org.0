Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EC3489C81
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 16:46:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3798113E04;
	Mon, 10 Jan 2022 15:46:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CD92113DE0
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 15:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641829571; x=1673365571;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XH5ZJI5PtobNwLOOMP1nghMbZ4t6uFrko+/RVS9sduI=;
 b=GBSG+aKL7lgSjYkjzVLvmI61gNH+E2ITGovW3ihXtfiF+CIw60oD6JP+
 L8FFRidQTeFMubTrJTp8pq8Fzisw9NImnpKwD+A/Ja8ds1tqugBlCZJcm
 Yvab3lxUJpFuZNAkhT1aSGyKkV4FggbXSg3mKGtIUfjkY8gH5rsTGF77w
 XBgKetI7TzxoEbnl2YVIa03LYViT7+CoG8QOcis4qMmzsb7SNTYzuIOdO
 Gea65s+44b75df+H6qqen6nJKcZwQRDzDqXpGVtaqQAzwl2trhnByZtiZ
 9a80ZI/Ejswvw5YEMfjMMnphGeJQUWYhwJXn0BFAt0TPL/7uaIzOLl87G w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="240802832"
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="240802832"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 07:46:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="528318564"
Received: from bdoyle2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.184])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 07:46:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jan 2022 17:45:40 +0200
Message-Id: <2c69e5e72534cb990f28d870cea6d930ed528298.1641829429.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641829428.git.jani.nikula@intel.com>
References: <cover.1641829428.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/6] drm/i915: split out gem/i915_gem_dmabuf.h
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

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
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
index 94c3eb1586b0..3357745cb525 100644
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
index 8bef67cb6c33..80665d3d321d 100644
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
index f2016f0ba9fe..0c626181edea 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1659,11 +1659,6 @@ static inline u32 i915_reset_engine_count(struct i915_gpu_error *error,
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

