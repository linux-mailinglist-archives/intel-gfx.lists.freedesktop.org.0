Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CECDC2A5B38
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Nov 2020 01:52:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6C136E91A;
	Wed,  4 Nov 2020 00:52:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CF766E91A
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Nov 2020 00:52:32 +0000 (UTC)
IronPort-SDR: FNUQGQ+QQiDKd7E1eN/Kl44mYQrjZ5RJDVqoPLD8ylMaDOehToP6afxtFmZcT40TPz52U3XFVp
 wX8AdGjStNUg==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="169284372"
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="169284372"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 16:52:31 -0800
IronPort-SDR: rgkLJq+Ur3JJjCouIZBP8ebCKItAyjSWo2PUn6H+RBxFRZvmiAvDbQrNcObMdhqGvmxATPapth
 uClx4bYPwyPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="320622955"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 03 Nov 2020 16:52:31 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 3 Nov 2020 16:52:31 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 3 Nov 2020 16:52:30 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.1713.004;
 Tue, 3 Nov 2020 16:52:30 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915/ehl: Remove invalid PCI ID
Thread-Index: AQHWrwNNBD5VdYAqxUaCCvE8M11lzKm1o36AgAGEZOA=
Date: Wed, 4 Nov 2020 00:52:30 +0000
Message-ID: <3a0f61ae1ddf4c0cb1408ddb8d7ddf2d@intel.com>
References: <20201030212614.10595-1-anusha.srivatsa@intel.com>
 <20201102172923.GQ6112@intel.com>
In-Reply-To: <20201102172923.GQ6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Remove invalid PCI ID
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
> Sent: Monday, November 2, 2020 9:29 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH] drm/i915/ehl: Remove invalid PCI ID
> =

> On Fri, Oct 30, 2020 at 02:26:14PM -0700, Anusha Srivatsa wrote:
> > Update the EHL PCI IDs from BSpec.
> > Remove the invalid ones.
> >
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> =

> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Pls sort out the ci fail so we can merge this.

Merged.

Anusha =


> > ---
> >  include/drm/i915_pciids.h | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> > index 3b5ed1e4f3ec..28428e08a8d3 100644
> > --- a/include/drm/i915_pciids.h
> > +++ b/include/drm/i915_pciids.h
> > @@ -584,7 +584,6 @@
> >
> >  /* EHL */
> >  #define INTEL_EHL_IDS(info) \
> > -	INTEL_VGA_DEVICE(0x4500, info),	\
> >  	INTEL_VGA_DEVICE(0x4571, info), \
> >  	INTEL_VGA_DEVICE(0x4551, info), \
> >  	INTEL_VGA_DEVICE(0x4541, info), \
> > --
> > 2.25.0
> =

> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
