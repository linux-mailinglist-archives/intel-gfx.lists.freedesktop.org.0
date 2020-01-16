Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AC913F97B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 20:28:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAB876EEA7;
	Thu, 16 Jan 2020 19:28:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A7046EEA7
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 19:28:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 11:28:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,327,1574150400"; d="scan'208";a="424166933"
Received: from ppiec-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.5.129])
 by fmsmga005.fm.intel.com with ESMTP; 16 Jan 2020 11:28:30 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jan 2020 19:28:09 +0000
Message-Id: <20200116192809.843138-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116192809.843138-1-matthew.auld@intel.com>
References: <20200116192809.843138-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/userptr: fix size calculation
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

If we create a rather large userptr object(e.g 1ULL << 32) we might
shift past the type-width of num_pages: (int)num_pages << PAGE_SHIFT,
resulting in a totally bogus sg_table, which fortunately will eventually
manifest as:

gen8_ppgtt_insert_huge:463 GEM_BUG_ON(iter->sg->length < page_size)
kernel BUG at drivers/gpu/drm/i915/gt/gen8_ppgtt.c:463!

Fixes: 5cc9ed4b9a7a ("drm/i915: Introduce mapping of user pages into video memory (userptr) ioctl")
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 3 ++-
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c        | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index fef96a303d9d..81fa53495c9d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -405,6 +405,7 @@ static struct sg_table *
 __i915_gem_userptr_alloc_pages(struct drm_i915_gem_object *obj,
 			       struct page **pvec, int num_pages)
 {
+	unsigned long size = (unsigned long)num_pages << PAGE_SHIFT;
 	unsigned int max_segment = i915_sg_segment_size();
 	struct sg_table *st;
 	unsigned int sg_page_sizes;
@@ -416,7 +417,7 @@ __i915_gem_userptr_alloc_pages(struct drm_i915_gem_object *obj,
 
 alloc_table:
 	ret = __sg_alloc_table_from_pages(st, pvec, num_pages,
-					  0, num_pages << PAGE_SHIFT,
+					  0, size,
 					  max_segment,
 					  GFP_KERNEL);
 	if (ret) {
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 077b8f7cf6cb..0d7820c49f5b 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -379,6 +379,7 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
 	pd = i915_pd_entry(pdp, gen8_pd_index(idx, 2));
 	vaddr = kmap_atomic_px(i915_pt_entry(pd, gen8_pd_index(idx, 1)));
 	do {
+		GEM_BUG_ON(iter->sg->length < PAGE_SIZE);
 		vaddr[gen8_pd_index(idx, 0)] = pte_encode | iter->dma;
 
 		iter->dma += I915_GTT_PAGE_SIZE;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
