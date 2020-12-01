Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE152CB07A
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 23:54:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56CED6E940;
	Tue,  1 Dec 2020 22:54:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 618C06E940
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 22:54:37 +0000 (UTC)
IronPort-SDR: kamiOaanf2kQraILyJeEQPI6koFmPEIistZ9e7MQreILcL/uyDFTpyQ6yrlWiEwOTxLCEXzLM+
 wnHHmNQVNSpw==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="172136608"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="172136608"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 14:54:34 -0800
IronPort-SDR: bV0alH1wvt5xt8Xp6NETREXV7bGSgvKQ/5Z7mOAA46muHhKI9ZrIHVl27rWNSPM7D47hrTIwK9
 3xPGr++cECcA==
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="372940745"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 14:54:33 -0800
Date: Tue, 1 Dec 2020 14:57:29 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20201201225729.GD22644@labuser-Z97X-UD5H>
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
 <20201022222709.29386-9-manasi.d.navare@intel.com>
 <87ft5hscjl.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87ft5hscjl.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 08/11] drm/i915/display/vrr: Send VRR push
 to flip the frame
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

On Tue, Nov 10, 2020 at 12:59:10PM +0200, Jani Nikula wrote:
> On Thu, 22 Oct 2020, Manasi Navare <manasi.d.navare@intel.com> wrote:
> > VRR achieves vblank stretching using the HW PUSH functionality.
> > So once the VRR is enabled during modeset then for each flip
> > request from userspace, in the atomic tail pipe_update_end()
> > we need to set the VRR push bit in HW for it to terminate
> > the vblank at configured flipline or anytime after flipline
> > or latest at the Vmax.
> >
> > The HW clears the PUSH bit after the double buffer updates
> > are completed.
> >
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_sprite.c |  5 +++++
> >  drivers/gpu/drm/i915/display/intel_vrr.c    | 17 +++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_vrr.h    |  1 +
> >  3 files changed, 23 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/=
drm/i915/display/intel_sprite.c
> > index b6deeb338477..cb10fe462f06 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > @@ -49,6 +49,7 @@
> >  #include "intel_psr.h"
> >  #include "intel_dsi.h"
> >  #include "intel_sprite.h"
> > +#include "intel_vrr.h"
> >  =

> >  int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted_m=
ode,
> >  			     int usecs)
> > @@ -217,6 +218,10 @@ void intel_pipe_update_end(struct intel_crtc_state=
 *new_crtc_state)
> >  	    intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI))
> >  		icl_dsi_frame_update(new_crtc_state);
> >  =

> > +	/* Send VRR Push to terminate Vblank */
> > +	if (new_crtc_state->vrr.enable)
> > +		intel_vrr_send_push(new_crtc_state);
> > +
> =

> Maybe move the vrr.enable check to the function?

Yes makes sense will do

> =

> >  	/* We're still in the vblank-evade critical section, this can't race.
> >  	 * Would be slightly nice to just grab the vblank count and arm the
> >  	 * event outside of the critical section - the spinlock might spin fo=
r a
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm=
/i915/display/intel_vrr.c
> > index 7f1353bac583..ec1ce88e869c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -102,3 +102,20 @@ void intel_vrr_enable(struct intel_encoder *encode=
r,
> >  		trans_push);
> >  }
> >  =

> > +void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
> > +{
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > +	enum pipe pipe =3D crtc->pipe;
> > +	u32 trans_push;
> > +
> > +	trans_push =3D intel_de_read(dev_priv, TRANS_PUSH(pipe));
> > +	WARN_ON(!(trans_push & TRANS_PUSH_EN));
> =

> drm_WARN_ON, and perhaps move this below the register rmw. It doesn't
> change the flow anyway.

Yes will do

Manasi


> =

> > +
> > +	trans_push |=3D TRANS_PUSH_SEND;
> > +	intel_de_write(dev_priv, TRANS_PUSH(pipe), trans_push);
> > +
> > +	drm_dbg(&dev_priv->drm, "Sending VRR Push on Pipe (%c)\n",
> > +		pipe_name(pipe));
> =

> drm_dbg_kms
> =

> > +}
> > +
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm=
/i915/display/intel_vrr.h
> > index 05d982d6fbae..a6b78e1676cb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> > @@ -19,5 +19,6 @@ void intel_vrr_compute_config(struct intel_dp *intel_=
dp,
> >  			      struct intel_crtc_state *crtc_state);
> >  void intel_vrr_enable(struct intel_encoder *encoder,
> >  		      const struct intel_crtc_state *crtc_state);
> > +void intel_vrr_send_push(const struct intel_crtc_state *crtc_state);
> >  =

> >  #endif /* __INTEL_VRR_H__ */
> =

> -- =

> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
