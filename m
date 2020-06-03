Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 100301ED000
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 14:42:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD4B189ACC;
	Wed,  3 Jun 2020 12:42:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8693489ACC
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jun 2020 12:42:39 +0000 (UTC)
IronPort-SDR: khLwMnDkMLyMuP5q1fT2V+UsdbXyr1hP6z5Tlfnghju1W8oXfocV993Zx+cuDWjCBYwNXBypfD
 2/EyFPXLRiRQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 05:42:38 -0700
IronPort-SDR: JKdmbu5ZaZGWfvzBKf+0apqrTao7M1ZfYLvArxS2y7qAoSZNEPXrA2+FfAMoK5L+9LWb+j8sv4
 RoyxHl0kPr1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,467,1583222400"; d="scan'208";a="257998723"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 03 Jun 2020 05:42:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 03 Jun 2020 15:42:35 +0300
Date: Wed, 3 Jun 2020 15:42:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200603124235.GP6112@intel.com>
References: <20200528200356.36756-1-jose.souza@intel.com>
 <20200529065148.GG6112@intel.com>
 <f1176dfde6ee0cb1bad4ca2c2895c10359d55365.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f1176dfde6ee0cb1bad4ca2c2895c10359d55365.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/display/hsw+: Do not program
 the same vswing entry twice
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

On Fri, May 29, 2020 at 08:52:38PM +0000, Souza, Jose wrote:
> On Fri, 2020-05-29 at 09:51 +0300, Ville Syrj=E4l=E4 wrote:
> > On Thu, May 28, 2020 at 01:03:53PM -0700, Jos=E9 Roberto de Souza wrote:
> > > It will be programed right before the link training, so no need to do
> > > it twice.
> > > It will not strictly follow BSpec sequences but most of this sequences
> > > are not matching anyways.
> > > =

> > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_ddi.c | 19 ++++---------------
> > >  1 file changed, 4 insertions(+), 15 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/d=
rm/i915/display/intel_ddi.c
> > > index aa22465bb56e..c100efc6a2c4 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -3115,7 +3115,6 @@ static void tgl_ddi_pre_enable_dp(struct intel_=
atomic_state *state,
> > >  	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
> > >  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> > >  	bool is_mst =3D intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST=
);
> > > -	int level =3D intel_ddi_dp_level(intel_dp);
> > >  	enum transcoder transcoder =3D crtc_state->cpu_transcoder;
> > >  =

> > >  	intel_dp_set_link_params(intel_dp, crtc_state->port_clock,
> > > @@ -3190,9 +3189,10 @@ static void tgl_ddi_pre_enable_dp(struct intel=
_atomic_state *state,
> > >  	 * down this function.
> > >  	 */
> > >  =

> > > -	/* 7.e Configure voltage swing and related IO settings */
> > > -	tgl_ddi_vswing_sequence(encoder, crtc_state->port_clock, level,
> > > -				encoder->type);
> > > +	/*
> > > +	 * 7.e Configure voltage swing and related IO settings
> > > +	 * It will be done in intel_dp_start_link_train(), no need to do tw=
ice
> > > +	 */
> > =

> > Hmm. Do we still set it up before turning on the port?
> =

> No.
> =

> intel_dp_start_link_train()
> 	intel_dp_link_training_clock_recovery()
> 		intel_dp->prepare_link_retrain(intel_dp)/intel_ddi_prepare_link_retrain=
();/* Port is enabled here in training mode */
> =

> 		....
> =

> 		intel_dp_reset_link_train()
> 			intel_dp_set_signal_levels() /* Vswing table is set here */
> Guess is safer keep programming it twice then?

Probably.

> =

> =

> > =

> > >  =

> > >  	/*
> > >  	 * 7.f Combo PHY: Configure PORT_CL_DW10 Static Power Down to power=
 up
> > > @@ -3257,7 +3257,6 @@ static void hsw_ddi_pre_enable_dp(struct intel_=
atomic_state *state,
> > >  	enum phy phy =3D intel_port_to_phy(dev_priv, port);
> > >  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> > >  	bool is_mst =3D intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST=
);
> > > -	int level =3D intel_ddi_dp_level(intel_dp);
> > >  =

> > >  	if (INTEL_GEN(dev_priv) < 11)
> > >  		drm_WARN_ON(&dev_priv->drm,
> > > @@ -3279,16 +3278,6 @@ static void hsw_ddi_pre_enable_dp(struct intel=
_atomic_state *state,
> > >  =

> > >  	icl_program_mg_dp_mode(dig_port, crtc_state);
> > >  =

> > > -	if (INTEL_GEN(dev_priv) >=3D 11)
> > > -		icl_ddi_vswing_sequence(encoder, crtc_state->port_clock,
> > > -					level, encoder->type);
> > > -	else if (IS_CANNONLAKE(dev_priv))
> > > -		cnl_ddi_vswing_sequence(encoder, level, encoder->type);
> > > -	else if (IS_GEN9_LP(dev_priv))
> > > -		bxt_ddi_vswing_sequence(encoder, level, encoder->type);
> > > -	else
> > > -		intel_prepare_dp_ddi_buffers(encoder, crtc_state);
> > =

> > This last one definitely has to stay IIRC. HSW/BDW/SKL buf trans
> > stuff works quite bit differently than the BXT+ style more manual
> > programming.
> > =

> > > -
> > >  	if (intel_phy_is_combo(dev_priv, phy)) {
> > >  		bool lane_reversal =3D
> > >  			dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> > > -- =

> > > 2.26.2
> > > =

> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
