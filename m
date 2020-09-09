Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9EC2636A0
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Sep 2020 21:30:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 793A16F4A4;
	Wed,  9 Sep 2020 19:29:57 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from ale.deltatee.com (ale.deltatee.com [204.191.154.188])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 392576F4A4
 for <Intel-gfx@lists.freedesktop.org>; Wed,  9 Sep 2020 19:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=deltatee.com; s=20200525; h=Subject:Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=loCkW2fpAiAMOt0tBtGuuOzopphWMyfdJ1Rn8wH2QDw=; b=MuXnAdp6mkjyKZLZXxJDDVttdK
 5HlkehPDHNxWP1aMvgyHv/xx7Tis/+Ef+Mq/L5rrz3RqiXM2GDNafFvmD+avPRR9le4AN8we0tPiG
 KkFaafQ4bFciGkiAAirYg5WTkZQeC6kuu0Syu0eY3jfeVSQvFBK+ih0d1LPp6RCh+6rrLLmrD2/Mx
 0s8o2ZulUPBgerSFNO9O1XmTREa/t0aNmhrOK33enF/+4uHBjPp6jO2jNUClz3ROwblrysl+mpm/R
 83we9jHdfI2/GBGRnHXfo+0osHBFh/f1NaAhClnTCJJDKgKHJgQtaYcu3Dis8KKDPUxWP5fpfQ5+6
 RJYl+zIQ==;
Received: from s01060023bee90a7d.cg.shawcable.net ([24.64.145.4]
 helo=[192.168.0.10])
 by ale.deltatee.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <logang@deltatee.com>)
 id 1kG5mu-0001t7-Hz; Wed, 09 Sep 2020 13:29:50 -0600
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org
References: <20200909124457.296845-1-tvrtko.ursulin@linux.intel.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <0d89654d-bc36-52ca-9066-f4d5c6e2a508@deltatee.com>
Date: Wed, 9 Sep 2020 13:29:44 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200909124457.296845-1-tvrtko.ursulin@linux.intel.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 24.64.145.4
X-SA-Exim-Rcpt-To: baolu.lu@linux.intel.com, matthew.auld@intel.com,
 chris@chris-wilson.co.uk, joonas.lahtinen@linux.intel.com, murphyt7@tcd.ie,
 tvrtko.ursulin@intel.com, Intel-gfx@lists.freedesktop.org,
 tvrtko.ursulin@linux.intel.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,NICE_REPLY_A,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix DMA mapped scatterlist walks
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
Cc: Tom Murphy <murphyt7@tcd.ie>, Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>, Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 2020-09-09 6:44 a.m., Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> When walking DMA mapped scatterlists sg_dma_len has to be used since it
> can be different (coalesced) from the backing store entry.
> 
> This also means we have to end the walk when encountering a zero length
> DMA entry and cannot rely on the normal sg list end marker.
> 
> Both issues were there in theory for some time but were hidden by the fact
> Intel IOMMU driver was never coalescing entries. As there are ongoing
> efforts to change this we need to start handling it.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> References: 85d1225ec066 ("drm/i915: Introduce & use new lightweight SGL iterators")
> References: b31144c0daa8 ("drm/i915: Micro-optimise gen6_ppgtt_insert_entries()")
> Reported-by: Tom Murphy <murphyt7@tcd.ie>
> Suggested-by: Tom Murphy <murphyt7@tcd.ie> # __sgt_iter
> Suggested-by: Logan Gunthorpe <logang@deltatee.com> # __sgt_iter
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Lu Baolu <baolu.lu@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/gen6_ppgtt.c    |  6 +++---
>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c    | 17 ++++++++++-------
>  drivers/gpu/drm/i915/gt/intel_gtt.h     |  2 +-
>  drivers/gpu/drm/i915/i915_scatterlist.h | 12 ++++++++----
>  4 files changed, 22 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> index fd0d24d28763..c0d17f87b00f 100644
> --- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> @@ -131,17 +131,17 @@ static void gen6_ppgtt_insert_entries(struct i915_address_space *vm,
>  
>  	vaddr = kmap_atomic_px(i915_pt_entry(pd, act_pt));
>  	do {
> -		GEM_BUG_ON(iter.sg->length < I915_GTT_PAGE_SIZE);
> +		GEM_BUG_ON(sg_dma_len(iter.sg) < I915_GTT_PAGE_SIZE);
>  		vaddr[act_pte] = pte_encode | GEN6_PTE_ADDR_ENCODE(iter.dma);
>  
>  		iter.dma += I915_GTT_PAGE_SIZE;
>  		if (iter.dma == iter.max) {
>  			iter.sg = __sg_next(iter.sg);
> -			if (!iter.sg)
> +			if (!iter.sg || sg_dma_len(iter.sg) == 0)
>  				break;
>  
>  			iter.dma = sg_dma_address(iter.sg);
> -			iter.max = iter.dma + iter.sg->length;
> +			iter.max = iter.dma + sg_dma_len(iter.sg);
>  		}
>  
>  		if (++act_pte == GEN6_PTES) {
> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> index eb64f474a78c..0361b3dfdc72 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> @@ -372,19 +372,19 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
>  	pd = i915_pd_entry(pdp, gen8_pd_index(idx, 2));
>  	vaddr = kmap_atomic_px(i915_pt_entry(pd, gen8_pd_index(idx, 1)));
>  	do {
> -		GEM_BUG_ON(iter->sg->length < I915_GTT_PAGE_SIZE);
> +		GEM_BUG_ON(sg_dma_len(iter->sg) < I915_GTT_PAGE_SIZE);
>  		vaddr[gen8_pd_index(idx, 0)] = pte_encode | iter->dma;
>  
>  		iter->dma += I915_GTT_PAGE_SIZE;
>  		if (iter->dma >= iter->max) {
>  			iter->sg = __sg_next(iter->sg);
> -			if (!iter->sg) {
> +			if (!iter->sg || sg_dma_len(iter->sg) == 0) {
>  				idx = 0;
>  				break;
>  			}
>  
>  			iter->dma = sg_dma_address(iter->sg);
> -			iter->max = iter->dma + iter->sg->length;
> +			iter->max = iter->dma + sg_dma_len(iter->sg);
>  		}
>  
>  		if (gen8_pd_index(++idx, 0) == 0) {
> @@ -414,7 +414,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
>  {
>  	const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level, flags);
>  	u64 start = vma->node.start;
> -	dma_addr_t rem = iter->sg->length;
> +	dma_addr_t rem = sg_dma_len(iter->sg);

Seems a little odd to me to be storing a length in a dma_addr_t. But
besides that small nit, this all makes sense to me.

Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

Thanks,

Logan
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
