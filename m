Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 066973C8882
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 18:17:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E1F46E425;
	Wed, 14 Jul 2021 16:17:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E5916E426
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 16:17:03 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 l8-20020a05600c1d08b02902333d79327aso1185637wms.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 09:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=xLvEIunR+pwyTLygxxhDksgMrMJqV8PMSJ8mJX/dF5o=;
 b=RBHFjPS2lt9hPBo0fvNhPZChAclD6QXrybWuI5eq2dNeLFhvH2OVpMmt+tYMkuxssq
 UUeMrczViK3R7f6LCxSU8IvckSMBbnXWfUvsz3ToPcZ3TD1AZOLsNU/DVkFYHDuIkLZ9
 fcar8IuGuUG6WtkOrdr50sr8JqkUyQPKRZZf8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=xLvEIunR+pwyTLygxxhDksgMrMJqV8PMSJ8mJX/dF5o=;
 b=CzkQ/z8+HwQ5A396+uaDSsFuMDaeUsOhj7jtCH3UwlCa2UkgI4Id38buEoI6mgk4Im
 nsFI/gUNxEQAy2307aVmLfrB3jGpaCL/8Lf19o137Re+2GZbD5oVA2FKNTaQHv1CSRLC
 X/YWwBpy7IiGmhpHHzKs37OM1jLnvZkPEdAvgWbGD37NRJr3XgW0ddVkZiXGxv8PHdWh
 b/u8gyCGwM2KhdZ5yXMLxJ2LVGwJlbZwssYbT/SO3mkfBHFLigdFQu21UURIEHVyfFy+
 mzQc7DVRtMabCM+AvtI8hhkHxJp5c5gHvBKjzQWA8MEVwi1hl+2nQqvZcEOPEbOQI8oU
 Xz0g==
X-Gm-Message-State: AOAM5303F+5ZfgXIlGnSIFJsHrNwNETCbLGTIEs2sxV11XCVjmHG/EsW
 oUUbrMZjsZxfMLgxS4tki370bA==
X-Google-Smtp-Source: ABdhPJw3fGTCKscC8Eja2YoVISBQJhJfMw7HrTIbG1OLL+B90GfVjIApxDmOwz91rCK31ojM/TJFhg==
X-Received: by 2002:a1c:6a18:: with SMTP id f24mr4992327wmc.10.1626279421897; 
 Wed, 14 Jul 2021 09:17:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id x9sm3243679wrm.82.2021.07.14.09.17.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Jul 2021 09:17:01 -0700 (PDT)
Date: Wed, 14 Jul 2021 18:16:59 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YO8N+/1S+HvwxfWM@phenom.ffwll.local>
References: <20210713205153.1896059-1-daniel.vetter@ffwll.ch>
 <20210713205153.1896059-4-daniel.vetter@ffwll.ch>
 <4626a7d7-95ca-104c-753a-07a9d83b0b28@amd.com>
 <YO7dKP2l9n0rLjDV@phenom.ffwll.local>
 <31608068-97ba-70e7-b496-650bac88e0db@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <31608068-97ba-70e7-b496-650bac88e0db@amd.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH v4 3/4] drm/shmem-helpers: Allocate wc pages
 on x86
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
Cc: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 14, 2021 at 02:58:26PM +0200, Christian K=F6nig wrote:
> Am 14.07.21 um 14:48 schrieb Daniel Vetter:
> > On Wed, Jul 14, 2021 at 01:54:50PM +0200, Christian K=F6nig wrote:
> > > Am 13.07.21 um 22:51 schrieb Daniel Vetter:
> > > > intel-gfx-ci realized that something is not quite coherent anymore =
on
> > > > some platforms for our i915+vgem tests, when I tried to switch vgem
> > > > over to shmem helpers.
> > > > =

> > > > After lots of head-scratching I realized that I've removed calls to
> > > > drm_clflush. And we need those. To make this a bit cleaner use the
> > > > same page allocation tooling as ttm, which does internally clflush
> > > > (and more, as neeeded on any platform instead of just the intel x86
> > > > cpus i915 can be combined with).
> > > > =

> > > > Unfortunately this doesn't exist on arm, or as a generic feature. F=
or
> > > > that I think only the dma-api can get at wc memory reliably, so may=
be
> > > > we'd need some kind of GFP_WC flag to do this properly.
> > > The problem is that this stuff is extremely architecture specific. So=
 GFP_WC
> > > and GFP_UNCACHED are really what we should aim for in the long term.
> > > =

> > > And as far as I know we have at least the following possibilities how=
 it is
> > > implemented:
> > > =

> > > * A fixed amount of registers which tells the CPU the caching behavio=
r for a
> > > memory region, e.g. MTRR.
> > > * Some bits of the memory pointers used, e.g. you see the same memory=
 at
> > > different locations with different caching attributes.
> > > * Some bits in the CPUs page table.
> > > * Some bits in a separate page table.
> > > =

> > > On top of that there is the PCIe specification which defines non-cache
> > > snooping access as an extension.
> > Yeah dma-buf is extremely ill-defined even on x86 if you combine these
> > all. We just play a game of whack-a-mole with the cacheline dirt until
> > it's gone.
> > =

> > That's the other piece here, how do you even make sure that the page is
> > properly flushed and ready for wc access:
> > - easy case is x86 with clflush available pretty much everywhere (since
> >    10+ years at least)
> > - next are cpus which have some cache flush instructions, but it's high=
ly
> >    cpu model specific
> > - next up is the same, but you absolutely have to make sure there's no
> >    other mapping around anymore or the coherency fabric just dies
> > - and I'm pretty sure there's worse stuff where you defacto can only
> >    allocate wc memory that's set aside at boot-up and that's all you ev=
er
> >    get.
> =

> Well long story short you don't make sure that the page is flushed at all.
> =

> What you do is to allocate the page as WC in the first place, if you fail=
 to
> do this you can't use it.

Oh sure, but even when you allocate as wc you need to make sure the page
you have is actually wc coherent from the start. I'm chasing some fun
trying to convert vgem over to shmem helpers right now (i.e. this patch
series), and if you don't start out with flushed pages some of the vgem +
i915 igts just fail on the less coherent igpu platforms we have.

And if you look into what set_pages_wc actually does, then you spot the
clflush somewhere deep down (aside from all the other things it does).

On some ARM platforms that's just not possible, and you have to do a
carveout that you never even map as wb (so needs to be excluded from the
kernel map too and treated as highmem). There's some really bonkers stuff
here.

> The whole idea TTM try to sell until a while ago that you can actually
> change that on the fly only works on x86 and even there only very very
> limited.

Yeah that's clear, this is why we're locking down the i915 gem uapi a lot
for dgpu. All the tricks are out the window.
-Daniel


> =

> Cheers,
> Christian.
> =

> > =

> > Cheers, Daniel
> > =

> > > Mixing that with the CPU caching behavior gets you some really nice w=
ays to
> > > break a driver. In general x86 seems to be rather graceful, but arm a=
nd
> > > PowerPC are easily pissed if you mess that up.
> > > =

> > > > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > > > Cc: Christian K=F6nig <christian.koenig@amd.com>
> > > > Cc: "Thomas Hellstr=F6m" <thomas.hellstrom@linux.intel.com>
> > > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > Cc: Maxime Ripard <mripard@kernel.org>
> > > > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > > > Cc: David Airlie <airlied@linux.ie>
> > > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > Acked-by: Christian k=F6nig <christian.koenig@amd.com>
> > > =

> > > Regards,
> > > Christian.
> > > =

> > > > ---
> > > >    drivers/gpu/drm/drm_gem_shmem_helper.c | 14 ++++++++++++++
> > > >    1 file changed, 14 insertions(+)
> > > > =

> > > > diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/d=
rm/drm_gem_shmem_helper.c
> > > > index 296ab1b7c07f..657d2490aaa5 100644
> > > > --- a/drivers/gpu/drm/drm_gem_shmem_helper.c
> > > > +++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
> > > > @@ -10,6 +10,10 @@
> > > >    #include <linux/slab.h>
> > > >    #include <linux/vmalloc.h>
> > > > +#ifdef CONFIG_X86
> > > > +#include <asm/set_memory.h>
> > > > +#endif
> > > > +
> > > >    #include <drm/drm.h>
> > > >    #include <drm/drm_device.h>
> > > >    #include <drm/drm_drv.h>
> > > > @@ -162,6 +166,11 @@ static int drm_gem_shmem_get_pages_locked(stru=
ct drm_gem_shmem_object *shmem)
> > > >    		return PTR_ERR(pages);
> > > >    	}
> > > > +#ifdef CONFIG_X86
> > > > +	if (shmem->map_wc)
> > > > +		set_pages_array_wc(pages, obj->size >> PAGE_SHIFT);
> > > > +#endif
> > > > +
> > > >    	shmem->pages =3D pages;
> > > >    	return 0;
> > > > @@ -203,6 +212,11 @@ static void drm_gem_shmem_put_pages_locked(str=
uct drm_gem_shmem_object *shmem)
> > > >    	if (--shmem->pages_use_count > 0)
> > > >    		return;
> > > > +#ifdef CONFIG_X86
> > > > +	if (shmem->map_wc)
> > > > +		set_pages_array_wb(shmem->pages, obj->size >> PAGE_SHIFT);
> > > > +#endif
> > > > +
> > > >    	drm_gem_put_pages(obj, shmem->pages,
> > > >    			  shmem->pages_mark_dirty_on_put,
> > > >    			  shmem->pages_mark_accessed_on_put);
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
