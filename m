Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D44615D9DE
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 15:57:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC2BD6F95C;
	Fri, 14 Feb 2020 14:57:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D57F86F95B
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 14:57:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 06:57:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,440,1574150400"; d="scan'208";a="314084925"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga001.jf.intel.com with ESMTP; 14 Feb 2020 06:57:06 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 14 Feb 2020 06:57:06 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 14 Feb 2020 06:57:06 -0800
Received: from bgsmsx153.gar.corp.intel.com (10.224.23.4) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 14 Feb 2020 06:57:05 -0800
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.161]) by
 BGSMSX153.gar.corp.intel.com ([169.254.2.95]) with mapi id 14.03.0439.000;
 Fri, 14 Feb 2020 20:27:03 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] Add support for Color encoding YCBCR_BT2020
Thread-Index: AQHV4yT5qm3VIsuOK0KfxwDIODJ5JagaTayAgABw2cD//6ZKgIAAYhQA
Date: Fri, 14 Feb 2020 14:57:02 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F823E79D9@BGSMSX104.gar.corp.intel.com>
References: <20200214105316.16076-1-kishore.kadiyala@intel.com>
 <20200214131009.GI13686@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F823E797C@BGSMSX104.gar.corp.intel.com>
 <20200214143257.GK13686@intel.com>
In-Reply-To: <20200214143257.GK13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiN2U0NzAzMTUtYWUxZi00YWY1LTkzYjMtZTMxZTY0MzMzZmQxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoibVwvVFAxcHBXUkFkbmlMUEh4ZDM5cXFXYUZYV2hVNlozZmFiU3M3RE5WODR1cVZkTHdiSzVuTXlxUitMMTQyYjAifQ==
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kadiyala, Kishore" <kishore.kadiyala@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, February 14, 2020 8:03 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: Kadiyala, Kishore <kishore.kadiyala@intel.com>; intel-gfx@lists.freed=
esktop.org
> Subject: Re: [Intel-gfx] [PATCH] Add support for Color encoding YCBCR_BT2=
020
> =

> On Fri, Feb 14, 2020 at 02:27:35PM +0000, Shankar, Uma wrote:
> >
> >
> > > -----Original Message-----
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Sent: Friday, February 14, 2020 6:40 PM
> > > To: Kadiyala, Kishore <kishore.kadiyala@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma
> > > <uma.shankar@intel.com>
> > > Subject: Re: [Intel-gfx] [PATCH] Add support for Color encoding
> > > YCBCR_BT2020
> > >
> > > On Fri, Feb 14, 2020 at 04:23:16PM +0530, Kishore Kadiyala wrote:
> > > > Currently the plane property doesn't have support for
> > > > YCBCR_BT2020, which enables the corresponding color conversion mode=
 on
> plane CSC.
> > > >
> > > > Signed-off-by: Kishore Kadiyala <kishore.kadiyala@intel.com>
> > > > Cc: Uma Shankar <uma.shankar@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_sprite.c | 9 +++++++--
> > > >  1 file changed, 7 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c
> > > > b/drivers/gpu/drm/i915/display/intel_sprite.c
> > > > index 7abeefe8dce5..5169a7260d7c 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > > > @@ -3011,6 +3011,7 @@ skl_universal_plane_create(struct
> > > > drm_i915_private
> > > *dev_priv,
> > > >  	struct intel_plane *plane;
> > > >  	enum drm_plane_type plane_type;
> > > >  	unsigned int supported_rotations;
> > > > +	unsigned int supported_csc;
> > > >  	unsigned int possible_crtcs;
> > > >  	const u64 *modifiers;
> > > >  	const u32 *formats;
> > > > @@ -3088,9 +3089,13 @@ skl_universal_plane_create(struct
> > > > drm_i915_private
> > > *dev_priv,
> > > >  					   DRM_MODE_ROTATE_0,
> > > >  					   supported_rotations);
> > > >
> > > > +	supported_csc =3D BIT(DRM_COLOR_YCBCR_BT601) |
> > > > +BIT(DRM_COLOR_YCBCR_BT709);
> > > > +
> > > > +	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> > > > +		supported_csc |=3D BIT(DRM_COLOR_YCBCR_BT2020);
> > >
> > > Missing the actual code to enable it on glk and icl+ sdr planes, so t=
his will not
> work.
> >
> > Yeah this need to be handled for Non HDR planes.
> >
> > > IIRC there was also some kind of hw fail related to some BT.something
> conversions.
> > > But I can't remember if that was in the RGB->RGB or
> > > YUV->RGB logic.
> >
> > Will try to check this out. What kind of fails Ville, was it not all wo=
rking or artifacts
> ?
> =

> IIRC a wrong coefficient was used in one of the hardcoded hw matrices. Sh=
ould be
> listed on the bspec w/a page.

Able to retrieve that, looks like it's for RGB709 to RGB2020 conversion on =
SDR planes.
So recommendation is not to enable this conversion for SDR planes.

Thanks Ville.

Regards,
Uma Shankar

> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
