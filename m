Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E2155984B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 13:08:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC76810E806;
	Fri, 24 Jun 2022 11:08:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E67EA10E706
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jun 2022 11:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656068911; x=1687604911;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fuq4GulDGqrVIC5yA6ND0E+0COz76U53CQMHi8nsQxA=;
 b=Trb0LzpRQaFH/VImIolnCJ3ho5HvLcHIlifyo6NyWiiEMC0atVpL18H5
 fwWcSm8ZULF3FjaoQr8rcnfWRaH1hmU22O+OUzkGLk+AQ7Wg5AJFcDYPp
 rtzUCM4Fii/ic6ZeiPtJhE+2vYqrI5jOLRjPXKrIF6e6hDUr51KCOcH4F
 epqq/za6Wwgojbzi7yTkLP4l4k6W9FegYyoJG5SJ3JVzECzhv2AVvBnju
 twz3ziHk9Tn2XBfwxqrQw88SmWBZVoDKZC6wvaJsEvwCF0hfsTR0G6jch
 eCW143rD7HPYcUu7C2fbMslQ2kh+sJnxNJmCuz9XSgMdm4nd7yittw7HF Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="344973860"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="344973860"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 04:08:30 -0700
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="645226673"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 04:08:29 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jun 2022 13:08:21 +0200
Message-Id: <20220624110821.29190-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: Fix a lockdep warning at error
 capture
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

v2: Fix rebase conflict and added a comment.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5595
Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c     | 10 ++++++++++
 drivers/gpu/drm/i915/gt/intel_gtt.h      |  9 +++++++++
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c |  5 ++++-
 drivers/gpu/drm/i915/i915_gpu_error.c    |  8 ++++++--
 4 files changed, 29 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index ffff96180313..15a915bb4088 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -960,6 +960,16 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 	if (intel_vm_no_concurrent_access_wa(i915)) {
 		ggtt->vm.insert_entries = bxt_vtd_ggtt_insert_entries__BKL;
 		ggtt->vm.insert_page    = bxt_vtd_ggtt_insert_page__BKL;
+
+		/*
+		 * Calling stop_machine() version of GGTT update function
+		 * at error capture/reset path will raise lockdep warning.
+		 * Allow calling gen8_ggtt_insert_* directly at reset path
+		 * which is safe from parallel GGTT updates.
+		 */
+		ggtt->vm.raw_insert_page = gen8_ggtt_insert_page;
+		ggtt->vm.raw_insert_entries = gen8_ggtt_insert_entries;
+
 		ggtt->vm.bind_async_flags =
 			I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
 	}
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 29fd3a9e8b2e..e639434e97fd 100644
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

