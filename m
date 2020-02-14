Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E9815D968
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 15:27:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 308B76F94A;
	Fri, 14 Feb 2020 14:27:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61BD96F94A
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 14:27:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 06:27:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,440,1574150400"; d="scan'208";a="381452092"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga004.jf.intel.com with ESMTP; 14 Feb 2020 06:27:39 -0800
Received: from fmsmsx120.amr.corp.intel.com (10.18.124.208) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 14 Feb 2020 06:27:39 -0800
Received: from bgsmsx105.gar.corp.intel.com (10.223.43.197) by
 fmsmsx120.amr.corp.intel.com (10.18.124.208) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 14 Feb 2020 06:27:38 -0800
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.161]) by
 BGSMSX105.gar.corp.intel.com ([169.254.3.119]) with mapi id 14.03.0439.000;
 Fri, 14 Feb 2020 19:57:35 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Kadiyala, Kishore" <kishore.kadiyala@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] Add support for Color encoding YCBCR_BT2020
Thread-Index: AQHV4yT5qm3VIsuOK0KfxwDIODJ5JagaTayAgABw2cA=
Date: Fri, 14 Feb 2020 14:27:35 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F823E797C@BGSMSX104.gar.corp.intel.com>
References: <20200214105316.16076-1-kishore.kadiyala@intel.com>
 <20200214131009.GI13686@intel.com>
In-Reply-To: <20200214131009.GI13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODA5NTIwYzQtNGZjZi00MmM4LWIwZGUtOGE3M2MxYzY0MDg3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoidmhiZTlYZE1ubSt2Q1wvV1wveGd6NmYwaHZ0MjlhVUlrMTFnQ0ZDXC9pVU8xU0UzQWVGN1J5cFBiZmx2cWtRWENIWiJ9
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] Add support for Color encoding YCBCR_BT2020
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
> Sent: Friday, February 14, 2020 6:40 PM
> To: Kadiyala, Kishore <kishore.kadiyala@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] Add support for Color encoding YCBCR_BT2=
020
> =

> On Fri, Feb 14, 2020 at 04:23:16PM +0530, Kishore Kadiyala wrote:
> > Currently the plane property doesn't have support for YCBCR_BT2020,
> > which enables the corresponding color conversion mode on plane CSC.
> >
> > Signed-off-by: Kishore Kadiyala <kishore.kadiyala@intel.com>
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_sprite.c | 9 +++++++--
> >  1 file changed, 7 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c
> > b/drivers/gpu/drm/i915/display/intel_sprite.c
> > index 7abeefe8dce5..5169a7260d7c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > @@ -3011,6 +3011,7 @@ skl_universal_plane_create(struct drm_i915_private
> *dev_priv,
> >  	struct intel_plane *plane;
> >  	enum drm_plane_type plane_type;
> >  	unsigned int supported_rotations;
> > +	unsigned int supported_csc;
> >  	unsigned int possible_crtcs;
> >  	const u64 *modifiers;
> >  	const u32 *formats;
> > @@ -3088,9 +3089,13 @@ skl_universal_plane_create(struct drm_i915_priva=
te
> *dev_priv,
> >  					   DRM_MODE_ROTATE_0,
> >  					   supported_rotations);
> >
> > +	supported_csc =3D BIT(DRM_COLOR_YCBCR_BT601) |
> > +BIT(DRM_COLOR_YCBCR_BT709);
> > +
> > +	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> > +		supported_csc |=3D BIT(DRM_COLOR_YCBCR_BT2020);
> =

> Missing the actual code to enable it on glk and icl+ sdr planes, so this =
will not work.

Yeah this need to be handled for Non HDR planes.

> IIRC there was also some kind of hw fail related to some BT.something con=
versions.
> But I can't remember if that was in the RGB->RGB or
> YUV->RGB logic.

Will try to check this out. What kind of fails Ville, was it not all workin=
g or artifacts ?
 =

> Also clearly commit 27ee72477c9b ("drm/i915/icl: Handle YCbCr to RGB conv=
ersion
> for BT2020 case") was never actually tested :(

Yeah, this seem to miss the BT2020 export from driver. IGT has the stuff to=
 test this.
Will work with Kishore to fix this.

Regards,
Uma Shankar
> =

> > +
> >  	drm_plane_create_color_properties(&plane->base,
> > -					  BIT(DRM_COLOR_YCBCR_BT601) |
> > -					  BIT(DRM_COLOR_YCBCR_BT709),
> > +					  supported_csc,
> >
> BIT(DRM_COLOR_YCBCR_LIMITED_RANGE) |
> >  					  BIT(DRM_COLOR_YCBCR_FULL_RANGE),
> >  					  DRM_COLOR_YCBCR_BT709,
> > --
> > 2.17.1
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
