Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E48884CC73D
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 21:45:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CF0610E5FB;
	Thu,  3 Mar 2022 20:45:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFD4B10E489
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 20:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646340341; x=1677876341;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rW6rYhIOhrHfFvt7YbIdRbQLKT/psrp7P/d4RPuYK+Q=;
 b=fcwsWtSEogtoZT44zhabCG2Xv3q2xOH/fd+8LhMczhINEuuLp+4Y8FKZ
 y5pKBKzsNEqJRhuAr8IcQbrYptIyoxTr0ZecjHAvhJlercz4Bbu/NKTl9
 t+Ya8NY6Ynf/G5Y98XveHuBvvFEkR3x3CtLXv4apbsse+VGFHqsuwOWgl
 Ttc50loO8RkuVuNdWV237k6z2OyVxy3/cCt29sV+swEpMjXxFdU6O3XNu
 WQ5D2ISpwrNLPJe4bRCQSBrtbheEsJX/Jy8XnvVWfq8ielgqB2l7u4xaO
 PZshRZZwkNh/JxY7fXVF8Wt13udc4eDmxjGKi9NxAd0afEgKqgS3cUpUj Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="233767450"
X-IronPort-AV: E=Sophos;i="5.90,153,1643702400"; d="scan'208";a="233767450"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 12:45:41 -0800
X-IronPort-AV: E=Sophos;i="5.90,153,1643702400"; d="scan'208";a="710079260"
Received: from telordan-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.28.86])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 12:45:40 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Mar 2022 20:45:28 +0000
Message-Id: <20220303204528.885217-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220303204528.885217-1-matthew.auld@intel.com>
References: <20220303204528.885217-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 2/2] drm/i915/dpt: setup dummy scratch
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

We currently blow up in i915_vm_lock_objects when binding the dpt, due
to what looks like NULL scratch[0]. Likely the moving fence has not been
unset yet(even though it should have signalled), due to some previous
move. For now let's just create something which more closely resembles a
proper vm.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c | 53 ++++++++++++++++++++----
 1 file changed, 44 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 15b2716172f7..ab74ce2bce04 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -4,6 +4,7 @@
  */
 
 #include "gem/i915_gem_domain.h"
+#include "gem/i915_gem_internal.h"
 #include "gt/gen8_ppgtt.h"
 
 #include "i915_drv.h"
@@ -116,6 +117,7 @@ static void dpt_cleanup(struct i915_address_space *vm)
 {
 	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
 
+	i915_gem_object_put(vm->scratch[0]);
 	i915_gem_object_put(dpt->obj);
 }
 
@@ -230,17 +232,40 @@ void intel_dpt_suspend(struct drm_i915_private *i915)
 	mutex_unlock(&i915->drm.mode_config.fb_lock);
 }
 
+static int scratch_dummy_obj_get_pages(struct drm_i915_gem_object *obj)
+{
+	obj->mm.pages = ZERO_SIZE_PTR;
+	return 0;
+}
+
+static void scratch_dummy_obj_put_pages(struct drm_i915_gem_object *obj,
+					struct sg_table *pages)
+{
+}
+
+static const struct drm_i915_gem_object_ops scratch_dummy_obj_ops = {
+	.name = "scratch_dummy_obj",
+	.get_pages = scratch_dummy_obj_get_pages,
+	.put_pages = scratch_dummy_obj_put_pages,
+};
+
 struct i915_address_space *
 intel_dpt_create(struct intel_framebuffer *fb)
 {
 	struct drm_gem_object *obj = &intel_fb_obj(&fb->base)->base;
 	struct drm_i915_private *i915 = to_i915(obj->dev);
-	struct drm_i915_gem_object *dpt_obj;
+	struct drm_i915_gem_object *dpt_obj, *scratch;
 	struct i915_address_space *vm;
 	struct i915_dpt *dpt;
 	size_t size;
 	int ret;
 
+	scratch = __i915_gem_object_create_internal(i915,
+						    &scratch_dummy_obj_ops,
+						    SZ_4K);
+	if (IS_ERR(scratch))
+		return ERR_CAST(scratch);
+
 	if (intel_fb_needs_pot_stride_remap(fb))
 		size = intel_remapped_info_size(&fb->remapped_view.gtt.remapped);
 	else
@@ -252,23 +277,23 @@ intel_dpt_create(struct intel_framebuffer *fb)
 		dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
 	else
 		dpt_obj = i915_gem_object_create_stolen(i915, size);
-	if (IS_ERR(dpt_obj))
-		return ERR_CAST(dpt_obj);
+	if (IS_ERR(dpt_obj)) {
+		ret = PTR_ERR(dpt_obj);
+		goto err_put_scratch;
+	}
 
 	ret = i915_gem_object_lock_interruptible(dpt_obj, NULL);
 	if (!ret) {
 		ret = i915_gem_object_set_cache_level(dpt_obj, I915_CACHE_NONE);
 		i915_gem_object_unlock(dpt_obj);
 	}
-	if (ret) {
-		i915_gem_object_put(dpt_obj);
-		return ERR_PTR(ret);
-	}
+	if (ret)
+		goto err_put_dpt;
 
 	dpt = kzalloc(sizeof(*dpt), GFP_KERNEL);
 	if (!dpt) {
-		i915_gem_object_put(dpt_obj);
-		return ERR_PTR(-ENOMEM);
+		ret = -ENOMEM;
+		goto err_put_dpt;
 	}
 
 	vm = &dpt->vm;
@@ -281,6 +306,10 @@ intel_dpt_create(struct intel_framebuffer *fb)
 
 	i915_address_space_init(vm, VM_CLASS_DPT);
 
+	scratch->base.resv = i915_vm_resv_get(vm);
+	scratch->shares_resv_from = vm;
+	vm->scratch[0] = scratch;
+
 	vm->insert_page = dpt_insert_page;
 	vm->clear_range = dpt_clear_range;
 	vm->insert_entries = dpt_insert_entries;
@@ -294,6 +323,12 @@ intel_dpt_create(struct intel_framebuffer *fb)
 	dpt->obj = dpt_obj;
 
 	return &dpt->vm;
+
+err_put_dpt:
+	i915_gem_object_put(dpt_obj);
+err_put_scratch:
+	i915_gem_object_put(scratch);
+	return ERR_PTR(ret);
 }
 
 void intel_dpt_destroy(struct i915_address_space *vm)
-- 
2.34.1

