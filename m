Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A47059728B
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 17:10:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAF8997584;
	Wed, 17 Aug 2022 15:10:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52D529757C
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 15:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660749009; x=1692285009;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uBCliypDaTpvAOBwik+hHUmpLzka9AlXtPpT12JDK60=;
 b=LD/FpSBZHoFjYrLY4UGEXeibR1vGMT8QN/WMgvNBhYrcb5NG96FqbbTm
 MuDxbTnztrCUZjR3iLom+Fr6Q75PvQSzVH8kljj8XL5m5qV3YQXZ81tg6
 ZlyZVOuBdtqyQDBAmsV6jnn3vOd0FL4yyppd7OBNC8tuKbqqXoBhApoLM
 TRhdpoWrEEk+JwKI7RLLwVnif5u94BHkULwSYS/3Ds3AaoaMduEB9bFNe
 q4Po/7Bo0obEMMjZ5v6WTtZ3CgJ15/2KnjFQDh8DHCm/GiNmIbho1lWJQ
 ncNSLHYGbFimGwiS/oIgbk3+7x44DDGa7/WmwsGNB7rVwp8t+Qlw7u+2R A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="275567461"
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="275567461"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 08:09:56 -0700
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="935398579"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 08:09:53 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Aug 2022 20:39:41 +0530
Message-Id: <20220817150941.25447-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220817150941.25447-1-anshuman.gupta@intel.com>
References: <20220817150941.25447-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 2/2] drm/i915/dgfx: Runtime resume the dgpu on
 user fault
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
Cc: chris@chris-wilson.co.uk, matthew.auld@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Runtime resume the dgpu(when gem object lies in lmem).
This will transition the dgpu graphics function to D0
state if it was in D3 in order to access the mmap memory
mappings.

Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 25 +++++++++++++++++++------
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index b49823d599e7..1e9b07473a8f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -1020,6 +1020,7 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 	struct ttm_buffer_object *bo = area->vm_private_data;
 	struct drm_device *dev = bo->base.dev;
 	struct drm_i915_gem_object *obj;
+	intel_wakeref_t wakeref = 0;
 	vm_fault_t ret;
 	int idx;
 
@@ -1027,18 +1028,24 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 	if (!obj)
 		return VM_FAULT_SIGBUS;
 
+	if (i915_gem_object_is_lmem(obj))
+		wakeref = intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);
+
 	/* Sanity check that we allow writing into this object */
 	if (unlikely(i915_gem_object_is_readonly(obj) &&
-		     area->vm_flags & VM_WRITE))
-		return VM_FAULT_SIGBUS;
+		     area->vm_flags & VM_WRITE)) {
+		ret = VM_FAULT_SIGBUS;
+		goto out_rpm;
+	}
 
 	ret = ttm_bo_vm_reserve(bo, vmf);
 	if (ret)
-		return ret;
+		goto out_rpm;
 
 	if (obj->mm.madv != I915_MADV_WILLNEED) {
 		dma_resv_unlock(bo->base.resv);
-		return VM_FAULT_SIGBUS;
+		ret = VM_FAULT_SIGBUS;
+		goto out_rpm;
 	}
 
 	if (!i915_ttm_resource_mappable(bo->resource)) {
@@ -1062,7 +1069,8 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 		if (err) {
 			drm_dbg(dev, "Unable to make resource CPU accessible\n");
 			dma_resv_unlock(bo->base.resv);
-			return VM_FAULT_SIGBUS;
+			ret = VM_FAULT_SIGBUS;
+			goto out_rpm;
 		}
 	}
 
@@ -1078,11 +1086,16 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 		list_add(&obj->userfault_link, &to_gt(to_i915(obj->base.dev))->lmem_userfault_list);
 
 	if (ret == VM_FAULT_RETRY && !(vmf->flags & FAULT_FLAG_RETRY_NOWAIT))
-		return ret;
+		goto out_rpm;
 
 	i915_ttm_adjust_lru(obj);
 
 	dma_resv_unlock(bo->base.resv);
+
+out_rpm:
+	if (wakeref)
+		intel_runtime_pm_put(&to_i915(obj->base.dev)->runtime_pm, wakeref);
+
 	return ret;
 }
 
-- 
2.26.2

