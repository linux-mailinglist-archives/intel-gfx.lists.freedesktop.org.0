Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DCF3919B3
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 16:15:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E94066ED6B;
	Wed, 26 May 2021 14:15:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FFB96ED26;
 Wed, 26 May 2021 14:15:36 +0000 (UTC)
IronPort-SDR: DVN6jq5/UO7FnI2pdSHqm3Xi6dnE2Yxqov+SD+YDqM+8CcOnghb0Cbrkm82kf1n9qrs6JFFLpl
 jWJWQpEuo9sQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="223660590"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="223660590"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 07:15:12 -0700
IronPort-SDR: 0lEmFqdL82ljLy8OxFZPE4+k/4Hx9cfmcOfrjMJsntHCqKeoMcPXmxRPA6PD4xY78vf0EmGnfv
 zayk4w3M8U+Q==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="547206313"
Received: from wardmich-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.209.181])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 07:15:10 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 26 May 2021 15:14:49 +0100
Message-Id: <20210526141456.2334192-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210526141456.2334192-1-tvrtko.ursulin@linux.intel.com>
References: <20210526141456.2334192-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/12] drm/i915/selftests: Set cache status for
 huge_gem_object
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
Cc: Matthew Auld <matthew.auld@intel.com>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris@chris-wilson.co.uk>

Set the cache coherency and status using the set-coherency helper.
Otherwise, we forget to mark the new pages as cache dirty.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/huge_pages.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index dadd485bc52f..33dd4e2a1010 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -171,10 +171,8 @@ huge_pages_object(struct drm_i915_private *i915,
 			     I915_BO_ALLOC_STRUCT_PAGE);
 
 	i915_gem_object_set_volatile(obj);
-
-	obj->write_domain = I915_GEM_DOMAIN_CPU;
-	obj->read_domains = I915_GEM_DOMAIN_CPU;
-	obj->cache_level = I915_CACHE_NONE;
+	i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
+	__start_cpu_write(obj);
 
 	obj->mm.page_mask = page_mask;
 
@@ -324,10 +322,8 @@ fake_huge_pages_object(struct drm_i915_private *i915, u64 size, bool single)
 		i915_gem_object_init(obj, &fake_ops, &lock_class, 0);
 
 	i915_gem_object_set_volatile(obj);
-
-	obj->write_domain = I915_GEM_DOMAIN_CPU;
-	obj->read_domains = I915_GEM_DOMAIN_CPU;
-	obj->cache_level = I915_CACHE_NONE;
+	i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
+	__start_cpu_write(obj);
 
 	return obj;
 }
@@ -1004,7 +1000,7 @@ __cpu_check_shmem(struct drm_i915_gem_object *obj, u32 dword, u32 val)
 		u32 *ptr = kmap_atomic(i915_gem_object_get_page(obj, n));
 
 		if (needs_flush & CLFLUSH_BEFORE)
-			drm_clflush_virt_range(ptr, PAGE_SIZE);
+			drm_clflush_virt_range(&ptr[dword], sizeof(val));
 
 		if (ptr[dword] != val) {
 			pr_err("n=%lu ptr[%u]=%u, val=%u\n",
-- 
2.30.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
