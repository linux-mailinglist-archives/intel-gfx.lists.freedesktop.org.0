Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7F7441EC6
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Nov 2021 17:45:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 727826E4CA;
	Mon,  1 Nov 2021 16:45:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5781E6E4CA
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Nov 2021 16:45:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10154"; a="211110088"
X-IronPort-AV: E=Sophos;i="5.87,200,1631602800"; d="scan'208";a="211110088"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 09:45:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,200,1631602800"; d="scan'208";a="583042546"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 01 Nov 2021 09:45:27 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 09:45:27 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 09:45:26 -0700
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.012;
 Mon, 1 Nov 2021 22:15:24 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Navare, Manasi D" <manasi.d.navare@intel.com>
Thread-Topic: [PATCH] drm/i915/dsc: Fix the usage of uncompressed bpp
Thread-Index: AQHXyxhl7vfS49AtK0y7RnckKW8NFqvm3saAgADkerCAAn9aAIAEovmg
Date: Mon, 1 Nov 2021 16:45:23 +0000
Message-ID: <b1ad2556bc3b442f9cb2ed1b47cb9d50@intel.com>
References: <20211027095316.9579-1-vandita.kulkarni@intel.com>
 <20211027192642.GA22973@labuser-Z97X-UD5H>
 <7d0b19226c71402199351b7e8514c041@intel.com>
 <20211029231251.GA1790@labuser-Z97X-UD5H>
In-Reply-To: <20211029231251.GA1790@labuser-Z97X-UD5H>
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Navare, Manasi D <manasi.d.navare@intel.com>
> Sent: Saturday, October 30, 2021 4:43 AM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>
> Subject: Re: [PATCH] drm/i915/dsc: Fix the usage of uncompressed bpp
>=20
> On Wed, Oct 27, 2021 at 09:37:10PM -0700, Kulkarni, Vandita wrote:
> > > -----Original Message-----
> > > From: Navare, Manasi D <manasi.d.navare@intel.com>
> > > Sent: Thursday, October 28, 2021 12:57 AM
> > > To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani
> > > <jani.nikula@intel.com>
> > > Subject: Re: [PATCH] drm/i915/dsc: Fix the usage of uncompressed bpp
> > >
> > > On Wed, Oct 27, 2021 at 03:23:16PM +0530, Vandita Kulkarni wrote:
> > > > DP 1.4 spec limits max compression bpp to uncompressed bpp -1,
> > > > which is supported from XELPD onwards.
> > > > Instead of uncompressed bpp, max dsc input bpp was being used to
> > > > limit the max compression bpp.
> > >
> > > So the input Pipe BPP which is the uncompressed bpp is decided by
> > > the input bpc and when this was initially written, we had designed
> > > it to respect the max_req_bpc by the user.
> > > So that is what we use to decide the input bpc and hence the
> > > pipe_bpp This input pipe_bpp decides the compressed bpp that we
> > > calculate based on all the supported output bpps which are supported
> > > all the way upto uncompressed_output_bpp - 1.
> > >
> > > So I dont see the need to change the logic here. Moreover I dont see
> > > any change in the dsc_compute_bpp function So I dont understand the
> > > purpose of introducing the new max_dsc_pipe_bpp variable here
> >
> > Thanks for the comments, I had few more opens around this along with
> this patch.
> >
> > AFAIU about max_requested_bpc it is to limit the max_bpc
> > "drm: Add connector property to limit max bpc"
> > And the driver is supposed to program the default bpc as per the connec=
tor
> limitation.
> > Which is 12 as per the current driver implementation.
> >
> > I had few queries around this design:
> > So it means that max_dsc_input_bpp would be set to 36 if supported by t=
he
> sink and the platform.
> > And now we make this as our pipe_bpp,
> > 1. Does this mean that we are assuming 12bpc as i/p always?
> > 2. What happens to those with formats 8bpc, 10 bpc?
> >
>=20
> Yes so this driver policy was decided based on some feedback that I had g=
ot
> from the community as well as internal feedback from Ville that the decis=
ion
> of input_bpc should be based on max_bpc requested by the user through the
> connector property and max_bpc supported by the platform.
> Here we take the min of the two so that we dont violate either of the max
> constrains.
> This was primarily suggested by Ville since he said that we should always
> respect what user has set as the upper limit in the bpc because this coul=
d be
> for example driven by the fact that OEM's panel has a limitation or issue=
s
> with higher bpcs or a display requirement for certain use case.
> Hence while we want to support as high bpc as supported by the platform
> and sink to have better display quality, it should not exceed the max lim=
it set
> by the user through the property.
>=20
> 8 and 10bpc will be supported but we want to start with supporting the ma=
x
> we can, going down from there if needed.
> So for compression, we chose the maximum input bpc and determine the
> compressed bpp for that.
>=20
>=20
> > We do not consider the actual pipe_bpp while computing the
> > compression_bpp, We reverse calculate it from the link_rate,  and small
> joiner bpp limits.
> > In cases of forcing dsc, we might have a situation where the link can
> actually support the current bpp, or even more.
> > But we are forcing the dsc enable.
> > In such cases we might end up with a compression bpp which is higher th=
an
> the actual i/p bpp.
>=20
> Well the only time we force the dsc_enable is for IGT DSC tests and thats
> okay for compression bpp to be higher since there we are just validation =
the
> functionality and its not for actual user/use case.

We are having these test cases as part of CI. We hit FIFO underrun in such =
cases and that's  treated as a fail.

>=20
> In the actual use case we will only enable DSC when the available max lin=
k
> rate/lane count does not support the minimum bpp of 18 (min bpc of 6 * 3)
> So then in that case we say that lets keep the pipe_bpp or input bpp as
> max_supported_input_bpc * 3
> >
> > Now, even if we take a min of  higher compression bpp against
> > max_requested_bpc *3 -1, we still have Compression bpp > actual
> > pipe_bpp
> >
> > As per the spec when they say uncompressed bpp, they actually mean 3 *
> > bpc If we go ahead with this approach of using max_requested_bpc ,
> > which is 12 always we cannot adhere to the spec.
>=20
> So the Bspec says that if the input BPP is (8 * 3) =3D 24, then based on =
the
> engine's compression ratio capability it can support output compressed BP=
P
> of: 8 - 23 in the increments of 1 BPP And the maximum that we can pick
> between 8 - 23 will depend on the min(max bits_per_pixel that the max lin=
k
> rate, lane count can handle, max bits per pixel by small joiner RAM calc)=
.

In case of force dsc, as part of  the IGT tests, the link can actually supp=
ort more than
24bpp, since we are forcing have seen a case where it could support 28bpp.

So min of (28,(36-1)) would be 28 and not as per the spec.

Hence in either of the places, kernel or igt we need to honour the limits
Of bpc*3 as per the DP 1.4 spec.

If you look at the IGT we have cases of 8bpc, 10 bpc
We need to address this either in the driver by getting the actual uncompre=
ssed bpp limits
Or in the user space by changing the max_requested_bpc for 8bpc and 10bpc c=
ases.

This patch is tested and resolves the FIFO underruns, in force dsc cases.
The problem is only when we are forcing DSC and the link rate can actually =
support higher bpp.
And we have multiple igts trying to use 8bpc and 10bpc.

Thanks
Vandita

>=20
> So we are good here in terms of how we calculate our compressed bpp.
> However what you should once double check is for XeLPD (>=3D13) platforms=
,
> you just pick min (bits_per_pixel, pipe_bpp - 1) But I remember seeing th=
at
> the spec still says target bpp has to be 8 to 27 even when supported inpu=
t bpc
> are 8/10/12 (please check if it actually goes all the way from 8 to 35)
>=20
> Manasi
>=20
> >
> > Thanks,
> > Vandita
> >
> > > Manasi
> > >
> > > >
> > > > Fixes: 831d5aa96c97 ("drm/i915/xelpd: Support DP1.4 compression
> > > > BPPs")
> > > > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++---
> > > >  1 file changed, 4 insertions(+), 3 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > index 9d8132dd4cc5..1f7e666ae490 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -1322,7 +1322,7 @@ static int
> > > > intel_dp_dsc_compute_config(struct
> > > intel_dp *intel_dp,
> > > >  	struct drm_i915_private *dev_priv =3D to_i915(dig_port-
> > > >base.base.dev);
> > > >  	const struct drm_display_mode *adjusted_mode =3D
> > > >  		&pipe_config->hw.adjusted_mode;
> > > > -	int pipe_bpp;
> > > > +	int pipe_bpp, max_dsc_pipe_bpp;
> > > >  	int ret;
> > > >
> > > >  	pipe_config->fec_enable =3D !intel_dp_is_edp(intel_dp) && @@ -
> > > 1331,7
> > > > +1331,8 @@ static int intel_dp_dsc_compute_config(struct intel_dp
> > > *intel_dp,
> > > >  	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
> > > >  		return -EINVAL;
> > > >
> > > > -	pipe_bpp =3D intel_dp_dsc_compute_bpp(intel_dp, conn_state-
> > > >max_requested_bpc);
> > > > +	pipe_bpp =3D pipe_config->pipe_bpp;
> > > > +	max_dsc_pipe_bpp =3D intel_dp_dsc_compute_bpp(intel_dp,
> > > > +conn_state->max_requested_bpc);
> > > >
> > > >  	/* Min Input BPC for ICL+ is 8 */
> > > >  	if (pipe_bpp < 8 * 3) {
> > > > @@ -1345,7 +1346,7 @@ static int
> > > > intel_dp_dsc_compute_config(struct
> > > intel_dp *intel_dp,
> > > >  	 * Optimize this later for the minimum possible link rate/lane co=
unt
> > > >  	 * with DSC enabled for the requested mode.
> > > >  	 */
> > > > -	pipe_config->pipe_bpp =3D pipe_bpp;
> > > > +	pipe_config->pipe_bpp =3D max_dsc_pipe_bpp;
> > > >  	pipe_config->port_clock =3D limits->max_rate;
> > > >  	pipe_config->lane_count =3D limits->max_lane_count;
> > > >
> > > > --
> > > > 2.32.0
> > > >
