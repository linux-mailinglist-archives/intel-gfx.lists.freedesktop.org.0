Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BE745E12C
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Nov 2021 20:49:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B8A96E11F;
	Thu, 25 Nov 2021 19:49:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D1606E11F
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Nov 2021 19:49:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10179"; a="235500868"
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="235500868"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2021 11:49:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="457475041"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga003.jf.intel.com with ESMTP; 25 Nov 2021 11:49:25 -0800
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 25 Nov 2021 11:49:24 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX602.gar.corp.intel.com (10.109.78.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 26 Nov 2021 01:19:22 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.012;
 Fri, 26 Nov 2021 01:19:22 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/3] drm/i915/xelpd: Enable Pipe Degamma
Thread-Index: AQHX4KGDAzRWEeggMk2Q+ZtGD98bq6wSaIEAgAJBCkA=
Date: Thu, 25 Nov 2021 19:49:22 +0000
Message-ID: <3371d6fe2d124fb38b53de48b2bbabef@intel.com>
References: <20211123193649.3153258-1-uma.shankar@intel.com>
 <20211123193649.3153258-3-uma.shankar@intel.com> <YZ5R0JmEmkL04Phm@intel.com>
In-Reply-To: <YZ5R0JmEmkL04Phm@intel.com>
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
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/xelpd: Enable Pipe Degamma
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
> Sent: Wednesday, November 24, 2021 8:23 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; =3Dville.syrjala@linux.intel.com
> Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/xelpd: Enable Pipe Degamma
>=20
> On Wed, Nov 24, 2021 at 01:06:48AM +0530, Uma Shankar wrote:
> > Enable Pipe Degamma for XE_LPD. Extend the legacy implementation to
> > incorparate the extended lut size for XE_LPD.
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_color.c | 12 +++++++++---
> >  1 file changed, 9 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> > b/drivers/gpu/drm/i915/display/intel_color.c
> > index e529dbeee525..81046d5ab509 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -815,6 +815,12 @@ static void glk_load_degamma_lut(const struct
> intel_crtc_state *crtc_state)
> >  	enum pipe pipe =3D crtc->pipe;
> >  	int i, lut_size =3D INTEL_INFO(dev_priv)->color.degamma_lut_size;
> >  	const struct drm_color_lut *lut =3D crtc_state->hw.degamma_lut->data;
> > +	u32 extended_lut_size;
> > +
> > +	if (DISPLAY_VER(dev_priv) >=3D 13)
> > +		extended_lut_size =3D 131;
> > +	else
> > +		extended_lut_size =3D 35;
>=20
> Can you extract that into a small helper? IIRC I did that for the interna=
l version
> already.

Ok sure, will update this.

Regards,
Uma Shankar
> >
> >  	/*
> >  	 * When setting the auto-increment bit, the hardware seems to @@
> > -827,8 +833,8 @@ static void glk_load_degamma_lut(const struct
> > intel_crtc_state *crtc_state)
> >
> >  	for (i =3D 0; i < lut_size; i++) {
> >  		/*
> > -		 * First 33 entries represent range from 0 to 1.0
> > -		 * 34th and 35th entry will represent extended range
> > +		 * First lut_size entries represent range from 0 to 1.0
> > +		 * 3 additional lut entries will represent extended range
> >  		 * inputs 3.0 and 7.0 respectively, currently clamped
> >  		 * at 1.0. Since the precision is 16bit, the user
> >  		 * value can be directly filled to register.
> > @@ -844,7 +850,7 @@ static void glk_load_degamma_lut(const struct
> intel_crtc_state *crtc_state)
> >  	}
> >
> >  	/* Clamp values > 1.0. */
> > -	while (i++ < 35)
> > +	while (i++ < extended_lut_size)
> >  		intel_de_write_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe), 1 << 16);
> >
> >  	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
