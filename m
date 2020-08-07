Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B01DB23EA8A
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 11:39:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C47F6E991;
	Fri,  7 Aug 2020 09:39:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCD206E991
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 09:39:00 +0000 (UTC)
IronPort-SDR: O52IJZeYp5chaCp5jGblE2Jf/92jGFaWX9MSOaJ7L13SNG52VXd9HTYmkIM09GoJuIViO+Beh1
 4XglLFTDoJpw==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="150765943"
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="150765943"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:39:00 -0700
IronPort-SDR: gb8PjiACs3hddVSDMrQoqoNLhbymGSq8sOPbB1yvTLvnzr9TwtAuht8L2h7erKdtdRTj54MtGp
 x/L3P9h+f9Rg==
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="468172736"
Received: from walshric-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.12.98])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:38:53 -0700
MIME-Version: 1.0
In-Reply-To: <CAPM=9txUuw23Y5q9SndkMM+ZuXLyC60P0HqG-=4GSbPPujh+Vw@mail.gmail.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
 <20200710115757.290984-54-matthew.auld@intel.com>
 <CAPM=9twBBVQy_0O6ES5UjtBpn0hfjaWoo24miziBj+VMrbciWg@mail.gmail.com>
 <84ff0146-0a35-c66e-2c33-2ce22aae4c6c@intel.com>
 <1D440B9B88E22A4ABEF89F9F1F81BC290117BB8F99@ORSMSX163.amr.corp.intel.com>
 <CAPM=9txUuw23Y5q9SndkMM+ZuXLyC60P0HqG-=4GSbPPujh+Vw@mail.gmail.com>
To: "Tang, CQ" <cq.tang@intel.com>, Dave Airlie <airlied@gmail.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <159679313093.9764.11140358447333089444@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Fri, 07 Aug 2020 12:38:51 +0300
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

Quoting Dave Airlie (2020-07-14 22:26:16)
> On Wed, 15 Jul 2020 at 02:57, Tang, CQ <cq.tang@intel.com> wrote:
> >
> >
> >
> > > -----Original Message-----
> > > From: Auld, Matthew <matthew.auld@intel.com>
> > > Sent: Tuesday, July 14, 2020 8:02 AM
> > > To: Dave Airlie <airlied@gmail.com>
> > > Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>; Tang, CQ
> > > <cq.tang@intel.com>; Joonas Lahtinen <joonas.lahtinen@linux.intel.com>;
> > > Abdiel Janulgue <abdiel.janulgue@linux.intel.com>; Wilson, Chris P
> > > <chris.p.wilson@intel.com>; Balestrieri, Francesco
> > > <francesco.balestrieri@intel.com>; Vishwanathapura, Niranjana
> > > <niranjana.vishwanathapura@intel.com>; Dhanalakota, Venkata S
> > > <venkata.s.dhanalakota@intel.com>; Neel Desai <neel.desai@intel.com>;
> > > Brost, Matthew <matthew.brost@intel.com>; Dutt, Sudeep
> > > <sudeep.dutt@intel.com>; De Marchi, Lucas <lucas.demarchi@intel.com>
> > > Subject: Re: [RFC 53/60] drm/i915: Create stolen memory region from local
> > > memory
> > >
> > > On 13/07/2020 05:48, Dave Airlie wrote:
> > > > On Fri, 10 Jul 2020 at 22:01, Matthew Auld <matthew.auld@intel.com>
> > > wrote:
> > > >>
> > > >> From: CQ Tang <cq.tang@intel.com>
> > > >>
> > > >> Add "REGION_STOLEN" device info to dg1, create stolen memory region
> > > >> from upper portion of local device memory, starting from DSMBASE.
> > > >>
> > > >> The memory region is marked with "is_devmem=true".
> > > >
> > > > So is stolen fake on LMEM devices? The concept of stolen doesn't seem
> > > > to make much sense with VRAM, so please enlighten me.
> > >
> > > CQ, do we actually need an explicit stolen LMEM region? The idea of having a
> > > DSM like stolen region for LMEM does sound strange(outside of the usual
> > > reserved portions which are for HW use etc), since the driver has complete
> > > control over LMEM. Is it just a convenience thing to keep things working as-is
> > > for fbc, initial fb, etc. or is there more to it?
> > > There is buddy_alloc_range() for LMEM which we could potentially use to
> > > wrap an object around for things like the initial fb or similar.
> >
> > This is a natural extension from IGT stolen memory region into DGT, we want to allocate objects from stolen area. In DGT, we have one stolen area per tile so we create one region in each of these area. Using memory region is easier to manage objects allocation and free. Other than fbc and rc6, we have gt/ring allocate stolen memory objects when without LMEM, so only apply to IGT case:
> >
> > display/intel_display.c:        obj = i915_gem_object_create_stolen_for_preallocated(dev_priv,
> > display/intel_fbdev.c:                  obj = i915_gem_object_create_stolen(dev_priv, size);
> > display/intel_overlay.c:        obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
> > intel_rc6.c:            pctx = i915_gem_object_create_stolen_for_preallocated(i915,
> > intel_rc6.c:    pctx = i915_gem_object_create_stolen(i915, pctx_size);
> >
> > intel_ring.c:                   obj = intel_gt_object_create_stolen(ggtt->vm.gt, size);
> > intel_gt.c:             obj = intel_gt_object_create_stolen(gt, size);
> >
> > For some reason, we don't use buddy allocator to manage the stolen memory, instead, we use drm_mm_node allocator directly, we have one-to-one mapping between drm_mm address space to dma address of the stolen memory. We also use contiguous allocation where an object always get a single contiguous block of pages.
> >
> > So fundamentally, we want to use the same code to work on both IGT stolen memory and DGT stolen memory.
> 
> If this is fundamentally a software construct then it's horrible, if
> the HW has a stolen base like Ville said, and it needs to be in a
> chunk of VRAM, how do you go about sizing that, and carving it out
> from the user?
> 
> I don't think wanting to share the same codepaths here is an
> acceptable answer, just fix the code to handle LMEM vs stolen, but if
> there are hw reasons on why this is required it would be good to
> enumerate exactly what they are and document them.

The boot firmware does configure the stolen region, so it's not fake.

But there's no need to expose the stolen memory to userspace, so these
patches will be dropped.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
