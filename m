Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA084B11F6
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 16:46:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F011410E89D;
	Thu, 10 Feb 2022 15:46:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5144810E89D
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 15:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644507977; x=1676043977;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lcbYoj5UcdUSK+NPanL/kJSjBPYQZukvx1NlM2TvO6c=;
 b=ZinwbSGHZTFgE9X763qt3xm0CjSN4Gg8+kFpkWo1UlhoW1/P5HCYEZNU
 lCmc0tikHw5Acg9E1JaMR81HDJQ1xwUK6zWLB9U9bt9E84WqJbuFHTIwH
 L66ThZ42jai/jO+/YKusWrwvtVVA0AAolvVkcJO00rs69B2jDW0l6MX8J
 10qT3/SV27ttki8S66Dw8zso8IcsEDZ/5LeUt89Ris2cgC2Imrqtkvs3I
 XmVaAWiUI0twFNSCdshbShjk1hbfjrqYhFAKPuxxd1w/yGPcvFusv5r89
 aQDKWHORjgUtenKvOECEmzqrcnosxjOMoN2MAtG0jEDratQjLjjojFGfA Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="236920626"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="236920626"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:46:15 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="541655847"
Received: from dhogarty-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.221])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:46:13 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 17:45:41 +0200
Message-Id: <2f3fa0fb7cd78c204e27b2454410b6530289efdc.1644507885.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1644507885.git.jani.nikula@intel.com>
References: <cover.1644507885.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 03/14] drm/i915: split out
 gem/i915_gem_dmabuf.h from i915_drv.h
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

We already have the gem/i915_gem_dmabuf.c file.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
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
index 14fdb0796c52..13917231ae81 100644
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
index e03e362d320b..04df294dc5ca 100644
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
index 6dd3757cdf87..893206a92002 100644
--- a/drivers/gpu/drm/i915/gvt/dmabuf.c
+++ b/drivers/gpu/drm/i915/gvt/dmabuf.c
@@ -31,6 +31,8 @@
 #include <linux/dma-buf.h>
 #include <linux/vfio.h>
 
+#include "gem/i915_gem_dmabuf.h"
+
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "gvt.h"
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 76c84b35884f..eb90d04ba35a 100644
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
index 5d6ee867b3a7..82f8fc9c2b88 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1630,11 +1630,6 @@ int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
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

