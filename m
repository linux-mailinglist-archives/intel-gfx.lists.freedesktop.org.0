Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E7848C05A
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 09:52:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A59A112E9B;
	Wed, 12 Jan 2022 08:52:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BB10112E9B
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 08:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641977547; x=1673513547;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sbLpcAiZFwc3GBDLq2xDCLVHPpP+6ps0L4h6N3lB68A=;
 b=WjrAc0XZ1R2Unhhh2OwdBdcOslFjaFlvJq+UY3DCfD1JPFoevVYs6yZB
 YVUnKrLr2gHzTMXNb/fXBmebPqWd6WRYkHRRMegZVS60C+eaALel4gQx6
 Gn97xHH9QVwgCxHnyceOeroJRw26iXg5lsUlnb4Uq9ozIiIVgMz6UFsn/
 aKLqNrEjfRz2asUc0j7pFHKNbAqAaEcfMdfDHNYNQ3EFYvL1X2HfkHUhu
 UUptSTXHH5fhCfPJuPe/viaSOMUTaxCJBGoJpMknSnsGg2Gl1E/wTOac8
 b3NSLrz2GSM5h3saLaNQb0p9oNGpH8AubIiQWEnf70SqoBEP3XCKV4de+ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="224387235"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="224387235"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 00:51:47 -0800
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="474841585"
Received: from pmasonx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.13.224])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 00:51:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jan 2022 10:51:26 +0200
Message-Id: <a7deb6f00f2372bfb9acd6acac50c14c7f62c6de.1641977369.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641977368.git.jani.nikula@intel.com>
References: <cover.1641977368.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: split out gem/i915_gem_dmabuf.h
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
index 1a9e1f940a7d..a14f809b09f4 100644
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
index 74bcb8901772..dcc4a9aa3853 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1693,11 +1693,6 @@ int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
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

