Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 848036361EF
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 15:35:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 363EE10E55F;
	Wed, 23 Nov 2022 14:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52D8F10E206
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 14:35:07 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id e13so25099619edj.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 06:35:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GPLrYyNidI//auSaKwI6GvkJsgMtKAF3UqEyle3yeOc=;
 b=LCgYuwgHx1K9mYWM1mR96CB8NCe3P5sA090XVr26hcLHmss5Pn5J/t2cO8h6lx4fxM
 NrVrC9uNEWT85JXwD2PphfxsHBPSLrKCtF+8CDf7CfTVxK+1ZAfjuESMhMdxfgz16nQC
 OhdLPv1zPYaj+Xd3f+P4oBTT3hHdUfKNrSlak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=GPLrYyNidI//auSaKwI6GvkJsgMtKAF3UqEyle3yeOc=;
 b=ZDQiC0v9875qI9zpNZ/YEtEkmk+86/n/IwtxDlwW7ZKq4btNNW9RkaFxmkbU/N85fm
 2C91R3YX6HhKd/hjXzSPtaSR/XCuI4ilw1P4eDxn4ilSZiMhr7UmCf24y16RhWmgIFoI
 kkMlVu0DTmCpJJ25MXJ5KZwDBcOtpFu7YLEyfVshEC+yoZbxVmsUvc/GD1MjN8QVeUNG
 K2lKO6SigTFhinc4juEkFxJAwKNOKBs6S0n0oz6eUMQGc8lSsQvNyfpHT2FZoifIJByX
 C5nC1bG+sng3MSrjEPo46hVq0ynDyFNJJnXvga42IjlYMe1YnAdf4gy1hFP18Z2jH9ET
 rOhw==
X-Gm-Message-State: ANoB5pm8VM7HaBsE3Q1NhuuIXEyHC0d7Runz2ivGggYvQHMFWUcblNUr
 oVAxa/ra9GDHS+qrPVuY5RPmseZieZaTgz5nhhrUqQ==
X-Google-Smtp-Source: AA0mqf7s0gxKVbGsXYgPrF7eJBIPRffTj7CXpmrJ+fnJeN9pvA50Kh54G/8S5Pm78H/FeFz/JpA02ODuJr2OR5DElm8=
X-Received: by 2002:a05:6402:d69:b0:46a:392b:2440 with SMTP id
 ec41-20020a0564020d6900b0046a392b2440mr2032045edb.341.1669214105779; Wed, 23
 Nov 2022 06:35:05 -0800 (PST)
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
Date: Wed, 23 Nov 2022 15:34:54 +0100
Message-ID: <CAKMK7uEzaUjroODbWe4DtxHQ+gmr7_DVK+fUJjAgMsgP61uGSQ@mail.gmail.com>
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
>
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

On second thought this wont work, because it completely defeats the
point of why this code here exists. remap_pfn_range() (which is what
the various dma_mmap functions and the ioremap functions are built on
top of too) sets VM_PFNMAP too, so this check would even catch the
static mappings.

Plus these static mappings aren't all that static either, e.g. pci
access also can revoke bar mappings nowadays.

I think nothing except full mmu_notifier will actually fix this.
-Daniel

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
