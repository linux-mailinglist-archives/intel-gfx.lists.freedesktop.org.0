Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFB26361BF
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 15:29:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4A0710E20A;
	Wed, 23 Nov 2022 14:28:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08E4410E1EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 14:28:40 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id i10so43115785ejg.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 06:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ucQTvmzn91rzZAss19wwLVdxDJtfMPnU+ZLD4q4UOr4=;
 b=WT7aZnirqlfHwqauYBvMMtrVy5bo2pha0DsZfPUcmWaiXhqbaeij/6ndqYkdegeckT
 THXjqnLDQxeZ28AXp9/umwOtWDLa7NQTMzqXphjm/QmIlNqvR/sbxc45IoMrQwWQHEe6
 x7BOJapEwYbv+NuKJL+8sIorhR2MAi9iVY21A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ucQTvmzn91rzZAss19wwLVdxDJtfMPnU+ZLD4q4UOr4=;
 b=KdiyWI+XZ3oQ97nidsmXXW3gzmxYaBoSNzys21ObhYHIA+i+kcNxKppDyWiKJXfL4w
 4FSisRDxTD11+YqdAkN4j2ItBuRv1rSvHdoNqAi+04ut5UK6cnnm/XnyBpMpLf3bUAma
 oSiX/bC8JFA3U8FfogAXULPkvHOmwUf+pi7XyWuXwQkWna8uKOgK6xk813jvDUXaS8zs
 hoY8EkunQTvPkfQzpOEUlneoLique/vRiqoZIdmjw/f8CNAv4ehf9dHcdlTjljXkcaHB
 vQ4bJt29fHsdT16wuiq/+EOoDqBv/v3c760fO7OklhioTagblIl13TkjgVhvH54CyOIK
 6WQQ==
X-Gm-Message-State: ANoB5pn5F2T9/s09iOIXWF8Nsm/5c+j8r2YL94TTxxKZBBgkQ/2ayGY6
 p9WrXZ6/MdpL8UOoCv1896YpceKD2a/Su0otjhNKnA==
X-Google-Smtp-Source: AA0mqf6sZXWpHY0T6gpoVbuWg6Vf1JsDzG60PWxm05j3xQNGNGz1hoLjG6usYDq1yrMl9GvAUb1dUEr3/2FVoMO3p44=
X-Received: by 2002:a17:907:8197:b0:7b8:eae2:716a with SMTP id
 iy23-20020a170907819700b007b8eae2716amr5545863ejc.516.1669213718576; Wed, 23
 Nov 2022 06:28:38 -0800 (PST)
MIME-Version: 1.0
References: <Y30kK6dsssSLJVgp@ziepe.ca>
 <CAKMK7uFQQkG82PzuSTGQTnN3ZNps5N_4TjR5NRWo0LaJkEaNew@mail.gmail.com>
 <3d8607b4-973d-945d-c184-260157ade7c3@amd.com>
 <CAKMK7uHVGgGHTiXYOfseXXda2Ug992nYvhPsL+4z18ssqeHXHQ@mail.gmail.com>
 <b05e6091-4e07-1e32-773d-f603ac9ac98b@gmail.com>
 <CAKMK7uFjmzewqv3r4hL9hvLADwV536n2n6xbAWaUvmAcStr5KQ@mail.gmail.com>
 <Y34WI9SZdiH/p1tA@ziepe.ca> <f8f844a5-0910-d19a-5aea-df7a1d83b1d3@gmail.com>
 <Y34XvmtHfb4ZwopN@ziepe.ca> <dc2a9d7f-192b-e9d8-b1d1-3b868cb1fd44@gmail.com>
 <Y34gBUl0m+j1JdFk@ziepe.ca>
In-Reply-To: <Y34gBUl0m+j1JdFk@ziepe.ca>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 23 Nov 2022 15:28:27 +0100
Message-ID: <CAKMK7uHWyOcZ77-+GY7hxFUA65uQYFe0fw2rww6Y-rLXvHFAYw@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [Linaro-mm-sig] Re: [PATCH] dma-buf: Require
 VM_PFNMAP vma for mmap
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
Cc: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org,
 John Stultz <john.stultz@linaro.org>, Matthew Wilcox <willy@infradead.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 23 Nov 2022 at 14:28, Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Wed, Nov 23, 2022 at 02:12:25PM +0100, Christian K=C3=B6nig wrote:
> > Am 23.11.22 um 13:53 schrieb Jason Gunthorpe:
> > > On Wed, Nov 23, 2022 at 01:49:41PM +0100, Christian K=C3=B6nig wrote:
> > > > Am 23.11.22 um 13:46 schrieb Jason Gunthorpe:
> > > > > On Wed, Nov 23, 2022 at 11:06:55AM +0100, Daniel Vetter wrote:
> > > > >
> > > > > > > Maybe a GFP flag to set the page reference count to zero or s=
omething
> > > > > > > like this?
> > > > > > Hm yeah that might work. I'm not sure what it will all break th=
ough?
> > > > > > And we'd need to make sure that underflowing the page refcount =
dies in
> > > > > > a backtrace.
> > > > > Mucking with the refcount like this to protect against crazy out =
of
> > > > > tree drives seems horrible..
> > > > Well not only out of tree drivers. The intree KVM got that horrible
> > > > wrong as well, those where the latest guys complaining about it.
> > > kvm was taking refs on special PTEs? That seems really unlikely?
> >
> > Well then look at this code here:
> >
> > commit add6a0cd1c5ba51b201e1361b05a5df817083618
> > Author: Paolo Bonzini <pbonzini@redhat.com>
> > Date:   Tue Jun 7 17:51:18 2016 +0200
> >
> >     KVM: MMU: try to fix up page faults before giving up
> >
> >     The vGPU folks would like to trap the first access to a BAR by sett=
ing
> >     vm_ops on the VMAs produced by mmap-ing a VFIO device.  The fault
> > handler
> >     then can use remap_pfn_range to place some non-reserved pages in th=
e
> > VMA.
> >
> >     This kind of VM_PFNMAP mapping is not handled by KVM, but follow_pf=
n
> >     and fixup_user_fault together help supporting it.  The patch also
> > supports
> >     VM_MIXEDMAP vmas where the pfns are not reserved and thus subject t=
o
> >     reference counting.
> >
> >     Cc: Xiao Guangrong <guangrong.xiao@linux.intel.com>
> >     Cc: Andrea Arcangeli <aarcange@redhat.com>
> >     Cc: Radim Kr=C4=8Dm=C3=A1=C5=99 <rkrcmar@redhat.com>
> >     Tested-by: Neo Jia <cjia@nvidia.com>
> >     Reported-by: Kirti Wankhede <kwankhede@nvidia.com>
> >     Signed-off-by: Paolo Bonzini <pbonzini@redhat.com>
>
> This patch is known to be broken in so many ways. It also has a major
> security hole that it ignores the PTE flags making the page
> RO. Ignoring the special bit is somehow not surprising :(
>
> This probably doesn't work, but is the general idea of what KVM needs
> to do:

Oh dear, when I dug around in there I entirely missed that
kvm_try_get_pfn exists, and it's very broken indeed. kvm really needs
to grow a proper mmu notifier.

Another thing I'm wondering right now, the follow_pte();
fixup_user_fault(); follow_pte(); approach does not make any
guarantees of actually being right. If you're sufficiently unlucky you
might race against an immediate pte invalidate between the fixup and
the 2nd follow_pte(). But you can also not loop, because that would
fail to catch permanent faults.

I think the iommu fault drivers have a similar pattern.

What am I missing here? Or is that also just broken. gup works around
this with the slow path that takes the mmap sem and walking the vma
tree, follow_pte/fixup_user_fautl users dont. Maybe mmu notifier based
restarting would help with this too, if done properly.
-Daniel

> diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
> index 1376a47fedeedb..4161241fc3228c 100644
> --- a/virt/kvm/kvm_main.c
> +++ b/virt/kvm/kvm_main.c
> @@ -2598,6 +2598,19 @@ static int hva_to_pfn_remapped(struct vm_area_stru=
ct *vma,
>                         return r;
>         }
>
> +       /*
> +        * Special PTEs are never convertible into a struct page, even if=
 the
> +        * driver that owns them might have put a PFN with a struct page =
into
> +        * the PFNMAP. If the arch doesn't support special then we cannot
> +        * safely process these pages.
> +        */
> +#ifdef CONFIG_ARCH_HAS_PTE_SPECIAL
> +       if (pte_special(*ptep))
> +               return -EINVAL;
> +#else
> +       return -EINVAL;
> +#endif
> +
>         if (write_fault && !pte_write(*ptep)) {
>                 pfn =3D KVM_PFN_ERR_RO_FAULT;
>                 goto out;
>
> Jason



--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
