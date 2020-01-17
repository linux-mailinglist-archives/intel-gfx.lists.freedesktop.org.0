Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0E7140AA8
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 14:24:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C5086F55D;
	Fri, 17 Jan 2020 13:24:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 736D46F55D
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 13:24:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 05:24:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,330,1574150400"; d="scan'208";a="243660089"
Received: from ppiec-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.5.129])
 by orsmga002.jf.intel.com with ESMTP; 17 Jan 2020 05:24:14 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 13:24:13 +0000
Message-Id: <20200117132413.1170563-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200117132413.1170563-1-matthew.auld@intel.com>
References: <20200117132413.1170563-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/userptr: fix size calculation
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

v2: more unsigned long
    prefer I915_GTT_PAGE_SIZE

Fixes: 5cc9ed4b9a7a ("drm/i915: Introduce mapping of user pages into video memory (userptr) ioctl")
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 9 +++++----
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c        | 1 +
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c        | 1 +
 3 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index b64b0f383a56..a74d4ac6a39f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -403,7 +403,7 @@ struct get_pages_work {
 
 static struct sg_table *
 __i915_gem_userptr_alloc_pages(struct drm_i915_gem_object *obj,
-			       struct page **pvec, int num_pages)
+			       struct page **pvec, unsigned long num_pages)
 {
 	unsigned int max_segment = i915_sg_segment_size();
 	struct sg_table *st;
@@ -449,9 +449,10 @@ __i915_gem_userptr_get_pages_worker(struct work_struct *_work)
 {
 	struct get_pages_work *work = container_of(_work, typeof(*work), work);
 	struct drm_i915_gem_object *obj = work->obj;
-	const int npages = obj->base.size >> PAGE_SHIFT;
+	const unsigned long npages = obj->base.size >> PAGE_SHIFT;
+	unsigned long pinned;
 	struct page **pvec;
-	int pinned, ret;
+	int ret;
 
 	ret = -ENOMEM;
 	pinned = 0;
@@ -559,7 +560,7 @@ __i915_gem_userptr_get_pages_schedule(struct drm_i915_gem_object *obj)
 
 static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
 {
-	const int num_pages = obj->base.size >> PAGE_SHIFT;
+	const unsigned long num_pages = obj->base.size >> PAGE_SHIFT;
 	struct mm_struct *mm = obj->userptr.mm->mm;
 	struct page **pvec;
 	struct sg_table *pages;
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index f10b2c41571c..f4fec7eb4064 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -131,6 +131,7 @@ static void gen6_ppgtt_insert_entries(struct i915_address_space *vm,
 
 	vaddr = kmap_atomic_px(i915_pt_entry(pd, act_pt));
 	do {
+		GEM_BUG_ON(iter.sg->length < I915_GTT_PAGE_SIZE);
 		vaddr[act_pte] = pte_encode | GEN6_PTE_ADDR_ENCODE(iter.dma);
 
 		iter.dma += I915_GTT_PAGE_SIZE;
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 077b8f7cf6cb..4d1de2d97d5c 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -379,6 +379,7 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
 	pd = i915_pd_entry(pdp, gen8_pd_index(idx, 2));
 	vaddr = kmap_atomic_px(i915_pt_entry(pd, gen8_pd_index(idx, 1)));
 	do {
+		GEM_BUG_ON(iter->sg->length < I915_GTT_PAGE_SIZE);
 		vaddr[gen8_pd_index(idx, 0)] = pte_encode | iter->dma;
 
 		iter->dma += I915_GTT_PAGE_SIZE;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
