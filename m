Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69867313B2C
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 18:42:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B40E56E5A5;
	Mon,  8 Feb 2021 17:42:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63A1E6E5A5
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 17:42:36 +0000 (UTC)
IronPort-SDR: 4AYVb/E0cYIve7EWbnt5tgV1SORqAACWZ9gWxv2p/eKLuA1y6JK05szVQZ0FM/YK21+rDcQlLc
 uG+TKs1aev2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="200812681"
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="200812681"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 09:42:35 -0800
IronPort-SDR: V4aK2utIemwYkPLC0OQusAR72eO84CMh7e3yeEP6adNTrHQ4waYOaVREHvgq0FSjz+btc++GIs
 hCogAgTweUJA==
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="377858756"
Received: from jjcunnix-mobl2.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.0.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 09:42:34 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Feb 2021 17:42:16 +0000
Message-Id: <20210208174217.140790-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: rework gem_create flow for
 upcoming extensions
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With the upcoming gem_create_ext we want to be able create a "vanilla"
object upfront and pass that directly to the extensions, before actually
initialising the object. Functionally this should be the same expect we
now feed the object into the lower-level region specific init_object.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_create.c | 93 +++++++++++++++-------
 1 file changed, 66 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index 45d60e3d98e3..6eee4b8bd0c2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -7,41 +7,52 @@
 #include "gem/i915_gem_region.h"
 
 #include "i915_drv.h"
+#include "i915_trace.h"
 
-static int
-i915_gem_create(struct drm_file *file,
-		struct intel_memory_region *mr,
-		u64 *size_p,
-		u32 *handle_p)
+static int i915_gem_publish(struct drm_i915_gem_object *obj,
+			    struct drm_file *file,
+			    u64 *size_p,
+			    u32 *handle_p)
 {
-	struct drm_i915_gem_object *obj;
 	u32 handle;
-	u64 size;
+	int ret;
+
+	ret = drm_gem_handle_create(file, &obj->base, &handle);
+	/* drop reference from allocate - handle holds it now */
+	i915_gem_object_put(obj);
+	if (ret)
+		return ret;
+
+	*handle_p = handle;
+	*size_p = obj->base.size;
+	return 0;
+}
+
+static int
+i915_gem_setup(struct drm_i915_gem_object *obj,
+	       struct intel_memory_region *mr,
+	       u64 size)
+{
 	int ret;
 
 	GEM_BUG_ON(!is_power_of_2(mr->min_page_size));
-	size = round_up(*size_p, mr->min_page_size);
+	size = round_up(size, mr->min_page_size);
 	if (size == 0)
 		return -EINVAL;
 
 	/* For most of the ABI (e.g. mmap) we think in system pages */
 	GEM_BUG_ON(!IS_ALIGNED(size, PAGE_SIZE));
 
-	/* Allocate the new object */
-	obj = i915_gem_object_create_region(mr, size, 0);
-	if (IS_ERR(obj))
-		return PTR_ERR(obj);
-
-	GEM_BUG_ON(size != obj->base.size);
+	if (i915_gem_object_size_2big(size))
+		return -E2BIG;
 
-	ret = drm_gem_handle_create(file, &obj->base, &handle);
-	/* drop reference from allocate - handle holds it now */
-	i915_gem_object_put(obj);
+	ret = mr->ops->init_object(mr, obj, size, 0);
 	if (ret)
 		return ret;
 
-	*handle_p = handle;
-	*size_p = size;
+	GEM_BUG_ON(size != obj->base.size);
+
+	trace_i915_gem_object_create(obj);
 	return 0;
 }
 
@@ -50,9 +61,11 @@ i915_gem_dumb_create(struct drm_file *file,
 		     struct drm_device *dev,
 		     struct drm_mode_create_dumb *args)
 {
+	struct drm_i915_gem_object *obj;
 	enum intel_memory_type mem_type;
 	int cpp = DIV_ROUND_UP(args->bpp, 8);
 	u32 format;
+	int ret;
 
 	switch (cpp) {
 	case 1:
@@ -85,10 +98,22 @@ i915_gem_dumb_create(struct drm_file *file,
 	if (HAS_LMEM(to_i915(dev)))
 		mem_type = INTEL_MEMORY_LOCAL;
 
-	return i915_gem_create(file,
-			       intel_memory_region_by_type(to_i915(dev),
-							   mem_type),
-			       &args->size, &args->handle);
+	obj = i915_gem_object_alloc();
+	if (!obj)
+		return -ENOMEM;
+
+	ret = i915_gem_setup(obj,
+			     intel_memory_region_by_type(to_i915(dev),
+							      mem_type),
+			     args->size);
+	if (ret)
+		goto object_free;
+
+	return i915_gem_publish(obj, file, &args->size, &args->handle);
+
+object_free:
+	i915_gem_object_free(obj);
+	return ret;
 }
 
 /**
@@ -103,11 +128,25 @@ i915_gem_create_ioctl(struct drm_device *dev, void *data,
 {
 	struct drm_i915_private *i915 = to_i915(dev);
 	struct drm_i915_gem_create *args = data;
+	struct drm_i915_gem_object *obj;
+	int ret;
 
 	i915_gem_flush_free_objects(i915);
 
-	return i915_gem_create(file,
-			       intel_memory_region_by_type(i915,
-							   INTEL_MEMORY_SYSTEM),
-			       &args->size, &args->handle);
+	obj = i915_gem_object_alloc();
+	if (!obj)
+		return -ENOMEM;
+
+	ret = i915_gem_setup(obj,
+			     intel_memory_region_by_type(i915,
+							 INTEL_MEMORY_SYSTEM),
+			     args->size);
+	if (ret)
+		goto object_free;
+
+	return i915_gem_publish(obj, file, &args->size, &args->handle);
+
+object_free:
+	i915_gem_object_free(obj);
+	return ret;
 }
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
