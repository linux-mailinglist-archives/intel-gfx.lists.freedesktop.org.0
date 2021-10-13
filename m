Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E99842C191
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 15:38:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A46616E0A8;
	Wed, 13 Oct 2021 13:38:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DBC46E0A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 13:38:46 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id y3so8618642wrl.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 06:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=6GA6XIU0Xc2Wra2poMYk2tEHx2fm42OJDzFKvGTc0pU=;
 b=Yc7WssjwCNmsEOWTT6PIXgw7MItSD2h8qIJP99dM+/t3mp/obwPqejVb5aukMz9wpI
 qW57wx9iu3PY3KMX8OQbgaFPphDMrx2hmKGKaMwkPDMc/GH+2ms5Nu/9VJyUVEo0fT9h
 GwvyhFe8OyvlFr2EkO0uQqdL3Rx4jHlimCaIg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6GA6XIU0Xc2Wra2poMYk2tEHx2fm42OJDzFKvGTc0pU=;
 b=3x+N4naBxY2EWC+gSonuo0JuqERqb2LN4ix+h2YlcvumGSvesci3xFvSWw0JWhrUTg
 5Lu81KoMbhI1ZjQRGq2n2lEeYhc610ORhZYM2e9F9gkRpaP7GmyhXpTSO+mT2JGXPTlo
 wxzFgzki5d+zlIzIvuiRqnuAKKmIQ74R8lkR5Vq2tXx8JaIhKG61jIM7qL0ubIiJgIZs
 ztZh5gUU3sa48AYGx2yqCVrBDrVXZlCXnV0tH4bEmg9nn49AzhM8ZpzXo6kBimToEPVG
 1ANdzXbMyZX0tYgJ8rJ0Gy/Hzf86NqXSFrYqje4pjEbaAG0GLtDBi/Y8bgBMYzilQR8P
 6d4w==
X-Gm-Message-State: AOAM5327021aCvQEp5yKTiRI/pxHAENL/coo61PUxxQmk0KHLO/X3Eiz
 UeehQB6ZZgZTERoAfGP3j8obQQ==
X-Google-Smtp-Source: ABdhPJysl3A9cB6JSDcHzq/6aFm5BowWZ+fJEhou3zKe2RRq7dui+MyPiJ+MIU324cJiQTdjK7l16g==
X-Received: by 2002:a05:6000:2a4:: with SMTP id
 l4mr41301610wry.221.1634132324696; 
 Wed, 13 Oct 2021 06:38:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id c185sm5419043wma.8.2021.10.13.06.38.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 06:38:44 -0700 (PDT)
Date: Wed, 13 Oct 2021 15:38:42 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ramalingam C <ramalingam.c@intel.com>
Cc: dri-devel <dri-devel@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Matthew Auld <matthew.auld@intel.com>, CQ Tang <cq.tang@intel.com>,
 Hellstrom Thomas <thomas.hellstrom@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <YWbhYrNaT0TS1D3a@phenom.ffwll.local>
References: <20211011161155.6397-1-ramalingam.c@intel.com>
 <20211011161155.6397-4-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211011161155.6397-4-ramalingam.c@intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 03/14] drm/i915/xehpsdv: enforce min GTT
 alignment
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

On Mon, Oct 11, 2021 at 09:41:44PM +0530, Ramalingam C wrote:
> From: Matthew Auld <matthew.auld@intel.com>
> 
> For local-memory objects we need to align the GTT addresses to 64K, both
> for the ppgtt and ggtt.
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Stuart Summers <stuart.summers@intel.com>
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>

Do we still need this with relocations removed? Userspace is picking all
the addresses for us, so all we have to check is whether userspace got it
right.
-Daniel


> ---
>  drivers/gpu/drm/i915/i915_vma.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 4b7fc4647e46..1ea1fa08efdf 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -670,8 +670,13 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
>  	}
>  
>  	color = 0;
> -	if (vma->obj && i915_vm_has_cache_coloring(vma->vm))
> -		color = vma->obj->cache_level;
> +	if (vma->obj) {
> +		if (HAS_64K_PAGES(vma->vm->i915) && i915_gem_object_is_lmem(vma->obj))
> +			alignment = max(alignment, I915_GTT_PAGE_SIZE_64K);
> +
> +		if (i915_vm_has_cache_coloring(vma->vm))
> +			color = vma->obj->cache_level;
> +	}
>  
>  	if (flags & PIN_OFFSET_FIXED) {
>  		u64 offset = flags & PIN_OFFSET_MASK;
> -- 
> 2.20.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
