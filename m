Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CCD4334E3
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 13:40:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC0436E155;
	Tue, 19 Oct 2021 11:40:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64D396E155
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 11:40:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="289335903"
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="289335903"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 04:40:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="550777773"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 19 Oct 2021 04:40:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 19 Oct 2021 04:40:32 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 19 Oct 2021 04:40:30 -0700
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.012;
 Tue, 19 Oct 2021 17:10:28 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Thread-Topic: [PATCH 2/4] drm/i915/dsi/xelpd: Add DSI transcoder support
Thread-Index: AQHXw+yd3j9CdKpBz0e9Z7fXZgoZIavZv/EAgABzosA=
Date: Tue, 19 Oct 2021 11:40:28 +0000
Message-ID: <ecae5fbc44ac4fe0a58e69258143bb50@intel.com>
References: <20211018065207.30587-1-vandita.kulkarni@intel.com>
 <20211018065207.30587-3-vandita.kulkarni@intel.com>
 <8735oxs4o7.fsf@intel.com>
In-Reply-To: <8735oxs4o7.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/dsi/xelpd: Add DSI transcoder
 support
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Tuesday, October 19, 2021 3:44 PM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Deak, Imre <imre.deak@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Kulkarni, Vandita
> <vandita.kulkarni@intel.com>
> Subject: Re: [PATCH 2/4] drm/i915/dsi/xelpd: Add DSI transcoder support
>=20
> On Mon, 18 Oct 2021, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> > Update ADL_P device info to support DSI0, DSI1
> >
> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_pci.c | 31 ++++++++++++++++++++++++++++-
> --
> >  1 file changed, 28 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_pci.c
> > b/drivers/gpu/drm/i915/i915_pci.c index 169837de395d..a2dd5a38fdf5
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -932,8 +932,6 @@ static const struct intel_device_info adl_s_info =
=3D
> > {  #define XE_LPD_FEATURES \
> >  	.abox_mask =3D GENMASK(1, 0),
> 	\
> >  	.color =3D { .degamma_lut_size =3D 0, .gamma_lut_size =3D 0 },
> 	\
> > -	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) |
> BIT(TRANSCODER_B) |		\
> > -		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
> 		\
> >  	.dbuf.size =3D 4096,
> 	\
> >  	.dbuf.slice_mask =3D BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |
> 		\
> >  		BIT(DBUF_S4),
> 	\
> > @@ -950,23 +948,49 @@ static const struct intel_device_info adl_s_info =
=3D {
> >  	.display.has_psr =3D 1,
> 	\
> >  	.display.ver =3D 13,
> 	\
> >  	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> 	\
> > +	XE_LPD_CURSOR_OFFSETS
> > +
> > +#define ADLP_TRANSCODERS \
> > +	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) |
> BIT(TRANSCODER_B) |		\
> > +		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |
> 		\
> > +		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
> 		\
> >  	.pipe_offsets =3D {
> 	\
> >  		[TRANSCODER_A] =3D PIPE_A_OFFSET,
> 		\
> >  		[TRANSCODER_B] =3D PIPE_B_OFFSET,
> 		\
> >  		[TRANSCODER_C] =3D PIPE_C_OFFSET,
> 		\
> >  		[TRANSCODER_D] =3D PIPE_D_OFFSET,
> 		\
> > +		[TRANSCODER_DSI_0] =3D PIPE_DSI0_OFFSET,
> 		\
> > +		[TRANSCODER_DSI_1] =3D PIPE_DSI1_OFFSET,
> 		\
> >  	},
> 	\
> >  	.trans_offsets =3D {
> 	\
> >  		[TRANSCODER_A] =3D TRANSCODER_A_OFFSET,
> 		\
> >  		[TRANSCODER_B] =3D TRANSCODER_B_OFFSET,
> 		\
> >  		[TRANSCODER_C] =3D TRANSCODER_C_OFFSET,
> 		\
> >  		[TRANSCODER_D] =3D TRANSCODER_D_OFFSET,
> 		\
> > +		[TRANSCODER_DSI_0] =3D TRANSCODER_DSI0_OFFSET,
> 		\
> > +		[TRANSCODER_DSI_1] =3D TRANSCODER_DSI1_OFFSET,
> 		\
>=20
> I think you could just add these changes to XE_LPD_FEATURES, and have
> separate .cpu_transcoder_mask initialization for ADLP and DG2.

Okay got it. So its ok to have the pipe_offsets  or transcoder offsets adde=
d unless we are not defining it in the .cpu_transcoder_mask
Will make this change.

Thanks,
Vandita
>=20
> Compare GEN12_FEATURES.
>=20
> BR,
> Jani.
>=20
> > +	}
> 	\
> > +
> > +#define DG2_TRANSCODERS \
> > +	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) |
> BIT(TRANSCODER_B) |		\
> > +		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
> 		\
> > +	.pipe_offsets =3D {
> 	\
> > +		[TRANSCODER_A] =3D PIPE_A_OFFSET,
> 		\
> > +		[TRANSCODER_B] =3D PIPE_B_OFFSET,
> 		\
> > +		[TRANSCODER_C] =3D PIPE_C_OFFSET,
> 		\
> > +		[TRANSCODER_D] =3D PIPE_D_OFFSET,
> 		\
> >  	},
> 	\
> > -	XE_LPD_CURSOR_OFFSETS
> > +	.trans_offsets =3D {
> 	\
> > +		[TRANSCODER_A] =3D TRANSCODER_A_OFFSET,
> 		\
> > +		[TRANSCODER_B] =3D TRANSCODER_B_OFFSET,
> 		\
> > +		[TRANSCODER_C] =3D TRANSCODER_C_OFFSET,
> 		\
> > +		[TRANSCODER_D] =3D TRANSCODER_D_OFFSET,
> 		\
> > +	}
> 	\
> >
> >  static const struct intel_device_info adl_p_info =3D {
> >  	GEN12_FEATURES,
> >  	XE_LPD_FEATURES,
> > +	ADLP_TRANSCODERS,
> >  	PLATFORM(INTEL_ALDERLAKE_P),
> >  	.require_force_probe =3D 1,
> >  	.display.has_cdclk_crawl =3D 1,
> > @@ -1029,6 +1053,7 @@ static const struct intel_device_info dg2_info =
=3D {
> >  	XE_HP_FEATURES,
> >  	XE_HPM_FEATURES,
> >  	XE_LPD_FEATURES,
> > +	DG2_TRANSCODERS,
> >  	DGFX_FEATURES,
> >  	.graphics_rel =3D 55,
> >  	.media_rel =3D 55,
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
