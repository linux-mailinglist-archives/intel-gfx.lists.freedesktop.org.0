Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD2E121B2F
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 21:50:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F53F6E06B;
	Mon, 16 Dec 2019 20:50:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1ED46E06B
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 20:50:18 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 12:50:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,322,1571727600"; d="scan'208";a="212170952"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 16 Dec 2019 12:50:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 16 Dec 2019 22:50:14 +0200
Date: Mon, 16 Dec 2019 22:50:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191216205014.GA1208@intel.com>
References: <20191213195217.15168-1-ville.syrjala@linux.intel.com>
 <5e37538eb15a815069d6e1230579324b0cf8daa4.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5e37538eb15a815069d6e1230579324b0cf8daa4.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Call hsw_fdi_link_train()
 directly()
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

On Mon, Dec 16, 2019 at 08:37:28PM +0000, Souza, Jose wrote:
> On Fri, 2019-12-13 at 21:52 +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Remove the pointless vfunc detour for hsw_fdi_link_train()
> > and just call it directly. Also pass the encoder in so we
> > can nuke the silly encoder loop within.
> > =

> > Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_crt.c     |  2 +-
> >  drivers/gpu/drm/i915/display/intel_ddi.c     | 12 ++++--------
> >  drivers/gpu/drm/i915/display/intel_ddi.h     |  2 +-
> >  drivers/gpu/drm/i915/display/intel_display.c |  2 --
> >  4 files changed, 6 insertions(+), 12 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_crt.c
> > b/drivers/gpu/drm/i915/display/intel_crt.c
> > index 7a2d36905155..50624b8f064d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crt.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> > @@ -278,7 +278,7 @@ static void hsw_pre_enable_crt(struct
> > intel_encoder *encoder,
> >  =

> >  	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
> >  =

> > -	dev_priv->display.fdi_link_train(crtc, crtc_state);
> > +	hsw_fdi_link_train(encoder, crtc_state);
> >  =

> >  	intel_ddi_enable_pipe_clock(crtc_state);
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 5b6f32517c75..94f8bc4cd335 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -1107,18 +1107,14 @@ static u32 icl_pll_to_ddi_clk_sel(struct
> > intel_encoder *encoder,
> >   * DDI A (which is used for eDP)
> >   */
> >  =

> > -void hsw_fdi_link_train(struct intel_crtc *crtc,
> > +void hsw_fdi_link_train(struct intel_encoder *encoder,
> >  			const struct intel_crtc_state *crtc_state)
> >  {
> > -	struct drm_device *dev =3D crtc->base.dev;
> > -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> > -	struct intel_encoder *encoder;
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >  	u32 temp, i, rx_ctl_val, ddi_pll_sel;
> >  =

> > -	for_each_encoder_on_crtc(dev, &crtc->base, encoder) {
> > -		WARN_ON(encoder->type !=3D INTEL_OUTPUT_ANALOG);
> > -		intel_prepare_dp_ddi_buffers(encoder, crtc_state);
> > -	}
> > +	intel_prepare_dp_ddi_buffers(encoder, crtc_state);
> >  =

> >  	/* Set the FDI_RX_MISC pwrdn lanes and the 2 workarounds listed
> > at the
> >  	 * mode set "sequence for CRT port" document:
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h
> > b/drivers/gpu/drm/i915/display/intel_ddi.h
> > index 19aeab1246ee..167c6579d972 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> > @@ -22,7 +22,7 @@ struct intel_encoder;
> >  void intel_ddi_fdi_post_disable(struct intel_encoder *intel_encoder,
> >  				const struct intel_crtc_state
> > *old_crtc_state,
> >  				const struct drm_connector_state
> > *old_conn_state);
> > -void hsw_fdi_link_train(struct intel_crtc *crtc,
> > +void hsw_fdi_link_train(struct intel_encoder *encoder,
> >  			const struct intel_crtc_state *crtc_state);
> >  void intel_ddi_init(struct drm_i915_private *dev_priv, enum port
> > port);
> >  bool intel_ddi_get_hw_state(struct intel_encoder *encoder, enum pipe
> > *pipe);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 0f37f1d2026d..8aed67d2c105 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -16673,8 +16673,6 @@ void intel_init_display_hooks(struct
> > drm_i915_private *dev_priv)
> >  	} else if (IS_IVYBRIDGE(dev_priv)) {
> >  		/* FIXME: detect B0+ stepping and use auto training */
> >  		dev_priv->display.fdi_link_train =3D
> > ivb_manual_fdi_link_train;
> > -	} else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
> > -		dev_priv->display.fdi_link_train =3D hsw_fdi_link_train;
> =

> Just missing the chunk removing fdi_link_train from
> drm_i915_display_funcs.

Still need it for pre-hsw.

> =

> With that:
> =

> Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> =

> >  	}
> >  =

> >  	if (INTEL_GEN(dev_priv) >=3D 9)

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
