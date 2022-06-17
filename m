Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4071954F70D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 13:55:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AD6411AD9A;
	Fri, 17 Jun 2022 11:55:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 741C311AD9B
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 11:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655466937; x=1687002937;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Y/+WprL3YLd37bm2QH9KeofeTlRS2uN/anBFdLhXLX0=;
 b=EoFLLwp4af/dg3I0c2Kx+SQYj/jSCOmXFwOpmdLes4H4yXi55JslTsPy
 wm5plu/OSjeAJq8L4SReYVkQl0tK9TGsWTO5T+VoEIPkDViYQVEe9/LmA
 rGmMcOkPdgMnly7t6Bt1hgHD4A9u/gs83cRch0wXdw0SLT3JG5KAynagp
 uARZUu8DjpnHMI5eMLhhepTPCXS0tLI9NlZfyise2zDaw9H0792U8NJjU
 thV/7fnNvYnyE9Tzjh0Kq9Kv/hjB676x0JwnaRxQ7zZnsv83O7XGP0HKd
 xr2pUr2k/FCbIkUyRV7I4+LChIRQbGzkPyWs8i8OJ3nNH+4SEOiW70Z+b g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="341150147"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="341150147"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 04:55:35 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="642005390"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 04:55:34 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jun 2022 13:55:29 +0200
Message-Id: <20220617115529.17530-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix a lockdep warning at error capture
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
Cc: chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For some platfroms we use stop_machine version of
gen8_ggtt_insert_page/gen8_ggtt_insert_entries to avoid a
concurrent GGTT access bug but this causes a circular locking
dependency warning:

  Possible unsafe locking scenario:
        CPU0                    CPU1
        ----                    ----
   lock(&ggtt->error_mutex);
                                lock(dma_fence_map);
                                lock(&ggtt->error_mutex);
   lock(cpu_hotplug_lock);

Fix this by calling gen8_ggtt_insert_page/gen8_ggtt_insert_entries
directly at error capture which is concurrent GGTT access safe because
reset path make sure of that.

Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_gmch.c  | 2 ++
 drivers/gpu/drm/i915/gt/intel_gtt.h      | 9 +++++++++
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 5 ++++-
 drivers/gpu/drm/i915/i915_gpu_error.c    | 8 ++++++--
 4 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_gmch.c b/drivers/gpu/drm/i915/gt/intel_gt_gmch.c
index 18e488672d1b..2260ed576776 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_gmch.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_gmch.c
@@ -629,6 +629,8 @@ int intel_gt_gmch_gen8_probe(struct i915_ggtt *ggtt)
 	if (intel_vm_no_concurrent_access_wa(i915)) {
 		ggtt->vm.insert_entries = bxt_vtd_ggtt_insert_entries__BKL;
 		ggtt->vm.insert_page    = bxt_vtd_ggtt_insert_page__BKL;
+		ggtt->vm.raw_insert_page = gen8_ggtt_insert_page;
+		ggtt->vm.raw_insert_entries = gen8_ggtt_insert_entries;
 		ggtt->vm.bind_async_flags =
 			I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
 	}
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index a40d928b3888..f9a1f3d17272 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -306,6 +306,15 @@ struct i915_address_space {
 			       struct i915_vma_resource *vma_res,
 			       enum i915_cache_level cache_level,
 			       u32 flags);
+	void (*raw_insert_page)(struct i915_address_space *vm,
+				dma_addr_t addr,
+				u64 offset,
+				enum i915_cache_level cache_level,
+				u32 flags);
+	void (*raw_insert_entries)(struct i915_address_space *vm,
+				   struct i915_vma_resource *vma_res,
+				   enum i915_cache_level cache_level,
+				   u32 flags);
 	void (*cleanup)(struct i915_address_space *vm);
 
 	void (*foreach)(struct i915_address_space *vm,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index d2c5c9367cc4..c06e83872c34 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -493,7 +493,10 @@ static void uc_fw_bind_ggtt(struct intel_uc_fw *uc_fw)
 	if (i915_gem_object_is_lmem(obj))
 		pte_flags |= PTE_LM;
 
-	ggtt->vm.insert_entries(&ggtt->vm, dummy, I915_CACHE_NONE, pte_flags);
+	if (ggtt->vm.raw_insert_entries)
+		ggtt->vm.raw_insert_entries(&ggtt->vm, dummy, I915_CACHE_NONE, pte_flags);
+	else
+		ggtt->vm.insert_entries(&ggtt->vm, dummy, I915_CACHE_NONE, pte_flags);
 }
 
 static void uc_fw_unbind_ggtt(struct intel_uc_fw *uc_fw)
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index bff8a111424a..f9b1969ed7ed 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1104,8 +1104,12 @@ i915_vma_coredump_create(const struct intel_gt *gt,
 
 		for_each_sgt_daddr(dma, iter, vma_res->bi.pages) {
 			mutex_lock(&ggtt->error_mutex);
-			ggtt->vm.insert_page(&ggtt->vm, dma, slot,
-					     I915_CACHE_NONE, 0);
+			if (ggtt->vm.raw_insert_page)
+				ggtt->vm.raw_insert_page(&ggtt->vm, dma, slot,
+							 I915_CACHE_NONE, 0);
+			else
+				ggtt->vm.insert_page(&ggtt->vm, dma, slot,
+						     I915_CACHE_NONE, 0);
 			mb();
 
 			s = io_mapping_map_wc(&ggtt->iomap, slot, PAGE_SIZE);
-- 
2.35.1

