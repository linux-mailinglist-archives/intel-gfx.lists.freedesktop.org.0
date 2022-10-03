Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E225F3740
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 22:42:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BAEE10E4D7;
	Mon,  3 Oct 2022 20:42:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20B3310E406
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 20:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664829754; x=1696365754;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=rqcnK+PwvMAiYK1irvWKPnkP7lNmZNKCLZ6pwjjl5Ok=;
 b=OIBF0wD1uNDXpxlSInck6lT8EF7b/wuGM0HcAFRS4k1qYraocmipohDR
 pmDSpZZhQoEI/9dp6BsJEkSFQAXX8UL8SGRSoE2mN5us8otmbWVDW79qr
 F5dQwzyrF8l0F22miSegCXV7K2Rawwo5rMT4UifnPsvUBP9ylDqMUjBfO
 3Mok67PEAx2om6DEt4gjIamUY2R0QjfFgmftWqVbFRLPBQeiDIVPOhMvH
 TSvFmhLgSRwCVcK2g8BV5piCnk5O56jkR/QMLbCU4uZ0JpoBkb2Jv2/Oq
 K3XuddRwWkDBt58siTScemyAPYAbsakjSekURc59Vd3XlQhh3qbPLYyhP A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="300357186"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="300357186"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 13:42:33 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="625938484"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="625938484"
Received: from kbalinsk-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.213.7.91])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 13:42:30 -0700
Date: Mon, 3 Oct 2022 22:42:27 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <YztJM1JtEwWcaIz0@ashyti-mobl2.lan>
References: <20221003172819.99245-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221003172819.99245-1-matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/ttm: implement access_memory
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

On Mon, Oct 03, 2022 at 06:28:19PM +0100, Matthew Auld wrote:
> It looks like we need this for local-memory, if we want to use ptrace.
> Something more is still needed if we want to handle non-mappable memory,
> which looks quite annoying.
> 
> v2:
>   - ttm_bo_kmap doesn't seem to work well here, and seems to expect
>     contiguous resource.
> v3(Andi):
>   - s/PAGE_SIZE/bytes/ when passing in the size of the mapping.
> 
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/6989
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 45 +++++++++++++++++++++++++
>  1 file changed, 45 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index 3dc6acfcf4ec..d11cd9c57247 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -699,6 +699,50 @@ static unsigned long i915_ttm_io_mem_pfn(struct ttm_buffer_object *bo,
>  	return ((base + sg_dma_address(sg)) >> PAGE_SHIFT) + ofs;
>  }
>  
> +static int i915_ttm_access_memory(struct ttm_buffer_object *bo,
> +				  unsigned long offset, void *buf,
> +				  int len, int write)
> +{
> +	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
> +	resource_size_t iomap = obj->mm.region->iomap.base -
> +		obj->mm.region->region.start;
> +	unsigned long page = offset >> PAGE_SHIFT;
> +	unsigned long bytes_left = len;
> +
> +	/*
> +	 * TODO: For now just let it fail if the resource is non-mappable,
> +	 * otherwise we need to perform the memcpy from the gpu here, without
> +	 * interfering with the object (like moving the entire thing).
> +	 */
> +	if (!i915_ttm_resource_mappable(bo->resource))
> +		return -EIO;
> +
> +	offset -= page << PAGE_SHIFT;
> +	do {
> +		unsigned long bytes = min(bytes_left, PAGE_SIZE - offset);
> +		void __iomem *ptr;
> +		dma_addr_t daddr;
> +
> +		daddr = i915_gem_object_get_dma_address(obj, page);
> +		ptr = ioremap_wc(iomap + daddr + offset, bytes);
> +		if (!ptr)
> +			return -EIO;
> +
> +		if (write)
> +			memcpy_toio(ptr, buf, bytes);
> +		else
> +			memcpy_fromio(buf, ptr, bytes);
> +		iounmap(ptr);
> +
> +		page++;
> +		buf += bytes;
> +		bytes_left -= bytes;
> +		offset = 0;
> +	} while (bytes_left);
> +
> +	return len;
> +}
> +
>  /*
>   * All callbacks need to take care not to downcast a struct ttm_buffer_object
>   * without checking its subclass, since it might be a TTM ghost object.
> @@ -715,6 +759,7 @@ static struct ttm_device_funcs i915_ttm_bo_driver = {
>  	.delete_mem_notify = i915_ttm_delete_mem_notify,
>  	.io_mem_reserve = i915_ttm_io_mem_reserve,
>  	.io_mem_pfn = i915_ttm_io_mem_pfn,
> +	.access_memory = i915_ttm_access_memory,
>  };
>  
>  /**
> -- 
> 2.37.3
