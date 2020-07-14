Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE6D21F7B9
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 18:57:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65CD36E8C1;
	Tue, 14 Jul 2020 16:57:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED5BB6E8C1
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 16:57:50 +0000 (UTC)
IronPort-SDR: jTtzmtcCh3ODirkWMbfqyzIYF6rO61F4v6s0F9iBtLQ1N5gsyQpyjndDv0yvMrUIwPi1dV93IH
 WVJvkDEhlhBA==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="148965201"
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="148965201"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 09:57:50 -0700
IronPort-SDR: n0jMEkiuAkWf1m08NFUvm3oQgIZ2k/n5k17ykJ9uDaalUXMxoyWqqpy6yKdQx5nCyqlnXbd7wk
 f/PbHFzLJHJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="485426552"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by fmsmga006.fm.intel.com with ESMTP; 14 Jul 2020 09:57:49 -0700
Received: from orsmsx163.amr.corp.intel.com ([169.254.9.101]) by
 ORSMSX108.amr.corp.intel.com ([169.254.2.169]) with mapi id 14.03.0439.000;
 Tue, 14 Jul 2020 09:57:49 -0700
From: "Tang, CQ" <cq.tang@intel.com>
To: "Auld, Matthew" <matthew.auld@intel.com>, Dave Airlie <airlied@gmail.com>
Thread-Topic: [RFC 53/60] drm/i915: Create stolen memory region from local
 memory
Thread-Index: AQHWVrHl1suxT5ICy0evISrR4wmNxKkFabKAgAI9k4D//6IScA==
Date: Tue, 14 Jul 2020 16:57:48 +0000
Message-ID: <1D440B9B88E22A4ABEF89F9F1F81BC290117BB8F99@ORSMSX163.amr.corp.intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
 <20200710115757.290984-54-matthew.auld@intel.com>
 <CAPM=9twBBVQy_0O6ES5UjtBpn0hfjaWoo24miziBj+VMrbciWg@mail.gmail.com>
 <84ff0146-0a35-c66e-2c33-2ce22aae4c6c@intel.com>
In-Reply-To: <84ff0146-0a35-c66e-2c33-2ce22aae4c6c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
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
 Chris P" <chris.p.wilson@intel.com>, Neel Desai <neel.desai@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Auld, Matthew <matthew.auld@intel.com>
> Sent: Tuesday, July 14, 2020 8:02 AM
> To: Dave Airlie <airlied@gmail.com>
> Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>; Tang, CQ
> <cq.tang@intel.com>; Joonas Lahtinen <joonas.lahtinen@linux.intel.com>;
> Abdiel Janulgue <abdiel.janulgue@linux.intel.com>; Wilson, Chris P
> <chris.p.wilson@intel.com>; Balestrieri, Francesco
> <francesco.balestrieri@intel.com>; Vishwanathapura, Niranjana
> <niranjana.vishwanathapura@intel.com>; Dhanalakota, Venkata S
> <venkata.s.dhanalakota@intel.com>; Neel Desai <neel.desai@intel.com>;
> Brost, Matthew <matthew.brost@intel.com>; Dutt, Sudeep
> <sudeep.dutt@intel.com>; De Marchi, Lucas <lucas.demarchi@intel.com>
> Subject: Re: [RFC 53/60] drm/i915: Create stolen memory region from local
> memory
> 
> On 13/07/2020 05:48, Dave Airlie wrote:
> > On Fri, 10 Jul 2020 at 22:01, Matthew Auld <matthew.auld@intel.com>
> wrote:
> >>
> >> From: CQ Tang <cq.tang@intel.com>
> >>
> >> Add "REGION_STOLEN" device info to dg1, create stolen memory region
> >> from upper portion of local device memory, starting from DSMBASE.
> >>
> >> The memory region is marked with "is_devmem=true".
> >
> > So is stolen fake on LMEM devices? The concept of stolen doesn't seem
> > to make much sense with VRAM, so please enlighten me.
> 
> CQ, do we actually need an explicit stolen LMEM region? The idea of having a
> DSM like stolen region for LMEM does sound strange(outside of the usual
> reserved portions which are for HW use etc), since the driver has complete
> control over LMEM. Is it just a convenience thing to keep things working as-is
> for fbc, initial fb, etc. or is there more to it?
> There is buddy_alloc_range() for LMEM which we could potentially use to
> wrap an object around for things like the initial fb or similar.

This is a natural extension from IGT stolen memory region into DGT, we want to allocate objects from stolen area. In DGT, we have one stolen area per tile so we create one region in each of these area. Using memory region is easier to manage objects allocation and free. Other than fbc and rc6, we have gt/ring allocate stolen memory objects when without LMEM, so only apply to IGT case:

display/intel_display.c:	obj = i915_gem_object_create_stolen_for_preallocated(dev_priv,
display/intel_fbdev.c:			obj = i915_gem_object_create_stolen(dev_priv, size);
display/intel_overlay.c:	obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
intel_rc6.c:		pctx = i915_gem_object_create_stolen_for_preallocated(i915,
intel_rc6.c:	pctx = i915_gem_object_create_stolen(i915, pctx_size);

intel_ring.c:			obj = intel_gt_object_create_stolen(ggtt->vm.gt, size);
intel_gt.c:		obj = intel_gt_object_create_stolen(gt, size);

For some reason, we don't use buddy allocator to manage the stolen memory, instead, we use drm_mm_node allocator directly, we have one-to-one mapping between drm_mm address space to dma address of the stolen memory. We also use contiguous allocation where an object always get a single contiguous block of pages.

So fundamentally, we want to use the same code to work on both IGT stolen memory and DGT stolen memory.

--CQ


> 
> >
> > Dave.
> >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
