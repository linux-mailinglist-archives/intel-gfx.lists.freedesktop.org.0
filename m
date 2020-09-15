Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7518326A46D
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 13:53:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 156A289CF8;
	Tue, 15 Sep 2020 11:52:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F404E89CF8
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 11:52:57 +0000 (UTC)
IronPort-SDR: yNlSVaO0DmEWXwT4M3PhhEL7giSnFsD/cfQcKMPlpME0A27L1Mhdkk7VjDuUTSKZnCqavooZut
 x80ue4rXvcyA==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="220796596"
X-IronPort-AV: E=Sophos;i="5.76,429,1592895600"; d="scan'208";a="220796596"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 04:50:55 -0700
IronPort-SDR: E+nguj5kDk7OL+ZHGazJJw2IOapkojLpOWc1vXyR7o9Dvy7rk4N3uFcImKLMzyyDRNqGvqbxN4
 BS0W+1h8JaPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,429,1592895600"; d="scan'208";a="286792111"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 15 Sep 2020 04:50:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Sep 2020 14:50:52 +0300
Date: Tue, 15 Sep 2020 14:50:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200915115052.GF6112@intel.com>
References: <20200901010924.235808-1-jose.souza@intel.com>
 <20200901010924.235808-2-jose.souza@intel.com>
 <20200914142406.GN6112@intel.com>
 <f0b80d8f63f2b69ff6694b5a6bf55b7f7fd032b2.camel@intel.com>
 <20200914203040.GD6112@intel.com>
 <60200aa55b5abfae8a12c32fa3377d6782d2bc44.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <60200aa55b5abfae8a12c32fa3377d6782d2bc44.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/display: Fix state of PSR2 sub
 features
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

On Mon, Sep 14, 2020 at 08:56:12PM +0000, Souza, Jose wrote:
> On Mon, 2020-09-14 at 23:30 +0300, Ville Syrj=E4l=E4 wrote:
> > On Mon, Sep 14, 2020 at 07:57:34PM +0000, Souza, Jose wrote:
> > > On Mon, 2020-09-14 at 17:24 +0300, Ville Syrj=E4l=E4 wrote:
> > > > On Mon, Aug 31, 2020 at 06:09:22PM -0700, Jos=E9 Roberto de Souza w=
rote:
> > > > > In case PSR2 is disabled by debugfs dc3co_enabled and
> > > > > psr2_sel_fetch_enabled were still being set causing some code pat=
hs
> > > > > to be executed were it should not.
> > > > > We have tests for PSR1 and PSR2 so keep those features disabled w=
hen
> > > > > PSR1 is active but PSR2 is supported is important.
> > > > > =

> > > > > Cc: Gwan-gyeong Mun <
> > > > > gwan-gyeong.mun@intel.com
> > > > > =

> > > > > =

> > > > > Cc: Ville Syrj=E4l=E4 <
> > > > > ville.syrjala@linux.intel.com
> > > > > =

> > > > > =

> > > > > Signed-off-by: Jos=E9 Roberto de Souza <
> > > > > jose.souza@intel.com
> > > > > =

> > > > > =

> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_psr.c | 11 +++++++----
> > > > >  1 file changed, 7 insertions(+), 4 deletions(-)
> > > > > =

> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/g=
pu/drm/i915/display/intel_psr.c
> > > > > index 4e09ae61d4aa..6698d0209879 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > > > @@ -962,12 +962,14 @@ static void intel_psr_enable_locked(struct =
drm_i915_private *dev_priv,
> > > > >  	dev_priv->psr.psr2_enabled =3D intel_psr2_enabled(dev_priv, crt=
c_state);
> > > > >  	dev_priv->psr.busy_frontbuffer_bits =3D 0;
> > > > >  	dev_priv->psr.pipe =3D to_intel_crtc(crtc_state->uapi.crtc)->pi=
pe;
> > > > > -	dev_priv->psr.dc3co_enabled =3D !!crtc_state->dc3co_exitline;
> > > > > +	dev_priv->psr.dc3co_enabled =3D !!crtc_state->dc3co_exitline &&
> > > > > +				      dev_priv->psr.psr2_enabled;
> > > > >  	dev_priv->psr.transcoder =3D crtc_state->cpu_transcoder;
> > > > >  	/* DC5/DC6 requires at least 6 idle frames */
> > > > >  	val =3D usecs_to_jiffies(intel_get_frame_time_us(crtc_state) * =
6);
> > > > >  	dev_priv->psr.dc3co_exit_delay =3D val;
> > > > > -	dev_priv->psr.psr2_sel_fetch_enabled =3D crtc_state->enable_psr=
2_sel_fetch;
> > > > > +	dev_priv->psr.psr2_sel_fetch_enabled =3D crtc_state->enable_psr=
2_sel_fetch &&
> > > > > +					       dev_priv->psr.psr2_enabled;
> > > > >  =

> > > > >  	/*
> > > > >  	 * If a PSR error happened and the driver is reloaded, the EDP_=
PSR_IIR
> > > > > @@ -1178,7 +1180,7 @@ void intel_psr2_program_trans_man_trk_ctl(c=
onst struct intel_crtc_state *crtc_st
> > > > >  	struct i915_psr *psr =3D &dev_priv->psr;
> > > > >  =

> > > > >  	if (!HAS_PSR2_SEL_FETCH(dev_priv) ||
> > > > > -	    !crtc_state->enable_psr2_sel_fetch)
> > > > > +	    !dev_priv->psr.psr2_sel_fetch_enabled)
> > > > >  		return;
> > > > >  =

> > > > >  	intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(psr->transcoder),
> > > > > @@ -1189,8 +1191,9 @@ void intel_psr2_sel_fetch_update(struct int=
el_atomic_state *state,
> > > > >  				 struct intel_crtc *crtc)
> > > > >  {
> > > > >  	struct intel_crtc_state *crtc_state =3D intel_atomic_get_new_cr=
tc_state(state, crtc);
> > > > > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > > > >  =

> > > > > -	if (!crtc_state->enable_psr2_sel_fetch)
> > > > > +	if (!dev_priv->psr.psr2_sel_fetch_enabled)
> > > > =

> > > > This looks rather sketchy. AFAICS this gets called during atomic_ch=
eck()
> > > > so looking at stuff outside the crtc state is very suspicious.
> > > =

> > > This is called after the functions that change the PSR state so no is=
sues, also we can't really on information in CRTC state, as PSR is only ena=
bled
> > > if supported by state, i915 PSR parameter and PSR debug fs value.
> > =

> > I see it getting called from intel_crtc_atomic_check(). Confused.
> > Am I missing some other patches?
> =

> It is set from intel_psr_disable(), intel_psr_enable() and intel_psr_upda=
te() all executed before intel_psr2_sel_fetch_update()
> =

> intel_enable_ddi()
> 	intel_enable_ddi_dp()
> 		intel_psr_enable()
> =

> intel_update_crtc() {
> 	if (!modeset) {
> 		intel_encoders_update_pipe()
> 			encoder->update_pipe() / intel_ddi_update_pipe()
> 				intel_ddi_update_pipe_dp()
> 					intel_psr_update()
> 	}
> =

> 	...
> 		=

> 	skl_update_planes_on_crtc(state, crtc);
> 		intel_update_plane()
> 			plane->update_plane() / skl_update_plane()
> 				skl_program_plane()
> 					intel_psr2_sel_fetch_update()

That's not what I see at all. The only caller I see is
intel_crtc_atomic_check().


> }
> =

> =

> > =

> > > > >  		return;
> > > > >  =

> > > > >  	crtc_state->psr2_man_track_ctl =3D PSR2_MAN_TRK_CTL_ENABLE |

And if it would be called from there then this part would be
kinda bad. We should not mutate the state during the commit phase.

> > > > > -- =

> > > > > 2.28.0
> > > > =

> > > > =

> > =

> > =


-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
