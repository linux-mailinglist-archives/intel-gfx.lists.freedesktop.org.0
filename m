Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA729AFADC
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 09:18:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FE2010EA0A;
	Fri, 25 Oct 2024 07:18:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nzbguKaG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A9DD10EA0A
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2024 07:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729840732; x=1761376732;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=SA9Zm7bPfT6aAoRjLSl2cp+WtQImGGd7NAjQJJ4uamY=;
 b=nzbguKaGF4H/M+OUHW/uBJ8arZhs02psJxDNvpiL3drNOtXlPIxPvLKE
 iGAxhVDuMMz+zuXXBP6zhI6V+Ft6uALM45e2A9Mkt++REducA6Ydp+RAP
 58LO+N/xsQ0QH7dJjQ0xSFDIKsXmLsuJAZTYJF1ROkf+YraYSZm4xVYal
 EJaHOUg/zpjkiPY8fDcvAJfw8lw/quMu5LSCOE6u+vvBtUV990CdumjSS
 omBFRIUhMkZ3an9ycFZaEN0yREZRP67KVLBxtG+tN4oXNe2rYnQHv+pFE
 4swYI0wSUcHsRzzf4ilCuEhj58ZFE44INK0IPBBKAFYX1r6oe0f1RGnRi A==;
X-CSE-ConnectionGUID: Z2pBTn2bRsex1pF0RAvLtg==
X-CSE-MsgGUID: 4RYXxQgQTkC8hK1a08kJCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="52055467"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="52055467"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 00:18:51 -0700
X-CSE-ConnectionGUID: NGUMBPLqQxSZfvK6GZyoXg==
X-CSE-MsgGUID: 4a9Cz/bsQK+a6j13Yauibw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="80939785"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 25 Oct 2024 00:18:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Oct 2024 10:18:47 +0300
Date: Fri, 25 Oct 2024 10:18:47 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v4 4/8] drm/i915/dp: Track source OUI validity explicitly
Message-ID: <ZxtGV68oFx9rzyBp@intel.com>
References: <20241016132405.2231744-5-imre.deak@intel.com>
 <20241022094624.2696428-1-imre.deak@intel.com>
 <ZxjpC1QVavaq85Yj@intel.com>
 <ZxkK-OneQNHH-WGC@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZxkK-OneQNHH-WGC@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
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

On Wed, Oct 23, 2024 at 05:40:56PM +0300, Imre Deak wrote:
> On Wed, Oct 23, 2024 at 03:16:11PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Tue, Oct 22, 2024 at 12:46:23PM +0300, Imre Deak wrote:
> > > While updating the source OUI on the sink the driver should avoid
> > > writing the OUI if it's already up-to-date to prevent the sink from
> > > resetting itself in response to the update. On eDP - the only output
> > > type where the OUI was updated so far - the driver ensured this by
> > > comparing the current source OUI DPCD register values with the expect=
ed
> > > Intel OUI value, skipping the update in case of a match. On some non-=
eDP
> > > sinks - at least on Synaptics branch devices - this method doesn't wo=
rk,
> > > since the source OUI DPCD registers read back as all 0, even after
> > > updating the registers.
> > > =

> > > Handle the above kind of sinks by tracking when the OUI was updated a=
nd
> > > so should be valid, regardless of what the DPCD registers contain.
> > > =

> > > eDP sinks reset the written source OUI value when the panel power is
> > > disabled, invalidate the OUI state accordingly.
> > > =

> > > This is required by a follow-up patch updating the source OUI for
> > > non-eDP sink types as well.
> > > =

> > > v2: Fix setting intel_dp::oui_valid=3Dtrue, if the DPCD register cont=
ains
> > >     already the expected value.
> > > =

> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/g4x_dp.c         |  1 +
> > >  drivers/gpu/drm/i915/display/intel_ddi.c      |  1 +
> > >  .../drm/i915/display/intel_display_types.h    |  1 +
> > >  drivers/gpu/drm/i915/display/intel_dp.c       | 38 ++++++++++++-----=
--
> > >  drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
> > >  drivers/gpu/drm/i915/display/intel_pps.c      |  6 ++-
> > >  6 files changed, 34 insertions(+), 14 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/=
i915/display/g4x_dp.c
> > > index 440fb3002f286..596e926ef0894 100644
> > > --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> > > @@ -1251,6 +1251,7 @@ static void intel_dp_encoder_reset(struct drm_e=
ncoder *encoder)
> > >  	intel_dp->DP =3D intel_de_read(display, intel_dp->output_reg);
> > >  =

> > >  	intel_dp->reset_link_params =3D true;
> > > +	intel_dp_invalidate_source_oui(intel_dp);
> > >  =

> > >  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> > >  		vlv_pps_pipe_reset(intel_dp);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/d=
rm/i915/display/intel_ddi.c
> > > index fe1ded6707f90..465f245a53c48 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -4392,6 +4392,7 @@ static void intel_ddi_encoder_reset(struct drm_=
encoder *encoder)
> > >  	struct intel_digital_port *dig_port =3D enc_to_dig_port(to_intel_en=
coder(encoder));
> > >  =

> > >  	intel_dp->reset_link_params =3D true;
> > > +	intel_dp_invalidate_source_oui(intel_dp);
> > >  =

> > >  	intel_pps_encoder_reset(intel_dp);
> > >  =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/dri=
vers/gpu/drm/i915/display/intel_display_types.h
> > > index 2bb1fa64da2f1..9b46427806c6d 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1765,6 +1765,7 @@ struct intel_dp {
> > >  =

> > >  	/* When we last wrote the OUI for eDP */
> > >  	unsigned long last_oui_write;
> > > +	bool oui_valid;
> > >  =

> > >  	bool colorimetry_support;
> > >  =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/dr=
m/i915/display/intel_dp.c
> > > index 96ee5de719a2c..a6f84b8f770d0 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -3400,33 +3400,46 @@ void intel_dp_sink_disable_decompression(stru=
ct intel_atomic_state *state,
> > >  }
> > >  =

> > >  static void
> > > -intel_edp_init_source_oui(struct intel_dp *intel_dp, bool careful)
> > > +intel_dp_init_source_oui(struct intel_dp *intel_dp)
> > >  {
> > >  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > >  	u8 oui[] =3D { 0x00, 0xaa, 0x01 };
> > >  	u8 buf[3] =3D {};
> > >  =

> > > +	if (!intel_dp_is_edp(intel_dp))
> > > +		return;
> > > +
> > > +	if (READ_ONCE(intel_dp->oui_valid))
> > > +		return;
> > > +
> > > +	WRITE_ONCE(intel_dp->oui_valid, true);
> > =

> > Would seem nicer if this is set alognside the timestamp.
> > Are we actually always setting both?
> =

> Yes. In case DPCD contained already the correct value, it's not known
> when it was written, so the code assumes it's written now.
> =

> > In that case maybe extract both into a small helper?
> =

> You mean setting both at the same place, but not sure how it would work:
> I set the flag before writing the register to account for the
> T1: oui_valid=3Dtrue -> T2: HPD/oui_valid=3Dfalse -> T1: write DPCD case,
> guaranteeing that oui_valid remains false. OTOH last_oui_write should be
> set after the DPCD write so that the wait duration can't get shorter
> than needed.

OK, a bit ugly but can't see a better non-racy way for it, so
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> =

> > > +
> > >  	/*
> > >  	 * During driver init, we want to be careful and avoid changing the=
 source OUI if it's
> > >  	 * already set to what we want, so as to avoid clearing any state b=
y accident
> > >  	 */
> > > -	if (careful) {
> > > -		if (drm_dp_dpcd_read(&intel_dp->aux, DP_SOURCE_OUI, buf, sizeof(bu=
f)) < 0)
> > > -			drm_err(&i915->drm, "Failed to read source OUI\n");
> > > +	if (drm_dp_dpcd_read(&intel_dp->aux, DP_SOURCE_OUI, buf, sizeof(buf=
)) < 0)
> > > +		drm_err(&i915->drm, "Failed to read source OUI\n");
> > >  =

> > > -		if (memcmp(oui, buf, sizeof(oui)) =3D=3D 0) {
> > > -			/* Assume the OUI was written now. */
> > > -			intel_dp->last_oui_write =3D jiffies;
> > > -			return;
> > > -		}
> > > +	if (memcmp(oui, buf, sizeof(oui)) =3D=3D 0) {
> > > +		/* Assume the OUI was written now. */
> > > +		intel_dp->last_oui_write =3D jiffies;
> > > +		return;
> > >  	}
> > >  =

> > > -	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(ou=
i)) < 0)
> > > +	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(ou=
i)) < 0) {
> > >  		drm_err(&i915->drm, "Failed to write source OUI\n");
> > > +		WRITE_ONCE(intel_dp->oui_valid, false);
> > > +	}
> > >  =

> > >  	intel_dp->last_oui_write =3D jiffies;
> > >  }
> > >  =

> > > +void intel_dp_invalidate_source_oui(struct intel_dp *intel_dp)
> > > +{
> > > +	WRITE_ONCE(intel_dp->oui_valid, false);
> > > +}
> > > +
> > >  void intel_dp_wait_source_oui(struct intel_dp *intel_dp)
> > >  {
> > >  	struct intel_connector *connector =3D intel_dp->attached_connector;
> > > @@ -3462,8 +3475,7 @@ void intel_dp_set_power(struct intel_dp *intel_=
dp, u8 mode)
> > >  		lspcon_resume(dp_to_dig_port(intel_dp));
> > >  =

> > >  		/* Write the source OUI as early as possible */
> > > -		if (intel_dp_is_edp(intel_dp))
> > > -			intel_edp_init_source_oui(intel_dp, false);
> > > +		intel_dp_init_source_oui(intel_dp);
> > >  =

> > >  		/*
> > >  		 * When turning on, we need to retry for 1ms to give the sink
> > > @@ -4184,7 +4196,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, =
struct intel_connector *connector
> > >  	 * If needed, program our source OUI so we can make various Intel-s=
pecific AUX services
> > >  	 * available (such as HDR backlight controls)
> > >  	 */
> > > -	intel_edp_init_source_oui(intel_dp, true);
> > > +	intel_dp_init_source_oui(intel_dp);
> > >  =

> > >  	return true;
> > >  }
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/dr=
m/i915/display/intel_dp.h
> > > index 4efb9605a50e0..48f10876be656 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > > @@ -189,6 +189,7 @@ void intel_dp_check_frl_training(struct intel_dp =
*intel_dp);
> > >  void intel_dp_pcon_dsc_configure(struct intel_dp *intel_dp,
> > >  				 const struct intel_crtc_state *crtc_state);
> > >  =

> > > +void intel_dp_invalidate_source_oui(struct intel_dp *intel_dp);
> > >  void intel_dp_wait_source_oui(struct intel_dp *intel_dp);
> > >  int intel_dp_output_bpp(enum intel_output_format output_format, int =
bpp);
> > >  =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/d=
rm/i915/display/intel_pps.c
> > > index 64f1f7ea94993..3d1f9b17034d0 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_pps.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> > > @@ -861,8 +861,10 @@ static void intel_pps_vdd_off_sync_unlocked(stru=
ct intel_dp *intel_dp)
> > >  		    intel_de_read(display, pp_stat_reg),
> > >  		    intel_de_read(display, pp_ctrl_reg));
> > >  =

> > > -	if ((pp & PANEL_POWER_ON) =3D=3D 0)
> > > +	if ((pp & PANEL_POWER_ON) =3D=3D 0) {
> > >  		intel_dp->pps.panel_power_off_time =3D ktime_get_boottime();
> > > +		intel_dp_invalidate_source_oui(intel_dp);
> > =

> > Hmm. I was thinking the rsulting long HPD would be enough, but I
> > guess we do have at least one example of a machine with no HPD on
> > eDP :(
> =

> Ok, didn't think of an HPD getting always generated (is that guaranteed
> vs. only an artifact?) Another reason for doing the above synchronously
> here would be to guarantee that a modeset disabling/reenabling the panel
> power will be guaranteed to see oui_valid=3Dfalse during reenabling, so
> that reenabling will rewrite the OUI (the HPD might be handled at any
> point wrt. the reenabling).
> =

> > > +	}
> > >  =

> > >  	intel_display_power_put(dev_priv,
> > >  				intel_aux_power_domain(dig_port),
> > > @@ -1074,6 +1076,8 @@ void intel_pps_off_unlocked(struct intel_dp *in=
tel_dp)
> > >  	wait_panel_off(intel_dp);
> > >  	intel_dp->pps.panel_power_off_time =3D ktime_get_boottime();
> > >  =

> > > +	intel_dp_invalidate_source_oui(intel_dp);
> > > +
> > >  	/* We got a reference when we enabled the VDD. */
> > >  	intel_display_power_put(dev_priv,
> > >  				intel_aux_power_domain(dig_port),
> > > -- =

> > > 2.44.2
> > =

> > -- =

> > Ville Syrj=E4l=E4
> > Intel

-- =

Ville Syrj=E4l=E4
Intel
---------------------------------------------------------------------
Intel Finland Oy
Registered Address: PL 281, 00181 Helsinki =

Business Identity Code: 0357606 - 4 =

Domiciled in Helsinki =


This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.

