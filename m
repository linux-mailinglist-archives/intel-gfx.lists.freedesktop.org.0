Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA874360D2
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 13:51:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EB5F6EB34;
	Thu, 21 Oct 2021 11:51:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8818B6EB34
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Oct 2021 11:51:07 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id o24so425404wms.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Oct 2021 04:51:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=vsbdXFkgwC3aPqeNa0ZYigIeOn2MLKgQXeMFSvcdSsE=;
 b=jpM+gyqTsAiWKAvkXe0a70TY+VDREr8jNs1AQ2mdgqof7A2DdFkB4XlzdmlaNESko2
 ZLx15zVgGF1LlHJh1CS9Uaa6YBWWwgn3vqy8m0q0TYoG9RWyCC4UyBMC6BY+Oq17Suz4
 HUHLU7hobSuhcuzmSVY+qA7byr1PJXkDU+9kQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vsbdXFkgwC3aPqeNa0ZYigIeOn2MLKgQXeMFSvcdSsE=;
 b=Sfz/mYq+EVogUMJkVshxmabtlOqL2g4ko1gn9x52pu5d60TOyl53fWNM7032kJKrUB
 tulutEY4M138kN8iVRo8x9FfO4NwwRsuM+yAemvAQF28KhiFQJlJR7am+KeuOBDIaLws
 LHphkpenL99dC4vkIZS58DEaiQVq2tUiWikHXJNkU6vu1qnRdSF+POK9TS90gsO4nHWv
 ceiWSajy4UzgHZZvyZBkHM6VrKSCgnV/RU7gRsAQ8XeFFRF1Ix0eNGBliKfXN+YOTDy5
 RFbpyVT98IDo15QJrTpE9Vqo3wZkrWB2euVgOmh7tM3GL0USp/N7kh/IGstbW1ypanfV
 jm+Q==
X-Gm-Message-State: AOAM531KojUD9+cfpNOEGw3E8Lb7B/hRW3bnABMbqSE8wCW49Psi4XkA
 6TfXkNrXxWRyE4DGNXr/l9RW5A==
X-Google-Smtp-Source: ABdhPJz0JNnYfcNq+4EhddRo2SIdnOTeCmvEpzukKTjLMvZJFhMXPAidJruU7Lr49f5/21WdrByEJA==
X-Received: by 2002:a1c:f213:: with SMTP id s19mr20569098wmc.169.1634817066110; 
 Thu, 21 Oct 2021 04:51:06 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id x7sm4632673wrq.69.2021.10.21.04.51.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Oct 2021 04:51:05 -0700 (PDT)
Date: Thu, 21 Oct 2021 13:51:03 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Chris Wilson <chris@chris-wilson.co.uk>, dri-devel@lists.freedesktop.org
Message-ID: <YXFUJ0jbr4iD9JAD@phenom.ffwll.local>
References: <20211020090625.1037517-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211020090625.1037517-1-lucas.demarchi@intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: stop using PAGE_KERNEL_IO
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

On Wed, Oct 20, 2021 at 02:06:25AM -0700, Lucas De Marchi wrote:
> PAGE_KERNEL_IO is only defined for x86 and is the same as PAGE_KERNEL.
> Use the latter since that is also available on other archs, which should
> help us getting i915 there.
> 
> This is the same that was done done in commit 80c33624e472 ("io-mapping:
> Fixup for different names of writecombine"). Later the commit
> 80c33624e472 ("io-mapping: Fixup for different names of writecombine")
> added a "Fixes" tag to the first one, but that is actually fixing a
> separate issue:  the different names for pgprot_writecombine().
> 
> Fast-forward today, it seems the only 2 archs that define
> pgprot_noncached_wc() are microblaze and powerpc. Microblaze has the
> same definition for pgprot_writecombine() since commit
> 97ccedd793ac ("microblaze: Provide pgprot_device/writecombine macros for
> nommu"). Powerpc has 3 variants and all of them have the same behavior
> for pgprot_writecombine() and pgprot_noncached_wc(). From the commit message
> and linked issue, the fallback was needed for arm, but apparently today
> all the variants there also have pgprot_writecombine().
> 
> So, just use PAGE_KERNEL, and just use pgprot_writecombine().
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

I think a bit more history on PAGE_KERNEL_IO is useful to add. It was
added in be43d72835ba ("x86: add _PAGE_IOMAP pte flag for IO mappings").
The one and only user was lost in f955371ca9d3 ("x86: remove the
Xen-specific _PAGE_IOMAP PTE flag"), therefore it's safe to do this.

With that added Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Also if you're motivated, maybe delete PAGE_KERNEL_IO across the tree and
get x86 maintainers to merge the entire series?
-Daniel


> ---
>  drivers/gpu/drm/i915/gem/i915_gem_pages.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> index 8eb1c3a6fc9c..68fe1837ef54 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> @@ -289,7 +289,7 @@ static void *i915_gem_object_map_page(struct drm_i915_gem_object *obj,
>  		pgprot = PAGE_KERNEL;
>  		break;
>  	case I915_MAP_WC:
> -		pgprot = pgprot_writecombine(PAGE_KERNEL_IO);
> +		pgprot = pgprot_writecombine(PAGE_KERNEL);
>  		break;
>  	}
>  
> @@ -333,7 +333,7 @@ static void *i915_gem_object_map_pfn(struct drm_i915_gem_object *obj,
>  	i = 0;
>  	for_each_sgt_daddr(addr, iter, obj->mm.pages)
>  		pfns[i++] = (iomap + addr) >> PAGE_SHIFT;
> -	vaddr = vmap_pfn(pfns, n_pfn, pgprot_writecombine(PAGE_KERNEL_IO));
> +	vaddr = vmap_pfn(pfns, n_pfn, pgprot_writecombine(PAGE_KERNEL));
>  	if (pfns != stack)
>  		kvfree(pfns);
>  
> -- 
> 2.33.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
