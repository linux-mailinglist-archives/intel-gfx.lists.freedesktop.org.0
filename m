Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CDB46B32B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 07:46:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5395E8B1DC;
	Tue,  7 Dec 2021 06:46:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 656F88B1DA
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 06:46:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="224379824"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="224379824"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 22:46:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="515149817"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga008.jf.intel.com with ESMTP; 06 Dec 2021 22:46:31 -0800
Received: from bgsmsx601.gar.corp.intel.com (10.109.78.80) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 6 Dec 2021 22:46:30 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX601.gar.corp.intel.com (10.109.78.80) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 7 Dec 2021 12:16:28 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.020;
 Tue, 7 Dec 2021 12:16:28 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v2 3/3] drm/i915/xelpd: Add Pipe Color Lut caps to
 platform config
Thread-Index: AQHX4jrxlCaSNH7lNka/UlHipB4BS6wbgluAgAslP3A=
Date: Tue, 7 Dec 2021 06:46:28 +0000
Message-ID: <3f1c7928e868473482fa9aeec4364b8c@intel.com>
References: <20211125202750.3263848-1-uma.shankar@intel.com>
 <20211125202750.3263848-4-uma.shankar@intel.com> <YaX26zzEFMQZPX7p@intel.com>
In-Reply-To: <YaX26zzEFMQZPX7p@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/xelpd: Add Pipe Color Lut
 caps to platform config
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Tuesday, November 30, 2021 3:33 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Modem, Bhanuprakash
> <bhanuprakash.modem@intel.com>
> Subject: Re: [PATCH v2 3/3] drm/i915/xelpd: Add Pipe Color Lut caps to pl=
atform
> config
>=20
> On Fri, Nov 26, 2021 at 01:57:50AM +0530, Uma Shankar wrote:
> > XE_LPD has 128 Lut entries for Degamma, with additional 3 entries for
> > extended range. It has 511 entries for gamma with additional 2 entries
> > for extended range.
> >
> > v2: Updated lut size for 10bit gamma, added lut_tests (Ville)
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_pci.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_pci.c
> > b/drivers/gpu/drm/i915/i915_pci.c index f01cba4ec283..22eae330f075
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -938,7 +938,11 @@ static const struct intel_device_info adl_s_info
> > =3D {
> >
> >  #define XE_LPD_FEATURES \
> >  	.abox_mask =3D GENMASK(1, 0),						\
> > -	.color =3D { .degamma_lut_size =3D 0, .gamma_lut_size =3D 0 },		\
> > +	.color =3D { .degamma_lut_size =3D 128, .gamma_lut_size =3D 1024,		\
> > +		   .degamma_lut_tests =3D DRM_COLOR_LUT_NON_DECREASING |
> 	\
> > +					DRM_COLOR_LUT_EQUAL_CHANNELS,
> 	\
> > +		   .gamma_lut_tests =3D DRM_COLOR_LUT_NON_DECREASING,
> 	\
>=20
> The 10bit mode doesn't interpolate so it can handle non-decreasing values=
 just fine.
>=20
> With the gamma_lut_tests part dropped this is
Will drop this, refloat and merge.

Thanks Ville for the review and all the inputs.

Regards,
Uma Shankar
> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>=20
> > +	},									\
> >  	.dbuf.size =3D 4096,							\
> >  	.dbuf.slice_mask =3D BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |
> 	\
> >  		BIT(DBUF_S4),							\
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
