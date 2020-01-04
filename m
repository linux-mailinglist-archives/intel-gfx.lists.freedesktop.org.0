Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 419A11303FA
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Jan 2020 20:10:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 114446E03E;
	Sat,  4 Jan 2020 19:10:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D3476E048
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 Jan 2020 19:10:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19771054-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 04 Jan 2020 19:10:44 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  4 Jan 2020 19:10:43 +0000
Message-Id: <20200104191043.2207314-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
In-Reply-To: <20200104191043.2207314-1-chris@chris-wilson.co.uk>
References: <20200104191043.2207314-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915: Create dumb buffer from LMEM
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

From: Ramalingam C <ramalingam.c@intel.com>

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
 drivers/gpu/drm/i915/i915_gem.c | 25 ++++++++++++++++++++-----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index a3d701b50a6b..0f9162beffba 100644
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
@@ -200,7 +201,7 @@ i915_gem_phys_pwrite(struct drm_i915_gem_object *obj,
 
 static int
 i915_gem_create(struct drm_file *file,
-		struct drm_i915_private *dev_priv,
+		struct intel_memory_region *mr,
 		u64 *size_p,
 		u32 *handle_p)
 {
@@ -209,12 +210,16 @@ i915_gem_create(struct drm_file *file,
 	u64 size;
 	int ret;
 
-	size = round_up(*size_p, PAGE_SIZE);
+	GEM_BUG_ON(!is_power_of_2(mr->min_page_size));
+	size = round_up(*size_p, mr->min_page_size);
 	if (size == 0)
 		return -EINVAL;
 
+	/* For most of the ABI (e.g. mmap) we think in system pages */
+	GEM_BUG_ON(!IS_ALIGNED(size, PAGE_SIZE));
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
+	enum intel_memory_type mem_type;
 	int cpp = DIV_ROUND_UP(args->bpp, 8);
 	u32 format;
 
@@ -260,7 +266,14 @@ i915_gem_dumb_create(struct drm_file *file,
 		args->pitch = ALIGN(args->pitch, 4096);
 
 	args->size = args->pitch * args->height;
-	return i915_gem_create(file, to_i915(dev),
+
+	mem_type = INTEL_MEMORY_SYSTEM;
+	if (HAS_LMEM(to_i915(dev)))
+		mem_type = INTEL_MEMORY_LOCAL;
+
+	return i915_gem_create(file,
+			       intel_memory_region_by_type(to_i915(dev),
+							   mem_type),
 			       &args->size, &args->handle);
 }
 
@@ -279,7 +292,9 @@ i915_gem_create_ioctl(struct drm_device *dev, void *data,
 
 	i915_gem_flush_free_objects(dev_priv);
 
-	return i915_gem_create(file, dev_priv,
+	return i915_gem_create(file,
+			       intel_memory_region_by_type(to_i915(dev),
+							   INTEL_MEMORY_SYSTEM),
 			       &args->size, &args->handle);
 }
 
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
