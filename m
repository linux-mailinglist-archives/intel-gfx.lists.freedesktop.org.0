Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5272CDF39
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 20:55:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3257A6EC13;
	Thu,  3 Dec 2020 19:55:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADAEE6EC13
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 19:55:44 +0000 (UTC)
IronPort-SDR: krN15ZRikRXasYQvysDPLvQohFMYAGH3bleknl+S826OpXg8gLFHTn3Jdf86Hcvvy1WYl3sinK
 7uSM9hvK521A==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="172483251"
X-IronPort-AV: E=Sophos;i="5.78,390,1599548400"; d="scan'208";a="172483251"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 11:55:44 -0800
IronPort-SDR: Sfj5FVLt1PcVTvdk+FxOl15FWxmTkCDg5SZZ72xhohlRRlqBavnE5SJFpv+NfmUcz0TdDRPW3n
 0bEISc40YFEw==
X-IronPort-AV: E=Sophos;i="5.78,390,1599548400"; d="scan'208";a="482101856"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 11:55:43 -0800
Date: Thu, 3 Dec 2020 11:58:43 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20201203195842.GE2130@labuser-Z97X-UD5H>
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
 <20201022222709.29386-9-manasi.d.navare@intel.com>
 <87ft5hscjl.fsf@intel.com>
 <20201201225729.GD22644@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201201225729.GD22644@labuser-Z97X-UD5H>
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

Actually one of the opens I had here was regarding the min and max calculat=
ion
in intel_pipe_update_start aroudn teh vblank evasion code.

Currently we have:
 min =3D vblank_start - intel_usecs_to_scanlines(adjusted_mode,
                                                      VBLANK_EVASION_TIME_U=
S);
        max =3D vblank_start - 1;

But now with VRR, the vblank termination will happen at the flipline or at =
Vmax
So do we stall the updates wrt the vtotalmax ?

Regards
Manasi


On Tue, Dec 01, 2020 at 02:57:29PM -0800, Navare, Manasi wrote:
> On Tue, Nov 10, 2020 at 12:59:10PM +0200, Jani Nikula wrote:
> > On Thu, 22 Oct 2020, Manasi Navare <manasi.d.navare@intel.com> wrote:
> > > VRR achieves vblank stretching using the HW PUSH functionality.
> > > So once the VRR is enabled during modeset then for each flip
> > > request from userspace, in the atomic tail pipe_update_end()
> > > we need to set the VRR push bit in HW for it to terminate
> > > the vblank at configured flipline or anytime after flipline
> > > or latest at the Vmax.
> > >
> > > The HW clears the PUSH bit after the double buffer updates
> > > are completed.
> > >
> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_sprite.c |  5 +++++
> > >  drivers/gpu/drm/i915/display/intel_vrr.c    | 17 +++++++++++++++++
> > >  drivers/gpu/drm/i915/display/intel_vrr.h    |  1 +
> > >  3 files changed, 23 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gp=
u/drm/i915/display/intel_sprite.c
> > > index b6deeb338477..cb10fe462f06 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > > @@ -49,6 +49,7 @@
> > >  #include "intel_psr.h"
> > >  #include "intel_dsi.h"
> > >  #include "intel_sprite.h"
> > > +#include "intel_vrr.h"
> > >  =

> > >  int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted=
_mode,
> > >  			     int usecs)
> > > @@ -217,6 +218,10 @@ void intel_pipe_update_end(struct intel_crtc_sta=
te *new_crtc_state)
> > >  	    intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI))
> > >  		icl_dsi_frame_update(new_crtc_state);
> > >  =

> > > +	/* Send VRR Push to terminate Vblank */
> > > +	if (new_crtc_state->vrr.enable)
> > > +		intel_vrr_send_push(new_crtc_state);
> > > +
> > =

> > Maybe move the vrr.enable check to the function?
> =

> Yes makes sense will do
> =

> > =

> > >  	/* We're still in the vblank-evade critical section, this can't rac=
e.
> > >  	 * Would be slightly nice to just grab the vblank count and arm the
> > >  	 * event outside of the critical section - the spinlock might spin =
for a
> > > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/d=
rm/i915/display/intel_vrr.c
> > > index 7f1353bac583..ec1ce88e869c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > > @@ -102,3 +102,20 @@ void intel_vrr_enable(struct intel_encoder *enco=
der,
> > >  		trans_push);
> > >  }
> > >  =

> > > +void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
> > > +{
> > > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > > +	enum pipe pipe =3D crtc->pipe;
> > > +	u32 trans_push;
> > > +
> > > +	trans_push =3D intel_de_read(dev_priv, TRANS_PUSH(pipe));
> > > +	WARN_ON(!(trans_push & TRANS_PUSH_EN));
> > =

> > drm_WARN_ON, and perhaps move this below the register rmw. It doesn't
> > change the flow anyway.
> =

> Yes will do
> =

> Manasi
> =

> =

> > =

> > > +
> > > +	trans_push |=3D TRANS_PUSH_SEND;
> > > +	intel_de_write(dev_priv, TRANS_PUSH(pipe), trans_push);
> > > +
> > > +	drm_dbg(&dev_priv->drm, "Sending VRR Push on Pipe (%c)\n",
> > > +		pipe_name(pipe));
> > =

> > drm_dbg_kms
> > =

> > > +}
> > > +
> > > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/d=
rm/i915/display/intel_vrr.h
> > > index 05d982d6fbae..a6b78e1676cb 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> > > @@ -19,5 +19,6 @@ void intel_vrr_compute_config(struct intel_dp *inte=
l_dp,
> > >  			      struct intel_crtc_state *crtc_state);
> > >  void intel_vrr_enable(struct intel_encoder *encoder,
> > >  		      const struct intel_crtc_state *crtc_state);
> > > +void intel_vrr_send_push(const struct intel_crtc_state *crtc_state);
> > >  =

> > >  #endif /* __INTEL_VRR_H__ */
> > =

> > -- =

> > Jani Nikula, Intel Open Source Graphics Center
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
