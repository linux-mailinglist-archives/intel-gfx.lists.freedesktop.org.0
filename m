Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BFD43DA72
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 06:37:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DC5E89B8F;
	Thu, 28 Oct 2021 04:37:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2178789B8F
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 04:37:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="210399339"
X-IronPort-AV: E=Sophos;i="5.87,188,1631602800"; d="scan'208";a="210399339"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 21:37:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,188,1631602800"; d="scan'208";a="597635788"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 27 Oct 2021 21:37:15 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 21:37:14 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 21:37:13 -0700
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.012;
 Thu, 28 Oct 2021 10:07:11 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Navare, Manasi D" <manasi.d.navare@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>
Thread-Topic: [PATCH] drm/i915/dsc: Fix the usage of uncompressed bpp
Thread-Index: AQHXyxhl7vfS49AtK0y7RnckKW8NFqvm3saAgADkerA=
Date: Thu, 28 Oct 2021 04:37:10 +0000
Message-ID: <7d0b19226c71402199351b7e8514c041@intel.com>
References: <20211027095316.9579-1-vandita.kulkarni@intel.com>
 <20211027192642.GA22973@labuser-Z97X-UD5H>
In-Reply-To: <20211027192642.GA22973@labuser-Z97X-UD5H>
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
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsc: Fix the usage of uncompressed
 bpp
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
> From: Navare, Manasi D <manasi.d.navare@intel.com>
> Sent: Thursday, October 28, 2021 12:57 AM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>
> Subject: Re: [PATCH] drm/i915/dsc: Fix the usage of uncompressed bpp
>=20
> On Wed, Oct 27, 2021 at 03:23:16PM +0530, Vandita Kulkarni wrote:
> > DP 1.4 spec limits max compression bpp to uncompressed bpp -1, which
> > is supported from XELPD onwards.
> > Instead of uncompressed bpp, max dsc input bpp was being used to limit
> > the max compression bpp.
>=20
> So the input Pipe BPP which is the uncompressed bpp is decided by the inp=
ut
> bpc and when this was initially written, we had designed it to respect th=
e
> max_req_bpc by the user.
> So that is what we use to decide the input bpc and hence the pipe_bpp Thi=
s
> input pipe_bpp decides the compressed bpp that we calculate based on all
> the supported output bpps which are supported all the way upto
> uncompressed_output_bpp - 1.
>=20
> So I dont see the need to change the logic here. Moreover I dont see any
> change in the dsc_compute_bpp function So I dont understand the purpose
> of introducing the new max_dsc_pipe_bpp variable here

Thanks for the comments, I had few more opens around this along with this p=
atch.

AFAIU about max_requested_bpc it is to limit the max_bpc
"drm: Add connector property to limit max bpc"
And the driver is supposed to program the default bpc as per the connector =
limitation.
Which is 12 as per the current driver implementation.

I had few queries around this design:
So it means that max_dsc_input_bpp would be set to 36 if supported by the s=
ink and the platform.
And now we make this as our pipe_bpp,
1. Does this mean that we are assuming 12bpc as i/p always?
2. What happens to those with formats 8bpc, 10 bpc?

We do not consider the actual pipe_bpp while computing the compression_bpp,=
=20
We reverse calculate it from the link_rate,  and small joiner bpp limits.
In cases of forcing dsc, we might have a situation where the link can actua=
lly support the current bpp, or even more.
But we are forcing the dsc enable.
In such cases we might end up with a compression bpp which is higher than t=
he actual i/p bpp.

Now, even if we take a min of  higher compression bpp against max_requested=
_bpc *3 -1, we still have
Compression bpp > actual pipe_bpp=20

As per the spec when they say uncompressed bpp, they actually mean 3 * bpc
If we go ahead with this approach of using max_requested_bpc , which is 12 =
always we cannot
adhere to the spec.

Thanks,
Vandita

> Manasi
>=20
> >
> > Fixes: 831d5aa96c97 ("drm/i915/xelpd: Support DP1.4 compression BPPs")
> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 9d8132dd4cc5..1f7e666ae490 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1322,7 +1322,7 @@ static int intel_dp_dsc_compute_config(struct
> intel_dp *intel_dp,
> >  	struct drm_i915_private *dev_priv =3D to_i915(dig_port-
> >base.base.dev);
> >  	const struct drm_display_mode *adjusted_mode =3D
> >  		&pipe_config->hw.adjusted_mode;
> > -	int pipe_bpp;
> > +	int pipe_bpp, max_dsc_pipe_bpp;
> >  	int ret;
> >
> >  	pipe_config->fec_enable =3D !intel_dp_is_edp(intel_dp) && @@ -
> 1331,7
> > +1331,8 @@ static int intel_dp_dsc_compute_config(struct intel_dp
> *intel_dp,
> >  	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
> >  		return -EINVAL;
> >
> > -	pipe_bpp =3D intel_dp_dsc_compute_bpp(intel_dp, conn_state-
> >max_requested_bpc);
> > +	pipe_bpp =3D pipe_config->pipe_bpp;
> > +	max_dsc_pipe_bpp =3D intel_dp_dsc_compute_bpp(intel_dp,
> > +conn_state->max_requested_bpc);
> >
> >  	/* Min Input BPC for ICL+ is 8 */
> >  	if (pipe_bpp < 8 * 3) {
> > @@ -1345,7 +1346,7 @@ static int intel_dp_dsc_compute_config(struct
> intel_dp *intel_dp,
> >  	 * Optimize this later for the minimum possible link rate/lane count
> >  	 * with DSC enabled for the requested mode.
> >  	 */
> > -	pipe_config->pipe_bpp =3D pipe_bpp;
> > +	pipe_config->pipe_bpp =3D max_dsc_pipe_bpp;
> >  	pipe_config->port_clock =3D limits->max_rate;
> >  	pipe_config->lane_count =3D limits->max_lane_count;
> >
> > --
> > 2.32.0
> >
