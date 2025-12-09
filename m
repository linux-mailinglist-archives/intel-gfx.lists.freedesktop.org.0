Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2866FCB01FD
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 14:59:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF95B10E5CC;
	Tue,  9 Dec 2025 13:59:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E00F110E5CC
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Dec 2025 13:59:02 +0000 (UTC)
Received: from mobile-access-5d6aa7-235.dhcp.inet.fi ([93.106.167.235]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vSyEz-00000000gwe-0KcZ; Tue, 09 Dec 2025 15:58:58 +0200
Message-ID: <8927dc7edf0cf3a28bbd10760cdd6bdfe2e00ec8.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 09 Dec 2025 15:58:55 +0200
In-Reply-To: <aTgiLJ9MWZTa44ZP@intel.com>
References: <20251209125458.1105645-1-luciano.coelho@intel.com>
 <aTgiLJ9MWZTa44ZP@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-7 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH] drm/i915/xe3p: add W/A to disable DC5/DC6 in certain
 scaler conditions
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

On Tue, 2025-12-09 at 15:20 +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
> On Tue, Dec 09, 2025 at 02:54:42PM +0200, Luca Coelho wrote:
> > In NVL-A0, a workaround is needed to prevent scaling problems when
> > using scaler coefficients with DC5 and DC6.  In order to avoid this,
> > the workaround needs to prevent the device from entering DC5 or DC6
> > when programmable scaler coefficients are used.
> >=20
> > Check for these conditions and hold a DC_OFF power domain wakeref to
> > prevent entering DC5 and DC6 in these situations.
> >=20
> > This patch implements Wa_16026694205.
> >=20
> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  | 10 ++++++
> >  .../drm/i915/display/intel_display_types.h    |  7 ++++
> >  .../gpu/drm/i915/display/intel_display_wa.c   |  4 +++
> >  .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
> >  drivers/gpu/drm/i915/display/skl_scaler.c     | 35 +++++++++++++++++++
> >  drivers/gpu/drm/i915/display/skl_scaler.h     |  5 +++
> >  6 files changed, 62 insertions(+)
> >=20
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 9c6d3ecdb589..c3b19dd2ac56 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -7299,6 +7299,8 @@ static void intel_atomic_dsb_finish(struct intel_=
atomic_state *state,
> >  	struct intel_crtc_state *new_crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >  	unsigned int size =3D new_crtc_state->plane_color_changed ? 8192 : 10=
24;
> > +	u32 ps_ctrl;
> > +	int i;
> > =20
> >  	if (!new_crtc_state->use_flipq &&
> >  	    !new_crtc_state->use_dsb &&
> > @@ -7384,6 +7386,14 @@ static void intel_atomic_dsb_finish(struct intel=
_atomic_state *state,
> >  	}
> > =20
> >  	intel_dsb_finish(new_crtc_state->dsb_commit);
> > +
> > +	/* Wa_16026694205: check and re-enable DC5 if needed */
> > +	for (i =3D 0; i < crtc->num_scalers; i++) {
> > +		ps_ctrl =3D intel_de_read(display, SKL_PS_CTRL(crtc->pipe, i));
> > +		if (intel_display_wa(display, 16026694205))
> > +			wa_no_dc5_if_ps_filter_programmed(display, crtc,
> > +							  ps_ctrl, false);
> > +	}
> >  }
> > =20
> >  static void intel_atomic_commit_tail(struct intel_atomic_state *state)
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drive=
rs/gpu/drm/i915/display/intel_display_types.h
> > index 6ff53cd58052..8d4dbe46fa26 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1545,6 +1545,13 @@ struct intel_crtc {
> >  	/* scalers available on this crtc */
> >  	int num_scalers;
> > =20
> > +	/*
> > +	 * wakeref for Wa_16026694205 where we need to prevent DC5/DC6
> > +	 * when using scaler coefficients (PS_CTRL_FILTER_SELECT is
> > +	 * programmed).
> > +	 */
> > +	struct ref_tracker *wa_no_dc5_wakeref;
> > +
> >  	/* for loading single buffered registers during vblank */
> >  	struct pm_qos_request vblank_pm_qos;
> > =20
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/=
gpu/drm/i915/display/intel_display_wa.c
> > index a00af39f7538..9e4de69f4d58 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > @@ -10,6 +10,7 @@
> >  #include "intel_display_core.h"
> >  #include "intel_display_regs.h"
> >  #include "intel_display_wa.h"
> > +#include "intel_step.h"
> > =20
> >  static void gen11_display_wa_apply(struct intel_display *display)
> >  {
> > @@ -74,6 +75,9 @@ bool __intel_display_wa(struct intel_display *display=
, enum intel_display_wa wa,
> >  		return display->platform.battlemage;
> >  	case INTEL_DISPLAY_WA_14025769978:
> >  		return DISPLAY_VER(display) =3D=3D 35;
> > +	case INTEL_DISPLAY_WA_16026694205:
> > +		return (DISPLAY_VER(display) =3D=3D 35 &&
> > +			IS_DISPLAY_STEP(display, STEP_A0, STEP_A0));
>=20
> This looks like a lot of  code to deal with a single broken
> pre-production stepping. Assuming this is going to get fixed in
> the hardware later (which seems to be the case according to the
> HSD), then IMO we should simply not use the programmed coefficients
> on that broken stepping.

That was my original thought too, I thought we wouldn't even need to
upstream this and, only if really needed, we would add it to our
internal tree.  But I was advised otherwise.


> That's assuming that we even care about this. The HSD fails to explain
> what the lack of the retention will do to the sign bit. If it's simply
> going to get reset to 0 then it'll be fine since we never used negative
> coefficients anyway.

Okay, so any recommendation on how to proceed?

--
Cheers,
Luca.
