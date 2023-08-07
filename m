Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6835D7723BA
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Aug 2023 14:21:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DF5489C49;
	Mon,  7 Aug 2023 12:20:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E59E10E2C0
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Aug 2023 12:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691410851; x=1722946851;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y3JNqsFRRxE7B27pPX1llSV8Rpq1VlD7qWHNIUQWxe8=;
 b=YMOhDXAa2joVxnHgwJbjDv7Bx0ZP+vTlD4x0kXgSOgWuLez5u6wBDIjY
 iY+gjWOgQsjSpFMfVIfFwBgs27TNnQBypHLAhJKVykzkQCPDpjgkrjN+j
 +F7jeQNlHJ/A+OCy4T0Jf6FdbYcpAM/fIH59RYdX3Gwa3dYUYUnjOZcGk
 Rqu0+PbWZRAvVe/acyamYqhK5NPp2jmy9X0llfuYKZP3ISkRHir81m+kC
 RT7uA0skLy5lw0QgOO/QBcjWI8rSMb8bkanhb60oYC6kf5LOIOAumHxiA
 T5irlB8FGRPjNAY4tLFHtrqcEDvoeqlJ3kIARwScKobjVOqG2s9JH1/jA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="374205386"
X-IronPort-AV: E=Sophos;i="6.01,261,1684825200"; d="scan'208";a="374205386"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 05:20:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="680786584"
X-IronPort-AV: E=Sophos;i="6.01,261,1684825200"; d="scan'208";a="680786584"
Received: from tleistix-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.252.48.195])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 05:20:21 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Date: Mon,  7 Aug 2023 14:19:56 +0200
Message-Id: <20230807121957.598420-3-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230807121957.598420-1-andi.shyti@linux.intel.com>
References: <20230807121957.598420-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 2/3] drm/i915: Make i915_coherent_map_type
 GT-centric
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Jonathan Cavitt <jonathan.cavitt@intel.com>

Refactor i915_coherent_map_type to be GT-centric rather than
device-centric.  Each GT may require different coherency
handling due to hardware workarounds.

Since the function now takes a GT instead of the i915, the function is
renamed and moved to the gt folder.

Suggested-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Acked-by: Fei Yang <fei.yang@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20230801153242.2445478-3-jonathan.cavitt@intel.com
---
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c     |  3 ++-
 drivers/gpu/drm/i915/gem/i915_gem_object.h        |  4 ----
 drivers/gpu/drm/i915/gem/i915_gem_pages.c         | 15 ---------------
 .../gpu/drm/i915/gem/selftests/i915_gem_migrate.c | 12 ++++++------
 drivers/gpu/drm/i915/gt/intel_engine_pm.c         |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c                | 15 +++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt.h                |  4 ++++
 drivers/gpu/drm/i915/gt/intel_gtt.c               |  4 ++--
 drivers/gpu/drm/i915/gt/intel_lrc.c               |  6 +++---
 drivers/gpu/drm/i915/gt/intel_ring.c              |  3 ++-
 drivers/gpu/drm/i915/gt/selftest_context.c        |  5 +++--
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c      |  4 ++--
 drivers/gpu/drm/i915/gt/selftest_lrc.c            |  6 +++---
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c         |  3 +--
 drivers/gpu/drm/i915/gt/uc/intel_guc.c            |  4 ++--
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c         |  3 +--
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c          |  3 ++-
 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c        |  3 ++-
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c          |  5 ++++-
 drivers/gpu/drm/i915/selftests/igt_spinner.c      |  2 +-
 20 files changed, 56 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index ad0405375881a..d753db3eef155 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -6,6 +6,7 @@
 #include <drm/i915_hdcp_interface.h>
 
 #include "gem/i915_gem_region.h"
+#include "gt/intel_gt.h"
 #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
 #include "i915_drv.h"
 #include "i915_utils.h"
@@ -632,7 +633,7 @@ static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
 		return PTR_ERR(obj);
 	}
 
-	cmd_in = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(i915, obj, true));
+	cmd_in = i915_gem_object_pin_map_unlocked(obj, intel_gt_coherent_map_type(gt, obj, true));
 	if (IS_ERR(cmd_in)) {
 		drm_err(&i915->drm, "Failed to map gsc message page!\n");
 		err = PTR_ERR(cmd_in);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 112c130cfaaa8..f607b87890ddd 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -716,10 +716,6 @@ void *__must_check i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
 void *__must_check i915_gem_object_pin_map_unlocked(struct drm_i915_gem_object *obj,
 						    enum i915_map_type type);
 
-enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
-					  struct drm_i915_gem_object *obj,
-					  bool always_coherent);
-
 void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
 				 unsigned long offset,
 				 unsigned long size);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index eae40e8f52ed8..6b6d22c194110 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -468,21 +468,6 @@ void *i915_gem_object_pin_map_unlocked(struct drm_i915_gem_object *obj,
 	return ret;
 }
 
-enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
-					  struct drm_i915_gem_object *obj,
-					  bool always_coherent)
-{
-	/*
-	 * Wa_22016122933: always return I915_MAP_WC for MTL
-	 */
-	if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(i915))
-		return I915_MAP_WC;
-	if (HAS_LLC(i915) || always_coherent)
-		return I915_MAP_WB;
-	else
-		return I915_MAP_WC;
-}
-
 void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
 				 unsigned long offset,
 				 unsigned long size)
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
index a93a90b15907b..d8f4a10d71deb 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
@@ -13,12 +13,12 @@
 #include "selftests/igt_spinner.h"
 
 static int igt_fill_check_buffer(struct drm_i915_gem_object *obj,
+				 struct intel_gt *gt,
 				 bool fill)
 {
-	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	unsigned int i, count = obj->base.size / sizeof(u32);
 	enum i915_map_type map_type =
-		i915_coherent_map_type(i915, obj, false);
+		intel_gt_coherent_map_type(gt, obj, false);
 	u32 *cur;
 	int err = 0;
 
@@ -66,7 +66,7 @@ static int igt_create_migrate(struct intel_gt *gt, enum intel_region_id src,
 		if (err)
 			continue;
 
-		err = igt_fill_check_buffer(obj, true);
+		err = igt_fill_check_buffer(obj, gt, true);
 		if (err)
 			continue;
 
@@ -86,7 +86,7 @@ static int igt_create_migrate(struct intel_gt *gt, enum intel_region_id src,
 		if (err)
 			continue;
 
-		err = igt_fill_check_buffer(obj, false);
+		err = igt_fill_check_buffer(obj, gt, false);
 	}
 	i915_gem_object_put(obj);
 
@@ -233,7 +233,7 @@ static int __igt_lmem_pages_migrate(struct intel_gt *gt,
 			continue;
 
 		if (!vma) {
-			err = igt_fill_check_buffer(obj, true);
+			err = igt_fill_check_buffer(obj, gt, true);
 			if (err)
 				continue;
 		}
@@ -276,7 +276,7 @@ static int __igt_lmem_pages_migrate(struct intel_gt *gt,
 		if (err)
 			goto out_unlock;
 	} else {
-		err = igt_fill_check_buffer(obj, false);
+		err = igt_fill_check_buffer(obj, gt, false);
 	}
 
 out_unlock:
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index 21af0ec522234..b538b5c04948f 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -39,7 +39,7 @@ static void dbg_poison_ce(struct intel_context *ce)
 
 	if (ce->state) {
 		struct drm_i915_gem_object *obj = ce->state->obj;
-		int type = i915_coherent_map_type(ce->engine->i915, obj, true);
+		int type = intel_gt_coherent_map_type(ce->engine->gt, obj, true);
 		void *map;
 
 		if (!i915_gem_object_trylock(obj, NULL))
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 18177a8e4aadd..91829f1f07064 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -1003,3 +1003,18 @@ void intel_gt_info_print(const struct intel_gt_info *info,
 
 	intel_sseu_dump(&info->sseu, p);
 }
+
+enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
+					      struct drm_i915_gem_object *obj,
+					      bool always_coherent)
+{
+	/*
+	 * Wa_22016122933: always return I915_MAP_WC for MTL
+	 */
+	if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(gt->i915))
+		return I915_MAP_WC;
+	if (HAS_LLC(gt->i915) || always_coherent)
+		return I915_MAP_WB;
+	else
+		return I915_MAP_WC;
+}
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 6549e28fa219e..2fea789d6aa13 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -107,4 +107,8 @@ void intel_gt_info_print(const struct intel_gt_info *info,
 
 void intel_gt_watchdog_work(struct work_struct *work);
 
+enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
+					      struct drm_i915_gem_object *obj,
+					      bool always_coherent);
+
 #endif /* __INTEL_GT_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 731d9f2bbc564..13944a14ea2d1 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -89,7 +89,7 @@ int map_pt_dma(struct i915_address_space *vm, struct drm_i915_gem_object *obj)
 	enum i915_map_type type;
 	void *vaddr;
 
-	type = i915_coherent_map_type(vm->i915, obj, true);
+	type = intel_gt_coherent_map_type(vm->gt, obj, true);
 	vaddr = i915_gem_object_pin_map_unlocked(obj, type);
 	if (IS_ERR(vaddr))
 		return PTR_ERR(vaddr);
@@ -103,7 +103,7 @@ int map_pt_dma_locked(struct i915_address_space *vm, struct drm_i915_gem_object
 	enum i915_map_type type;
 	void *vaddr;
 
-	type = i915_coherent_map_type(vm->i915, obj, true);
+	type = intel_gt_coherent_map_type(vm->gt, obj, true);
 	vaddr = i915_gem_object_pin_map(obj, type);
 	if (IS_ERR(vaddr))
 		return PTR_ERR(vaddr);
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 119deb9f938c7..339b02762bf91 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1191,9 +1191,9 @@ lrc_pre_pin(struct intel_context *ce,
 	GEM_BUG_ON(!i915_vma_is_pinned(ce->state));
 
 	*vaddr = i915_gem_object_pin_map(ce->state->obj,
-					 i915_coherent_map_type(ce->engine->i915,
-								ce->state->obj,
-								false) |
+					 intel_gt_coherent_map_type(ce->engine->gt,
+								    ce->state->obj,
+								    false) |
 					 I915_MAP_OVERRIDE);
 
 	return PTR_ERR_OR_ZERO(*vaddr);
diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
index fb99143be98e7..59da4b7bd2620 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring.c
@@ -13,6 +13,7 @@
 #include "intel_engine_regs.h"
 #include "intel_gpu_commands.h"
 #include "intel_ring.h"
+#include "intel_gt.h"
 #include "intel_timeline.h"
 
 unsigned int intel_ring_update_space(struct intel_ring *ring)
@@ -56,7 +57,7 @@ int intel_ring_pin(struct intel_ring *ring, struct i915_gem_ww_ctx *ww)
 	if (i915_vma_is_map_and_fenceable(vma) && !HAS_LLC(vma->vm->i915)) {
 		addr = (void __force *)i915_vma_pin_iomap(vma);
 	} else {
-		int type = i915_coherent_map_type(vma->vm->i915, vma->obj, false);
+		int type = intel_gt_coherent_map_type(vma->vm->gt, vma->obj, false);
 
 		addr = i915_gem_object_pin_map(vma->obj, type);
 	}
diff --git a/drivers/gpu/drm/i915/gt/selftest_context.c b/drivers/gpu/drm/i915/gt/selftest_context.c
index 76fbae358072d..47070cba7eb14 100644
--- a/drivers/gpu/drm/i915/gt/selftest_context.c
+++ b/drivers/gpu/drm/i915/gt/selftest_context.c
@@ -88,8 +88,9 @@ static int __live_context_size(struct intel_engine_cs *engine)
 		goto err;
 
 	vaddr = i915_gem_object_pin_map_unlocked(ce->state->obj,
-						 i915_coherent_map_type(engine->i915,
-									ce->state->obj, false));
+						 intel_gt_coherent_map_type(engine->gt,
+									    ce->state->obj,
+									    false));
 	if (IS_ERR(vaddr)) {
 		err = PTR_ERR(vaddr);
 		intel_context_unpin(ce);
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 8b0d84f2aad22..0dd4d00ee894e 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -73,7 +73,7 @@ static int hang_init(struct hang *h, struct intel_gt *gt)
 	h->seqno = memset(vaddr, 0xff, PAGE_SIZE);
 
 	vaddr = i915_gem_object_pin_map_unlocked(h->obj,
-						 i915_coherent_map_type(gt->i915, h->obj, false));
+						 intel_gt_coherent_map_type(gt, h->obj, false));
 	if (IS_ERR(vaddr)) {
 		err = PTR_ERR(vaddr);
 		goto err_unpin_hws;
@@ -119,7 +119,7 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
 		return ERR_CAST(obj);
 	}
 
-	vaddr = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(gt->i915, obj, false));
+	vaddr = i915_gem_object_pin_map_unlocked(obj, intel_gt_coherent_map_type(gt, obj, false));
 	if (IS_ERR(vaddr)) {
 		i915_gem_object_put(obj);
 		i915_vm_put(vm);
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index a78a3d2c2e16e..5f826b6dcf5d6 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -1292,9 +1292,9 @@ static int compare_isolation(struct intel_engine_cs *engine,
 	}
 
 	lrc = i915_gem_object_pin_map_unlocked(ce->state->obj,
-					       i915_coherent_map_type(engine->i915,
-								      ce->state->obj,
-								      false));
+					       intel_gt_coherent_map_type(engine->gt,
+									  ce->state->obj,
+									  false));
 	if (IS_ERR(lrc)) {
 		err = PTR_ERR(lrc);
 		goto err_B1;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
index 1630217052108..f5381c1eb7794 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
@@ -282,7 +282,6 @@ static int gsc_fw_load(struct intel_gsc_uc *gsc)
 static int gsc_fw_load_prepare(struct intel_gsc_uc *gsc)
 {
 	struct intel_gt *gt = gsc_uc_to_gt(gsc);
-	struct drm_i915_private *i915 = gt->i915;
 	void *src;
 
 	if (!gsc->local)
@@ -292,7 +291,7 @@ static int gsc_fw_load_prepare(struct intel_gsc_uc *gsc)
 		return -ENOSPC;
 
 	src = i915_gem_object_pin_map_unlocked(gsc->fw.obj,
-					       i915_coherent_map_type(i915, gsc->fw.obj, true));
+					       intel_gt_coherent_map_type(gt, gsc->fw.obj, true));
 	if (IS_ERR(src))
 		return PTR_ERR(src);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 2eb891b270aec..6c072f100c9b6 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -792,8 +792,8 @@ int intel_guc_allocate_and_map_vma(struct intel_guc *guc, u32 size,
 		return PTR_ERR(vma);
 
 	vaddr = i915_gem_object_pin_map_unlocked(vma->obj,
-						 i915_coherent_map_type(guc_to_gt(guc)->i915,
-									vma->obj, true));
+						 intel_gt_coherent_map_type(guc_to_gt(guc),
+									    vma->obj, true));
 	if (IS_ERR(vaddr)) {
 		i915_vma_unpin_and_release(&vma, 0);
 		return PTR_ERR(vaddr);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
index 48f506a26e6d5..b648238cc6757 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
@@ -27,7 +27,6 @@ struct mtl_huc_auth_msg_out {
 int intel_huc_fw_auth_via_gsccs(struct intel_huc *huc)
 {
 	struct intel_gt *gt = huc_to_gt(huc);
-	struct drm_i915_private *i915 = gt->i915;
 	struct drm_i915_gem_object *obj;
 	struct mtl_huc_auth_msg_in *msg_in;
 	struct mtl_huc_auth_msg_out *msg_out;
@@ -43,7 +42,7 @@ int intel_huc_fw_auth_via_gsccs(struct intel_huc *huc)
 	pkt_offset = i915_ggtt_offset(huc->heci_pkt);
 
 	pkt_vaddr = i915_gem_object_pin_map_unlocked(obj,
-						     i915_coherent_map_type(i915, obj, true));
+						     intel_gt_coherent_map_type(gt, obj, true));
 	if (IS_ERR(pkt_vaddr))
 		return PTR_ERR(pkt_vaddr);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 3621963df6b5a..9e833f499ac7f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -11,6 +11,7 @@
 #include <drm/drm_print.h>
 
 #include "gem/i915_gem_lmem.h"
+#include "gt/intel_gt.h"
 #include "gt/intel_gt_print.h"
 #include "intel_gsc_binary_headers.h"
 #include "intel_gsc_fw.h"
@@ -1197,7 +1198,7 @@ static int uc_fw_rsa_data_create(struct intel_uc_fw *uc_fw)
 		return PTR_ERR(vma);
 
 	vaddr = i915_gem_object_pin_map_unlocked(vma->obj,
-						 i915_coherent_map_type(gt->i915, vma->obj, true));
+						 intel_gt_coherent_map_type(gt, vma->obj, true));
 	if (IS_ERR(vaddr)) {
 		i915_vma_unpin_and_release(&vma, 0);
 		err = PTR_ERR(vaddr);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
index c7df473640135..2a600184a0771 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
@@ -6,6 +6,7 @@
 #include "gem/i915_gem_internal.h"
 
 #include "gt/intel_context.h"
+#include "gt/intel_gt.h"
 #include "gt/uc/intel_gsc_fw.h"
 #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
 
@@ -336,7 +337,7 @@ gsccs_create_buffer(struct intel_gt *gt,
 	}
 
 	/* return a virtual pointer */
-	*map = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(i915, obj, true));
+	*map = i915_gem_object_pin_map_unlocked(obj, intel_gt_coherent_map_type(gt, obj, true));
 	if (IS_ERR(*map)) {
 		drm_err(&i915->drm, "Failed to map gsccs backend %s.\n", bufname);
 		err = PTR_ERR(*map);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 1ce07d7e87690..80bb001898652 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -11,6 +11,7 @@
 #include "gem/i915_gem_lmem.h"
 
 #include "i915_drv.h"
+#include "gt/intel_gt.h"
 
 #include "intel_pxp.h"
 #include "intel_pxp_cmd_interface_42.h"
@@ -245,7 +246,9 @@ static int alloc_streaming_command(struct intel_pxp *pxp)
 	}
 
 	/* map the lmem into the virtual memory pointer */
-	cmd = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(i915, obj, true));
+	cmd = i915_gem_object_pin_map_unlocked(obj,
+					       intel_gt_coherent_map_type(pxp->ctrl_gt,
+									  obj, true));
 	if (IS_ERR(cmd)) {
 		drm_err(&i915->drm, "Failed to map gsc message page!\n");
 		err = PTR_ERR(cmd);
diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
index 3c5e0952f1b81..0f064930ef116 100644
--- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
+++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
@@ -97,7 +97,7 @@ int igt_spinner_pin(struct igt_spinner *spin,
 	if (!spin->batch) {
 		unsigned int mode;
 
-		mode = i915_coherent_map_type(spin->gt->i915, spin->obj, false);
+		mode = intel_gt_coherent_map_type(spin->gt, spin->obj, false);
 		vaddr = igt_spinner_pin_obj(ce, ww, spin->obj, mode, &spin->batch_vma);
 		if (IS_ERR(vaddr))
 			return PTR_ERR(vaddr);
-- 
2.40.1

