Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFE52DC54B
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 18:27:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C90B58970E;
	Wed, 16 Dec 2020 17:27:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7F3C8970E
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Dec 2020 17:27:42 +0000 (UTC)
IronPort-SDR: 3GgAmOxMvFmZxw+lQQWjWv2SA7oPDLrYr1ri9vfnQtEKX1Cvj4rBAjAmn1rYeGIvky9iUWeqyu
 o9tc5qhb9Jpw==
X-IronPort-AV: E=McAfee;i="6000,8403,9837"; a="193488281"
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="193488281"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 09:27:42 -0800
IronPort-SDR: vDRq3cgpuCxR+Zi/kYfs9VFNuwZwBrcX4AhaxkgujXvn1ezfDzUxytGVBqlpRy4PNcmiQOJjur
 UISI5xFuX/XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="412751878"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 16 Dec 2020 09:27:41 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 16 Dec 2020 09:27:41 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 16 Dec 2020 09:27:40 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.1713.004;
 Wed, 16 Dec 2020 09:27:40 -0800
From: "Tang, CQ" <cq.tang@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Fix mismatch between misplaced vma
 check and vma insert
Thread-Index: AQHW0yFaZRo6vG6Mak+aWPfGnGQ8fqn4shPAgACJqAD//6gxkIABCusAgAAKvAA=
Date: Wed, 16 Dec 2020 17:27:40 +0000
Message-ID: <1f0dc9ab19e340a88339ee50be63010e@intel.com>
References: <20201215203111.650-1-chris@chris-wilson.co.uk>
 <3e4fe0b2533e48d19d78f3a4752b6508@intel.com>
 <160806973208.14591.6953006911801735484@build.alporthouse.com>
 <498fa7d973bb49acba439b0060d9e7d3@intel.com>
 <160810819627.1420.3427754786741837992@build.alporthouse.com>
In-Reply-To: <160810819627.1420.3427754786741837992@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix mismatch between misplaced
 vma check and vma insert
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
Cc: "stable@" <vger.kernel.orgstable@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Chris Wilson <chris@chris-wilson.co.uk>
> Sent: Wednesday, December 16, 2020 12:43 AM
> To: Tang, CQ <cq.tang@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: stable@ <vger.kernel.orgstable@vger.kernel.org>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix mismatch between misplaced
> vma check and vma insert
> 
> Quoting Tang, CQ (2020-12-16 00:51:21)
> >
> >
> > > -----Original Message-----
> > > From: Chris Wilson <chris@chris-wilson.co.uk>
> > > Sent: Tuesday, December 15, 2020 2:02 PM
> > > To: Tang, CQ <cq.tang@intel.com>; intel-gfx@lists.freedesktop.org
> > > Cc: stable@ <vger.kernel.org stable@vger.kernel.org>
> > > Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix mismatch between
> > > misplaced vma check and vma insert
> > >
> > > Quoting Tang, CQ (2020-12-15 21:50:53)
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Chris Wilson <chris@chris-wilson.co.uk>
> > > > > Sent: Tuesday, December 15, 2020 12:31 PM
> > > > > To: intel-gfx@lists.freedesktop.org
> > > > > Cc: Chris Wilson <chris@chris-wilson.co.uk>; Tang, CQ
> > > > > <cq.tang@intel.com>; stable@vger.kernel.org
> > > > > Subject: [PATCH] drm/i915: Fix mismatch between misplaced vma
> > > > > check and vma insert
> > > > >
> > > > > When inserting a VMA, we restrict the placement to the low 4G
> > > > > unless the caller opts into using the full range. This was done
> > > > > to allow usersapce the opportunity to transition slowly from a
> > > > > 32b address space, and to avoid breaking inherent 32b
> > > > > assumptions of some
> > > commands.
> > > > >
> > > > > However, for insert we limited ourselves to 4G-4K, but on
> > > > > verification we allowed the full 4G. This causes some attempts
> > > > > to bind a new buffer to sporadically fail with -ENOSPC, but at
> > > > > other times be
> > > bound successfully.
> > > > >
> > > > > commit 48ea1e32c39d ("drm/i915/gen9: Set PIN_ZONE_4G end to
> 4GB
> > > > > - 1
> > > > > page") suggests that there is a genuine problem with stateless
> > > > > addressing that cannot utilize the last page in 4G and so we
> > > > > purposefully
> > > excluded it.
> > > > >
> > > > > Reported-by: CQ Tang <cq.tang@intel.com>
> > > > > Fixes: 48ea1e32c39d ("drm/i915/gen9: Set PIN_ZONE_4G end to 4GB
> > > > > - 1
> > > > > page")
> > > > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > > > Cc: CQ Tang <cq.tang@intel.com>
> > > > > Cc: stable@vger.kernel.org
> > > > > ---
> > > > >  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
> > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > > > b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > > > index 193996144c84..2ff32daa50bd 100644
> > > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > > > @@ -382,7 +382,7 @@ eb_vma_misplaced(const struct
> > > > > drm_i915_gem_exec_object2 *entry,
> > > > >               return true;
> > > > >
> > > > >       if (!(flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS) &&
> > > > > -         (vma->node.start + vma->node.size - 1) >> 32)
> > > > > +         (vma->node.start + vma->node.size + 4095) >> 32)
> > > >
> > > > Why 4095 not 4096?
> > >
> > > It's the nature of the test that we need an inclusive bound.
> > >
> > > Consider an object of size 4G - 4K, that is allowed to fit within our 32b GTT.
> > >
> > >       4G - 4k + 4K = 4G == 1 << 32: => vma misplaced
> > >
> > >       4G - 4k + 4k - 1 = 4G -1 = 0xffffffff => vma ok
> >
> > How do we trigger this code?  I run gem_exec_params@larger-than-life-
> batch but did not see this code is executed.
> > Basically how do we triggre first attempt to pin the object in place.
> 
> It's the first pin tried, but the incoming execobj.offset must be available and
> the object itself must be ready to be pinned. That's true for the current tree
> on all current gen.

For gem_exec_params@larger-than-life-batch subtest, I only see i915_vma_misplaced() be called when EXEC_OBJECT_SUPPORTS_48B_ADDRESS flags is specified, and the test passes.
I want to catch the bug before you fixed here. So a 4GB object should be OK, because before your fix, i915_vma_misplaced() returns false.
I did specify execobj.offset=0, but the driver code goes to i915_vma_insert() directly and return -ENOSPC.

How do I make gem_exec_params@larger-than-life-batch code to catch this bug?

--CQ


> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
