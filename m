Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FF84671EA
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 07:32:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5E72732CE;
	Fri,  3 Dec 2021 06:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D21B8732CE
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Dec 2021 06:32:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="223795259"
X-IronPort-AV: E=Sophos;i="5.87,283,1631602800"; d="scan'208";a="223795259"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 22:32:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,283,1631602800"; d="scan'208";a="677990945"
Received: from pallavi-nuc8i7beh.iind.intel.com ([10.145.162.8])
 by orsmga005.jf.intel.com with ESMTP; 02 Dec 2021 22:32:45 -0800
From: Pallavi Mishra <pallavi.mishra@intel.com>
To: intel-gfx@lists.freedesktop.org,
	thomas.hellstrom@linux.intel.com
Date: Fri,  3 Dec 2021 12:02:57 +0530
Message-Id: <20211203063257.52053-1-pallavi.mishra@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix possible null ptr dereferences
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
Cc: Pallavi Mishra <pallavi.mishra@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

add null ptr checks to prevent crash/exceptions.

Signed-off-by: Pallavi Mishra <pallavi.mishra@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c      | 3 +++
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c | 3 ++-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 218a9b3037c7..997fe73c205b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -906,6 +906,8 @@ vm_access_ttm(struct vm_area_struct *area, unsigned long addr,
 	struct drm_i915_gem_object *obj =
 		i915_ttm_to_gem(area->vm_private_data);
 
+	GEM_BUG_ON(!obj);
+
 	if (i915_gem_object_is_readonly(obj) && write)
 		return -EACCES;
 
@@ -966,6 +968,7 @@ static const struct drm_i915_gem_object_ops i915_gem_ttm_obj_ops = {
 void i915_ttm_bo_destroy(struct ttm_buffer_object *bo)
 {
 	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
+	GEM_BUG_ON(!obj);
 
 	i915_gem_object_release_memory_region(obj);
 	mutex_destroy(&obj->ttm.get_io_page.lock);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
index 80df9f592407..2b684903a9f5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
@@ -371,6 +371,7 @@ int i915_ttm_move_notify(struct ttm_buffer_object *bo)
 	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
 	int ret;
 
+	GEM_BUG_ON(!obj);
 	ret = i915_gem_object_unbind(obj, I915_GEM_OBJECT_UNBIND_ACTIVE);
 	if (ret)
 		return ret;
@@ -506,7 +507,7 @@ static void i915_ttm_memcpy_init(struct i915_ttm_memcpy_arg *arg,
 
 	dst_reg = i915_ttm_region(bo->bdev, dst_mem->mem_type);
 	src_reg = i915_ttm_region(bo->bdev, bo->resource->mem_type);
-	GEM_BUG_ON(!dst_reg || !src_reg);
+	GEM_BUG_ON(!dst_reg || !src_reg || !obj);
 
 	arg->dst_iter = !i915_ttm_cpu_maps_iomem(dst_mem) ?
 		ttm_kmap_iter_tt_init(&arg->_dst_iter.tt, dst_ttm) :
-- 
2.25.1

