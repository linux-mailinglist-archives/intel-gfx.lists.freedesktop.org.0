Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2F53BBE33
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jul 2021 16:25:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 152F889CB2;
	Mon,  5 Jul 2021 14:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48CC589CB2
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jul 2021 14:25:27 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 j16-20020a05600c1c10b0290204b096b0caso82505wms.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 05 Jul 2021 07:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=e3wR6JmvltPYjSVfldsawiqyFe3j06QASfJV5Zg9uRM=;
 b=HKsDA9SXcpL5m9QFBPZdFIwmImiHeEI6dTCYk0B2A2lUEVP7pDnsP+tJFsrbj0MmXA
 eUIXbDlVZeztkXodFW9oIMK29/LDf3Hb0qegIRSoKCjyWy7Lzaq1ruOLiNfftGdPF0Lf
 0dqOVNpMk0aSk6xeGQkyTsLmDjTor5VyRfoZM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=e3wR6JmvltPYjSVfldsawiqyFe3j06QASfJV5Zg9uRM=;
 b=nPl28RG/iayJYrEYvwdsLkeu6Z/trnPkZfNQ1DAwedhGs8GuxZlrCDOaiQJs1KX4hs
 HYA+uesh7byyGrKM6o75AziJIHluZ39Diz+34YjNfvNd7XRee8IwyrDN0vSVDUsD34/z
 b4Ahs07LXmZwVd6CK7tZgMNgd7yqRVtelYAT2Hs9FRdhfve4plGPBVntqgTNXfkneV9I
 0/LDAnmGses6134it2/DukKbStAFi/auV8B7uCkNIb3qpsV/cQsbDkq1A6bvo3hj4zQs
 llVYwwvPV7eeAiK/vBx2mApZqxyRlXIsTyY3Vlxoh7ehxgViylOQWDjRKlv/6icfmUWX
 kj6w==
X-Gm-Message-State: AOAM533XaEWzp42MPXDJ5OzIbQtcd8KGCWsY6sg8Gcl5S82MWuxaW1Sq
 IU1hGUGd/tR+/n7drla+jcm48A==
X-Google-Smtp-Source: ABdhPJxo+7dGPjPYQfEnQss88Fc2bkrlAhtXjchU1OSFeq6YTEEAfrhJrFPJT+p8qEYeGOhXAosTDA==
X-Received: by 2002:a05:600c:198c:: with SMTP id
 t12mr14824245wmq.140.1625495126051; 
 Mon, 05 Jul 2021 07:25:26 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z7sm11118710wmi.1.2021.07.05.07.25.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Jul 2021 07:25:25 -0700 (PDT)
Date: Mon, 5 Jul 2021 16:25:23 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YOMWU6J709ZSMuY6@phenom.ffwll.local>
References: <20210701151019.1103315-1-matthew.auld@intel.com>
 <20210701151019.1103315-3-matthew.auld@intel.com>
 <6b1fb400-07a6-bac0-929a-46991835d1f2@linux.intel.com>
 <YN9nkhxOX8wxfhp2@phenom.ffwll.local>
 <241f7e31-66ab-45c7-955f-af6d107128fe@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <241f7e31-66ab-45c7-955f-af6d107128fe@linux.intel.com>
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

On Mon, Jul 05, 2021 at 09:34:22AM +0100, Tvrtko Ursulin wrote:
> On 02/07/2021 20:22, Daniel Vetter wrote:
> > On Fri, Jul 02, 2021 at 03:31:08PM +0100, Tvrtko Ursulin wrote:
> > > =

> > > On 01/07/2021 16:10, Matthew Auld wrote:
> > > > The CPU domain should be static for discrete, and on DG1 we don't n=
eed
> > > > any flushing since everything is already coherent, so really all th=
is
> > > =

> > > Knowledge of the write combine buffer is assumed to be had by anyone =
involved?
> =

> What about this question? For discrete userspace will assume WC and will
> know how to flush WC buffer? Or it is assumed the flush will be hit
> implicitly? Will this be documented?

The kernel doesn't pick something at random, it's just fixed. So yeah
userspace needs to flush the WC buffer or anything else.

> > > > does is an object wait, for which we have an ioctl. Longer term the
> > > > desired caching should be an immutable creation time property for t=
he
> > > > BO, which can be set with something like gem_create_ext.
> > > > =

> > > > One other user is iris + userptr, which uses the set_domain to prob=
e all
> > > > the pages to check if the GUP succeeds, however keeping the set_dom=
ain
> > > > around just for that seems rather scuffed. We could equally just su=
bmit
> > > > a dummy batch, which should hopefully be good enough, otherwise add=
ing a
> > > > new creation time flag for userptr might be an option. Although lon=
ger
> > > > term we will also have vm_bind, which should also be a nice fit for
> > > > this, so adding a whole new flag is likely overkill.
> > > =

> > > Execbuf sounds horrible. But it all reminds me of past work by Chris =
which is surprisingly hard to find in the archives. Patches like:
> > > =

> > > commit 7706a433388016983052a27c0fd74a64b1897ae7
> > > Author: Chris Wilson <chris@chris-wilson.co.uk>
> > > Date:   Wed Nov 8 17:04:07 2017 +0000
> > > =

> > >      drm/i915/userptr: Probe existence of backing struct pages upon c=
reation
> > >      Jason Ekstrand requested a more efficient method than userptr+se=
t-domain
> > >      to determine if the userptr object was backed by a complete set =
of pages
> > >      upon creation. To be more efficient than simply populating the u=
serptr
> > >      using get_user_pages() (as done by the call to set-domain or exe=
cbuf),
> > >      we can walk the tree of vm_area_struct and check for gaps or vma=
 not
> > >      backed by struct page (VM_PFNMAP). The question is how to handle
> > >      VM_MIXEDMAP which may be either struct page or pfn backed...
> > > =

> > > commit 7ca21d3390eec23db99b8131ed18bc036efaba18
> > > Author: Chris Wilson <chris@chris-wilson.co.uk>
> > > Date:   Wed Nov 8 17:48:22 2017 +0000
> > > =

> > >      drm/i915/userptr: Add a flag to populate the userptr on creation
> > >      Acquiring the backing struct pages for the userptr range is not =
free;
> > >      the first client for userptr would insist on frequently creating=
 userptr
> > >      objects ahead of time and not use them. For that first client, d=
eferring
> > >      the cost of populating the userptr (calling get_user_pages()) to=
 the
> > >      actual execbuf was a substantial improvement. However, not all c=
lients
> > >      are the same, and most would like to validate that the userptr i=
s valid
> > >      and backed by struct pages upon creation, so offer a
> > >      I915_USERPTR_POPULATE flag to do just that.
> > >      Note that big difference between I915_USERPTR_POPULATE and the d=
eferred
> > >      scheme is that POPULATE is guaranteed to be synchronous, the res=
ult is
> > >      known before the ioctl returns (and the handle exposed). However=
, due to
> > >      system memory pressure, the object may be paged out before use,
> > >      requiring them to be paged back in on execbuf (as may always hap=
pen).
> > > =

> > > At least with the first one I think I was skeptical, since probing at
> > > point A makes a weak test versus userptr getting used at point B.
> > > Populate is kind of same really when user controls the backing store.=
 At
> > > least these two arguments I think stand if we are trying to sell these
> > > flags as validation. But if the idea is limited to pure preload, with=
 no
> > > guarantees that it keeps working by time of real use, then I guess it
> > > may be passable.
> > =

> > Well we've thrown this out again because there was no userspace. But if
> > this is requested by mesa, then the _PROBE flag should be entirely
> > sufficient.
> =

> Why probe and not populate? For me probe is weak and implies to give a
> guarantee which cannot really be given. If the pointer is not trusted, th=
ere
> is no reason to think it cannot go bad between creating the buffer (probe)
> and actual use. Populate on the other hand could be described as simply
> instantiate the backing store with the same caveat mentioned. No guarante=
es
> about the future validity of the backing store in either case should be
> implied.

The pointer can also go bad with populate. The only thing probe guarantees
is that "right now I should be able to call get_user_pages and the only
reasons it could fail is ENOMEM". Which is pretty much the same as we
guarantee when we create a normal object.

Neither does guarantee that by the time you execbuf you won't hit an
ENOMEM. Userptr on top also could make the pointer go invalid if userspace
munmaps or does something else funny.

> > Since I don't want to hold up dg1 pciids on this it'd be nice if we cou=
ld
> > just go ahead with the dummy batch, if Ken/Jordan don't object - iris is
> > the only umd that needs this.
> =

> I am not up to speed to understand how to PCI ids come into play here, but
> what is the suggestion with the dummy batch - to actually submit something
> which ends up executing, waking up the GPU etc? Or be crafty and make it
> fail after it acquires backing store? Not sure if we have such a spot that
> late so just asking to start with. If the plan is to wake up the GPU that=
's
> quite ugly in my opinion. Especially since patch which adds the flag alre=
ady
> exists so shouldn't really be much a delay to sync userspace and i915 mer=
ge.

Just submit a real batch with just MI_BATCHBUFFER_END in it.

> > > Disclaimer that I haven't been following the story on why it is
> > > desirable to abandon set domain. Only judging from this series, mmap
> > > caching mode is implied from the object? Should set domain availabili=
ty
> > > be driven by the object backing store instead of outright rejection?
> > =

> > In theory yes.
> > =

> > In practice umd have allowed and all the api are now allocating objects
> > with static properties, and the only reason we ever call set_domain is =
due
> > to slightly outdated buffer caching schemes dating back to og libdrm fr=
om
> > 12+ years ago.
> =

> I didn't get what the UMDs have allowed?

There's no umd need anymore to make everything mutable. API design has
enormously changed over the past 10+ years, and even gl looks internally a
lot like something modern thanks to gallium (or the fancy new glonvk
thing).
-Daniel

> =

> Regards,
> =

> Tvrtko
> =

> > The other practical reason is that clflush is simply the slowest way to
> > upload data of all the ones we have :-)
> > =

> > So even when this comes back I don't expect this ioctl will come back.
> > > =

> > > Regards,
> > > =

> > > Tvrtko
> > > > Suggested-by: Daniel Vetter <daniel@ffwll.ch>
> > > > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > > > Cc: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> > > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > Cc: Jordan Justen <jordan.l.justen@intel.com>
> > > > Cc: Kenneth Graunke <kenneth@whitecape.org>
> > > > Cc: Jason Ekstrand <jason@jlekstrand.net>
> > > > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > > > Cc: Ramalingam C <ramalingam.c@intel.com>
> > > > ---
> > > >    drivers/gpu/drm/i915/gem/i915_gem_domain.c | 3 +++
> > > >    1 file changed, 3 insertions(+)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/g=
pu/drm/i915/gem/i915_gem_domain.c
> > > > index 43004bef55cb..b684a62bf3b0 100644
> > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> > > > @@ -490,6 +490,9 @@ i915_gem_set_domain_ioctl(struct drm_device *de=
v, void *data,
> > > >    	u32 write_domain =3D args->write_domain;
> > > >    	int err;
> > > > +	if (IS_DGFX(to_i915(dev)))
> > > > +		return -ENODEV;
> > > > +
> > > >    	/* Only handle setting domains to types used by the CPU. */
> > > >    	if ((write_domain | read_domains) & I915_GEM_GPU_DOMAINS)
> > > >    		return -EINVAL;
> > > > =

> > =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
