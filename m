Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PfkOTWtwmkyggQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 16:26:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4EE317FBF
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 16:26:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C81F910E6E8;
	Tue, 24 Mar 2026 15:26:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A50D10E698;
 Tue, 24 Mar 2026 15:26:42 +0000 (UTC)
Received: from 87-93-178-238.bb.dnainternet.fi ([87.93.178.238]
 helo=[192.168.101.111])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1w53eH-00000003cNx-3BxI; Tue, 24 Mar 2026 17:26:38 +0200
Message-ID: <825849b65c16a959a4880bf9e4a476eaf3fd2927.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 jani.nikula@linux.intel.com
Date: Tue, 24 Mar 2026 17:26:28 +0200
In-Reply-To: <acKoAdGa3s1S5Pqm@intel.com>
References: <20260324143420.310800-1-luciano.coelho@intel.com>
 <20260324143420.310800-8-luciano.coelho@intel.com>
 <acKoAdGa3s1S5Pqm@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH 7/8] drm/i915/display: move pre-HSW clock gating init to
 display
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
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[luca@coelho.fi,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[coelho.fi];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Queue-Id: 5A4EE317FBF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 2026-03-24 at 17:04 +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
> On Tue, Mar 24, 2026 at 04:29:56PM +0200, Luca Coelho wrote:
> > Move the remaining pre-HSW display clock gating programming into
> > display.
> >=20
> > This also drops display register includes from intel_clock_gating.c.
> >=20
> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > ---
> >  .../i915/display/intel_display_clock_gating.c | 100 ++++++++++++++++
> >  .../i915/display/intel_display_clock_gating.h |  12 ++
> >  drivers/gpu/drm/i915/intel_clock_gating.c     | 109 +-----------------
> >  3 files changed, 118 insertions(+), 103 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c =
b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
> > index 0b2edf6acb79..5809c49dccf0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
> > @@ -6,11 +6,13 @@
> >  #include <drm/intel/intel_gmd_misc_regs.h>
> > =20
> >  #include "intel_de.h"
> > +#include "i9xx_plane_regs.h"
> >  #include "intel_display.h"
> >  #include "intel_display_clock_gating.h"
> >  #include "intel_display_regs.h"
> > =20
> >  #include "i915_drv.h"
> > +#include "i915_reg.h"
> > =20
> >  static void intel_display_gen9_init_clock_gating(struct intel_display =
*display,
> >  						 bool has_llc)
> > @@ -156,3 +158,101 @@ void intel_display_hsw_init_clock_gating(struct i=
ntel_display *display)
> >  	intel_display_hsw_init_clock_gating_common(display,
> >  						   HSW_UNMASK_VBL_TO_REGS_IN_SRD);
> >  }
> > +
> > +void intel_display_disable_trickle_feed(struct intel_display *display)
> > +{
> > +	enum pipe pipe;
> > +
> > +	for_each_pipe(display, pipe) {
> > +		intel_de_rmw(display, DSPCNTR(display, pipe), 0,
> > +			     DISP_TRICKLE_FEED_DISABLE);
> > +
> > +		intel_de_rmw(display, DSPSURF(display, pipe), 0, 0);
> > +		intel_de_posting_read(display, DSPSURF(display, pipe));
> > +	}
> > +}
> > +
> > +void intel_display_ilk_init_clock_gating(struct intel_display *display=
)
> > +{
> > +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> > +	u32 dspclk_gate =3D ILK_VRHUNIT_CLOCK_GATE_DISABLE;
> > +
> > +	/*
> > +	 * Required for FBC
> > +	 * WaFbcDisableDpfcClockGating:ilk
> > +	 */
> > +	dspclk_gate |=3D ILK_DPFCRUNIT_CLOCK_GATE_DISABLE |
> > +		       ILK_DPFCUNIT_CLOCK_GATE_DISABLE |
> > +		       ILK_DPFDUNIT_CLOCK_GATE_ENABLE;
> > +
> > +	intel_de_write(display, PCH_3DCGDIS0,
> > +		       MARIUNIT_CLOCK_GATE_DISABLE |
> > +		       SVSMUNIT_CLOCK_GATE_DISABLE);
> > +	intel_de_write(display, PCH_3DCGDIS1, VFMUNIT_CLOCK_GATE_DISABLE);
>=20
> Those two aren't display things.

Oops, you're right.  I'll fix it.

--
Cheers,
Luca.


>=20
> > +
> > +	intel_de_write(display, ILK_DISPLAY_CHICKEN2,
> > +		       intel_de_read(display, ILK_DISPLAY_CHICKEN2) |
> > +		       ILK_DPARB_GATE | ILK_VSDPFD_FULL);
> > +	dspclk_gate |=3D ILK_DPARBUNIT_CLOCK_GATE_ENABLE;
> > +	intel_de_write(display, DISP_ARB_CTL,
> > +		       intel_de_read(display, DISP_ARB_CTL) |
> > +		       DISP_FBC_WM_DIS);
> > +
> > +	if (IS_IRONLAKE_M(i915)) {
> > +		/* WaFbcAsynchFlipDisableFbcQueue:ilk */
> > +		intel_de_rmw(display, ILK_DISPLAY_CHICKEN1, 0, ILK_FBCQ_DIS);
> > +		intel_de_rmw(display, ILK_DISPLAY_CHICKEN2, 0, ILK_DPARB_GATE);
> > +	}
> > +
> > +	intel_de_write(display, ILK_DSPCLK_GATE_D, dspclk_gate);
> > +	intel_de_rmw(display, ILK_DISPLAY_CHICKEN2, 0, ILK_ELPIN_409_SELECT);
> > +
> > +	intel_display_disable_trickle_feed(display);
> > +}
> > +
> > +void intel_display_gen6_init_clock_gating(struct intel_display *displa=
y)
> > +{
> > +	u32 dspclk_gate =3D ILK_VRHUNIT_CLOCK_GATE_DISABLE;
> > +
> > +	intel_de_write(display, ILK_DSPCLK_GATE_D, dspclk_gate);
> > +	intel_de_rmw(display, ILK_DISPLAY_CHICKEN2, 0, ILK_ELPIN_409_SELECT);
> > +
> > +	intel_de_write(display, ILK_DISPLAY_CHICKEN1,
> > +		       intel_de_read(display, ILK_DISPLAY_CHICKEN1) |
> > +		       ILK_FBCQ_DIS | ILK_PABSTRETCH_DIS);
> > +	intel_de_write(display, ILK_DISPLAY_CHICKEN2,
> > +		       intel_de_read(display, ILK_DISPLAY_CHICKEN2) |
> > +		       ILK_DPARB_GATE | ILK_VSDPFD_FULL);
> > +	intel_de_write(display, ILK_DSPCLK_GATE_D,
> > +		       intel_de_read(display, ILK_DSPCLK_GATE_D) |
> > +		       ILK_DPARBUNIT_CLOCK_GATE_ENABLE |
> > +		       ILK_DPFDUNIT_CLOCK_GATE_ENABLE);
> > +
> > +	intel_display_disable_trickle_feed(display);
> > +}
> > +
> > +void intel_display_ivb_init_clock_gating(struct intel_display *display=
)
> > +{
> > +	intel_de_write(display, ILK_DSPCLK_GATE_D, ILK_VRHUNIT_CLOCK_GATE_DIS=
ABLE);
> > +	intel_de_rmw(display, ILK_DISPLAY_CHICKEN1, 0, ILK_FBCQ_DIS);
> > +}
> > +
> > +void intel_display_g4x_init_clock_gating(struct intel_display *display=
)
> > +{
> > +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> > +	u32 dspclk_gate =3D VRHUNIT_CLOCK_GATE_DISABLE |
> > +			  OVRUNIT_CLOCK_GATE_DISABLE |
> > +			  OVCUNIT_CLOCK_GATE_DISABLE;
> > +
> > +	if (IS_GM45(i915))
> > +		dspclk_gate |=3D DSSUNIT_CLOCK_GATE_DISABLE;
> > +
> > +	intel_de_write(display, DSPCLK_GATE_D, dspclk_gate);
> > +
> > +	intel_display_disable_trickle_feed(display);
> > +}
> > +
> > +void intel_display_i965gm_init_clock_gating(struct intel_display *disp=
lay)
> > +{
> > +	intel_de_write(display, DSPCLK_GATE_D, 0);
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.h =
b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
> > index 0eb240f2f69e..9eebfc4a6ebe 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
> > @@ -17,6 +17,12 @@ void intel_display_glk_init_clock_gating(struct inte=
l_display *display);
> >  void intel_display_bdw_hsw_init_clock_gating(struct intel_display *dis=
play);
> >  void intel_display_bdw_init_clock_gating(struct intel_display *display=
);
> >  void intel_display_hsw_init_clock_gating(struct intel_display *display=
);
> > +void intel_display_disable_trickle_feed(struct intel_display *display)=
;
> > +void intel_display_ilk_init_clock_gating(struct intel_display *display=
);
> > +void intel_display_gen6_init_clock_gating(struct intel_display *displa=
y);
> > +void intel_display_ivb_init_clock_gating(struct intel_display *display=
);
> > +void intel_display_g4x_init_clock_gating(struct intel_display *display=
);
> > +void intel_display_i965gm_init_clock_gating(struct intel_display *disp=
lay);
> >  #else
> >  static inline void intel_display_skl_init_clock_gating(struct intel_di=
splay *display) {}
> >  static inline void intel_display_kbl_init_clock_gating(struct intel_di=
splay *display) {}
> > @@ -26,6 +32,12 @@ static inline void intel_display_glk_init_clock_gati=
ng(struct intel_display *dis
> >  static inline void intel_display_bdw_hsw_init_clock_gating(struct inte=
l_display *display) {}
> >  static inline void intel_display_bdw_init_clock_gating(struct intel_di=
splay *display) {}
> >  static inline void intel_display_hsw_init_clock_gating(struct intel_di=
splay *display) {}
> > +static inline void intel_display_disable_trickle_feed(struct intel_dis=
play *display) {}
> > +static inline void intel_display_ilk_init_clock_gating(struct intel_di=
splay *display) {}
> > +static inline void intel_display_gen6_init_clock_gating(struct intel_d=
isplay *display) {}
> > +static inline void intel_display_ivb_init_clock_gating(struct intel_di=
splay *display) {}
> > +static inline void intel_display_g4x_init_clock_gating(struct intel_di=
splay *display) {}
> > +static inline void intel_display_i965gm_init_clock_gating(struct intel=
_display *display) {}
> >  #endif
> > =20
> >  #endif /* __INTEL_DISPLAY_CLOCK_GATING_H__ */
> > diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/dr=
m/i915/intel_clock_gating.c
> > index a8e3eb6f06c8..98c048387a0a 100644
> > --- a/drivers/gpu/drm/i915/intel_clock_gating.c
> > +++ b/drivers/gpu/drm/i915/intel_clock_gating.c
> > @@ -29,11 +29,8 @@
> >  #include <drm/intel/intel_gmd_misc_regs.h>
> >  #include <drm/intel/intel_gmd_interrupt_regs.h>
> > =20
> > -#include "display/i9xx_plane_regs.h"
> > -#include "display/intel_display.h"
> >  #include "display/intel_display_clock_gating.h"
> >  #include "display/intel_display_core.h"
> > -#include "display/intel_display_regs.h"
> >  #include "gt/intel_engine_regs.h"
> >  #include "gt/intel_gt.h"
> >  #include "gt/intel_gt_mcr.h"
> > @@ -68,74 +65,9 @@ static void glk_init_clock_gating(struct drm_i915_pr=
ivate *i915)
> >  	intel_display_glk_init_clock_gating(i915->display);
> >  }
> > =20
> > -static void g4x_disable_trickle_feed(struct drm_i915_private *dev_priv=
)
> > -{
> > -	struct intel_display *display =3D dev_priv->display;
> > -	enum pipe pipe;
> > -
> > -	for_each_pipe(display, pipe) {
> > -		intel_uncore_rmw(&dev_priv->uncore, DSPCNTR(display, pipe),
> > -				 0, DISP_TRICKLE_FEED_DISABLE);
> > -
> > -		intel_uncore_rmw(&dev_priv->uncore, DSPSURF(display, pipe),
> > -				 0, 0);
> > -		intel_uncore_posting_read(&dev_priv->uncore,
> > -					  DSPSURF(display, pipe));
> > -	}
> > -}
> > -
> >  static void ilk_init_clock_gating(struct drm_i915_private *i915)
> >  {
> > -	u32 dspclk_gate =3D ILK_VRHUNIT_CLOCK_GATE_DISABLE;
> > -
> > -	/*
> > -	 * Required for FBC
> > -	 * WaFbcDisableDpfcClockGating:ilk
> > -	 */
> > -	dspclk_gate |=3D ILK_DPFCRUNIT_CLOCK_GATE_DISABLE |
> > -		   ILK_DPFCUNIT_CLOCK_GATE_DISABLE |
> > -		   ILK_DPFDUNIT_CLOCK_GATE_ENABLE;
> > -
> > -	intel_uncore_write(&i915->uncore, PCH_3DCGDIS0,
> > -			   MARIUNIT_CLOCK_GATE_DISABLE |
> > -			   SVSMUNIT_CLOCK_GATE_DISABLE);
> > -	intel_uncore_write(&i915->uncore, PCH_3DCGDIS1,
> > -			   VFMUNIT_CLOCK_GATE_DISABLE);
> > -
> > -	/*
> > -	 * According to the spec the following bits should be set in
> > -	 * order to enable memory self-refresh
> > -	 * The bit 22/21 of 0x42004
> > -	 * The bit 5 of 0x42020
> > -	 * The bit 15 of 0x45000
> > -	 */
> > -	intel_uncore_write(&i915->uncore, ILK_DISPLAY_CHICKEN2,
> > -			   (intel_uncore_read(&i915->uncore, ILK_DISPLAY_CHICKEN2) |
> > -			    ILK_DPARB_GATE | ILK_VSDPFD_FULL));
> > -	dspclk_gate |=3D ILK_DPARBUNIT_CLOCK_GATE_ENABLE;
> > -	intel_uncore_write(&i915->uncore, DISP_ARB_CTL,
> > -			   (intel_uncore_read(&i915->uncore, DISP_ARB_CTL) |
> > -			    DISP_FBC_WM_DIS));
> > -
> > -	/*
> > -	 * Based on the document from hardware guys the following bits
> > -	 * should be set unconditionally in order to enable FBC.
> > -	 * The bit 22 of 0x42000
> > -	 * The bit 22 of 0x42004
> > -	 * The bit 7,8,9 of 0x42020.
> > -	 */
> > -	if (IS_IRONLAKE_M(i915)) {
> > -		/* WaFbcAsynchFlipDisableFbcQueue:ilk */
> > -		intel_uncore_rmw(&i915->uncore, ILK_DISPLAY_CHICKEN1, 0, ILK_FBCQ_DI=
S);
> > -		intel_uncore_rmw(&i915->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_DPARB_G=
ATE);
> > -	}
> > -
> > -	intel_uncore_write(&i915->uncore, ILK_DSPCLK_GATE_D, dspclk_gate);
> > -
> > -	intel_uncore_rmw(&i915->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_ELPIN_40=
9_SELECT);
> > -
> > -	g4x_disable_trickle_feed(i915);
> > -
> > +	intel_display_ilk_init_clock_gating(i915->display);
> >  	intel_pch_init_clock_gating(i915->display);
> >  }
> > =20
> > @@ -152,11 +84,7 @@ static void gen6_check_mch_setup(struct drm_i915_pr=
ivate *i915)
> > =20
> >  static void gen6_init_clock_gating(struct drm_i915_private *i915)
> >  {
> > -	u32 dspclk_gate =3D ILK_VRHUNIT_CLOCK_GATE_DISABLE;
> > -
> > -	intel_uncore_write(&i915->uncore, ILK_DSPCLK_GATE_D, dspclk_gate);
> > -
> > -	intel_uncore_rmw(&i915->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_ELPIN_40=
9_SELECT);
> > +	intel_display_gen6_init_clock_gating(i915->display);
> > =20
> >  	intel_uncore_write(&i915->uncore, GEN6_UCGCTL1,
> >  			   intel_uncore_read(&i915->uncore, GEN6_UCGCTL1) |
> > @@ -191,19 +119,6 @@ static void gen6_init_clock_gating(struct drm_i915=
_private *i915)
> >  	 *
> >  	 * WaFbcAsynchFlipDisableFbcQueue:snb
> >  	 */
> > -	intel_uncore_write(&i915->uncore, ILK_DISPLAY_CHICKEN1,
> > -			   intel_uncore_read(&i915->uncore, ILK_DISPLAY_CHICKEN1) |
> > -			   ILK_FBCQ_DIS | ILK_PABSTRETCH_DIS);
> > -	intel_uncore_write(&i915->uncore, ILK_DISPLAY_CHICKEN2,
> > -			   intel_uncore_read(&i915->uncore, ILK_DISPLAY_CHICKEN2) |
> > -			   ILK_DPARB_GATE | ILK_VSDPFD_FULL);
> > -	intel_uncore_write(&i915->uncore, ILK_DSPCLK_GATE_D,
> > -			   intel_uncore_read(&i915->uncore, ILK_DSPCLK_GATE_D) |
> > -			   ILK_DPARBUNIT_CLOCK_GATE_ENABLE  |
> > -			   ILK_DPFDUNIT_CLOCK_GATE_ENABLE);
> > -
> > -	g4x_disable_trickle_feed(i915);
> > -
> >  	intel_pch_init_clock_gating(i915->display);
> > =20
> >  	gen6_check_mch_setup(i915);
> > @@ -338,10 +253,7 @@ static void ivb_init_clock_gating(struct drm_i915_=
private *i915)
> >  {
> >  	struct intel_display *display =3D i915->display;
> > =20
> > -	intel_uncore_write(&i915->uncore, ILK_DSPCLK_GATE_D, ILK_VRHUNIT_CLOC=
K_GATE_DISABLE);
> > -
> > -	/* WaFbcAsynchFlipDisableFbcQueue:ivb */
> > -	intel_uncore_rmw(&i915->uncore, ILK_DISPLAY_CHICKEN1, 0, ILK_FBCQ_DIS=
);
> > +	intel_display_ivb_init_clock_gating(display);
> > =20
> >  	/* WaDisableBackToBackFlipFix:ivb */
> >  	intel_uncore_write(&i915->uncore, IVB_CHICKEN3,
> > @@ -370,7 +282,7 @@ static void ivb_init_clock_gating(struct drm_i915_p=
rivate *i915)
> >  	intel_uncore_rmw(&i915->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
> >  			 0, GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
> > =20
> > -	g4x_disable_trickle_feed(i915);
> > +	intel_display_disable_trickle_feed(display);
> > =20
> >  	intel_uncore_rmw(&i915->uncore, GEN6_MBCUNIT_SNPCR, GEN6_MBC_SNPCR_MA=
SK,
> >  			 GEN6_MBC_SNPCR_MED);
> > @@ -443,21 +355,12 @@ static void chv_init_clock_gating(struct drm_i915=
_private *i915)
> > =20
> >  static void g4x_init_clock_gating(struct drm_i915_private *i915)
> >  {
> > -	u32 dspclk_gate;
> > -
> >  	intel_uncore_write(&i915->uncore, RENCLK_GATE_D1, 0);
> >  	intel_uncore_write(&i915->uncore, RENCLK_GATE_D2, VF_UNIT_CLOCK_GATE_=
DISABLE |
> >  			   GS_UNIT_CLOCK_GATE_DISABLE |
> >  			   CL_UNIT_CLOCK_GATE_DISABLE);
> >  	intel_uncore_write(&i915->uncore, RAMCLK_GATE_D, 0);
> > -	dspclk_gate =3D VRHUNIT_CLOCK_GATE_DISABLE |
> > -		OVRUNIT_CLOCK_GATE_DISABLE |
> > -		OVCUNIT_CLOCK_GATE_DISABLE;
> > -	if (IS_GM45(i915))
> > -		dspclk_gate |=3D DSSUNIT_CLOCK_GATE_DISABLE;
> > -	intel_uncore_write(&i915->uncore, DSPCLK_GATE_D, dspclk_gate);
> > -
> > -	g4x_disable_trickle_feed(i915);
> > +	intel_display_g4x_init_clock_gating(i915->display);
> >  }
> > =20
> >  static void i965gm_init_clock_gating(struct drm_i915_private *i915)
> > @@ -466,7 +369,7 @@ static void i965gm_init_clock_gating(struct drm_i91=
5_private *i915)
> > =20
> >  	intel_uncore_write(uncore, RENCLK_GATE_D1, I965_RCC_CLOCK_GATE_DISABL=
E);
> >  	intel_uncore_write(uncore, RENCLK_GATE_D2, 0);
> > -	intel_uncore_write(uncore, DSPCLK_GATE_D, 0);
> > +	intel_display_i965gm_init_clock_gating(i915->display);
> >  	intel_uncore_write(uncore, RAMCLK_GATE_D, 0);
> >  	intel_uncore_write16(uncore, DEUC, 0);
> >  	intel_uncore_write(uncore,
> > --=20
> > 2.53.0
