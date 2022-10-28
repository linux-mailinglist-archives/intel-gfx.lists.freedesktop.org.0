Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77106611650
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 17:50:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40FBA10E85E;
	Fri, 28 Oct 2022 15:50:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5928710E85E
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 15:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666972246; x=1698508246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SV5VqPEBIWnfR52V7Y0jZ3QEZf6aTtvgBOt8Q3llYzM=;
 b=H9mvibm23LUj7X5R+BuSXc3ry7AwhgaLnsPEfwONAoUYRhc+XCKBvJyb
 b74/hpsmBAe4QPV7CHoTVxTNSelOSziJLQNIRKtxvBBiTVuheIxZ/NIr8
 a/DAg96yG91tCvup//1uOrn04vkHB+/MM75pwAhtTFdqMxVerTqzhY/e1
 DYGkFolivSHe2TRWDMBSkYZzzWCzWKZqFNwUr6F5XPAzvfK2nrkjMXK9w
 4JdAJsMFKzXxW5eIpzvI0igVzuL2ntImlWrc3AQmfLqQwKk5veoZiUb2e
 9t870ETdyRVxwyPoAIBr3JFQH8/w8xRQg5dhEndSxoXGCzjVRjJyd0mGU Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="288237674"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="288237674"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 08:50:46 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="758120032"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="758120032"
Received: from ahamill-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.29.35])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 08:50:44 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Oct 2022 16:50:27 +0100
Message-Id: <20221028155029.494736-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221028155029.494736-1-matthew.auld@intel.com>
References: <20221028155029.494736-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915/selftests: exercise GPU access
 from the importer
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Using PAGE_SIZE here potentially hides issues so bump that to something
larger. This should also make it possible for iommu to coalesce entries
for us. With that in place verify we can write from the GPU using the
importers sg_table, followed by checking that our writes match when read
from the CPU side.

v2: Switch over to igt_gpu_fill_dw(), which looks to be more widely
supported than the migrate stuff (at least OOTB).

References: https://gitlab.freedesktop.org/drm/intel/-/issues/7306
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Michael J. Ruhl <michael.j.ruhl@intel.com>
---
 .../drm/i915/gem/selftests/i915_gem_dmabuf.c  | 79 ++++++++++++++++++-
 1 file changed, 78 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
index f2f3cfad807b..e57f9390076c 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
@@ -6,8 +6,12 @@
 
 #include "i915_drv.h"
 #include "i915_selftest.h"
+#include "gem/i915_gem_context.h"
 
+#include "mock_context.h"
 #include "mock_dmabuf.h"
+#include "igt_gem_utils.h"
+#include "selftests/mock_drm.h"
 #include "selftests/mock_gem_device.h"
 
 static int igt_dmabuf_export(void *arg)
@@ -140,6 +144,75 @@ static int igt_dmabuf_import_same_driver_lmem(void *arg)
 	return err;
 }
 
+static int verify_access(struct drm_i915_private *i915,
+			 struct drm_i915_gem_object *native_obj,
+			 struct drm_i915_gem_object *import_obj)
+{
+	struct i915_gem_engines_iter it;
+	struct i915_gem_context *ctx;
+	struct intel_context *ce;
+	struct i915_vma *vma;
+	struct file *file;
+	u32 *vaddr;
+	int err = 0, i;
+
+	file = mock_file(i915);
+	if (IS_ERR(file))
+		return PTR_ERR(file);
+
+	ctx = live_context(i915, file);
+	if (IS_ERR(ctx)) {
+		err = PTR_ERR(ctx);
+		goto out_file;
+	}
+
+	for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
+		if (intel_engine_can_store_dword(ce->engine))
+			break;
+	}
+	i915_gem_context_unlock_engines(ctx);
+	if (!ce)
+		goto out_file;
+
+	vma = i915_vma_instance(import_obj, ce->vm, NULL);
+	if (IS_ERR(vma)) {
+		err = PTR_ERR(vma);
+		goto out_file;
+	}
+
+	err = i915_vma_pin(vma, 0, 0, PIN_USER);
+	if (err)
+		goto out_file;
+
+	err = igt_gpu_fill_dw(ce, vma, 0,
+			      vma->size >> PAGE_SHIFT, 0xdeadbeaf);
+	i915_vma_unpin(vma);
+	if (err)
+		goto out_file;
+
+	err = i915_gem_object_wait(import_obj, 0, MAX_SCHEDULE_TIMEOUT);
+	if (err)
+		goto out_file;
+
+	vaddr = i915_gem_object_pin_map_unlocked(native_obj, I915_MAP_WB);
+	if (IS_ERR(vaddr)) {
+		err = PTR_ERR(vaddr);
+		goto out_file;
+	}
+
+	for (i = 0; i < native_obj->base.size / sizeof(u32); i += PAGE_SIZE / sizeof(u32)) {
+		if (vaddr[i] != 0xdeadbeaf) {
+			pr_err("Data mismatch [%d]=%u\n", i, vaddr[i]);
+			err = -EINVAL;
+			goto out_file;
+		}
+	}
+
+out_file:
+	fput(file);
+	return err;
+}
+
 static int igt_dmabuf_import_same_driver(struct drm_i915_private *i915,
 					 struct intel_memory_region **regions,
 					 unsigned int num_regions)
@@ -154,7 +227,7 @@ static int igt_dmabuf_import_same_driver(struct drm_i915_private *i915,
 
 	force_different_devices = true;
 
-	obj = __i915_gem_object_create_user(i915, PAGE_SIZE,
+	obj = __i915_gem_object_create_user(i915, SZ_8M,
 					    regions, num_regions);
 	if (IS_ERR(obj)) {
 		pr_err("__i915_gem_object_create_user failed with err=%ld\n",
@@ -206,6 +279,10 @@ static int igt_dmabuf_import_same_driver(struct drm_i915_private *i915,
 
 	i915_gem_object_unlock(import_obj);
 
+	err = verify_access(i915, obj, import_obj);
+	if (err)
+		goto out_import;
+
 	/* Now try a fake an importer */
 	import_attach = dma_buf_attach(dmabuf, obj->base.dev->dev);
 	if (IS_ERR(import_attach)) {
-- 
2.37.3

