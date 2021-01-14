Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 912712F6BD5
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 21:13:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 600696E0F7;
	Thu, 14 Jan 2021 20:13:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 552C26E0F7
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 20:13:24 +0000 (UTC)
IronPort-SDR: 6Rf0lBPthMknGIlkuceXfQAHfu0ZbpifzbLCu66dHwSWgkr/+QYccQFqWUJO61nz1giT5R2AfT
 4UIqHk2oIGCQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="177658315"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="177658315"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 12:13:21 -0800
IronPort-SDR: UENRD5+yIvmbRRPgfy+LuKEY5b++rCBH2lFT45OpH1hOM8kEuZXxPK16tKUx/fSivkrEa8HxtK
 eoay1VsGiojA==
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="382394433"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 12:13:20 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Jan 2021 22:13:13 +0200
Message-Id: <20210114201314.783648-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210114201314.783648-1-imre.deak@intel.com>
References: <20210114201314.783648-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 2/3] drm/i915/gem: Add a helper to read data
 from a GEM object page
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a simple helper to read data with the CPU from the page of a GEM
object. Do the read either via a kmap if the object has struct pages
or an iomap otherwise. This is needed by the next patch, reading a u64
value from the object (w/o requiring the obj to be mapped to the GPU).

Suggested by Chris.

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c | 75 ++++++++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_object.h |  2 +
 2 files changed, 77 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 00d24000b5e8..010f8d735e40 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -32,6 +32,7 @@
 #include "i915_gem_mman.h"
 #include "i915_gem_object.h"
 #include "i915_globals.h"
+#include "i915_memcpy.h"
 #include "i915_trace.h"
 
 static struct i915_global_object {
@@ -383,6 +384,80 @@ void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
 	}
 }
 
+static void
+i915_gem_object_read_from_page_kmap(struct drm_i915_gem_object *obj, unsigned long offset, int size, void *dst)
+{
+	const void *src_map;
+	const void *src_ptr;
+
+	src_map = kmap_atomic(i915_gem_object_get_page(obj, offset >> PAGE_SHIFT));
+
+	src_ptr = src_map + offset_in_page(offset);
+	if (!(obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ))
+		drm_clflush_virt_range((void *)src_ptr, size);
+	memcpy(dst, src_ptr, size);
+
+	kunmap_atomic((void *)src_map);
+}
+
+static void
+i915_gem_object_read_from_page_iomap(struct drm_i915_gem_object *obj, unsigned long offset, int size, void *dst)
+{
+	const void __iomem *src_map;
+	const void __iomem *src_ptr;
+
+	src_map = io_mapping_map_wc(&obj->mm.region->iomap,
+				    i915_gem_object_get_dma_address(obj, offset >> PAGE_SHIFT),
+				    PAGE_SIZE);
+
+	src_ptr = src_map + offset_in_page(offset);
+	if (!i915_memcpy_from_wc(dst, src_ptr, size))
+		memcpy(dst, src_ptr, size);
+
+	io_mapping_unmap((void __iomem *)src_map);
+}
+
+/**
+ * i915_gem_object_read_from_page - read data from the page of a GEM object
+ * @obj: GEM object to read from
+ * @offset: offset within the object
+ * @size: size to read
+ * @dst: buffer to store the read data
+ *
+ * Reads data from @obj after syncing against any pending GPU writes on it.
+ * The requested region to read from can't cross a page boundary.
+ *
+ * Returns 0 on sucess, negative error code on failre.
+ */
+int i915_gem_object_read_from_page(struct drm_i915_gem_object *obj, unsigned long offset, size_t size, void *dst)
+{
+	int ret;
+
+	WARN_ON(offset + size > obj->base.size ||
+		offset_in_page(offset) + size > PAGE_SIZE);
+
+	i915_gem_object_lock(obj, NULL);
+
+	ret = i915_gem_object_wait(obj, 0, MAX_SCHEDULE_TIMEOUT);
+	if (ret)
+		goto unlock;
+
+	ret = i915_gem_object_pin_pages(obj);
+	if (ret)
+		goto unlock;
+
+	if (i915_gem_object_has_struct_page(obj))
+		i915_gem_object_read_from_page_kmap(obj, offset, size, dst);
+	else
+		i915_gem_object_read_from_page_iomap(obj, offset, size, dst);
+
+	i915_gem_object_unpin_pages(obj);
+unlock:
+	i915_gem_object_unlock(obj);
+
+	return ret;
+}
+
 void i915_gem_init__objects(struct drm_i915_private *i915)
 {
 	INIT_WORK(&i915->mm.free_work, __i915_gem_free_work);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index be14486f63a7..75223f472a2b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -540,4 +540,6 @@ i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
 		__i915_gem_object_invalidate_frontbuffer(obj, origin);
 }
 
+int i915_gem_object_read_from_page(struct drm_i915_gem_object *obj, unsigned long offset, size_t size, void *dst);
+
 #endif
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
