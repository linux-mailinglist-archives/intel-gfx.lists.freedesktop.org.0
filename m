Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A553D3546
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 09:32:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DA7C6EDB3;
	Fri, 23 Jul 2021 07:32:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 722796EDB3
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 07:32:34 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id e2so1272148wrq.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 00:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=fTyz1WerCrslfb+YIcYLjSCv4f+ODjk/GZ36i7RUnFY=;
 b=RAs+KcgQ3S17683/tmEgIKcErbHFISiFS/7zsiIoPw4NgcGGm1xRRPFbZPR8RDpT/2
 N6OLuAiG8p9W+GQAE1R+rAmL6P2CtxtdPu7FZV6xSOjop+iOjdYZeK1szsjUj1h7R879
 zp8sm/UpnJjoL957iJ3KL8uBh/x5IMzYFgedQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=fTyz1WerCrslfb+YIcYLjSCv4f+ODjk/GZ36i7RUnFY=;
 b=GAw+mmvHKu+Xq0itm0zpZg/y3Hg7HTt95IjX7gCiNDe0+S+Vh2aSTLBXCnHOsH+1RZ
 HDBNzt6KJwVJg1k/9nxQ8u+T1Ve/fqzTxshowXECu6pBQ8nHDK33OMnUgzwJLLrS4XLH
 /m5WYEI+prKTXQjGHkSXuiMGpprZv5rOhrhtXjve+gj3bjQAFAHL8m8MUmiS8ZdhKL4i
 TSV5C2H9j8tDhvRavcKIGgEPV/HhOJD3M88O7ODeDiCJjZ//AdP01TJncMLRok8PdvTi
 Wt/9rs2eDpgbA6ANDkh3XmvHjaQLvetEFeXz84odtqmfzPeaKpZiEPAspRphZlvvKG/f
 6erA==
X-Gm-Message-State: AOAM531+VlTVXdnYI0z9jOIH4luVoFgLsYz9MjD0JvpGb/27gNdDsfnt
 EwFrnwhBDZBcRXsY+7/oV7NJWw==
X-Google-Smtp-Source: ABdhPJw2Xs3tC/Qkan89Y+Jn8WvygHy+iodOVM8ye4ufwvQvuuB+vqHmqpjGsROJSFOV7JWM2Y6ZfQ==
X-Received: by 2002:a05:6000:1141:: with SMTP id
 d1mr3906252wrx.396.1627025552995; 
 Fri, 23 Jul 2021 00:32:32 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j1sm1187580wrm.86.2021.07.23.00.32.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jul 2021 00:32:32 -0700 (PDT)
Date: Fri, 23 Jul 2021 09:32:30 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <YPpwjnIP2QLrqEXJ@phenom.ffwll.local>
References: <20210713205153.1896059-1-daniel.vetter@ffwll.ch>
 <20210713205153.1896059-3-daniel.vetter@ffwll.ch>
 <573242f9-a29e-73d9-3efb-51c436d636fd@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <573242f9-a29e-73d9-3efb-51c436d636fd@suse.de>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH v4 2/4] drm/shmem-helper: Switch to
 vmf_insert_pfn
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 22, 2021 at 08:22:43PM +0200, Thomas Zimmermann wrote:
> Hi,
> =

> I'm not knowledgeable enougth to give this a full review. If you can just
> answer my questions, fell free to add an
> =

> Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
> =

> to the patch. :)
> =

> Am 13.07.21 um 22:51 schrieb Daniel Vetter:
> > We want to stop gup, which isn't the case if we use vmf_insert_page
> =

> What is gup?

get_user_pages. It pins memory wherever it is, which badly wreaks at least
ttm and could also cause trouble with cma allocations. In both cases
becaue we can't move/reuse these pages anymore.

Now get_user_pages fails when the memory isn't considered "normal", like
with VM_PFNMAP and using vm_insert_pfn. For consistency across all dma-buf
I'm trying (together with Christian K=F6nig) to roll this out everywhere,
for fewer surprises.

E.g. for 5.14 iirc we merged a patch to do the same for ttm, where it
closes an actual bug (ttm gets really badly confused when there's suddenly
pinned pages where it thought it can move them).

cma allcoations already use VM_PFNMAP (because that's what dma_mmap is
using underneath), as is anything that's using remap_pfn_range. Worst case
we have to revert this patch for shmem helpers if it breaks something, but
I hope that's not the case. On the ttm side we've also had some fallout
that we needed to paper over with clever tricks.

I'll add the above explanation to the commit message.

> =

> > and VM_MIXEDMAP, because that does not set pte_special.
> > =

> > v2: With this shmem gem helpers now definitely need CONFIG_MMU (0day)
> > =

> > v3: add more depends on MMU. For usb drivers this is a bit awkward,
> > but really it's correct: To be able to provide a contig mapping of
> > buffers to userspace on !MMU platforms we'd need to use the cma
> > helpers for these drivers on those platforms. As-is this wont work.
> > =

> > Also not exactly sure why vm_insert_page doesn't go boom, because that
> > definitely wont fly in practice since the pages are non-contig to
> > begin with.
> > =

> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Maxime Ripard <mripard@kernel.org>
> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > Cc: David Airlie <airlied@linux.ie>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > ---
> >   drivers/gpu/drm/Kconfig                | 2 +-
> >   drivers/gpu/drm/drm_gem_shmem_helper.c | 4 ++--
> >   drivers/gpu/drm/gud/Kconfig            | 2 +-
> >   drivers/gpu/drm/tiny/Kconfig           | 4 ++--
> >   drivers/gpu/drm/udl/Kconfig            | 1 +
> >   5 files changed, 7 insertions(+), 6 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> > index 0d372354c2d0..314eefa39892 100644
> > --- a/drivers/gpu/drm/Kconfig
> > +++ b/drivers/gpu/drm/Kconfig
> > @@ -211,7 +211,7 @@ config DRM_KMS_CMA_HELPER
> >   config DRM_GEM_SHMEM_HELPER
> >   	bool
> > -	depends on DRM
> > +	depends on DRM && MMU
> >   	help
> >   	  Choose this if you need the GEM shmem helper functions
> > diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/d=
rm_gem_shmem_helper.c
> > index d5e6d4568f99..296ab1b7c07f 100644
> > --- a/drivers/gpu/drm/drm_gem_shmem_helper.c
> > +++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
> > @@ -542,7 +542,7 @@ static vm_fault_t drm_gem_shmem_fault(struct vm_fau=
lt *vmf)
> >   	} else {
> >   		page =3D shmem->pages[page_offset];
> > -		ret =3D vmf_insert_page(vma, vmf->address, page);
> > +		ret =3D vmf_insert_pfn(vma, vmf->address, page_to_pfn(page));
> >   	}
> >   	mutex_unlock(&shmem->pages_lock);
> > @@ -612,7 +612,7 @@ int drm_gem_shmem_mmap(struct drm_gem_object *obj, =
struct vm_area_struct *vma)
> >   		return ret;
> >   	}
> > -	vma->vm_flags |=3D VM_MIXEDMAP | VM_DONTEXPAND;
> > +	vma->vm_flags |=3D VM_PFNMAP | VM_DONTEXPAND;
> >   	vma->vm_page_prot =3D vm_get_page_prot(vma->vm_flags);
> >   	if (shmem->map_wc)
> >   		vma->vm_page_prot =3D pgprot_writecombine(vma->vm_page_prot);
> > diff --git a/drivers/gpu/drm/gud/Kconfig b/drivers/gpu/drm/gud/Kconfig
> > index 1c8601bf4d91..9c1e61f9eec3 100644
> > --- a/drivers/gpu/drm/gud/Kconfig
> > +++ b/drivers/gpu/drm/gud/Kconfig
> > @@ -2,7 +2,7 @@
> >   config DRM_GUD
> >   	tristate "GUD USB Display"
> > -	depends on DRM && USB
> > +	depends on DRM && USB && MMU
> >   	select LZ4_COMPRESS
> >   	select DRM_KMS_HELPER
> >   	select DRM_GEM_SHMEM_HELPER
> =

> I'm a kconfig noob, so this is rather a question than a review comment:
> =

> =

> =

> If DRM_GEM_SHMEM_HELPER already depends on MMU, this select will fail on
> non-MMU platforms? Why does the driver also depend on MMU? Simply to make
> the item disappear in menuconfig?
> =

> Best regards
> Thomas
> =

> > diff --git a/drivers/gpu/drm/tiny/Kconfig b/drivers/gpu/drm/tiny/Kconfig
> > index 5593128eeff9..c11fb5be7d09 100644
> > --- a/drivers/gpu/drm/tiny/Kconfig
> > +++ b/drivers/gpu/drm/tiny/Kconfig
> > @@ -44,7 +44,7 @@ config DRM_CIRRUS_QEMU
> >   config DRM_GM12U320
> >   	tristate "GM12U320 driver for USB projectors"
> > -	depends on DRM && USB
> > +	depends on DRM && USB && MMU
> >   	select DRM_KMS_HELPER
> >   	select DRM_GEM_SHMEM_HELPER
> >   	help
> > @@ -53,7 +53,7 @@ config DRM_GM12U320
> >   config DRM_SIMPLEDRM
> >   	tristate "Simple framebuffer driver"
> > -	depends on DRM
> > +	depends on DRM && MMU
> >   	select DRM_GEM_SHMEM_HELPER
> >   	select DRM_KMS_HELPER
> >   	help
> > diff --git a/drivers/gpu/drm/udl/Kconfig b/drivers/gpu/drm/udl/Kconfig
> > index 1f497d8f1ae5..c744175c6992 100644
> > --- a/drivers/gpu/drm/udl/Kconfig
> > +++ b/drivers/gpu/drm/udl/Kconfig
> > @@ -4,6 +4,7 @@ config DRM_UDL
> >   	depends on DRM
> >   	depends on USB
> >   	depends on USB_ARCH_HAS_HCD
> > +	depends on MMU
> >   	select DRM_GEM_SHMEM_HELPER
> >   	select DRM_KMS_HELPER
> >   	help
> > =

> =

> -- =

> Thomas Zimmermann
> Graphics Driver Developer
> SUSE Software Solutions Germany GmbH
> Maxfeldstr. 5, 90409 N=FCrnberg, Germany
> (HRB 36809, AG N=FCrnberg)
> Gesch=E4ftsf=FChrer: Felix Imend=F6rffer
> =





-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
