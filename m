Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 460AD14FE60
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Feb 2020 17:43:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4230E6EB01;
	Sun,  2 Feb 2020 16:43:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B64416E0D6
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Feb 2020 16:43:09 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id c9so14887380wrw.8
 for <intel-gfx@lists.freedesktop.org>; Sun, 02 Feb 2020 08:43:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=oKxhO9qiKY5KoKoC+IjW7wZDfQGuny83n7+HRt7kNGo=;
 b=WXo+nGOUep9GiiQXiaMx1VVZTcN8wcNNXjEybYENqnARgMcdMNDfwBICwBt3zGsV8n
 ZzX75Ok+lz6nDtMv9kaJooX139wnFD12p4aK7HZ8fWr0F7S1VOl1HSyfa6mpyKZ3+tcd
 5XfuzJciVbvV038iMtCMkBh2aRGkA1tEfiNuA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=oKxhO9qiKY5KoKoC+IjW7wZDfQGuny83n7+HRt7kNGo=;
 b=eGWnv/PUOwGMHX6dewTlXZBaNUt7Uocw5AR89dCHaj9pp2BYswJy4uqEMDTujFFB2C
 9v1A03gbrRp2YExsKYfpHP4X7jTXC4LlMlijSvsZ3A+vxSfmOEru/4rrQ0+PCZO8/oe0
 b+BJZ4m/NFZT0pngjeRb7v1Wn4Bu6081VUg4Nfd1ylztTSVWTRG9l+LPWe06I6VUUre2
 AprCfn7gxoIX+B6EKjosEGn6wm+PHhNryd5o7xfI/Byh7EdNov5r44092jD1EQX7ByeT
 eRo8Yqq0N+/Guou9qiyx2s1j7p1yjJF9gX/iHaHwRlUmKa/WAPI+B6AmGhlMQwmMiXWZ
 Rh8g==
X-Gm-Message-State: APjAAAWM1baaYRCB8tV8OrjO7Mpp32wol6fZZoZbDrRW6cYNqj81Hssb
 vQUbeSc/Dw5TT9FQsufEJ57xzuzKbYN5mQ==
X-Google-Smtp-Source: APXvYqy8vTmPakSDyd9zPcYFoUOTSn3PagUfsV44KVdme6TKEVEXU4xzeAkjvVcAGB8TBrQBBhZ90Q==
X-Received: by 2002:a5d:4c88:: with SMTP id z8mr10748338wrs.395.1580661788447; 
 Sun, 02 Feb 2020 08:43:08 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a1sm21367490wrr.80.2020.02.02.08.43.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 08:43:07 -0800 (PST)
Date: Sun, 2 Feb 2020 17:43:06 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200202164306.GQ43062@phenom.ffwll.local>
References: <20200202161009.3969641-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200202161009.3969641-1-chris@chris-wilson.co.uk>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm: Remove PageReserved manipulation from
 drm_pci_alloc
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Feb 02, 2020 at 04:10:09PM +0000, Chris Wilson wrote:
> drm_pci_alloc/drm_pci_free are very thin wrappers around the core dma
> facilities, and we have no special reason within the drm layer to behave
> differently. In particular, since
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
> it has been illegal to combine GFP_COMP with SetPageReserved, so lets
> stop doing both and leave the dma layer to its own devices.
> 
> Reported-by: Taketo Kabe
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1027
> Fixes: de09d31dd38a ("page-flags: define PG_reserved behavior on compound pages")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: <stable@vger.kernel.org> # v4.5+

Given that after your i915 patch only mga and r128 still use this I think
deleting code is the best action here.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/drm_pci.c | 23 ++---------------------
>  1 file changed, 2 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_pci.c b/drivers/gpu/drm/drm_pci.c
> index f2e43d341980..d16dac4325f9 100644
> --- a/drivers/gpu/drm/drm_pci.c
> +++ b/drivers/gpu/drm/drm_pci.c
> @@ -51,8 +51,6 @@
>  drm_dma_handle_t *drm_pci_alloc(struct drm_device * dev, size_t size, size_t align)
>  {
>  	drm_dma_handle_t *dmah;
> -	unsigned long addr;
> -	size_t sz;
>  
>  	/* pci_alloc_consistent only guarantees alignment to the smallest
>  	 * PAGE_SIZE order which is greater than or equal to the requested size.
> @@ -68,20 +66,13 @@ drm_dma_handle_t *drm_pci_alloc(struct drm_device * dev, size_t size, size_t ali
>  	dmah->size = size;
>  	dmah->vaddr = dma_alloc_coherent(&dev->pdev->dev, size,
>  					 &dmah->busaddr,
> -					 GFP_KERNEL | __GFP_COMP);
> +					 GFP_KERNEL);
>  
>  	if (dmah->vaddr == NULL) {
>  		kfree(dmah);
>  		return NULL;
>  	}
>  
> -	/* XXX - Is virt_to_page() legal for consistent mem? */
> -	/* Reserve */
> -	for (addr = (unsigned long)dmah->vaddr, sz = size;
> -	     sz > 0; addr += PAGE_SIZE, sz -= PAGE_SIZE) {
> -		SetPageReserved(virt_to_page((void *)addr));
> -	}
> -
>  	return dmah;
>  }
>  
> @@ -94,19 +85,9 @@ EXPORT_SYMBOL(drm_pci_alloc);
>   */
>  void __drm_legacy_pci_free(struct drm_device * dev, drm_dma_handle_t * dmah)
>  {
> -	unsigned long addr;
> -	size_t sz;
> -
> -	if (dmah->vaddr) {
> -		/* XXX - Is virt_to_page() legal for consistent mem? */
> -		/* Unreserve */
> -		for (addr = (unsigned long)dmah->vaddr, sz = dmah->size;
> -		     sz > 0; addr += PAGE_SIZE, sz -= PAGE_SIZE) {
> -			ClearPageReserved(virt_to_page((void *)addr));
> -		}
> +	if (dmah->vaddr)
>  		dma_free_coherent(&dev->pdev->dev, dmah->size, dmah->vaddr,
>  				  dmah->busaddr);
> -	}
>  }
>  
>  /**
> -- 
> 2.25.0
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
