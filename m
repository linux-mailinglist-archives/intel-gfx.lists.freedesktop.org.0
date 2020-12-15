Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB49D2DB68C
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 23:33:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7573E899F3;
	Tue, 15 Dec 2020 22:33:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59DB3899F3
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Dec 2020 22:33:18 +0000 (UTC)
IronPort-SDR: rzjKVrdyj9H4b4Ipkj7vJwIgeqp8CXjd5V7zEM7KGoGGa80w9MMh0Brstb2iQIo4i5a3KuNDM9
 6VnH/26YGsBw==
X-IronPort-AV: E=McAfee;i="6000,8403,9836"; a="193343924"
X-IronPort-AV: E=Sophos;i="5.78,422,1599548400"; d="scan'208";a="193343924"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2020 14:33:17 -0800
IronPort-SDR: 1jun9kvxwOaWteEjr+XNXgb2ZSsjc7ljwUTmN8t4USYFA7doSRgCPyb7zK6vND/vXDgB1SmYSu
 OfD8Z7Lv2FsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,422,1599548400"; d="scan'208";a="559334386"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga005.fm.intel.com with ESMTP; 15 Dec 2020 14:33:17 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 15 Dec 2020 14:33:16 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 15 Dec 2020 14:33:16 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.1713.004;
 Tue, 15 Dec 2020 14:33:16 -0800
From: "Tang, CQ" <cq.tang@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Fix mismatch between misplaced vma
 check and vma insert
Thread-Index: AQHW0yFaZRo6vG6Mak+aWPfGnGQ8fqn4shPAgACJqAD//4IdQA==
Date: Tue, 15 Dec 2020 22:33:15 +0000
Message-ID: <41d1aa06338b469cba2d01bd14457cf3@intel.com>
References: <20201215203111.650-1-chris@chris-wilson.co.uk>
 <3e4fe0b2533e48d19d78f3a4752b6508@intel.com>
 <160806973208.14591.6953006911801735484@build.alporthouse.com>
In-Reply-To: <160806973208.14591.6953006911801735484@build.alporthouse.com>
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
> Sent: Tuesday, December 15, 2020 2:02 PM
> To: Tang, CQ <cq.tang@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: stable@ <vger.kernel.org stable@vger.kernel.org>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix mismatch between misplaced
> vma check and vma insert
> 
> Quoting Tang, CQ (2020-12-15 21:50:53)
> >
> >
> > > -----Original Message-----
> > > From: Chris Wilson <chris@chris-wilson.co.uk>
> > > Sent: Tuesday, December 15, 2020 12:31 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Chris Wilson <chris@chris-wilson.co.uk>; Tang, CQ
> > > <cq.tang@intel.com>; stable@vger.kernel.org
> > > Subject: [PATCH] drm/i915: Fix mismatch between misplaced vma check
> > > and vma insert
> > >
> > > When inserting a VMA, we restrict the placement to the low 4G unless
> > > the caller opts into using the full range. This was done to allow
> > > usersapce the opportunity to transition slowly from a 32b address
> > > space, and to avoid breaking inherent 32b assumptions of some
> commands.
> > >
> > > However, for insert we limited ourselves to 4G-4K, but on
> > > verification we allowed the full 4G. This causes some attempts to
> > > bind a new buffer to sporadically fail with -ENOSPC, but at other times be
> bound successfully.
> > >
> > > commit 48ea1e32c39d ("drm/i915/gen9: Set PIN_ZONE_4G end to 4GB - 1
> > > page") suggests that there is a genuine problem with stateless
> > > addressing that cannot utilize the last page in 4G and so we purposefully
> excluded it.
> > >
> > > Reported-by: CQ Tang <cq.tang@intel.com>
> > > Fixes: 48ea1e32c39d ("drm/i915/gen9: Set PIN_ZONE_4G end to 4GB - 1
> > > page")
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > Cc: CQ Tang <cq.tang@intel.com>
> > > Cc: stable@vger.kernel.org
> > > ---
> > >  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > index 193996144c84..2ff32daa50bd 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > @@ -382,7 +382,7 @@ eb_vma_misplaced(const struct
> > > drm_i915_gem_exec_object2 *entry,
> > >               return true;
> > >
> > >       if (!(flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS) &&
> > > -         (vma->node.start + vma->node.size - 1) >> 32)
> > > +         (vma->node.start + vma->node.size + 4095) >> 32)
> >
> > Why 4095 not 4096?
> 
> It's the nature of the test that we need an inclusive bound.
> 
> Consider an object of size 4G - 4K, that is allowed to fit within our 32b GTT.
> 
> 	4G - 4k + 4K = 4G == 1 << 32: => vma misplaced
> 
> 	4G - 4k + 4k - 1 = 4G -1 = 0xffffffff => vma ok

Yes, the checking in i915_vma_insert() is ">" not ">="
        if (size > end) {
                DRM_DEBUG("Attempting to bind an object larger than the aperture: request=%llu > %s aperture=%llu\n",
                          size, flags & PIN_MAPPABLE ? "mappable" : "total",
                          end);
                return -ENOSPC;
        }

Reviewed-by: CQ Tang <cq.tang@intel.com>


> 
> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
