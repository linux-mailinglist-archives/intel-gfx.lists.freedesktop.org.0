Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGMPHsOH5mlHxwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 22:08:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A9B43393E
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 22:08:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7264510EB24;
	Mon, 20 Apr 2026 20:08:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBCB810EB24;
 Mon, 20 Apr 2026 20:08:32 +0000 (UTC)
Received: from 88-113-64-214.elisa-laajakaista.fi ([88.113.64.214]
 helo=[192.168.100.133])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1wEuuw-00000004RKz-33ii; Mon, 20 Apr 2026 23:08:28 +0300
Message-ID: <64634ea3166e45c02d8f21c0cf5db59183374cb4.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@linux.intel.com>, Luca Coelho
 <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com
Date: Mon, 20 Apr 2026 23:08:25 +0300
In-Reply-To: <62156adba622de6f4ae294c09479bb1293c97c0e@intel.com>
References: <20260420103705.3453499-1-luciano.coelho@intel.com>
 <20260420103705.3453499-6-luciano.coelho@intel.com>
 <62156adba622de6f4ae294c09479bb1293c97c0e@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH v3 5/8] drm/i915/display: move GLK clock gating init to
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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
X-Rspamd-Queue-Id: E6A9B43393E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 2026-04-20 at 15:18 +0300, Jani Nikula wrote:
> On Mon, 20 Apr 2026, Luca Coelho <luciano.coelho@intel.com> wrote:
> > Move the GLK-specific display clock gating programming into display
> > intel_display_clock_gating.c, to remove more dependencies from i915 to
> > display registers.
> >=20
> > Now that all remaining Gen9-family callers moved into display, we can
> > move the shared Gen9 display clock gating helper into display and
> > remove the old local helper from intel_clock_gating.c.
> >=20
> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > ---
> >  .../i915/display/intel_display_clock_gating.c | 57 +++++++++++++++++++
> >  .../i915/display/intel_display_clock_gating.h |  1 +
> >  drivers/gpu/drm/i915/intel_clock_gating.c     | 44 +-------------
> >  3 files changed, 59 insertions(+), 43 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c =
b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
> > index 59041c807d6d..b2cb18478577 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
> > @@ -6,11 +6,39 @@
> >  #include <drm/intel/intel_gmd_misc_regs.h>
> > =20
> >  #include "intel_de.h"
> > +#include "intel_display.h"
> >  #include "intel_display_clock_gating.h"
> > +#include "intel_display_core.h"
> >  #include "intel_display_regs.h"
> > =20
> > +static void intel_display_gen9_init_clock_gating(struct intel_display =
*display)
> > +{
> > +	/* See Bspec note for PSR2_CTL bit 31, Wa#828:skl,bxt,kbl,cfl */
> > +	intel_de_rmw(display, CHICKEN_PAR1_1, 0, SKL_EDP_PSR_FIX_RDWRAP);
> > +
> > +	/* WaEnableChickenDCPR:skl,bxt,kbl,glk,cfl */
> > +	intel_de_rmw(display, GEN8_CHICKEN_DCPR_1, 0, MASK_WAKEMEM);
> > +
> > +	/*
> > +	 * WaFbcWakeMemOn:skl,bxt,kbl,glk,cfl
> > +	 * Display WA #0859: skl,bxt,kbl,glk,cfl
> > +	 */
> > +	intel_de_rmw(display, DISP_ARB_CTL, 0, DISP_FBC_MEMORY_WAKE);
> > +}
> > +
> >  void intel_display_skl_init_clock_gating(struct intel_display *display=
)
> >  {
> > +	/*
> > +	 * WaCompressedResourceDisplayNewHashMode:skl,kbl
> > +	 * Display WA #0390: skl,kbl
> > +	 *
> > +	 * Must match Sampler, Pixel Back End, and Media. See
> > +	 * WaCompressedResourceSamplerPbeMediaNewHashMode.
> > +	 */
> > +	intel_de_rmw(display, CHICKEN_PAR1_1, 0, SKL_DE_COMPRESSED_HASH_MODE)=
;
> > +
> > +	intel_display_gen9_init_clock_gating(display);
> > +
> >  	/*
> >  	 * WaFbcTurnOffFbcWatermark:skl
> >  	 * Display WA #0562: skl
> > @@ -20,6 +48,17 @@ void intel_display_skl_init_clock_gating(struct inte=
l_display *display)
> > =20
> >  void intel_display_kbl_init_clock_gating(struct intel_display *display=
)
> >  {
> > +	/*
> > +	 * WaCompressedResourceDisplayNewHashMode:skl,kbl
> > +	 * Display WA #0390: skl,kbl
> > +	 *
> > +	 * Must match Sampler, Pixel Back End, and Media. See
> > +	 * WaCompressedResourceSamplerPbeMediaNewHashMode.
> > +	 */
> > +	intel_de_rmw(display, CHICKEN_PAR1_1, 0, SKL_DE_COMPRESSED_HASH_MODE)=
;
> > +
> > +	intel_display_gen9_init_clock_gating(display);
> > +
> >  	/*
> >  	 * WaFbcTurnOffFbcWatermark:kbl
> >  	 * Display WA #0562: kbl
> > @@ -29,6 +68,8 @@ void intel_display_kbl_init_clock_gating(struct intel=
_display *display)
> > =20
> >  void intel_display_cfl_init_clock_gating(struct intel_display *display=
)
> >  {
> > +	intel_display_gen9_init_clock_gating(display);
> > +
> >  	/*
> >  	 * WaFbcTurnOffFbcWatermark:cfl
> >  	 * Display WA #0562: cfl
> > @@ -38,6 +79,8 @@ void intel_display_cfl_init_clock_gating(struct intel=
_display *display)
> > =20
> >  void intel_display_bxt_init_clock_gating(struct intel_display *display=
)
> >  {
> > +	intel_display_gen9_init_clock_gating(display);
> > +
> >  	/*
> >  	 * Wa: Backlight PWM may stop in the asserted state, causing backligh=
t
> >  	 * to stay fully on.
> > @@ -60,3 +103,17 @@ void intel_display_bxt_init_clock_gating(struct int=
el_display *display)
> >  	 */
> >  	intel_de_rmw(display, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
> >  }
> > +
> > +void intel_display_glk_init_clock_gating(struct intel_display *display=
)
> > +{
> > +	intel_display_gen9_init_clock_gating(display);
> > +
> > +	/*
> > +	 * WaDisablePWMClockGating:glk
> > +	 * Backlight PWM may stop in the asserted state, causing backlight
> > +	 * to stay fully on.
> > +	 */
> > +	intel_de_write(display, GEN9_CLKGATE_DIS_0,
> > +		       intel_de_read(display, GEN9_CLKGATE_DIS_0) |
> > +		       PWM1_GATING_DIS | PWM2_GATING_DIS);
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.h =
b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
> > index 6bc84a9a4342..a7784db9d97a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
> > @@ -12,5 +12,6 @@ void intel_display_skl_init_clock_gating(struct intel=
_display *display);
> >  void intel_display_kbl_init_clock_gating(struct intel_display *display=
);
> >  void intel_display_cfl_init_clock_gating(struct intel_display *display=
);
> >  void intel_display_bxt_init_clock_gating(struct intel_display *display=
);
> > +void intel_display_glk_init_clock_gating(struct intel_display *display=
);
> > =20
> >  #endif /* __INTEL_DISPLAY_CLOCK_GATING_H__ */
> > diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/dr=
m/i915/intel_clock_gating.c
> > index 4c1937d922b2..777314e0c75d 100644
> > --- a/drivers/gpu/drm/i915/intel_clock_gating.c
> > +++ b/drivers/gpu/drm/i915/intel_clock_gating.c
> > @@ -49,36 +49,8 @@ struct drm_i915_clock_gating_funcs {
> >  	void (*init_clock_gating)(struct drm_i915_private *i915);
> >  };
> > =20
> > -static void gen9_init_clock_gating(struct drm_i915_private *i915)
> > -{
> > -	if (HAS_LLC(i915)) {
>=20
> The commit message should explain why removing this is okay.

Good point.  This check was incidental because it just happened that
the only Gen9 platforms that need this workaround (namely SKL and KBL)
have LLC.  Now that the code is moved, the check is not needed and we
apply the workaround in the SKL/KBL-specific functions instead of doing
it in the Gen9 function protected by HAS_LLC().

--
Cheers,
Luca.
