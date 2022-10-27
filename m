Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5C460FBEA
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 17:29:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9670810E67B;
	Thu, 27 Oct 2022 15:29:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F6A110E67A
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 15:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666884537; x=1698420537;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cz2gDUukO6ToJ1XoiTg5aYQeQvm/OGadX/LIVDB9H8U=;
 b=asvSpwzEBSffFtW4/ub4FDiO1/jGf57duHft8SRkxKXPiIhP/2Zg6yBv
 k8koia0nC5YEWtbeeKizceLy05MM/53TpI9nu57W2wgWdQbPTakFCldJ8
 ODu2Wr3xu6nqh5fN3Fj5TIPBiKm/SEj+ZHiXtYLyR2T7CrQeRyquuSM3b
 azKBd++/4MoeqYf1dB0Dxh6lCfAgwuzJ6PQDxSVY5s9wTWLxTr/vdrswK
 6qU1WZSNoUFdAw/30GtdPVYtk1sQBhp2QNurY9CP2X3kt4TsT7XBuuNp+
 c26ObVOa/O67zLNo7BPS9sVpoWfWZHq2u9Y7VVk9HwR3Zt9rClYyRlsWT Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="288651674"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="288651674"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 08:28:56 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="961662745"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="961662745"
Received: from jpascuax-mobl3.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.28.212])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 08:28:55 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Oct 2022 16:27:23 +0100
Message-Id: <20221027152723.381060-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221027152723.381060-1-matthew.auld@intel.com>
References: <20221027152723.381060-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: exercise GPU access
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

References: https://gitlab.freedesktop.org/drm/intel/-/issues/7306
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/gem/selftests/i915_gem_dmabuf.c  | 37 ++++++++++++++++++-
 1 file changed, 35 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
index f2f3cfad807b..e55b255f69f8 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
@@ -6,6 +6,7 @@
 
 #include "i915_drv.h"
 #include "i915_selftest.h"
+#include "gt/intel_migrate.h"
 
 #include "mock_dmabuf.h"
 #include "selftests/mock_gem_device.h"
@@ -148,13 +149,15 @@ static int igt_dmabuf_import_same_driver(struct drm_i915_private *i915,
 	struct drm_gem_object *import;
 	struct dma_buf *dmabuf;
 	struct dma_buf_attachment *import_attach;
+	struct i915_request *rq;
 	struct sg_table *st;
+	u32 *vaddr;
 	long timeout;
-	int err;
+	int err, i;
 
 	force_different_devices = true;
 
-	obj = __i915_gem_object_create_user(i915, PAGE_SIZE,
+	obj = __i915_gem_object_create_user(i915, SZ_8M,
 					    regions, num_regions);
 	if (IS_ERR(obj)) {
 		pr_err("__i915_gem_object_create_user failed with err=%ld\n",
@@ -194,6 +197,19 @@ static int igt_dmabuf_import_same_driver(struct drm_i915_private *i915,
 		goto out_import;
 	}
 
+	err = intel_context_migrate_clear(to_gt(i915)->migrate.context, NULL,
+					  import_obj->mm.pages->sgl,
+					  import_obj->cache_level,
+					  false,
+					  0xdeadbeaf, &rq);
+	if (rq) {
+		err = dma_resv_reserve_fences(obj->base.resv, 1);
+		if (!err)
+			dma_resv_add_fence(obj->base.resv, &rq->fence,
+					   DMA_RESV_USAGE_KERNEL);
+		i915_request_put(rq);
+	}
+
 	/*
 	 * If the exported object is not in system memory, something
 	 * weird is going on. TODO: When p2p is supported, this is no
@@ -206,6 +222,23 @@ static int igt_dmabuf_import_same_driver(struct drm_i915_private *i915,
 
 	i915_gem_object_unlock(import_obj);
 
+	if (err)
+		goto out_import;
+
+	vaddr = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WB);
+	if (IS_ERR(vaddr)) {
+		err = PTR_ERR(vaddr);
+		goto out_import;
+	}
+
+	for (i = 0; i < obj->base.size / sizeof(u32); i++) {
+		if (vaddr[i] != 0xdeadbeaf) {
+			pr_err("Data mismatch [%d]=%u\n", i, vaddr[i]);
+			err = -EINVAL;
+			goto out_import;
+		}
+	}
+
 	/* Now try a fake an importer */
 	import_attach = dma_buf_attach(dmabuf, obj->base.dev->dev);
 	if (IS_ERR(import_attach)) {
-- 
2.37.3

