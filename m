Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5416758397C
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 09:27:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61E5010FFA0;
	Thu, 28 Jul 2022 07:26:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD53211BEE9;
 Thu, 28 Jul 2022 07:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658993185; x=1690529185;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g5kqmchM6HB+PXC+MCy/bxSNFEjJ81QvgGnZA2putgI=;
 b=KPKaIbikPVqAgZhcIufZn9OVfVWWh4JMn6dDFsT/0XLnPNx182wdhYU6
 LCAdyLXdXsOTmUN1FFfjR7nCSp74KvDNJnGrayCLylz8clYr389LSk2B+
 f/iIiwIOAJ0v5m7Ke+94MwkyimGuxLKmaxijTmq/z8eI1aViA5wiOo28A
 vAGRNS/dlxk3nMN0sCmW9p1z13O4zu1Xk7kQ6m5dtEi+MAk6aEofvys1F
 nwsk3v8A4kKm6q86lTDy7dvytOHrE1xbgEwhph322nK21R/s705JQX8i5
 ReeIamLGIitvpQzsp+tiQCu7yUXFj2Zb9GAglSnXnAwgaC5emLdsDbhG7 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="288456075"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="288456075"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 00:26:25 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659590683"
Received: from maurocar-mobl2.ger.corp.intel.com (HELO maurocar-mobl2)
 ([10.249.36.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 00:26:21 -0700
Date: Thu, 28 Jul 2022 09:26:18 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20220728092618.050969fc@maurocar-mobl2>
In-Reply-To: <20220728083232.352f80cf@maurocar-mobl2>
References: <cover.1657800199.git.mchehab@kernel.org>
 <9f535a97f32320a213a619a30c961ba44b595453.1657800199.git.mchehab@kernel.org>
 <567823d5-57ba-30db-dd64-de609df4d8c5@linux.intel.com>
 <20220727134836.7f7b5fab@maurocar-mobl2>
 <d2337b73-ae34-3dd3-afa3-85c77dc2135e@linux.intel.com>
 <20220728083232.352f80cf@maurocar-mobl2>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 06/21] drm/i915/gt: Batch TLB
 invalidations
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Thomas =?UTF-8?B?SGVsbHN0csO2bQ==?= <thomas.hellstrom@linux.intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Dave Airlie <airlied@redhat.com>, Tomas Winkler <tomas.winkler@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 28 Jul 2022 08:32:32 +0200
Mauro Carvalho Chehab <mauro.chehab@linux.intel.com> wrote:

> On Wed, 27 Jul 2022 13:56:50 +0100
> Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> 
> > > Because vma_invalidate_tlb() basically stores a TLB seqno, but the
> > > actual invalidation is deferred to when the pages are unset, at
> > > __i915_gem_object_unset_pages().
> > > 
> > > So, what happens is:
> > > 
> > > - on VMA sync mode, the need to invalidate TLB is marked at
> > >    __vma_put_pages(), before VMA unbind;
> > > - on async, this is deferred to happen at ppgtt_unbind_vma(), where
> > >    it marks the need to invalidate TLBs.
> > > 
> > > On both cases, __i915_gem_object_unset_pages() is called later,
> > > when the driver is ready to unmap the page.    
> > 
> > Sorry still not clear to me why is the patch moving marking of the need 
> > to invalidate (regardless if it a bit like today, or a seqno like in 
> > this patch) from bind to unbind?
> > 
> > What if the seqno was stored in i915_vma_bind, where the bit is set 
> > today, and all the hunks which touch the unbind and evict would 
> > disappear from the patch. What wouldn't work in that case, if anything?  
> 
> Ah, now I see your point.
> 
> I can't see any sense on having a sequence number at VMA bind, as the
> unbind order can be different. The need of doing a full TLB invalidation
> or not depends on the unbind order.
> 
> The way the current algorithm works is that drm_i915_gem_object can be
> created on any order, and, at unbind/evict, they receive a seqno.
> 
> The seqno is incremented at intel_gt_invalidate_tlb():
> 
>     void intel_gt_invalidate_tlb(struct intel_gt *gt, u32 seqno)
>     {
> 	with_intel_gt_pm_if_awake(gt, wakeref) {
> 		mutex_lock(&gt->tlb.invalidate_lock);
> 		if (tlb_seqno_passed(gt, seqno))
> 				goto unlock;
> 
> 		mmio_invalidate_full(gt);
> 
> 		write_seqcount_invalidate(&gt->tlb.seqno);	// increment seqno
> 		
> 
> So, let's say 3 objects were created, on this order:
> 
> 	obj1
> 	obj2
> 	obj3
> 
> They would be unbind/evict on a different order. On that time, 
> the mm.tlb will be stamped with a seqno, using the number from the
> last TLB flush, plus 1.
> 
> As different threads can be used to handle TLB flushes, let's imagine
> two threads (just for the sake of having an example). On such case,
> what we would have is:
> 
> seqno		Thread 0			Thread 1
> 
> seqno=2		unbind/evict event
> 		obj3.mm.tlb = seqno | 1
> seqno=2		unbind/evict event
> 		obj1.mm.tlb = seqno | 1
> 						__i915_gem_object_unset_pages() 
> 						called for obj3, TLB flush happened,
> 						invalidating both obj1 and obj2.
> 						seqno += 2					
> seqno=4		unbind/evict event
> 		obj1.mm.tlb = seqno | 1

cut-and-paste typo. it should be, instead:

 		obj2.mm.tlb = seqno | 1


> 						__i915_gem_object_unset_pages()
> 						called for obj1, don't flush.
> ...
> 						__i915_gem_object_unset_pages() called for obj2, TLB flush happened
> 						seqno += 2
> seqno=6
> 
> So, basically the seqno is used to track when the object data stopped
> being updated, because of an unbind/evict event, being later used by
> intel_gt_invalidate_tlb() when called from __i915_gem_object_unset_pages(),
> in order to check if a previous invalidation call was enough to invalidate
> the object, or if a new call is needed.
> 
> Now, if seqno is stored at bind, data can still leak, as the assumption
> made by intel_gt_invalidate_tlb() that the data stopped being used at
> seqno is not true anymore.
> 
> Still, I agree that this logic is complex and should be better 
> documented. So, if you're now OK with this patch, I'll add the above
> explanation inside a kernel-doc comment.

I'm enclosing the kernel-doc patch (to be applied after moving the code into
its own files: intel_tlb.c/intel_tlb.h):

[PATCH] drm/i915/gt: document TLB cache invalidation functions

Add a description for the TLB cache invalidation algorithm and for
the related kAPI functions.

Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>

diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.c b/drivers/gpu/drm/i915/gt/intel_tlb.c
index af8cae979489..8eda0743da74 100644
--- a/drivers/gpu/drm/i915/gt/intel_tlb.c
+++ b/drivers/gpu/drm/i915/gt/intel_tlb.c
@@ -145,6 +145,18 @@ static void mmio_invalidate_full(struct intel_gt *gt)
 	intel_uncore_forcewake_put_delayed(uncore, FORCEWAKE_ALL);
 }
 
+/**
+ * intel_gt_invalidate_tlb_full - do full TLB cache invalidation
+ * @gt: GT structure
+ * @seqno: sequence number
+ *
+ * Do a full TLB cache invalidation if the @seqno is bigger than the last
+ * full TLB cache invalidation.
+ *
+ * Note:
+ * The TLB cache invalidation logic depends on GEN-specific registers.
+ * It currently supports GEN8 to GEN12 and GuC-based TLB cache invalidation.
+ */
 void intel_gt_invalidate_tlb_full(struct intel_gt *gt, u32 seqno)
 {
 	intel_wakeref_t wakeref;
@@ -177,6 +189,12 @@ void intel_gt_init_tlb(struct intel_gt *gt)
 	seqcount_mutex_init(&gt->tlb.seqno, &gt->tlb.invalidate_lock);
 }
 
+/**
+ * intel_gt_fini_tlb - initialize TLB-specific vars
+ * @gt: GT structure
+ *
+ * Frees any resources needed by TLB cache invalidation logic.
+ */
 void intel_gt_fini_tlb(struct intel_gt *gt)
 {
 	mutex_destroy(&gt->tlb.invalidate_lock);
diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.h b/drivers/gpu/drm/i915/gt/intel_tlb.h
index 46ce25bf5afe..d186f5d5901f 100644
--- a/drivers/gpu/drm/i915/gt/intel_tlb.h
+++ b/drivers/gpu/drm/i915/gt/intel_tlb.h
@@ -11,16 +11,99 @@
 
 #include "intel_gt_types.h"
 
+/**
+ * DOC: TLB cache invalidation logic
+ *
+ * The way the current algorithm works is that drm_i915_gem_object can be
+ * created on any order. At unbind/evict time, the object is warranted that
+ * it won't be used anymore. So, they store a sequence number provided by
+ * intel_gt_next_invalidate_tlb_full().This can happen either at
+ * __vma_put_pages(), for VMA sync unbind, or at ppgtt_unbind_vma(), for
+ * VMA async VMA bind.
+ *
+ * At __i915_gem_object_unset_pages(), intel_gt_invalidate_tlb() is called,
+ * where it checks if the sequence number of the object was already invalidated
+ * or not. If not, it increments it::
+ *
+ *   void intel_gt_invalidate_tlb(struct intel_gt *gt, u32 seqno)
+ *   {
+ *   ...
+ * 	with_intel_gt_pm_if_awake(gt, wakeref) {
+ * 		mutex_lock(&gt->tlb.invalidate_lock);
+ * 		if (tlb_seqno_passed(gt, seqno))
+ * 				goto unlock;
+ *
+ * 		mmio_invalidate_full(gt);
+ *
+ * 		write_seqcount_invalidate(&gt->tlb.seqno); // increment seqno
+ *    ...
+ *
+ * So, let's say the current seqno is 2 and 3 new objects were created,
+ * on this order:
+ *
+ * 	obj1
+ * 	obj2
+ * 	obj3
+ *
+ * They can be unbind/evict on a different order. At unbind/evict time,
+ * the mm.tlb will be stamped with the sequence number, using the number
+ * from the last TLB flush, plus 1.
+ *
+ * Different threads may be used on unbind/evict and/or unset pages.
+ *
+ * As the logic at void intel_gt_invalidate_tlb() is protected by a mutex,
+ * for simplicity, let's consider just two threads::
+ *
+ *   sequence number	Thread 0		Thread 1
+ *
+ *   seqno=2
+ *			unbind/evict event
+ * 			obj3.mm.tlb = seqno | 1
+ *
+ *			unbind/evict event
+ * 			obj1.mm.tlb = seqno | 1
+ * 						__i915_gem_object_unset_pages()
+ * 						called for obj3 => TLB flush
+ * 						invalidating both obj1 and obj2.
+ * 						seqno += 2
+ *   seqno=4
+ *			unbind/evict event
+ * 			obj2.mm.tlb = seqno | 1
+ * 						__i915_gem_object_unset_pages()
+ * 						called for obj1, don't flush,
+ *						as past flush invalidated obj1
+ *
+ * 						__i915_gem_object_unset_pages()
+ *						called for obj2 => TLB flush
+ * 						seqno += 2
+ *   seqno=6
+ */
+
 void intel_gt_invalidate_tlb_full(struct intel_gt *gt, u32 seqno);
 
 void intel_gt_init_tlb(struct intel_gt *gt);
 void intel_gt_fini_tlb(struct intel_gt *gt);
 
+/**
+ * intel_gt_tlb_seqno - Returns the current TLB invlidation sequence number
+ *
+ * @gt: GT structure
+ *
+ * There's no need to lock while calling it, as seqprop_sequence is thread-safe
+ */
 static inline u32 intel_gt_tlb_seqno(const struct intel_gt *gt)
 {
 	return seqprop_sequence(&gt->tlb.seqno);
 }
 
+/**
+ * intel_gt_next_invalidate_tlb_full - Returns the next TLB full invalidation
+ *	sequence number
+ *
+ * @gt: GT structure
+ *
+ * There's no need to lock while calling it, as seqprop_sequence is thread-safe
+ */
 static inline u32 intel_gt_next_invalidate_tlb_full(const struct intel_gt *gt)
 {
 	return intel_gt_tlb_seqno(gt) | 1;

