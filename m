Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDC527780C
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 19:54:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04ACC6E147;
	Thu, 24 Sep 2020 17:54:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A4A289A9B
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 17:54:07 +0000 (UTC)
IronPort-SDR: 0GTVCgbLsi5t0MqEX0MfZ30vu82UJVFgaW0h7RAXPs8GdFGBADr/TdJoMGtED7a++KrmM+UKAL
 l2v7vfoE7rVw==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="222890514"
X-IronPort-AV: E=Sophos;i="5.77,298,1596524400"; d="scan'208";a="222890514"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 10:54:06 -0700
IronPort-SDR: cSYz4MEIvoRTKn7m6GFiwI04dqV/M8duiZ/zntXAj/eb5m2bcABqLwlpBVIeAQHoD2FwOT4Qne
 DZqQygdr4Vlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,298,1596524400"; d="scan'208";a="336089976"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga004.fm.intel.com with ESMTP; 24 Sep 2020 10:54:06 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 24 Sep 2020 10:54:06 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 24 Sep 2020 10:54:05 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.1713.004;
 Thu, 24 Sep 2020 10:54:05 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 04/14] drm/i915: Add SKL GT1.5 PCI IDs
Thread-Index: AQHWkgMBXmwYwAGbF0+TOYO/G/25LKl28RHQgAEgIICAAAIYIA==
Date: Thu, 24 Sep 2020 17:54:05 +0000
Message-ID: <31e82ea2292f4b1c818ee6ce0a1c9086@intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
 <20200716172106.2656-5-ville.syrjala@linux.intel.com>
 <5eaf7a6e770841e1abac61b686acdde8@intel.com>
 <20200924104619.GG6112@intel.com>
In-Reply-To: <20200924104619.GG6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/14] drm/i915: Add SKL GT1.5 PCI IDs
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Thursday, September 24, 2020 3:46 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 04/14] drm/i915: Add SKL GT1.5 PCI IDs
> =

> On Thu, Sep 24, 2020 at 12:37:47AM +0000, Srivatsa, Anusha wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Ville Syrjala
> > > Sent: Thursday, July 16, 2020 10:21 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [Intel-gfx] [PATCH 04/14] drm/i915: Add SKL GT1.5 PCI IDs
> > >
> > > From: Alexei Podtelezhnikov <apodtele@gmail.com>
> > >
> > > Add three new devices 0x1913, 0x1915, and 0x1917 also known as
> > > iSKLULTGT15, iSKLULXGT15, and iSKLDTGT15.
> > >
> > > Signed-off-by: Alexei Podtelezhnikov <apodtele@gmail.com>
> > > [vsyrjala: Split separate changes into separate patchs,
> > >            Sort the IDs]
> > The above comment appears in every patch. If this is v2 of the patches
> then it goes right after the commit message as:
> >
> >  V2: Split separate changes into separate patches, sort the IDs
> > (Ville)
> =

> No. I use the [vsyrjala: blah] notation to indicate I modified the origin=
al
> patch which was authored by someone else.
> =

> >
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > The code changes itself look good.

Ah. Ok.
Makes sense

Anusha =

> > Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> >
> > > ---
> > >  include/drm/i915_pciids.h | 9 ++++++---
> > >  1 file changed, 6 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> > > index 9df3697f074d..c906088ccffe 100644
> > > --- a/include/drm/i915_pciids.h
> > > +++ b/include/drm/i915_pciids.h
> > > @@ -329,17 +329,20 @@
> > >  	INTEL_VGA_DEVICE(0x22b3, info)
> > >
> > >  #define INTEL_SKL_ULT_GT1_IDS(info) \
> > > -	INTEL_VGA_DEVICE(0x1906, info) /* ULT GT1 */
> > > +	INTEL_VGA_DEVICE(0x1906, info), /* ULT GT1 */ \
> > > +	INTEL_VGA_DEVICE(0x1913, info)  /* ULT GT1.5 */
> > >
> > >  #define INTEL_SKL_ULX_GT1_IDS(info) \
> > > -	INTEL_VGA_DEVICE(0x190E, info) /* ULX GT1 */
> > > +	INTEL_VGA_DEVICE(0x190E, info), /* ULX GT1 */ \
> > > +	INTEL_VGA_DEVICE(0x1915, info)  /* ULX GT1.5 */
> > >
> > >  #define INTEL_SKL_GT1_IDS(info)	\
> > >  	INTEL_SKL_ULT_GT1_IDS(info), \
> > >  	INTEL_SKL_ULX_GT1_IDS(info), \
> > >  	INTEL_VGA_DEVICE(0x1902, info), /* DT  GT1 */ \
> > >  	INTEL_VGA_DEVICE(0x190B, info), /* Halo GT1 */ \
> > > -	INTEL_VGA_DEVICE(0x190A, info) /* SRV GT1 */
> > > +	INTEL_VGA_DEVICE(0x190A, info), /* SRV GT1 */ \
> > > +	INTEL_VGA_DEVICE(0x1917, info)  /* DT  GT1.5 */
> > >
> > >  #define INTEL_SKL_ULT_GT2_IDS(info) \
> > >  	INTEL_VGA_DEVICE(0x1916, info), /* ULT GT2 */ \
> > > --
> > > 2.26.2
> > >
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
