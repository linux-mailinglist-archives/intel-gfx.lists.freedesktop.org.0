Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B235D2CB076
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 23:53:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA4946E94F;
	Tue,  1 Dec 2020 22:53:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B37F86E94F
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 22:53:07 +0000 (UTC)
IronPort-SDR: tXHIeueE010ddDcrittScYL9/Qft+s1KvAiRAmfJFszfxH61fqjNfYIAEW9Cdm6CDNNMBxrNs8
 SVx7mOyq/GTA==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="173079819"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="173079819"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 14:53:07 -0800
IronPort-SDR: 3Rk1/vfUU2lPcUaV9/EZg3g0EAn897/GWuxOru9kJVQHIMl0yci+lC4/2F5KdAyvoOw3NqlQZ4
 sdNqSFU9dmSw==
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="365001383"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 14:53:06 -0800
Date: Tue, 1 Dec 2020 14:56:02 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20201201225602.GC22644@labuser-Z97X-UD5H>
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
 <20201022222709.29386-8-manasi.d.navare@intel.com>
 <87imadscnr.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87imadscnr.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 07/11] drm/i915/display/vrr: Configure and
 enable VRR in modeset enable
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

On Tue, Nov 10, 2020 at 12:56:40PM +0200, Jani Nikula wrote:
> On Thu, 22 Oct 2020, Manasi Navare <manasi.d.navare@intel.com> wrote:
> > This patch computes the VRR parameters from VRR crtc states
> > and configures them in VRR registers during CRTC enable in
> > the modeset enable sequence.
> >
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c |  5 ++++
> >  drivers/gpu/drm/i915/display/intel_vrr.c | 38 ++++++++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_vrr.h |  2 ++
> >  3 files changed, 45 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm=
/i915/display/intel_ddi.c
> > index 09811be08cfe..391c51979334 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -49,6 +49,7 @@
> >  #include "intel_sprite.h"
> >  #include "intel_tc.h"
> >  #include "intel_vdsc.h"
> > +#include "intel_vrr.h"
> >  =

> >  struct ddi_buf_trans {
> >  	u32 trans1;	/* balance leg enable, de-emph level */
> > @@ -4046,6 +4047,10 @@ static void intel_enable_ddi(struct intel_atomic=
_state *state,
> >  =

> >  	intel_ddi_enable_transcoder_func(encoder, crtc_state);
> >  =

> > +	/* Enable VRR if requested through CRTC property */
> =

> I don't think the comment is helpful, really.

Yes will remove

> =

> > +	if (crtc_state->vrr.enable)
> > +		intel_vrr_enable(encoder, crtc_state);
> =

> In the disable path you check the vrr.enable within the
> function. Perhaps we should do the same here, i.e. call vrr enable
> unconditionally and have it early return if not requested.

Okay will do

> =

> > +
> >  	intel_enable_pipe(crtc_state);
> >  =

> >  	intel_crtc_vblank_on(crtc_state);
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm=
/i915/display/intel_vrr.c
> > index 56114f535f94..7f1353bac583 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -64,3 +64,41 @@ intel_vrr_compute_config(struct intel_dp *intel_dp,
> >  		 crtc_state->vrr.vtotalmax);
> >  }
> >  =

> > +void intel_vrr_enable(struct intel_encoder *encoder,
> > +		      const struct intel_crtc_state *crtc_state)
> > +{
> > +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	enum pipe pipe =3D crtc->pipe;
> > +	const struct drm_display_mode *adjusted_mode =3D
> > +		&crtc_state->hw.adjusted_mode;
> > +	u32 trans_vrr_ctl =3D 0, trans_vrr_vmax =3D 0, trans_vrr_vmin =3D 0, =
trans_vrr_flipline =3D 0, trans_push =3D 0;
> > +	u16 framestart_to_pipelinefull_linecnt =3D 0;
> =

> All the initializations to 0 are unnecessary.

Will remove

> =

> > +
> > +	framestart_to_pipelinefull_linecnt =3D
> > +		min_t(u16, 255, (crtc_state->vrr.vtotalmin - adjusted_mode->crtc_vdi=
splay));
> > +
> > +	trans_vrr_ctl =3D VRR_CTL_VRR_ENABLE |  VRR_CTL_IGN_MAX_SHIFT |
> > +		VRR_CTL_FLIP_LINE_EN | VRR_CTL_LINE_COUNT(framestart_to_pipelinefull=
_linecnt) |
> > +		VRR_CTL_SW_FULLLINE_COUNT;
> > +
> > +	/* Programming adjustments for 0 based regs */
> > +	trans_vrr_vmax =3D crtc_state->vrr.vtotalmax - 1;
> > +	trans_vrr_vmin =3D crtc_state->vrr.vtotalmin - 1;
> > +	trans_vrr_flipline =3D crtc_state->vrr.vtotalmin - 1;
> > +
> > +	trans_push =3D TRANS_PUSH_EN;
> =

> Frankly I'd just throw away the above four temp variables.

Okay and use them directly in de_write ?

> =

> > +
> > +	intel_de_write(dev_priv, TRANS_VRR_VMIN(pipe), trans_vrr_vmin);
> > +	intel_de_write(dev_priv, TRANS_VRR_VMAX(pipe), trans_vrr_vmax);
> > +	intel_de_write(dev_priv, TRANS_VRR_CTL(pipe), trans_vrr_ctl);
> > +	intel_de_write(dev_priv, TRANS_VRR_FLIPLINE(pipe), trans_vrr_flipline=
);
> > +	intel_de_write(dev_priv, TRANS_PUSH(pipe), trans_push);
> > +
> > +	drm_dbg(&dev_priv->drm,	"Enabling VRR on pipe (%c)\n", pipe_name(pipe=
));
> =

> drm_dbg_kms. "pipe %c" is the convention, not "pipe (%c)".

Got it will fix this

Thanks for the inputs

Manasi


> =

> > +	drm_dbg(&dev_priv->drm, "VRR Parameters: Vblank - Min =3D %d, Max =3D=
 %d Flipline Count =3D %d, CTL Reg =3D 0x%08x, TRANS PUSH reg =3D 0x%08x",
> > +		crtc_state->vrr.vtotalmin, crtc_state->vrr.vtotalmax,
> > +		crtc_state->vrr.vtotalmin, trans_vrr_ctl,
> > +		trans_push);
> > +}
> > +
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm=
/i915/display/intel_vrr.h
> > index 1e6fe8fe92ec..05d982d6fbae 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> > @@ -17,5 +17,7 @@ struct intel_dp;
> >  bool intel_is_vrr_capable(struct drm_connector *connector);
> >  void intel_vrr_compute_config(struct intel_dp *intel_dp,
> >  			      struct intel_crtc_state *crtc_state);
> > +void intel_vrr_enable(struct intel_encoder *encoder,
> > +		      const struct intel_crtc_state *crtc_state);
> >  =

> >  #endif /* __INTEL_VRR_H__ */
> =

> -- =

> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
