Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5704F8A16FA
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Apr 2024 16:18:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3361310EDAD;
	Thu, 11 Apr 2024 14:18:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VXOHS1Dp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAEC010EDAD
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Apr 2024 14:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712845126; x=1744381126;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=dq3cKLkc7rHEzSnzZaKiolImFOJHqwpJNTbBFXD6D5k=;
 b=VXOHS1DpT4NX1xLHZ+0kc3QyafBtubf274o2c6z9slyu3/HIVqint4Lh
 xDxK+rU86dxeocv2aJmidu41woyPiaDPkRkc+Km89G2jK8oC+yQ+rYsdr
 zDzk/hX6NuJreLYx7lp9l9SPPekCFYwM0Jswo4WntFe/o1PiVXWk8hBRp
 PeoEBSmWbQ+OOxFNSAPYAKuR6gPhPZA4AduMZwG0sxWpHJKlkWKBkoAYC
 3MUGTDgllllTGTag0vS0qiyrZLodklIZhCxqC9O/S0fgzLfNISz+422iG
 QxtR3XBPX0exggaquuDjy2Dy4FsOL8t5Yp+1d3izGgDLg7aiNO3nmUAr3 Q==;
X-CSE-ConnectionGUID: oMaiLdtOTHGtgVidsfLXaA==
X-CSE-MsgGUID: qpripIe5QG2lu2obUExDJA==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="8112492"
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; 
   d="scan'208";a="8112492"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 07:18:45 -0700
X-CSE-ConnectionGUID: xdAlf0RUT/SsDWW8zYde7g==
X-CSE-MsgGUID: 6/5e3DetSgqgyRxyJtfHFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; d="scan'208";a="51883842"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.246.52.84])
 ([10.246.52.84])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 07:18:43 -0700
Message-ID: <fd76d2fc-7906-4adc-9413-598c5768f991@linux.intel.com>
Date: Thu, 11 Apr 2024 16:18:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] drm/i915/gem: Calculate object page offset for
 partial memory mapping
To: Andi Shyti <andi.shyti@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Andi Shyti <andi.shyti@kernel.org>
References: <20240329163959.791865-1-andi.shyti@linux.intel.com>
 <20240329163959.791865-3-andi.shyti@linux.intel.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20240329163959.791865-3-andi.shyti@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andi,

On 3/29/2024 5:39 PM, Andi Shyti wrote:
> To enable partial memory mapping of GPU virtual memory, it's
> necessary to introduce an offset to the object's memory
> (obj->mm.pages) scatterlist. This adjustment compensates for
> instances when userspace mappings do not start from the beginning
> of the object.

I quickly tried 
https://gitlab.freedesktop.org/llandwerlin/igt-gpu-tools/-/tree/wip/gem_mmap_offset-partial-unmap?ref_type=heads 
that didn't work for GTT.

Please make sure a proper IGT test is available for this as this looks 
very risky change.


Regards,

Nirmoy

>
> Based on a patch by Chris Wilson.
>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_mman.c | 10 +++++++---
>   drivers/gpu/drm/i915/i915_mm.c           | 12 +++++++++++-
>   drivers/gpu/drm/i915/i915_mm.h           |  3 ++-
>   3 files changed, 20 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index ce10dd259812..9bd2b4c2e501 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -252,6 +252,7 @@ static vm_fault_t vm_fault_cpu(struct vm_fault *vmf)
>   	struct vm_area_struct *area = vmf->vma;
>   	struct i915_mmap_offset *mmo = area->vm_private_data;
>   	struct drm_i915_gem_object *obj = mmo->obj;
> +	unsigned long obj_offset;
>   	resource_size_t iomap;
>   	int err;
>   
> @@ -273,10 +274,11 @@ static vm_fault_t vm_fault_cpu(struct vm_fault *vmf)
>   		iomap -= obj->mm.region->region.start;
>   	}
>   
> +	obj_offset = area->vm_pgoff - drm_vma_node_start(&mmo->vma_node);
>   	/* PTEs are revoked in obj->ops->put_pages() */
>   	err = remap_io_sg(area,
>   			  area->vm_start, area->vm_end - area->vm_start,
> -			  obj->mm.pages->sgl, iomap);
> +			  obj->mm.pages->sgl, obj_offset, iomap);
>   
>   	if (area->vm_flags & VM_WRITE) {
>   		GEM_BUG_ON(!i915_gem_object_has_pinned_pages(obj));
> @@ -302,14 +304,16 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
>   	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
>   	bool write = area->vm_flags & VM_WRITE;
>   	struct i915_gem_ww_ctx ww;
> +	unsigned long obj_offset;
>   	intel_wakeref_t wakeref;
>   	struct i915_vma *vma;
>   	pgoff_t page_offset;
>   	int srcu;
>   	int ret;
>   
> -	/* We don't use vmf->pgoff since that has the fake offset */
> +	obj_offset = area->vm_pgoff - drm_vma_node_start(&mmo->vma_node);
>   	page_offset = (vmf->address - area->vm_start) >> PAGE_SHIFT;
> +	page_offset += obj_offset;
>   
>   	trace_i915_gem_object_fault(obj, page_offset, true, write);
>   
> @@ -404,7 +408,7 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
>   
>   	/* Finally, remap it using the new GTT offset */
>   	ret = remap_io_mapping(area,
> -			       area->vm_start + (vma->gtt_view.partial.offset << PAGE_SHIFT),
> +			       area->vm_start + ((vma->gtt_view.partial.offset - obj_offset) << PAGE_SHIFT),
>   			       (ggtt->gmadr.start + i915_ggtt_offset(vma)) >> PAGE_SHIFT,
>   			       min_t(u64, vma->size, area->vm_end - area->vm_start),
>   			       &ggtt->iomap);
> diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
> index 7998bc74ab49..f5c97a620962 100644
> --- a/drivers/gpu/drm/i915/i915_mm.c
> +++ b/drivers/gpu/drm/i915/i915_mm.c
> @@ -122,13 +122,15 @@ int remap_io_mapping(struct vm_area_struct *vma,
>    * @addr: target user address to start at
>    * @size: size of map area
>    * @sgl: Start sg entry
> + * @offset: offset from the start of the page
>    * @iobase: Use stored dma address offset by this address or pfn if -1
>    *
>    *  Note: this is only safe if the mm semaphore is held when called.
>    */
>   int remap_io_sg(struct vm_area_struct *vma,
>   		unsigned long addr, unsigned long size,
> -		struct scatterlist *sgl, resource_size_t iobase)
> +		struct scatterlist *sgl, unsigned long offset,
> +		resource_size_t iobase)
>   {
>   	struct remap_pfn r = {
>   		.mm = vma->vm_mm,
> @@ -141,6 +143,14 @@ int remap_io_sg(struct vm_area_struct *vma,
>   	/* We rely on prevalidation of the io-mapping to skip track_pfn(). */
>   	GEM_BUG_ON((vma->vm_flags & EXPECTED_FLAGS) != EXPECTED_FLAGS);
>   
> +	while (offset >= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT) {
> +		offset -= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT;
> +		r.sgt = __sgt_iter(__sg_next(r.sgt.sgp), use_dma(iobase));
> +		if (!r.sgt.sgp)
> +			return -EINVAL;
> +	}
> +	r.sgt.curr = offset << PAGE_SHIFT;
> +
>   	if (!use_dma(iobase))
>   		flush_cache_range(vma, addr, size);
>   
> diff --git a/drivers/gpu/drm/i915/i915_mm.h b/drivers/gpu/drm/i915/i915_mm.h
> index 04c8974d822b..69f9351b1a1c 100644
> --- a/drivers/gpu/drm/i915/i915_mm.h
> +++ b/drivers/gpu/drm/i915/i915_mm.h
> @@ -30,6 +30,7 @@ int remap_io_mapping(struct vm_area_struct *vma,
>   
>   int remap_io_sg(struct vm_area_struct *vma,
>   		unsigned long addr, unsigned long size,
> -		struct scatterlist *sgl, resource_size_t iobase);
> +		struct scatterlist *sgl, unsigned long offset,
> +		resource_size_t iobase);
>   
>   #endif /* __I915_MM_H__ */
