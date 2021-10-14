Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D64CD42DA85
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 15:33:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CFA26E893;
	Thu, 14 Oct 2021 13:33:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 635946E893
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 13:33:41 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id r18so24264427edv.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 06:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=tDsYb2O9ylqW7Ss2K5s9nrfev8gLYMTY+dJxMjCccFQ=;
 b=kDNfZGo2NEt0QtAc/c+G2Ufi9IuL17iXy14SOD4Vl+e7OceIH4hUBbvmmr5xT1Jl18
 xG2KL5bQJnW+Ts1+JNU42S3cgcMO7yog2LsFBK8WzKDkFugPJWSvBKCAq8JqwNgQx532
 zvYY+6/ylC+N55pdevszAUfOhm41sr7Ud+X1w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tDsYb2O9ylqW7Ss2K5s9nrfev8gLYMTY+dJxMjCccFQ=;
 b=Ia7ecyWZ9QimRJWMjUzifFmGivlkz2hvboNIrRDRWJvpdtxFkk7araIIWeSYvJXUj3
 KnFU1V5q10ITTY31bLLgeonc1v/ig77c1nh20O8he6gBPt3oQJJAtSVjtgP2zIfIHNDy
 APGQ780baWU/1VIpfYCi/JIxgPRhCgBTdjZrhq2AtfYenYDranjHqsUgoW+hr49KeBJp
 Jtb2ABdmLVqs7Gc4U8GqXXmqKJBZp7vIs3FliwTbCXYRDrNJjEI9cALyEX/izZLStloI
 ryfzeQDKtW6mlyJApDngIZM+V0JrvH/+VyjBfMawkAzhWgUIfkpLa3fo6Ul/CudRHwA1
 8KxA==
X-Gm-Message-State: AOAM531ym/m7PvvHdWQeMpWr5HDVVteUw+cpf8fQopzrtKEhu6nSzJwe
 IV5G8BLrjiIA6zzMFXjhCZWbkg==
X-Google-Smtp-Source: ABdhPJwXNnfZWYWi6Hjvai8ksKalaS/LTYSmEW6CB192bNoUPnhJ+orKQtU+9qqEf30Brzn83f67DA==
X-Received: by 2002:a17:907:628d:: with SMTP id
 nd13mr4004601ejc.7.1634218410796; 
 Thu, 14 Oct 2021 06:33:30 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id e7sm2703638edz.95.2021.10.14.06.33.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Oct 2021 06:33:30 -0700 (PDT)
Date: Thu, 14 Oct 2021 15:33:28 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Auld <matthew.auld@intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, Ramalingam C <ramalingam.c@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, CQ Tang <cq.tang@intel.com>,
 Hellstrom Thomas <thomas.hellstrom@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <YWgxqGYS8Ps3JtqD@phenom.ffwll.local>
References: <20211011161155.6397-1-ramalingam.c@intel.com>
 <20211011161155.6397-4-ramalingam.c@intel.com>
 <YWbhYrNaT0TS1D3a@phenom.ffwll.local>
 <50362606-46a1-0a41-8063-5dca5ac99b98@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <50362606-46a1-0a41-8063-5dca5ac99b98@intel.com>
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

On Wed, Oct 13, 2021 at 03:13:33PM +0100, Matthew Auld wrote:
> On 13/10/2021 14:38, Daniel Vetter wrote:
> > On Mon, Oct 11, 2021 at 09:41:44PM +0530, Ramalingam C wrote:
> > > From: Matthew Auld <matthew.auld@intel.com>
> > > 
> > > For local-memory objects we need to align the GTT addresses to 64K, both
> > > for the ppgtt and ggtt.
> > > 
> > > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > > Signed-off-by: Stuart Summers <stuart.summers@intel.com>
> > > Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> > > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > 
> > Do we still need this with relocations removed? Userspace is picking all
> > the addresses for us, so all we have to check is whether userspace got it
> > right.
> 
> Yeah, for OFFSET_FIXED this just validates that the provided address is
> correctly aligned to 64K, while for the in-kernel insertion stuff we still
> need to allocate an address that is aligned to 64K. Setting the alignment
> here handles both cases.

Can't we just teach any in-kernel allocators to align to 2M and call it a
day? Ofc the code can still validate we don't have bugs (always good to
check your work). Ofc if the benefits is "no code can be removed anyway
since we still need to check" then ofc no point :-)

Just want to make sure we're not carrying complexity around for nothing,
since this predates the relocation removal.
-Daniel

> 
> > -Daniel
> > 
> > 
> > > ---
> > >   drivers/gpu/drm/i915/i915_vma.c | 9 +++++++--
> > >   1 file changed, 7 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> > > index 4b7fc4647e46..1ea1fa08efdf 100644
> > > --- a/drivers/gpu/drm/i915/i915_vma.c
> > > +++ b/drivers/gpu/drm/i915/i915_vma.c
> > > @@ -670,8 +670,13 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
> > >   	}
> > >   	color = 0;
> > > -	if (vma->obj && i915_vm_has_cache_coloring(vma->vm))
> > > -		color = vma->obj->cache_level;
> > > +	if (vma->obj) {
> > > +		if (HAS_64K_PAGES(vma->vm->i915) && i915_gem_object_is_lmem(vma->obj))
> > > +			alignment = max(alignment, I915_GTT_PAGE_SIZE_64K);
> > > +
> > > +		if (i915_vm_has_cache_coloring(vma->vm))
> > > +			color = vma->obj->cache_level;
> > > +	}
> > >   	if (flags & PIN_OFFSET_FIXED) {
> > >   		u64 offset = flags & PIN_OFFSET_MASK;
> > > -- 
> > > 2.20.1
> > > 
> > 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
