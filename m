Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJMFFb7cjmlZFgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:11:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AB6133D23
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:11:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C72CA10E7A8;
	Fri, 13 Feb 2026 08:11:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 329CE10E7A5;
 Fri, 13 Feb 2026 08:11:34 +0000 (UTC)
Received: from 37-33-41-57.bb.dnainternet.fi ([37.33.41.57]
 helo=[192.168.101.110])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vqoGn-00000002LOV-2UQ7; Fri, 13 Feb 2026 10:11:30 +0200
Message-ID: <8396e3db945eaf8200a50d05b43eff4c991b3c76.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Date: Fri, 13 Feb 2026 10:11:20 +0200
In-Reply-To: <aY6yD6b2MJT4YQYM@intel.com>
References: <20260212184737.352515-1-luciano.coelho@intel.com>
 <20260212184737.352515-14-luciano.coelho@intel.com>
 <aY6yD6b2MJT4YQYM@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-8 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH v2 13/15] drm/i915/display: convert W/As in intel_psr.c
 to new framework
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca@coelho.fi,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_NA(0.00)[coelho.fi];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4]
X-Rspamd-Queue-Id: B0AB6133D23
X-Rspamd-Action: no action

On Fri, 2026-02-13 at 07:09 +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
> On Thu, Feb 12, 2026 at 08:46:11PM +0200, Luca Coelho wrote:
> > Convert the low-hanging fruits of workaround checks to the workaround
> > framework.  Instead of having display structure checks for the
> > workarounds all over, concentrate the checks in intel_wa.c.
> >=20
> > Acked-by: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_display_wa.c   | 15 ++++++++++++--
> >  .../gpu/drm/i915/display/intel_display_wa.h   |  4 ++++
> >  drivers/gpu/drm/i915/display/intel_psr.c      | 20 ++++++++-----------
> >  3 files changed, 25 insertions(+), 14 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/=
gpu/drm/i915/display/intel_display_wa.c
> > index 77ea2e5b8144..783e1383ff89 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > @@ -112,6 +112,13 @@ bool __intel_display_wa(struct intel_display *disp=
lay, enum intel_display_wa wa,
> >  		return DISPLAY_VER(display) =3D=3D 20;
> >  	case INTEL_DISPLAY_WA_15018326506:
> >  		return display->platform.battlemage;
> > +	case INTEL_DISPLAY_WA_16011303918:
> > +	case INTEL_DISPLAY_WA_22011320316:
> > +		return display->platform.alderlake_p &&
> > +			IS_DISPLAY_STEP(display, STEP_A0, STEP_B0);
> > +	case INTEL_DISPLAY_WA_16011181250:
> > +		return display->platform.rocketlake || display->platform.alderlake_s=
 ||
> > +			display->platform.dg2;
> >  	case INTEL_DISPLAY_WA_16011342517:
> >  		return display->platform.alderlake_p &&
> >  			IS_DISPLAY_STEP(display, STEP_A0, STEP_D0);
> > @@ -121,15 +128,19 @@ bool __intel_display_wa(struct intel_display *dis=
play, enum intel_display_wa wa,
> >  		return intel_display_needs_wa_16023588340(display);
> >  	case INTEL_DISPLAY_WA_16025573575:
> >  		return intel_display_needs_wa_16025573575(display);
> > +	case INTEL_DISPLAY_WA_16025596647:
> > +		return DISPLAY_VER(display) !=3D 20 &&
> > +			!IS_DISPLAY_VERx100_STEP(display, 3000,
> > +						 STEP_A0, STEP_B0);
>=20
> This one is nuts. It declarates (incorrectly) which platforms don't
> need the w/a. I don't think this sort of thing should be allowed here
> ever.

Yeah, this is bad.  I noticed the inversion (i.e. return who _doesn't_
need, as opposed to how all the other ones, which return who _does_
need the workaroun), but I admit I didn't give it much attention.  I'll
invert it.


> Presumably the only reason it was OK in the old place is because=20
> those codepaths were only executed on some new platforms. But
> __intel_display_wa() is so generic that is is clearly meant to
> give correct answers regardless of where it gets called.

I don't think it was okay in the old place either.  It's just confusing
(unless it had a clear comment on why it was like this).

--
Cheers,
Luca.


> >  	case INTEL_DISPLAY_WA_18034343758:
> >  		return DISPLAY_VER(display) =3D=3D 20 ||
> >  			(display->platform.pantherlake &&
> >  			 IS_DISPLAY_STEP(display, STEP_A0, STEP_B0));
> >  	case INTEL_DISPLAY_WA_22010178259:
> >  		return DISPLAY_VER(display) =3D=3D 12;
> > -	case INTEL_DISPLAY_WA_22011320316:
> > +	case INTEL_DISPLAY_WA_22012278275:
> >  		return display->platform.alderlake_p &&
> > -			IS_DISPLAY_STEP(display, STEP_A0, STEP_B0);
> > +			IS_DISPLAY_STEP(display, STEP_A0, STEP_E0);
> >  	case INTEL_DISPLAY_WA_22014263786:
> >  		return IS_DISPLAY_VERx100(display, 1100, 1400);
> >  	case INTEL_DISPLAY_WA_22021048059:
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/=
gpu/drm/i915/display/intel_display_wa.h
> > index 3d2cf05ffacc..35d8df4c75a2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > @@ -44,13 +44,17 @@ enum intel_display_wa {
> >  	INTEL_DISPLAY_WA_14025769978,
> >  	INTEL_DISPLAY_WA_15013987218,
> >  	INTEL_DISPLAY_WA_15018326506,
> > +	INTEL_DISPLAY_WA_16011181250,
> > +	INTEL_DISPLAY_WA_16011303918,
> >  	INTEL_DISPLAY_WA_16011342517,
> >  	INTEL_DISPLAY_WA_16011863758,
> >  	INTEL_DISPLAY_WA_16023588340,
> >  	INTEL_DISPLAY_WA_16025573575,
> > +	INTEL_DISPLAY_WA_16025596647,
> >  	INTEL_DISPLAY_WA_18034343758,
> >  	INTEL_DISPLAY_WA_22010178259,
> >  	INTEL_DISPLAY_WA_22011320316,
> > +	INTEL_DISPLAY_WA_22012278275,
> >  	INTEL_DISPLAY_WA_22012358565,
> >  	INTEL_DISPLAY_WA_22014263786,
> >  	INTEL_DISPLAY_WA_22021048059,
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm=
/i915/display/intel_psr.c
> > index 5bea2eda744b..b21e52f0c461 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -40,6 +40,7 @@
> >  #include "intel_display_rpm.h"
> >  #include "intel_display_types.h"
> >  #include "intel_display_utils.h"
> > +#include "intel_display_wa.h"
> >  #include "intel_dmc.h"
> >  #include "intel_dp.h"
> >  #include "intel_dp_aux.h"
> > @@ -1082,7 +1083,7 @@ static void hsw_activate_psr2(struct intel_dp *in=
tel_dp)
> >  	}
> > =20
> >  	/* Wa_22012278275:adl-p */
> > -	if (display->platform.alderlake_p && IS_DISPLAY_STEP(display, STEP_A0=
, STEP_E0)) {
> > +	if (intel_display_wa(display, 22012278275)) {
> >  		static const u8 map[] =3D {
> >  			2, /* 5 lines */
> >  			1, /* 6 lines */
> > @@ -1263,7 +1264,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp=
 *intel_dp,
> >  		return;
> > =20
> >  	/* Wa_16011303918:adl-p */
> > -	if (display->platform.alderlake_p && IS_DISPLAY_STEP(display, STEP_A0=
, STEP_B0))
> > +	if (intel_display_wa(display, 16011303918))
> >  		return;
> > =20
> >  	/*
> > @@ -1540,8 +1541,7 @@ static bool intel_psr2_config_valid(struct intel_=
dp *intel_dp,
> >  	}
> > =20
> >  	/* Wa_16011181250 */
> > -	if (display->platform.rocketlake || display->platform.alderlake_s ||
> > -	    display->platform.dg2) {
> > +	if (intel_display_wa(display, 16011181250)) {
> >  		drm_dbg_kms(display->drm,
> >  			    "PSR2 is defeatured for this platform\n");
> >  		return false;
> > @@ -1823,8 +1823,7 @@ void intel_psr_set_non_psr_pipes(struct intel_dp =
*intel_dp,
> >  	u8 active_pipes =3D 0;
> > =20
> >  	/* Wa_16025596647 */
> > -	if (DISPLAY_VER(display) !=3D 20 &&
> > -	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
> > +	if (intel_display_wa(display, 16025596647))
> >  		return;
> > =20
> >  	/* Not needed by Panel Replay  */
> > @@ -3973,8 +3972,7 @@ static void psr_dc5_dc6_wa_work(struct work_struc=
t *work)
> >   */
> >  void intel_psr_notify_dc5_dc6(struct intel_display *display)
> >  {
> > -	if (DISPLAY_VER(display) !=3D 20 &&
> > -	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
> > +	if (intel_display_wa(display, 16025596647))
> >  		return;
> > =20
> >  	schedule_work(&display->psr_dc5_dc6_wa_work);
> > @@ -3989,8 +3987,7 @@ void intel_psr_notify_dc5_dc6(struct intel_displa=
y *display)
> >   */
> >  void intel_psr_dc5_dc6_wa_init(struct intel_display *display)
> >  {
> > -	if (DISPLAY_VER(display) !=3D 20 &&
> > -	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
> > +	if (intel_display_wa(display, 16025596647))
> >  		return;
> > =20
> >  	INIT_WORK(&display->psr_dc5_dc6_wa_work, psr_dc5_dc6_wa_work);
> > @@ -4011,8 +4008,7 @@ void intel_psr_notify_pipe_change(struct intel_at=
omic_state *state,
> >  	struct intel_display *display =3D to_intel_display(state);
> >  	struct intel_encoder *encoder;
> > =20
> > -	if (DISPLAY_VER(display) !=3D 20 &&
> > -	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
> > +	if (intel_display_wa(display, 16025596647))
> >  		return;
> > =20
> >  	for_each_intel_encoder_with_psr(display->drm, encoder) {
> > --=20
> > 2.51.0
