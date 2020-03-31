Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA2F199984
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 17:24:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 157B86E84C;
	Tue, 31 Mar 2020 15:24:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 482D46E84C
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 15:24:44 +0000 (UTC)
IronPort-SDR: Bp9N62MCU5510Cw9tvGIrzCDixXgVo6/Y5inebCIYTR/Pcm+hyDVAuvTeuRvmIQhkQlSQALFut
 W0sfEbhnBKDg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 08:24:43 -0700
IronPort-SDR: nWhpRH90TO66WqulN11S2cFq+Zko1DvUmcs91fF+jLg03iTs6FZ1DvkWt5o19UxI1BDGucoP2n
 PFz8Bz4KFiSw==
X-IronPort-AV: E=Sophos;i="5.72,328,1580803200"; d="scan'208";a="272791499"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 08:24:41 -0700
Date: Tue, 31 Mar 2020 18:24:06 +0300
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200331152406.GA721@ideak-desk.fi.intel.com>
References: <20200331124202.4497-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331124202.4497-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Fill all the unused space in
 the GGTT
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 31, 2020 at 01:42:02PM +0100, Chris Wilson wrote:
> When we allocate space in the GGTT we may have to allocate a larger
> region than will be populated by the object to accommodate fencing. Make
> sure that this space beyond the end of the buffer points safely into
> scratch space, in case the HW tries to access it anyway (e.g. fenced
> access to the last tile row).
> 
> Reported-by: Imre Deak <imre.deak@intel.com>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/1554
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: stable@vger.kernel.org

Thanks,
Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index d8944dabed55..ad56059651b8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -191,10 +191,11 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
>  				     enum i915_cache_level level,
>  				     u32 flags)
>  {
> +	const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, 0);
>  	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>  	struct sgt_iter sgt_iter;
> -	gen8_pte_t __iomem *gtt_entries;
> -	const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, 0);
> +	gen8_pte_t __iomem *gte;
> +	gen8_pte_t __iomem *end;
>  	dma_addr_t addr;
>  
>  	/*
> @@ -202,10 +203,16 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
>  	 * not to allow the user to override access to a read only page.
>  	 */
>  
> -	gtt_entries = (gen8_pte_t __iomem *)ggtt->gsm;
> -	gtt_entries += vma->node.start / I915_GTT_PAGE_SIZE;
> +	gte = (gen8_pte_t __iomem *)ggtt->gsm;
> +	gte += vma->node.start / I915_GTT_PAGE_SIZE;
> +	end = gte + vma->node.size / I915_GTT_PAGE_SIZE;
>  	for_each_sgt_daddr(addr, sgt_iter, vma->pages)
> -		gen8_set_pte(gtt_entries++, pte_encode | addr);
> +		gen8_set_pte(gte++, pte_encode | addr);
> +	GEM_BUG_ON(gte > end);
> +
> +	/* Fill the allocated but "unused" space beyond the end of the buffer */
> +	while (gte < end)
> +		gen8_set_pte(gte++, vm->scratch[0].encode);
>  
>  	/*
>  	 * We want to flush the TLBs only after we're certain all the PTE
> -- 
> 2.20.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
