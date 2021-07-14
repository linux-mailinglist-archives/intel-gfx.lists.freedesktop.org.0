Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FAA43C84A9
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 14:48:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 188F289D00;
	Wed, 14 Jul 2021 12:48:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE78789BDB
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 12:48:43 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id k32so1496582wms.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 05:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=AAfCA3aLaRsoPqCayCx/WTToaiMlWxWnrNj9V3mt6Yo=;
 b=MBZxzg2Vmf1zieozp807kfgrrWYb9fKD65NkbV+TCTobCBqsRAiCIREixYHAMFnhWy
 4mI0DyL6BNV87phfhbzrELu0SKZuZKwaPGauwHhIiWUK1Y/4sGLsEywj3E55Q9eznqTF
 HwgQRiEiO+7ZB+basCdfN3ylPOMl7SygFueO8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=AAfCA3aLaRsoPqCayCx/WTToaiMlWxWnrNj9V3mt6Yo=;
 b=TZLh0p2IeXn1U5g5Uf+uPnMmgFhC3blRBCF2KyYtv0Xx8TG+hgV8Lk/cLSoCF7Jtn2
 CyKh0GYJhzKkyP9TJFyl1Db5Lq0hLOaRfwCAer3vIgZCfn5m8tpXdDCxa19nl/8qU5oC
 KskD6hZ+130umoLPdBMsXSW9xumHWShWHEdPlwUVhvjDkzETJrZqtXZ8xq+euT7nQGP2
 D+mbCwYHuiy9TJZPFOpqxITSiNqMX+o8WRqtgBhkrohHAiCFaxQKX8nnvJT6LwP+mCGb
 15EwtGBkNn8nserjcQJ+aotNS5njHU5KQ3qyvpEyHWTEV8kYqMuyc7hPpjMSBxapELOF
 PNpw==
X-Gm-Message-State: AOAM531Rf7WfXbqdCvDWa0xPnS4P6Qs3UcOQ2umHSizO81ySSbMYKXnj
 Q9UFNoKdox9sfw7Q9Jl0cIPNcg==
X-Google-Smtp-Source: ABdhPJyBQn4P6X3i1mOVrATPa+1dmy9M3DG+L+wk/eVLK2HHxN4x9hKEZl+E1AFUpFQ87alHdJAhoQ==
X-Received: by 2002:a7b:cb1a:: with SMTP id u26mr3861494wmj.125.1626266922565; 
 Wed, 14 Jul 2021 05:48:42 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u16sm2886495wrw.36.2021.07.14.05.48.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Jul 2021 05:48:41 -0700 (PDT)
Date: Wed, 14 Jul 2021 14:48:40 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YO7dKP2l9n0rLjDV@phenom.ffwll.local>
References: <20210713205153.1896059-1-daniel.vetter@ffwll.ch>
 <20210713205153.1896059-4-daniel.vetter@ffwll.ch>
 <4626a7d7-95ca-104c-753a-07a9d83b0b28@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4626a7d7-95ca-104c-753a-07a9d83b0b28@amd.com>
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
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 14, 2021 at 01:54:50PM +0200, Christian K=F6nig wrote:
> Am 13.07.21 um 22:51 schrieb Daniel Vetter:
> > intel-gfx-ci realized that something is not quite coherent anymore on
> > some platforms for our i915+vgem tests, when I tried to switch vgem
> > over to shmem helpers.
> > =

> > After lots of head-scratching I realized that I've removed calls to
> > drm_clflush. And we need those. To make this a bit cleaner use the
> > same page allocation tooling as ttm, which does internally clflush
> > (and more, as neeeded on any platform instead of just the intel x86
> > cpus i915 can be combined with).
> > =

> > Unfortunately this doesn't exist on arm, or as a generic feature. For
> > that I think only the dma-api can get at wc memory reliably, so maybe
> > we'd need some kind of GFP_WC flag to do this properly.
> =

> The problem is that this stuff is extremely architecture specific. So GFP=
_WC
> and GFP_UNCACHED are really what we should aim for in the long term.
> =

> And as far as I know we have at least the following possibilities how it =
is
> implemented:
> =

> * A fixed amount of registers which tells the CPU the caching behavior fo=
r a
> memory region, e.g. MTRR.
> * Some bits of the memory pointers used, e.g. you see the same memory at
> different locations with different caching attributes.
> * Some bits in the CPUs page table.
> * Some bits in a separate page table.
> =

> On top of that there is the PCIe specification which defines non-cache
> snooping access as an extension.

Yeah dma-buf is extremely ill-defined even on x86 if you combine these
all. We just play a game of whack-a-mole with the cacheline dirt until
it's gone.

That's the other piece here, how do you even make sure that the page is
properly flushed and ready for wc access:
- easy case is x86 with clflush available pretty much everywhere (since
  10+ years at least)
- next are cpus which have some cache flush instructions, but it's highly
  cpu model specific
- next up is the same, but you absolutely have to make sure there's no
  other mapping around anymore or the coherency fabric just dies
- and I'm pretty sure there's worse stuff where you defacto can only
  allocate wc memory that's set aside at boot-up and that's all you ever
  get.

Cheers, Daniel

> Mixing that with the CPU caching behavior gets you some really nice ways =
to
> break a driver. In general x86 seems to be rather graceful, but arm and
> PowerPC are easily pissed if you mess that up.
> =

> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Christian K=F6nig <christian.koenig@amd.com>
> > Cc: "Thomas Hellstr=F6m" <thomas.hellstrom@linux.intel.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Maxime Ripard <mripard@kernel.org>
> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > Cc: David Airlie <airlied@linux.ie>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> =

> Acked-by: Christian k=F6nig <christian.koenig@amd.com>
> =

> Regards,
> Christian.
> =

> > ---
> >   drivers/gpu/drm/drm_gem_shmem_helper.c | 14 ++++++++++++++
> >   1 file changed, 14 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/d=
rm_gem_shmem_helper.c
> > index 296ab1b7c07f..657d2490aaa5 100644
> > --- a/drivers/gpu/drm/drm_gem_shmem_helper.c
> > +++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
> > @@ -10,6 +10,10 @@
> >   #include <linux/slab.h>
> >   #include <linux/vmalloc.h>
> > +#ifdef CONFIG_X86
> > +#include <asm/set_memory.h>
> > +#endif
> > +
> >   #include <drm/drm.h>
> >   #include <drm/drm_device.h>
> >   #include <drm/drm_drv.h>
> > @@ -162,6 +166,11 @@ static int drm_gem_shmem_get_pages_locked(struct d=
rm_gem_shmem_object *shmem)
> >   		return PTR_ERR(pages);
> >   	}
> > +#ifdef CONFIG_X86
> > +	if (shmem->map_wc)
> > +		set_pages_array_wc(pages, obj->size >> PAGE_SHIFT);
> > +#endif
> > +
> >   	shmem->pages =3D pages;
> >   	return 0;
> > @@ -203,6 +212,11 @@ static void drm_gem_shmem_put_pages_locked(struct =
drm_gem_shmem_object *shmem)
> >   	if (--shmem->pages_use_count > 0)
> >   		return;
> > +#ifdef CONFIG_X86
> > +	if (shmem->map_wc)
> > +		set_pages_array_wb(shmem->pages, obj->size >> PAGE_SHIFT);
> > +#endif
> > +
> >   	drm_gem_put_pages(obj, shmem->pages,
> >   			  shmem->pages_mark_dirty_on_put,
> >   			  shmem->pages_mark_accessed_on_put);
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
