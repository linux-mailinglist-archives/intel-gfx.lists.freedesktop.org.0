Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 862A221FD4A
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 21:26:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6386D6E427;
	Tue, 14 Jul 2020 19:26:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 071966E427
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 19:26:28 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id e22so19075568edq.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 12:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=WBS/PCR6yg0CV4iNI7lcZwx8BQ0TnSSgGBRcuQ2tmtc=;
 b=DNsf4Y2NRJ94p8Rn8+7LFxFph6pGi8f/p000R/2iZu+buEjcZRyzUsPVYgcrSi+ISl
 ATPJqHClycCzrt9kWY8AupxF6JEy2EwR23lUA+69uyoOcfm9Ux+W16tOolnUJUvT+nAA
 FiswgZVWCgUKs5UG+tzHYxvu/fhFx4uZ/vR8aei6WDROY2O8Jkg+dLOJu/DCG7+c6pbO
 7Ay1MRXBfmr1XtP/ELIiB+RGG7I3qi1uu3Rk414Io0I5o2+GpWuL1hYVa7HVmD6VukHq
 5vss0/eN+PR527rdiYIZQAqf1P6+o91AuxcOlR4iOp0Q+XxFgTu+89ebahwSpH4Ioz2f
 MuDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WBS/PCR6yg0CV4iNI7lcZwx8BQ0TnSSgGBRcuQ2tmtc=;
 b=YFqjHB5t8hca2FW9ILoqZiMP4xhpIe3CigktSgsihMqbIcx3q2Hh2G3VGve5i8yWAy
 fw4wVXVn4upYdbPMIxUyaSFDsBEd2Eh0jyDP0q6wujXoPJingvD6B4Sohr4Rll0wT2ll
 hvsPBbHMYHuXnBgMegHTDZAFq5hoAnX00JkstHvhvVkrOKccIf7zPLW6ETRsArwW703r
 K+GblsOypgbq5D4exhKoyfVjv1kfN98GcT6D/7ocdilQ/IEU1PXixI+zNyy2dRwVn0s6
 YHZJw5uggxNfYM3HdzLBQoXkP8u3Z65wG5H1V+SdQMZGvWHYC3EemCL+dywHakaZ8HSQ
 k40g==
X-Gm-Message-State: AOAM531KWAbb7lAxoIHVz55Rg/fkvUl61Nclfyi9FjryGDrJknTk4mqQ
 SwQ3dCIkTA5iqL8J+ySWH6SyQg57UD2k9AuZ+8E=
X-Google-Smtp-Source: ABdhPJwQaNxomupVZhi+SoKnwbz3H6Rvw3NTGpm29ws89HUU39OYYraRLMLJSmNNyiCKI+YBxiyhoOrwFyvI2VMKXLA=
X-Received: by 2002:a50:ee8a:: with SMTP id f10mr6030176edr.383.1594754787579; 
 Tue, 14 Jul 2020 12:26:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200710115757.290984-1-matthew.auld@intel.com>
 <20200710115757.290984-54-matthew.auld@intel.com>
 <CAPM=9twBBVQy_0O6ES5UjtBpn0hfjaWoo24miziBj+VMrbciWg@mail.gmail.com>
 <84ff0146-0a35-c66e-2c33-2ce22aae4c6c@intel.com>
 <1D440B9B88E22A4ABEF89F9F1F81BC290117BB8F99@ORSMSX163.amr.corp.intel.com>
In-Reply-To: <1D440B9B88E22A4ABEF89F9F1F81BC290117BB8F99@ORSMSX163.amr.corp.intel.com>
From: Dave Airlie <airlied@gmail.com>
Date: Wed, 15 Jul 2020 05:26:16 +1000
Message-ID: <CAPM=9txUuw23Y5q9SndkMM+ZuXLyC60P0HqG-=4GSbPPujh+Vw@mail.gmail.com>
To: "Tang, CQ" <cq.tang@intel.com>
Subject: Re: [Intel-gfx] [RFC 53/60] drm/i915: Create stolen memory region
 from local memory
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>, "Wilson,
 Chris P" <chris.p.wilson@intel.com>, "Auld, Matthew" <matthew.auld@intel.com>,
 Neel Desai <neel.desai@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 15 Jul 2020 at 02:57, Tang, CQ <cq.tang@intel.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Auld, Matthew <matthew.auld@intel.com>
> > Sent: Tuesday, July 14, 2020 8:02 AM
> > To: Dave Airlie <airlied@gmail.com>
> > Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>; Tang, CQ
> > <cq.tang@intel.com>; Joonas Lahtinen <joonas.lahtinen@linux.intel.com>;
> > Abdiel Janulgue <abdiel.janulgue@linux.intel.com>; Wilson, Chris P
> > <chris.p.wilson@intel.com>; Balestrieri, Francesco
> > <francesco.balestrieri@intel.com>; Vishwanathapura, Niranjana
> > <niranjana.vishwanathapura@intel.com>; Dhanalakota, Venkata S
> > <venkata.s.dhanalakota@intel.com>; Neel Desai <neel.desai@intel.com>;
> > Brost, Matthew <matthew.brost@intel.com>; Dutt, Sudeep
> > <sudeep.dutt@intel.com>; De Marchi, Lucas <lucas.demarchi@intel.com>
> > Subject: Re: [RFC 53/60] drm/i915: Create stolen memory region from local
> > memory
> >
> > On 13/07/2020 05:48, Dave Airlie wrote:
> > > On Fri, 10 Jul 2020 at 22:01, Matthew Auld <matthew.auld@intel.com>
> > wrote:
> > >>
> > >> From: CQ Tang <cq.tang@intel.com>
> > >>
> > >> Add "REGION_STOLEN" device info to dg1, create stolen memory region
> > >> from upper portion of local device memory, starting from DSMBASE.
> > >>
> > >> The memory region is marked with "is_devmem=true".
> > >
> > > So is stolen fake on LMEM devices? The concept of stolen doesn't seem
> > > to make much sense with VRAM, so please enlighten me.
> >
> > CQ, do we actually need an explicit stolen LMEM region? The idea of having a
> > DSM like stolen region for LMEM does sound strange(outside of the usual
> > reserved portions which are for HW use etc), since the driver has complete
> > control over LMEM. Is it just a convenience thing to keep things working as-is
> > for fbc, initial fb, etc. or is there more to it?
> > There is buddy_alloc_range() for LMEM which we could potentially use to
> > wrap an object around for things like the initial fb or similar.
>
> This is a natural extension from IGT stolen memory region into DGT, we want to allocate objects from stolen area. In DGT, we have one stolen area per tile so we create one region in each of these area. Using memory region is easier to manage objects allocation and free. Other than fbc and rc6, we have gt/ring allocate stolen memory objects when without LMEM, so only apply to IGT case:
>
> display/intel_display.c:        obj = i915_gem_object_create_stolen_for_preallocated(dev_priv,
> display/intel_fbdev.c:                  obj = i915_gem_object_create_stolen(dev_priv, size);
> display/intel_overlay.c:        obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
> intel_rc6.c:            pctx = i915_gem_object_create_stolen_for_preallocated(i915,
> intel_rc6.c:    pctx = i915_gem_object_create_stolen(i915, pctx_size);
>
> intel_ring.c:                   obj = intel_gt_object_create_stolen(ggtt->vm.gt, size);
> intel_gt.c:             obj = intel_gt_object_create_stolen(gt, size);
>
> For some reason, we don't use buddy allocator to manage the stolen memory, instead, we use drm_mm_node allocator directly, we have one-to-one mapping between drm_mm address space to dma address of the stolen memory. We also use contiguous allocation where an object always get a single contiguous block of pages.
>
> So fundamentally, we want to use the same code to work on both IGT stolen memory and DGT stolen memory.

If this is fundamentally a software construct then it's horrible, if
the HW has a stolen base like Ville said, and it needs to be in a
chunk of VRAM, how do you go about sizing that, and carving it out
from the user?

I don't think wanting to share the same codepaths here is an
acceptable answer, just fix the code to handle LMEM vs stolen, but if
there are hw reasons on why this is required it would be good to
enumerate exactly what they are and document them.

Dave.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
