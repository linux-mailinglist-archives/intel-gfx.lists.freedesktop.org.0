Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C271718D722
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 19:35:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F18C26E1F9;
	Fri, 20 Mar 2020 18:35:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D42B46E1F9
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 18:35:07 +0000 (UTC)
IronPort-SDR: XcHtwhA0BF0u2Qf1W5EK+KA+l7FI1wkeaJy+VaI5RIotBhopiUGYKKJfCAZXEQr98Y6OF/AiMz
 Efg63DAuDWZA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 11:35:07 -0700
IronPort-SDR: UrnWjcnba/ulPHYlxxxCKXhNOnzeur3QIvkMtWmyKT11KVAct/ek8ucF7oo6wSlw/jX3cAUaTE
 49xSTZ+4qgvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,285,1580803200"; d="scan'208";a="264146031"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga002.jf.intel.com with ESMTP; 20 Mar 2020 11:35:07 -0700
Date: Fri, 20 Mar 2020 11:36:45 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200320183645.GB15035@intel.com>
References: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
 <20200313164831.5980-3-ville.syrjala@linux.intel.com>
 <20200318223438.GB6675@intel.com>
 <20200319132056.GH13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319132056.GH13686@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 02/13] drm/i915: Move TRANS_DDI_FUNC_CTL2
 programming where it belongs
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 19, 2020 at 03:20:56PM +0200, Ville Syrj=E4l=E4 wrote:
> On Wed, Mar 18, 2020 at 03:34:38PM -0700, Manasi Navare wrote:
> > On Fri, Mar 13, 2020 at 06:48:20PM +0200, Ville Syrjala wrote:
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > =

> > > This port sync enable/disable stuff is misplaced. It's just another s=
tep
> > > of the normal TRANS_DDI_FUNC_CTL enable. Move it to its natural place.
> > > =

> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_ddi.c     | 71 +++++++++++-------=
--
> > >  drivers/gpu/drm/i915/display/intel_display.c | 34 ----------
> > >  2 files changed, 39 insertions(+), 66 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/d=
rm/i915/display/intel_ddi.c
> > > index 73d0f4648c06..8d486282eea3 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -1558,12 +1558,34 @@ void intel_ddi_enable_transcoder_func(const s=
truct intel_crtc_state *crtc_state)
> > >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > > -	u32 temp;
> > > +	u32 ctl;
> > >  =

> > > -	temp =3D intel_ddi_transcoder_func_reg_val_get(crtc_state);
> > > +	if (INTEL_GEN(dev_priv) >=3D 11) {
> > > +		enum transcoder master_transcoder =3D crtc_state->master_transcode=
r;
> > > +		u32 ctl2 =3D 0;
> > > +
> > > +		if (master_transcoder !=3D INVALID_TRANSCODER) {
> > > +			u8 master_select;
> > > +
> > > +			if (master_transcoder =3D=3D TRANSCODER_EDP)
> > > +				master_select =3D 0;
> > > +			else
> > > +				master_select =3D master_transcoder + 1;
> > > +
> > > +			ctl2 |=3D PORT_SYNC_MODE_ENABLE |
> > > +				(PORT_SYNC_MODE_MASTER_SELECT(master_select) &
> > > +				 PORT_SYNC_MODE_MASTER_SELECT_MASK) <<
> > > +				PORT_SYNC_MODE_MASTER_SELECT_SHIFT;
> > > +		}
> > > +
> > > +		intel_de_write(dev_priv,
> > > +			       TRANS_DDI_FUNC_CTL2(crtc_state->cpu_transcoder), ctl2);
> > > +	}
> > > +
> > > +	ctl =3D intel_ddi_transcoder_func_reg_val_get(crtc_state);
> > >  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
> > > -		temp |=3D TRANS_DDI_DP_VC_PAYLOAD_ALLOC;
> > > -	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder), temp);
> > > +		ctl |=3D TRANS_DDI_DP_VC_PAYLOAD_ALLOC;
> > > +	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder), ctl);
> > >  }
> > >  =

> > >  /*
> > > @@ -1576,11 +1598,11 @@ intel_ddi_config_transcoder_func(const struct=
 intel_crtc_state *crtc_state)
> > >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > > -	u32 temp;
> > > +	u32 ctl;
> > >  =

> > > -	temp =3D intel_ddi_transcoder_func_reg_val_get(crtc_state);
> > > -	temp &=3D ~TRANS_DDI_FUNC_ENABLE;
> > > -	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder), temp);
> > > +	ctl =3D intel_ddi_transcoder_func_reg_val_get(crtc_state);
> > > +	ctl &=3D ~TRANS_DDI_FUNC_ENABLE;
> > > +	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder), ctl);
> > >  }
> > >  =

> > >  void intel_ddi_disable_transcoder_func(const struct intel_crtc_state=
 *crtc_state)
> > > @@ -1588,20 +1610,23 @@ void intel_ddi_disable_transcoder_func(const =
struct intel_crtc_state *crtc_state
> > >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > > -	u32 val;
> > > +	u32 ctl;
> > >  =

> > > -	val =3D intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
> > > -	val &=3D ~TRANS_DDI_FUNC_ENABLE;
> > > +	if (INTEL_GEN(dev_priv) >=3D 11)
> > > +		intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL2(cpu_transcoder), 0);
> > =

> > This should be set to 0 only for the slave where we enable the port syn=
c mode so
> > set it to 0 only if if (old_crtc_state->master_transcoder !=3D INVALID_=
TRANSCODER)
> > =

> > This will just ensure that we dont accidently set it to 0 for non slave=
 transcoders
> =

> No, we should just write the value we want for every transcoder. If
> there are bits in there that should be set then we should set them
> explicitly. But I didn't think there's anything we want to set.
>

Yes for now there is nothing that we need to set.
So for now,

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi
 =

> > =

> > Manasi
> > =

> > > +
> > > +	ctl =3D intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
> > > +	ctl &=3D ~TRANS_DDI_FUNC_ENABLE;
> > >  =

> > >  	if (INTEL_GEN(dev_priv) >=3D 12) {
> > >  		if (!intel_dp_mst_is_master_trans(crtc_state)) {
> > > -			val &=3D ~(TGL_TRANS_DDI_PORT_MASK |
> > > +			ctl &=3D ~(TGL_TRANS_DDI_PORT_MASK |
> > >  				 TRANS_DDI_MODE_SELECT_MASK);
> > >  		}
> > >  	} else {
> > > -		val &=3D ~(TRANS_DDI_PORT_MASK | TRANS_DDI_MODE_SELECT_MASK);
> > > +		ctl &=3D ~(TRANS_DDI_PORT_MASK | TRANS_DDI_MODE_SELECT_MASK);
> > >  	}
> > > -	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder), val);
> > > +	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder), ctl);
> > >  =

> > >  	if (dev_priv->quirks & QUIRK_INCREASE_DDI_DISABLED_TIME &&
> > >  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> > > @@ -3405,21 +3430,6 @@ static void intel_ddi_post_disable_hdmi(struct=
 intel_encoder *encoder,
> > >  	intel_dp_dual_mode_set_tmds_output(intel_hdmi, false);
> > >  }
> > >  =

> > > -static void icl_disable_transcoder_port_sync(const struct intel_crtc=
_state *old_crtc_state)
> > > -{
> > > -	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc=
);
> > > -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > > -
> > > -	if (old_crtc_state->master_transcoder =3D=3D INVALID_TRANSCODER)
> > > -		return;
> > > -
> > > -	DRM_DEBUG_KMS("Disabling Transcoder Port Sync on Slave Transcoder %=
s\n",
> > > -		      transcoder_name(old_crtc_state->cpu_transcoder));
> > > -
> > > -	intel_de_write(dev_priv,
> > > -		       TRANS_DDI_FUNC_CTL2(old_crtc_state->cpu_transcoder), 0);
> > > -}
> > > -
> > >  static void intel_ddi_post_disable(struct intel_encoder *encoder,
> > >  				   const struct intel_crtc_state *old_crtc_state,
> > >  				   const struct drm_connector_state *old_conn_state)
> > > @@ -3434,9 +3444,6 @@ static void intel_ddi_post_disable(struct intel=
_encoder *encoder,
> > >  =

> > >  		intel_disable_pipe(old_crtc_state);
> > >  =

> > > -		if (INTEL_GEN(dev_priv) >=3D 11)
> > > -			icl_disable_transcoder_port_sync(old_crtc_state);
> > > -
> > >  		intel_ddi_disable_transcoder_func(old_crtc_state);
> > >  =

> > >  		intel_dsc_disable(old_crtc_state);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index 8f23c4d51c33..c49b4e6eb3d4 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -4998,37 +4998,6 @@ static void icl_set_pipe_chicken(struct intel_=
crtc *crtc)
> > >  	intel_de_write(dev_priv, PIPE_CHICKEN(pipe), tmp);
> > >  }
> > >  =

> > > -static void icl_enable_trans_port_sync(const struct intel_crtc_state=
 *crtc_state)
> > > -{
> > > -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > > -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > > -	u32 trans_ddi_func_ctl2_val;
> > > -	u8 master_select;
> > > -
> > > -	/*
> > > -	 * Configure the master select and enable Transcoder Port Sync for
> > > -	 * Slave CRTCs transcoder.
> > > -	 */
> > > -	if (crtc_state->master_transcoder =3D=3D INVALID_TRANSCODER)
> > > -		return;
> > > -
> > > -	if (crtc_state->master_transcoder =3D=3D TRANSCODER_EDP)
> > > -		master_select =3D 0;
> > > -	else
> > > -		master_select =3D crtc_state->master_transcoder + 1;
> > > -
> > > -	/* Set the master select bits for Tranascoder Port Sync */
> > > -	trans_ddi_func_ctl2_val =3D (PORT_SYNC_MODE_MASTER_SELECT(master_se=
lect) &
> > > -				   PORT_SYNC_MODE_MASTER_SELECT_MASK) <<
> > > -		PORT_SYNC_MODE_MASTER_SELECT_SHIFT;
> > > -	/* Enable Transcoder Port Sync */
> > > -	trans_ddi_func_ctl2_val |=3D PORT_SYNC_MODE_ENABLE;
> > > -
> > > -	intel_de_write(dev_priv,
> > > -		       TRANS_DDI_FUNC_CTL2(crtc_state->cpu_transcoder),
> > > -		       trans_ddi_func_ctl2_val);
> > > -}
> > > -
> > >  static void intel_fdi_normal_train(struct intel_crtc *crtc)
> > >  {
> > >  	struct drm_device *dev =3D crtc->base.dev;
> > > @@ -7037,9 +7006,6 @@ static void hsw_crtc_enable(struct intel_atomic=
_state *state,
> > >  	if (!transcoder_is_dsi(cpu_transcoder))
> > >  		intel_set_pipe_timings(new_crtc_state);
> > >  =

> > > -	if (INTEL_GEN(dev_priv) >=3D 11)
> > > -		icl_enable_trans_port_sync(new_crtc_state);
> > > -
> > >  	intel_set_pipe_src_size(new_crtc_state);
> > >  =

> > >  	if (cpu_transcoder !=3D TRANSCODER_EDP &&
> > > -- =

> > > 2.24.1
> > > =

> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
