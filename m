Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4777823F130
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 18:24:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4E7C6E139;
	Fri,  7 Aug 2020 16:24:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0E1F6E139
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 16:24:31 +0000 (UTC)
IronPort-SDR: +xFqAgOFZWpsFzaoAd461Jd+39LWABoIYj94GvCkjKWChhga5ZAJqeQGCi3ktG8S75TW1tJvgN
 Vu0j6Ilif3Ag==
X-IronPort-AV: E=McAfee;i="6000,8403,9706"; a="217452206"
X-IronPort-AV: E=Sophos;i="5.75,446,1589266800"; d="scan'208";a="217452206"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 09:24:30 -0700
IronPort-SDR: pGTU7PWSxOgy28NoSiS8ARNN/6GFxm7fvJCO+ljdhxIXGXR/LMcCh84YpOK7DyzO6gLK+vOyXK
 K/s0XSsIChqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,446,1589266800"; d="scan'208";a="325805250"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 07 Aug 2020 09:24:30 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 7 Aug 2020 09:24:29 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 7 Aug 2020 09:24:28 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.1713.004;
 Fri, 7 Aug 2020 09:24:28 -0700
From: "Tang, CQ" <cq.tang@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Dave Airlie
 <airlied@gmail.com>
Thread-Topic: [RFC 53/60] drm/i915: Create stolen memory region from local
 memory
Thread-Index: AQHWVrHl1suxT5ICy0evISrR4wmNxKkFabKAgAI9k4D//6IScIAAp+YAgCUT1YD///lX4A==
Date: Fri, 7 Aug 2020 16:24:28 +0000
Message-ID: <52ae377c9ec94c6987dea05fb1931630@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
 <20200710115757.290984-54-matthew.auld@intel.com>
 <CAPM=9twBBVQy_0O6ES5UjtBpn0hfjaWoo24miziBj+VMrbciWg@mail.gmail.com>
 <84ff0146-0a35-c66e-2c33-2ce22aae4c6c@intel.com>
 <1D440B9B88E22A4ABEF89F9F1F81BC290117BB8F99@ORSMSX163.amr.corp.intel.com>
 <CAPM=9txUuw23Y5q9SndkMM+ZuXLyC60P0HqG-=4GSbPPujh+Vw@mail.gmail.com>
 <159679313093.9764.11140358447333089444@jlahtine-mobl.ger.corp.intel.com>
In-Reply-To: <159679313093.9764.11140358447333089444@jlahtine-mobl.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
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



> -----Original Message-----
> From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Sent: Friday, August 7, 2020 2:39 AM
> To: Tang, CQ <cq.tang@intel.com>; Dave Airlie <airlied@gmail.com>
> Cc: Auld, Matthew <matthew.auld@intel.com>; Intel Graphics Development
> <intel-gfx@lists.freedesktop.org>; Abdiel Janulgue
> <abdiel.janulgue@linux.intel.com>; Wilson, Chris P
> <chris.p.wilson@intel.com>; Balestrieri, Francesco
> <francesco.balestrieri@intel.com>; Vishwanathapura, Niranjana
> <niranjana.vishwanathapura@intel.com>; Dhanalakota, Venkata S
> <venkata.s.dhanalakota@intel.com>; Neel Desai <neel.desai@intel.com>;
> Brost, Matthew <matthew.brost@intel.com>; Dutt, Sudeep
> <sudeep.dutt@intel.com>; De Marchi, Lucas <lucas.demarchi@intel.com>
> Subject: Re: [RFC 53/60] drm/i915: Create stolen memory region from local
> memory
> 
> Quoting Dave Airlie (2020-07-14 22:26:16)
> > On Wed, 15 Jul 2020 at 02:57, Tang, CQ <cq.tang@intel.com> wrote:
> > >
> > >
> > >
> > > > -----Original Message-----
> > > > From: Auld, Matthew <matthew.auld@intel.com>
> > > > Sent: Tuesday, July 14, 2020 8:02 AM
> > > > To: Dave Airlie <airlied@gmail.com>
> > > > Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>;
> > > > Tang, CQ <cq.tang@intel.com>; Joonas Lahtinen
> > > > <joonas.lahtinen@linux.intel.com>;
> > > > Abdiel Janulgue <abdiel.janulgue@linux.intel.com>; Wilson, Chris P
> > > > <chris.p.wilson@intel.com>; Balestrieri, Francesco
> > > > <francesco.balestrieri@intel.com>; Vishwanathapura, Niranjana
> > > > <niranjana.vishwanathapura@intel.com>; Dhanalakota, Venkata S
> > > > <venkata.s.dhanalakota@intel.com>; Neel Desai
> > > > <neel.desai@intel.com>; Brost, Matthew <matthew.brost@intel.com>;
> > > > Dutt, Sudeep <sudeep.dutt@intel.com>; De Marchi, Lucas
> > > > <lucas.demarchi@intel.com>
> > > > Subject: Re: [RFC 53/60] drm/i915: Create stolen memory region
> > > > from local memory
> > > >
> > > > On 13/07/2020 05:48, Dave Airlie wrote:
> > > > > On Fri, 10 Jul 2020 at 22:01, Matthew Auld
> > > > > <matthew.auld@intel.com>
> > > > wrote:
> > > > >>
> > > > >> From: CQ Tang <cq.tang@intel.com>
> > > > >>
> > > > >> Add "REGION_STOLEN" device info to dg1, create stolen memory
> > > > >> region from upper portion of local device memory, starting from
> DSMBASE.
> > > > >>
> > > > >> The memory region is marked with "is_devmem=true".
> > > > >
> > > > > So is stolen fake on LMEM devices? The concept of stolen doesn't
> > > > > seem to make much sense with VRAM, so please enlighten me.
> > > >
> > > > CQ, do we actually need an explicit stolen LMEM region? The idea
> > > > of having a DSM like stolen region for LMEM does sound
> > > > strange(outside of the usual reserved portions which are for HW
> > > > use etc), since the driver has complete control over LMEM. Is it
> > > > just a convenience thing to keep things working as-is for fbc, initial fb,
> etc. or is there more to it?
> > > > There is buddy_alloc_range() for LMEM which we could potentially
> > > > use to wrap an object around for things like the initial fb or similar.
> > >
> > > This is a natural extension from IGT stolen memory region into DGT, we
> want to allocate objects from stolen area. In DGT, we have one stolen area
> per tile so we create one region in each of these area. Using memory region
> is easier to manage objects allocation and free. Other than fbc and rc6, we
> have gt/ring allocate stolen memory objects when without LMEM, so only
> apply to IGT case:
> > >
> > > display/intel_display.c:        obj =
> i915_gem_object_create_stolen_for_preallocated(dev_priv,
> > > display/intel_fbdev.c:                  obj =
> i915_gem_object_create_stolen(dev_priv, size);
> > > display/intel_overlay.c:        obj = i915_gem_object_create_stolen(i915,
> PAGE_SIZE);
> > > intel_rc6.c:            pctx =
> i915_gem_object_create_stolen_for_preallocated(i915,
> > > intel_rc6.c:    pctx = i915_gem_object_create_stolen(i915, pctx_size);
> > >
> > > intel_ring.c:                   obj = intel_gt_object_create_stolen(ggtt->vm.gt,
> size);
> > > intel_gt.c:             obj = intel_gt_object_create_stolen(gt, size);
> > >
> > > For some reason, we don't use buddy allocator to manage the stolen
> memory, instead, we use drm_mm_node allocator directly, we have one-to-
> one mapping between drm_mm address space to dma address of the stolen
> memory. We also use contiguous allocation where an object always get a
> single contiguous block of pages.
> > >
> > > So fundamentally, we want to use the same code to work on both IGT
> stolen memory and DGT stolen memory.
> >
> > If this is fundamentally a software construct then it's horrible, if
> > the HW has a stolen base like Ville said, and it needs to be in a
> > chunk of VRAM, how do you go about sizing that, and carving it out
> > from the user?
> >
> > I don't think wanting to share the same codepaths here is an
> > acceptable answer, just fix the code to handle LMEM vs stolen, but if
> > there are hw reasons on why this is required it would be good to
> > enumerate exactly what they are and document them.
> 
> The boot firmware does configure the stolen region, so it's not fake.
> 
> But there's no need to expose the stolen memory to userspace, so these
> patches will be dropped.

Yes, I confirmed that on discrete GPU with display, firmware does reserve a portion of device local memory as stolen memory region, and used by device hardware, the usage of this local stolen memory is the same as system stolen memory on integrated GPU.

So we need to continue to create this local stolen memory region in driver. However, because this stolen memory region is only used by driver and hardware, there is no need to expose the stolen memory region to userspace.

--CQ

> 
> Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
