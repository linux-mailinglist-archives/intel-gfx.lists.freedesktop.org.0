Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1B5134799
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 17:20:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0263A89826;
	Wed,  8 Jan 2020 16:20:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14AC189826
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 16:20:50 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 08:20:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,410,1571727600"; d="scan'208";a="271868500"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 08 Jan 2020 08:20:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Jan 2020 18:20:46 +0200
Date: Wed, 8 Jan 2020 18:20:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200108162046.GM1208@intel.com>
References: <20200108142447.9952-1-ville.syrjala@linux.intel.com>
 <20200108144550.29280-1-ville.syrjala@linux.intel.com>
 <03f794d6cfb5e189cc90b34cfc6174c6673e85b2.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <03f794d6cfb5e189cc90b34cfc6174c6673e85b2.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Fix MST disable sequence
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

On Wed, Jan 08, 2020 at 04:09:31PM +0000, Souza, Jose wrote:
> On Wed, 2020-01-08 at 16:45 +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > When moving the pipe disable & co. function calls from
> > haswell_crtc_disable() into the encoder .post_disable() hooks I
> > neglected to account for the MST vs. DDI interactions properly.
> > This now leads us to call these functions two times for the last
> > MST stream (once from the MST code and a second time from the DDI
> > code). The calls from the DDI code should only be done for SST
> > and not MST. Add the proper check for that.
> =

> Oohh I forgot that too.
> =

> > =

> > This results in an MCE on ICL. My vague theory is that we turn off
> > the transcoder clock from the MST code and then we proceed to touch
> > something in the DDI code which still depends on that clock causing
> > the hardware to become upset. Though I can't really explain why
> > Stan's hack of omitting the pipe disable in the MST code would avoid
> > the MCE since we should still be turning off the transcoder clock.
> > But maybe there's something magic in the hw that keeps the clock on
> > as long as the pipe is on. Or maybe the clock isn't the problem and
> > we now touch something in the DDI disable code that really does need
> > the pipe to be still enabled.
> > =

> > v2: Rebase to latest drm-tip
> > =

> > Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > Reported-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > Closes: https://gitlab.freedesktop.org/drm/intel/issues/901
> > Fixes: 773b4b54351c ("drm/i915: Move stuff from
> > haswell_crtc_disable() into encoder .post_disable()")
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 22 ++++++++++++----------
> >  1 file changed, 12 insertions(+), 10 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 07acd0daca25..6e0a75d1e6ca 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -3897,21 +3897,23 @@ static void intel_ddi_post_disable(struct
> > intel_encoder *encoder,
> >  	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
> >  	bool is_tc_port =3D intel_phy_is_tc(dev_priv, phy);
> >  =

> > -	intel_crtc_vblank_off(old_crtc_state);
> > +	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
> > {
> > +		intel_crtc_vblank_off(old_crtc_state);
> >  =

> > -	intel_disable_pipe(old_crtc_state);
> > +		intel_disable_pipe(old_crtc_state);
> >  =

> > -	if (INTEL_GEN(dev_priv) >=3D 11)
> > -		icl_disable_transcoder_port_sync(old_crtc_state);
> > +		if (INTEL_GEN(dev_priv) >=3D 11)
> > +			icl_disable_transcoder_port_sync(old_crtc_state
> > );
> >  =

> > -	intel_ddi_disable_transcoder_func(old_crtc_state);
> > +		intel_ddi_disable_transcoder_func(old_crtc_state);
> >  =

> > -	intel_dsc_disable(old_crtc_state);
> > +		intel_dsc_disable(old_crtc_state);
> >  =

> > -	if (INTEL_GEN(dev_priv) >=3D 9)
> > -		skl_scaler_disable(old_crtc_state);
> > -	else
> > -		ilk_pfit_disable(old_crtc_state);
> > +		if (INTEL_GEN(dev_priv) >=3D 9)
> > +			skl_scaler_disable(old_crtc_state);
> > +		else
> > +			ilk_pfit_disable(old_crtc_state);
> > +	}
> =

> =

> Other option would be replace
> intel_dig_port->base.post_disable(&intel_dig_port->base,
> old_crtc_state, NULL);
> in intel_mst_post_disable_dp() by:
> =

> =

> intel_ddi_post_disable_dp(encoder, old_crtc_state, old_conn_state);
> =

> if (INTEL_GEN(dev_priv) >=3D 11)
> 	icl_unmap_plls_to_ports(encoder);
> =

> if (intel_crtc_has_dp_encoder(old_crtc_state) || is_tc_port)
> 	intel_display_power_put_unchecked(dev_priv,
> intel_ddi_main_link_aux_domain(dig_port));
> =

> if (is_tc_port)
> 	intel_tc_port_put_link(dig_port);

Yeah, the current way is a bit of a mess. We probably want to think of
ways to make it less sucky.

> =

> I guess this goes more with changes that you did in the patch fixed.

Indeed, a more mechanichal change for now seems more in line with the
original patch.

> =

> =

> Anyway your changes looks good.
> =

> Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Ta.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
