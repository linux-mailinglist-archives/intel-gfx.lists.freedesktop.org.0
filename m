Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E109714FE5C
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Feb 2020 17:42:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C53176E0CF;
	Sun,  2 Feb 2020 16:42:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3057B6E0CF
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Feb 2020 16:42:11 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id k11so14866030wrd.9
 for <intel-gfx@lists.freedesktop.org>; Sun, 02 Feb 2020 08:42:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=B2z3mogKcy0xJhRngVdq+5os5lXZKpIatWVOL2fLzG8=;
 b=luu/SpSE04/8sOOPQCMT68BFHhhJWll3v0mesXR+eM76/2WqGezDN+cz5wr7IHDvOs
 gfXJAq3nbMrGQorcbtJm+/Z8t5ljp5Up/hzXiVXDR6kz3cNIVa8r3j39x2cgXA6N5T04
 evEEf6ln1sth8koPJG2J8pobYmoCYUHKPFbjM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=B2z3mogKcy0xJhRngVdq+5os5lXZKpIatWVOL2fLzG8=;
 b=YEfz7pYpaGvLSspydtrz0eJCqi89jhfvv1gDlUuSiL7Ivy2W6bUt4EiK8ksLt5osEo
 wpdezmwaDS1sBjCPLasNA9pDw+8ywoS6FHu0rENq3he3jzaDTJODyKVk1XP+nYunTS1g
 dxJ+FGGhXOdp6QSmmzWEoQZcWL9O2DvcQblUi4pcKYw9w3DAYnJ7EmelknguXXjG0UUN
 mpVrDt+OTDbmnmu8yUu0rAJwdE8iI44hoLL6MdyIHR538h0dhCxWqPdmc5jjbPkDdtkg
 pTCm9QjOCbpt8licN2mHzSicW996jpInewQaJEOE2h59oOeRXKLvGWCbv5uhJY5ORljC
 U+Ig==
X-Gm-Message-State: APjAAAUkAwIK3kLZiOv8S635Oo/yv1shkM6T0mFHAZYQfiHVAiOcxDrO
 N6EpBwhwjV4nn7zvaEBEpeRSKg==
X-Google-Smtp-Source: APXvYqze0DZAhRmfkC5IRlmqXX/qBqys//AAmWc1M4GUPpdT3cKjU9I3dmFbKQ8PwG/y36iae995rQ==
X-Received: by 2002:adf:e746:: with SMTP id c6mr10238712wrn.323.1580661729637; 
 Sun, 02 Feb 2020 08:42:09 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id k7sm19369213wmi.19.2020.02.02.08.42.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 08:42:08 -0800 (PST)
Date: Sun, 2 Feb 2020 17:42:07 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200202164207.GP43062@phenom.ffwll.local>
References: <20200202153934.3899472-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200202153934.3899472-1-chris@chris-wilson.co.uk>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Wean off
 drm_pci_alloc/drm_pci_free
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Feb 02, 2020 at 03:39:34PM +0000, Chris Wilson wrote:
> drm_pci_alloc and drm_pci_free are just very thin wrappers around
> dma_alloc_coherent, with a note that we should be removing them.
> Furthermore since
> 
> commit de09d31dd38a50fdce106c15abd68432eebbd014
> Author: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
> Date:   Fri Jan 15 16:51:42 2016 -0800
> 
>     page-flags: define PG_reserved behavior on compound pages
> 
>     As far as I can see there's no users of PG_reserved on compound pages.
>     Let's use PF_NO_COMPOUND here.
> 
> drm_pci_alloc has been declared broken since it mixes GFP_COMP and
> SetPageReserved. Avoid this conflict by weaning ourselves off using the
> abstraction and using the dma functions directly.
> 
> Reported-by: Taketo Kabe
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1027
> Fixes: de09d31dd38a ("page-flags: define PG_reserved behavior on compound pages")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: <stable@vger.kernel.org> # v4.5+

Assuming i915gm or whatever phys_cursor machine you have around is still
happy with all that (not even sure we ever managed to create igts for
testing the cursor on these properly).

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
>  .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 -
>  drivers/gpu/drm/i915/gem/i915_gem_phys.c      | 98 ++++++++++---------
>  drivers/gpu/drm/i915/i915_gem.c               |  8 +-
>  4 files changed, 55 insertions(+), 56 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index b0af37fb6d4a..1f584263aa97 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -11234,7 +11234,7 @@ static u32 intel_cursor_base(const struct intel_plane_state *plane_state)
>  	u32 base;
>  
>  	if (INTEL_INFO(dev_priv)->display.cursor_needs_physical)
> -		base = obj->phys_handle->busaddr;
> +		base = sg_dma_address(obj->mm.pages->sgl);
>  	else
>  		base = intel_plane_ggtt_offset(plane_state);
>  
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index f64ad77e6b1e..c2174da35bb0 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -285,9 +285,6 @@ struct drm_i915_gem_object {
>  
>  		void *gvt_info;
>  	};
> -
> -	/** for phys allocated objects */
> -	struct drm_dma_handle *phys_handle;
>  };
>  
>  static inline struct drm_i915_gem_object *
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> index b1b7c1b3038a..b07bb40edd5a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> @@ -22,88 +22,87 @@
>  static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *obj)
>  {
>  	struct address_space *mapping = obj->base.filp->f_mapping;
> -	struct drm_dma_handle *phys;
> -	struct sg_table *st;
>  	struct scatterlist *sg;
> -	char *vaddr;
> +	struct sg_table *st;
> +	dma_addr_t dma;
> +	void *vaddr;
> +	void *dst;
>  	int i;
> -	int err;
>  
>  	if (WARN_ON(i915_gem_object_needs_bit17_swizzle(obj)))
>  		return -EINVAL;
>  
> -	/* Always aligning to the object size, allows a single allocation
> +	/*
> +	 * Always aligning to the object size, allows a single allocation
>  	 * to handle all possible callers, and given typical object sizes,
>  	 * the alignment of the buddy allocation will naturally match.
>  	 */
> -	phys = drm_pci_alloc(obj->base.dev,
> -			     roundup_pow_of_two(obj->base.size),
> -			     roundup_pow_of_two(obj->base.size));
> -	if (!phys)
> +	vaddr = dma_alloc_coherent(&obj->base.dev->pdev->dev,
> +				   roundup_pow_of_two(obj->base.size),
> +				   &dma, GFP_KERNEL);
> +	if (!vaddr)
>  		return -ENOMEM;
>  
> -	vaddr = phys->vaddr;
> +	st = kmalloc(sizeof(*st), GFP_KERNEL);
> +	if (!st)
> +		goto err_pci;
> +
> +	if (sg_alloc_table(st, 1, GFP_KERNEL))
> +		goto err_st;
> +
> +	sg = st->sgl;
> +	sg->offset = 0;
> +	sg->length = obj->base.size;
> +
> +	sg_assign_page(sg, (struct page *)vaddr);
> +	sg_dma_address(sg) = dma;
> +	sg_dma_len(sg) = obj->base.size;
> +
> +	dst = vaddr;
>  	for (i = 0; i < obj->base.size / PAGE_SIZE; i++) {
>  		struct page *page;
> -		char *src;
> +		void *src;
>  
>  		page = shmem_read_mapping_page(mapping, i);
> -		if (IS_ERR(page)) {
> -			err = PTR_ERR(page);
> -			goto err_phys;
> -		}
> +		if (IS_ERR(page))
> +			goto err_st;
>  
>  		src = kmap_atomic(page);
> -		memcpy(vaddr, src, PAGE_SIZE);
> -		drm_clflush_virt_range(vaddr, PAGE_SIZE);
> +		memcpy(dst, src, PAGE_SIZE);
> +		drm_clflush_virt_range(dst, PAGE_SIZE);
>  		kunmap_atomic(src);
>  
>  		put_page(page);
> -		vaddr += PAGE_SIZE;
> +		dst += PAGE_SIZE;
>  	}
>  
>  	intel_gt_chipset_flush(&to_i915(obj->base.dev)->gt);
>  
> -	st = kmalloc(sizeof(*st), GFP_KERNEL);
> -	if (!st) {
> -		err = -ENOMEM;
> -		goto err_phys;
> -	}
> -
> -	if (sg_alloc_table(st, 1, GFP_KERNEL)) {
> -		kfree(st);
> -		err = -ENOMEM;
> -		goto err_phys;
> -	}
> -
> -	sg = st->sgl;
> -	sg->offset = 0;
> -	sg->length = obj->base.size;
> -
> -	sg_dma_address(sg) = phys->busaddr;
> -	sg_dma_len(sg) = obj->base.size;
> -
> -	obj->phys_handle = phys;
> -
>  	__i915_gem_object_set_pages(obj, st, sg->length);
>  
>  	return 0;
>  
> -err_phys:
> -	drm_pci_free(obj->base.dev, phys);
> -
> -	return err;
> +err_st:
> +	kfree(st);
> +err_pci:
> +	dma_free_coherent(&obj->base.dev->pdev->dev,
> +			  roundup_pow_of_two(obj->base.size),
> +			  vaddr, dma);
> +	return -ENOMEM;
>  }
>  
>  static void
>  i915_gem_object_put_pages_phys(struct drm_i915_gem_object *obj,
>  			       struct sg_table *pages)
>  {
> +	dma_addr_t dma = sg_dma_address(pages->sgl);
> +	void *vaddr = sg_page(pages->sgl);
> +
>  	__i915_gem_object_release_shmem(obj, pages, false);
>  
>  	if (obj->mm.dirty) {
>  		struct address_space *mapping = obj->base.filp->f_mapping;
> -		char *vaddr = obj->phys_handle->vaddr;
> +		void *src = vaddr;
>  		int i;
>  
>  		for (i = 0; i < obj->base.size / PAGE_SIZE; i++) {
> @@ -115,15 +114,16 @@ i915_gem_object_put_pages_phys(struct drm_i915_gem_object *obj,
>  				continue;
>  
>  			dst = kmap_atomic(page);
> -			drm_clflush_virt_range(vaddr, PAGE_SIZE);
> -			memcpy(dst, vaddr, PAGE_SIZE);
> +			drm_clflush_virt_range(src, PAGE_SIZE);
> +			memcpy(dst, src, PAGE_SIZE);
>  			kunmap_atomic(dst);
>  
>  			set_page_dirty(page);
>  			if (obj->mm.madv == I915_MADV_WILLNEED)
>  				mark_page_accessed(page);
>  			put_page(page);
> -			vaddr += PAGE_SIZE;
> +
> +			src += PAGE_SIZE;
>  		}
>  		obj->mm.dirty = false;
>  	}
> @@ -131,7 +131,9 @@ i915_gem_object_put_pages_phys(struct drm_i915_gem_object *obj,
>  	sg_free_table(pages);
>  	kfree(pages);
>  
> -	drm_pci_free(obj->base.dev, obj->phys_handle);
> +	dma_free_coherent(&obj->base.dev->pdev->dev,
> +			  roundup_pow_of_two(obj->base.size),
> +			  vaddr, dma);
>  }
>  
>  static void phys_release(struct drm_i915_gem_object *obj)
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 7245e056ce77..a712e60b016a 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -180,7 +180,7 @@ i915_gem_phys_pwrite(struct drm_i915_gem_object *obj,
>  		     struct drm_i915_gem_pwrite *args,
>  		     struct drm_file *file)
>  {
> -	void *vaddr = obj->phys_handle->vaddr + args->offset;
> +	void *vaddr = sg_page(obj->mm.pages->sgl) + args->offset;
>  	char __user *user_data = u64_to_user_ptr(args->data_ptr);
>  
>  	/*
> @@ -844,10 +844,10 @@ i915_gem_pwrite_ioctl(struct drm_device *dev, void *data,
>  		ret = i915_gem_gtt_pwrite_fast(obj, args);
>  
>  	if (ret == -EFAULT || ret == -ENOSPC) {
> -		if (obj->phys_handle)
> -			ret = i915_gem_phys_pwrite(obj, args, file);
> -		else
> +		if (i915_gem_object_has_struct_page(obj))
>  			ret = i915_gem_shmem_pwrite(obj, args);
> +		else
> +			ret = i915_gem_phys_pwrite(obj, args, file);
>  	}
>  
>  	i915_gem_object_unpin_pages(obj);
> -- 
> 2.25.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
