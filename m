Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAD72CB074
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 23:50:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F8E16E94F;
	Tue,  1 Dec 2020 22:50:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D5506E94F
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 22:50:13 +0000 (UTC)
IronPort-SDR: FOUkTKWutRSMesKwvP3VQDCsrCxDnIFqWh6S2yQM5IasguiQdxKtgKFUCQLFc/D5pCgffW7Jxg
 L/WW4/k1TRsw==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="152749220"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="152749220"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 14:50:04 -0800
IronPort-SDR: f6nf1GLYXUmxBneDaN1eVUKqjblVmUzM8mk7opCVqHEVM/M3EJZON3/bglWAZEC2ZxcVdsl9yH
 rpC+7gIH94DA==
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="539317234"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 14:50:03 -0800
Date: Tue, 1 Dec 2020 14:52:59 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20201201225259.GB22644@labuser-Z97X-UD5H>
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
 <20201022222709.29386-6-manasi.d.navare@intel.com>
 <87o8k5sd2l.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87o8k5sd2l.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 05/11] drm/i915/display/dp: Compute VRR
 state in atomic_check
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

On Tue, Nov 10, 2020 at 12:47:46PM +0200, Jani Nikula wrote:
> On Thu, 22 Oct 2020, Manasi Navare <manasi.d.navare@intel.com> wrote:
> > This forces a complete modeset if vrr drm crtc state goes
> > from enabled to disabled and vice versa.
> > This patch also computes vrr state variables from the mode timings
> > and based on the vrr property set by userspace as well as hardware's
> > vrr capability.
> >
> > v2:
> > *Rebase
> > v3:
> > * Vmin =3D max (vtotal, vmin) (Manasi)
> > v4:
> > * set crtc_state->vrr.enable =3D 0 for disable request
> >
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c |  7 +++-
> >  drivers/gpu/drm/i915/display/intel_dp.c      |  1 +
> >  drivers/gpu/drm/i915/display/intel_vrr.c     | 38 ++++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_vrr.h     |  2 ++
> >  4 files changed, 47 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index f41b6f8b5618..f70cc3b2a1a4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -14213,6 +14213,10 @@ intel_pipe_config_compare(const struct intel_c=
rtc_state *current_config,
> >  =

> >  	PIPE_CONF_CHECK_I(mst_master_transcoder);
> >  =

> > +	PIPE_CONF_CHECK_BOOL(vrr.enable);
> > +	PIPE_CONF_CHECK_I(vrr.vtotalmin);
> > +	PIPE_CONF_CHECK_I(vrr.vtotalmax);
> > +
> >  #undef PIPE_CONF_CHECK_X
> >  #undef PIPE_CONF_CHECK_I
> >  #undef PIPE_CONF_CHECK_BOOL
> > @@ -15202,7 +15206,8 @@ static int intel_atomic_check(struct drm_device=
 *dev,
> >  =

> >  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> >  					    new_crtc_state, i) {
> > -		if (new_crtc_state->inherited !=3D old_crtc_state->inherited)
> > +		if (new_crtc_state->inherited !=3D old_crtc_state->inherited ||
> > +		    new_crtc_state->uapi.vrr_enabled !=3D old_crtc_state->uapi.vrr_e=
nabled)
> =

> Somehow this feels like a really specific check to add considering the
> abstraction level of the function in general.

Should I then create a separate function to force a full modeset by setting=
 mode changed =

if vrr_enabled changed?
And call that from intel_atomic_check() ?

> =

> >  			new_crtc_state->uapi.mode_changed =3D true;
> >  	}
> >  =

> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/=
i915/display/intel_dp.c
> > index 3794b8f35edc..3185c4ca523d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -2752,6 +2752,7 @@ intel_dp_compute_config(struct intel_encoder *enc=
oder,
> >  	if (!HAS_DDI(dev_priv))
> >  		intel_dp_set_clock(encoder, pipe_config);
> >  =

> > +	intel_vrr_compute_config(intel_dp, pipe_config);
> >  	intel_psr_compute_config(intel_dp, pipe_config);
> >  	intel_dp_drrs_compute_config(intel_dp, pipe_config, output_bpp,
> >  				     constant_n);
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm=
/i915/display/intel_vrr.c
> > index 0c8a91fabb64..56114f535f94 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -26,3 +26,41 @@ bool intel_is_vrr_capable(struct drm_connector *conn=
ector)
> >  		info->monitor_range.max_vfreq - info->monitor_range.min_vfreq > 10;
> >  }
> >  =

> > +void
> > +intel_vrr_compute_config(struct intel_dp *intel_dp,
> > +			 struct intel_crtc_state *crtc_state)
> > +{
> > +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> > +	struct intel_connector *intel_connector =3D intel_dp->attached_connec=
tor;
> > +	struct drm_connector *connector =3D &intel_connector->base;
> > +	struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjusted_m=
ode;
> > +	const struct drm_display_info *info =3D &connector->display_info;
> > +
> > +	if (!intel_is_vrr_capable(connector))
> > +		return;
> > +
> > +	if (!crtc_state->uapi.vrr_enabled) {
> > +		drm_dbg(&dev_priv->drm,
> > +			"VRR disable requested by Userspace\n");
> =

> drm_dbg_kms, though is this useful information? Quite a bit of log spam
> I'd think.

Yea this one can probably remove

Manasi


> =

> > +		crtc_state->vrr.enable =3D false;
> > +		return;
> > +	}
> > +
> > +	crtc_state->vrr.enable =3D true;
> > +	crtc_state->vrr.vtotalmin =3D
> > +		max_t(u16, adjusted_mode->crtc_vtotal,
> > +		      DIV_ROUND_CLOSEST(adjusted_mode->crtc_clock * 1000,
> > +					adjusted_mode->crtc_htotal *
> > +					info->monitor_range.max_vfreq));
> > +	crtc_state->vrr.vtotalmax =3D
> > +		max_t(u16, adjusted_mode->crtc_vtotal,
> > +		      DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
> > +				   adjusted_mode->crtc_htotal *
> > +				   info->monitor_range.min_vfreq));
> > +
> > +	drm_dbg(&dev_priv->drm,
> =

> drm_dbg_kms
> =

> > +		"VRR Config: Enable =3D %s Vtotal Min =3D %d Vtotal Max =3D %d\n",
> > +		 yesno(crtc_state->vrr.enable), crtc_state->vrr.vtotalmin,
> > +		 crtc_state->vrr.vtotalmax);
> > +}
> > +
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm=
/i915/display/intel_vrr.h
> > index 755746c7525c..1e6fe8fe92ec 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> > @@ -15,5 +15,7 @@ struct intel_encoder;
> >  struct intel_dp;
> >  =

> >  bool intel_is_vrr_capable(struct drm_connector *connector);
> > +void intel_vrr_compute_config(struct intel_dp *intel_dp,
> > +			      struct intel_crtc_state *crtc_state);
> >  =

> >  #endif /* __INTEL_VRR_H__ */
> =

> -- =

> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
