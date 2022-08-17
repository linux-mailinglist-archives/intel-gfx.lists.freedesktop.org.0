Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C34D959728A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 17:10:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D05349747E;
	Wed, 17 Aug 2022 15:10:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E85A710F5B2
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 15:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660749009; x=1692285009;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SaqLXkdWw52OGvbeJB2/UUNW6/b/xW1GT4QhYx58lz4=;
 b=Qhl733Jye5IoNlkWoODSjVhhy2lzUFvK2EQ7GfIi/KHDn50h30Q/Cwtr
 baV7JaHk4mOFJ21F0HF1HLhoZRjs6SI+/FjepEPYZQrXxQt1aobRkouOV
 7xsDJ8bzB05leFS3+wCmlUTmbczWi2YT6sZB/7GbQkZZa23H/QL5Okz2j
 MIwN5fjl7bs5L46vmaUvPUWUH46rKLyRUkrDz3JiIX9rJkI845xuvGGXu
 QjxEsMH9UmDKMPro5Eli9lO6o8ieF3bYPXigQ83Rs+yRQW14IDQwJ3g+B
 BWFRlBeYOSoQnLi/PWymTWFGCS3Ht6yEoJOnjeHcc+k1GRWvvhwu/w291 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="275567451"
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="275567451"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 08:09:53 -0700
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="935398572"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 08:09:51 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Aug 2022 20:39:40 +0530
Message-Id: <20220817150941.25447-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220817150941.25447-1-anshuman.gupta@intel.com>
References: <20220817150941.25447-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 1/2] drm/i915/dgfx: Release mmap on rpm suspend
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

Release all mmap mapping for all lmem objects which are associated
with userfault such that, while pcie function in D3hot, any access
to memory mappings will raise a userfault.

Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c  | 4 ++++
 drivers/gpu/drm/i915/gt/intel_gt.c       | 1 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h | 2 ++
 drivers/gpu/drm/i915/i915_gem.c          | 6 ++++++
 4 files changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 5a5cf332d8a5..b49823d599e7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -1073,6 +1073,10 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 	} else {
 		ret = ttm_bo_vm_dummy_page(vmf, vmf->vma->vm_page_prot);
 	}
+
+	if (i915_gem_object_is_lmem(obj))
+		list_add(&obj->userfault_link, &to_gt(to_i915(obj->base.dev))->lmem_userfault_list);
+
 	if (ret == VM_FAULT_RETRY && !(vmf->flags & FAULT_FLAG_RETRY_NOWAIT))
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index e4bac2431e41..f0d641c3153c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -39,6 +39,7 @@ static void __intel_gt_init_early(struct intel_gt *gt)
 {
 	spin_lock_init(&gt->irq_lock);
 
+	INIT_LIST_HEAD(&gt->lmem_userfault_list);
 	INIT_LIST_HEAD(&gt->closed_vma);
 	spin_lock_init(&gt->closed_lock);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 4d56f7d5a3be..3e915df255f3 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -132,6 +132,8 @@ struct intel_gt {
 	struct intel_wakeref wakeref;
 	atomic_t user_wakeref;
 
+	struct list_head lmem_userfault_list;
+
 	struct list_head closed_vma;
 	spinlock_t closed_lock; /* guards the list of closed_vma */
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 702e5b89be22..1e6ce6d06c11 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -842,6 +842,12 @@ void i915_gem_runtime_suspend(struct drm_i915_private *i915)
 				 &to_gt(i915)->ggtt->userfault_list, userfault_link)
 		__i915_gem_object_release_mmap_gtt(obj);
 
+	list_for_each_entry_safe(obj, on,
+				 &to_gt(i915)->lmem_userfault_list, userfault_link) {
+		i915_gem_object_release_mmap_offset(obj);
+		list_del(&obj->userfault_link);
+	}
+
 	/*
 	 * The fence will be lost when the device powers down. If any were
 	 * in use by hardware (i.e. they are pinned), we should not be powering
-- 
2.26.2

