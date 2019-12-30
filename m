Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF59E12D03A
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 14:24:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7E0089CF5;
	Mon, 30 Dec 2019 13:24:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01A1089CF5
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 13:24:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Dec 2019 05:24:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,375,1571727600"; d="scan'208";a="251375507"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga002.fm.intel.com with ESMTP; 30 Dec 2019 05:24:31 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Date: Mon, 30 Dec 2019 18:53:50 +0530
Message-Id: <20191230132351.17487-3-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191230132351.17487-1-ramalingam.c@intel.com>
References: <20191230132351.17487-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Create dumb buffer from LMEM
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When LMEM is supported, dumb buffer preferred to be created from LMEM.

v2:
  Parameters are reshuffled. [Chris]
v3:
  s/region_id/mem_type
v4:
  use the i915_gem_object_create_region [chris]

Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/i915_gem.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 9ddcf17230e6..7f39df3fab7f 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -45,6 +45,7 @@
 #include "gem/i915_gem_context.h"
 #include "gem/i915_gem_ioctls.h"
 #include "gem/i915_gem_mman.h"
+#include "gem/i915_gem_region.h"
 #include "gt/intel_engine_user.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
@@ -201,10 +202,12 @@ i915_gem_phys_pwrite(struct drm_i915_gem_object *obj,
 static int
 i915_gem_create(struct drm_file *file,
 		struct drm_i915_private *dev_priv,
+		enum intel_memory_type mem_type,
 		u64 *size_p,
 		u32 *handle_p)
 {
 	struct drm_i915_gem_object *obj;
+	struct intel_memory_region *mr;
 	u32 handle;
 	u64 size;
 	int ret;
@@ -213,8 +216,10 @@ i915_gem_create(struct drm_file *file,
 	if (size == 0)
 		return -EINVAL;
 
+	mr = intel_memory_region_by_type(dev_priv, mem_type);
+
 	/* Allocate the new object */
-	obj = i915_gem_object_create_shmem(dev_priv, size);
+	obj = i915_gem_object_create_region(mr, size, 0);
 	if (IS_ERR(obj))
 		return PTR_ERR(obj);
 
@@ -234,6 +239,7 @@ i915_gem_dumb_create(struct drm_file *file,
 		     struct drm_device *dev,
 		     struct drm_mode_create_dumb *args)
 {
+	enum intel_memory_type mem_type = INTEL_MEMORY_SYSTEM;
 	int cpp = DIV_ROUND_UP(args->bpp, 8);
 	u32 format;
 
@@ -260,7 +266,11 @@ i915_gem_dumb_create(struct drm_file *file,
 		args->pitch = ALIGN(args->pitch, 4096);
 
 	args->size = args->pitch * args->height;
-	return i915_gem_create(file, to_i915(dev),
+
+	if (HAS_LMEM(to_i915(dev)))
+		mem_type = INTEL_MEMORY_LOCAL;
+
+	return i915_gem_create(file, to_i915(dev), mem_type,
 			       &args->size, &args->handle);
 }
 
@@ -279,7 +289,7 @@ i915_gem_create_ioctl(struct drm_device *dev, void *data,
 
 	i915_gem_flush_free_objects(dev_priv);
 
-	return i915_gem_create(file, dev_priv,
+	return i915_gem_create(file, dev_priv, INTEL_MEMORY_SYSTEM,
 			       &args->size, &args->handle);
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
