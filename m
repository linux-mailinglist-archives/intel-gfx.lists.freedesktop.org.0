Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2053BA455
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jul 2021 21:23:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39CD76E1E0;
	Fri,  2 Jul 2021 19:23:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81AEB6E1E6
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jul 2021 19:23:02 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id t6so3784274wrm.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 02 Jul 2021 12:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=RNds0tHN4yYQc8iIxauPsqzJI5Dnos0TPgp7pJ5XCAc=;
 b=WXVM659AF0oBPeIVk9+D785qjViyrlpVjkazIadR/3SazExLlhxIvdyuoUiNRwUkp5
 yllDwmhPsFJ0XTrGAeVsYr08+g47hNOfarFO2CshCAQyhBwVu7irLcBl4hUzIuoaJ3hR
 wtNXGQNiPra1MsCXS+hwndzpv9OLzme2Fq8Fs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=RNds0tHN4yYQc8iIxauPsqzJI5Dnos0TPgp7pJ5XCAc=;
 b=OMYje5k3qJ/cuaQrMV1+vlOjf861P5E68kk3R60ieYvITR75XEDb0c7xGbbtPCNd9+
 T8aCqaCm1+PD0vnUQl9627gIRpXk1SFt9/jM5+vhqW2owUsuHlmmjktgrX8rsQtFGzmG
 1Do93DcSQq8iTDUwA9xqVuqmwO0rzf9rPuxmStqLtA+bwHC7XJ6oOenmDA6AahmrrtC6
 vtoKEhg3aR2yLKLzrFAqdRzomUzzo9DUJ/W/7QkR8sJf0HPxTRmHw9nRlb+MwZL4oduo
 5Ivhq+ZOWZJFZKX19UmrsUnzE+P28Fk3XGdY8LqrK1nIZYRxhHVJR2Ji3tDkrG0volLn
 qlFw==
X-Gm-Message-State: AOAM533VLtCdGlfeLlAjr0VZWMb7Awdt3YCd71ZIHLCyt6ibECvHvIz6
 axeq/uEp/Ko7zm2mTIe5CI0faLZ7IET1Lw==
X-Google-Smtp-Source: ABdhPJy9sI3Os38PC4ONEtgLBGbuOm1v8wztzJrR0Bm0RAFgPu8UEgVJ4iG5DM0AnX5RgciM/PcTOw==
X-Received: by 2002:a5d:5004:: with SMTP id e4mr1301166wrt.205.1625253781402; 
 Fri, 02 Jul 2021 12:23:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r9sm5273698wmh.40.2021.07.02.12.23.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Jul 2021 12:23:00 -0700 (PDT)
Date: Fri, 2 Jul 2021 21:22:58 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YN9nkhxOX8wxfhp2@phenom.ffwll.local>
References: <20210701151019.1103315-1-matthew.auld@intel.com>
 <20210701151019.1103315-3-matthew.auld@intel.com>
 <6b1fb400-07a6-bac0-929a-46991835d1f2@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6b1fb400-07a6-bac0-929a-46991835d1f2@linux.intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/uapi: reject set_domain for
 discrete
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
 Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Kenneth Graunke <kenneth@whitecape.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 02, 2021 at 03:31:08PM +0100, Tvrtko Ursulin wrote:
> =

> On 01/07/2021 16:10, Matthew Auld wrote:
> > The CPU domain should be static for discrete, and on DG1 we don't need
> > any flushing since everything is already coherent, so really all this
> =

> Knowledge of the write combine buffer is assumed to be had by anyone invo=
lved?
> =

> > does is an object wait, for which we have an ioctl. Longer term the
> > desired caching should be an immutable creation time property for the
> > BO, which can be set with something like gem_create_ext.
> > =

> > One other user is iris + userptr, which uses the set_domain to probe all
> > the pages to check if the GUP succeeds, however keeping the set_domain
> > around just for that seems rather scuffed. We could equally just submit
> > a dummy batch, which should hopefully be good enough, otherwise adding a
> > new creation time flag for userptr might be an option. Although longer
> > term we will also have vm_bind, which should also be a nice fit for
> > this, so adding a whole new flag is likely overkill.
> =

> Execbuf sounds horrible. But it all reminds me of past work by Chris whic=
h is surprisingly hard to find in the archives. Patches like:
> =

> commit 7706a433388016983052a27c0fd74a64b1897ae7
> Author: Chris Wilson <chris@chris-wilson.co.uk>
> Date:   Wed Nov 8 17:04:07 2017 +0000
> =

>     drm/i915/userptr: Probe existence of backing struct pages upon creati=
on
>     Jason Ekstrand requested a more efficient method than userptr+set-dom=
ain
>     to determine if the userptr object was backed by a complete set of pa=
ges
>     upon creation. To be more efficient than simply populating the userptr
>     using get_user_pages() (as done by the call to set-domain or execbuf),
>     we can walk the tree of vm_area_struct and check for gaps or vma not
>     backed by struct page (VM_PFNMAP). The question is how to handle
>     VM_MIXEDMAP which may be either struct page or pfn backed...
> =

> commit 7ca21d3390eec23db99b8131ed18bc036efaba18
> Author: Chris Wilson <chris@chris-wilson.co.uk>
> Date:   Wed Nov 8 17:48:22 2017 +0000
> =

>     drm/i915/userptr: Add a flag to populate the userptr on creation
>     Acquiring the backing struct pages for the userptr range is not free;
>     the first client for userptr would insist on frequently creating user=
ptr
>     objects ahead of time and not use them. For that first client, deferr=
ing
>     the cost of populating the userptr (calling get_user_pages()) to the
>     actual execbuf was a substantial improvement. However, not all clients
>     are the same, and most would like to validate that the userptr is val=
id
>     and backed by struct pages upon creation, so offer a
>     I915_USERPTR_POPULATE flag to do just that.
>     Note that big difference between I915_USERPTR_POPULATE and the deferr=
ed
>     scheme is that POPULATE is guaranteed to be synchronous, the result is
>     known before the ioctl returns (and the handle exposed). However, due=
 to
>     system memory pressure, the object may be paged out before use,
>     requiring them to be paged back in on execbuf (as may always happen).
> =

> At least with the first one I think I was skeptical, since probing at
> point A makes a weak test versus userptr getting used at point B.
> Populate is kind of same really when user controls the backing store. At
> least these two arguments I think stand if we are trying to sell these
> flags as validation. But if the idea is limited to pure preload, with no
> guarantees that it keeps working by time of real use, then I guess it
> may be passable.

Well we've thrown this out again because there was no userspace. But if
this is requested by mesa, then the _PROBE flag should be entirely
sufficient.

Since I don't want to hold up dg1 pciids on this it'd be nice if we could
just go ahead with the dummy batch, if Ken/Jordan don't object - iris is
the only umd that needs this.

> Disclaimer that I haven't been following the story on why it is
> desirable to abandon set domain. Only judging from this series, mmap
> caching mode is implied from the object? Should set domain availability
> be driven by the object backing store instead of outright rejection?

In theory yes.

In practice umd have allowed and all the api are now allocating objects
with static properties, and the only reason we ever call set_domain is due
to slightly outdated buffer caching schemes dating back to og libdrm from
12+ years ago.

The other practical reason is that clflush is simply the slowest way to
upload data of all the ones we have :-)

So even when this comes back I don't expect this ioctl will come back.
> =

> Regards,
> =

> Tvrtko
> > Suggested-by: Daniel Vetter <daniel@ffwll.ch>
> > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > Cc: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Jordan Justen <jordan.l.justen@intel.com>
> > Cc: Kenneth Graunke <kenneth@whitecape.org>
> > Cc: Jason Ekstrand <jason@jlekstrand.net>
> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Cc: Ramalingam C <ramalingam.c@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gem/i915_gem_domain.c | 3 +++
> >   1 file changed, 3 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/d=
rm/i915/gem/i915_gem_domain.c
> > index 43004bef55cb..b684a62bf3b0 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> > @@ -490,6 +490,9 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, v=
oid *data,
> >   	u32 write_domain =3D args->write_domain;
> >   	int err;
> > +	if (IS_DGFX(to_i915(dev)))
> > +		return -ENODEV;
> > +
> >   	/* Only handle setting domains to types used by the CPU. */
> >   	if ((write_domain | read_domains) & I915_GEM_GPU_DOMAINS)
> >   		return -EINVAL;
> > =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
