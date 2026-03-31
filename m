Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eL4RIUy3y2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:00:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A8E369369
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:00:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AD2610E947;
	Tue, 31 Mar 2026 12:00:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A4E810E2C7;
 Tue, 31 Mar 2026 12:00:09 +0000 (UTC)
Received: from 87-93-178-238.bb.dnainternet.fi ([87.93.178.238]
 helo=[192.168.101.111])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1w7XlE-00000003q5e-3zis; Tue, 31 Mar 2026 15:00:06 +0300
Message-ID: <fb29178ad37264d8dc7b38b8185995cc1bc37d29.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@linux.intel.com>, Luca Coelho
 <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Date: Tue, 31 Mar 2026 14:59:55 +0300
In-Reply-To: <f747c63ee19db048d2fe746170e9c151b0ba1056@intel.com>
References: <20260324143420.310800-1-luciano.coelho@intel.com>
 <20260324143420.310800-2-luciano.coelho@intel.com>
 <f747c63ee19db048d2fe746170e9c151b0ba1056@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH 1/8] drm/i915: move SKL clock gating init to display
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,coelho.fi:mid];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.939];
	FROM_NEQ_ENVFROM(0.00)[luca@coelho.fi,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[coelho.fi];
	RCPT_COUNT_THREE(0.00)[4]
X-Rspamd-Queue-Id: 96A8E369369
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 2026-03-24 at 19:40 +0200, Jani Nikula wrote:
> On Tue, 24 Mar 2026, Luca Coelho <luciano.coelho@intel.com> wrote:
> > Move the SKL-specific display clock gating programming into a new file
> > inside display.
> >=20
> > This removes dependency from intel_clock_gating.c to the display's
> > intel_pch.h file, so we can remove the include statement.
> >=20
> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > ---
> >  drivers/gpu/drm/i915/Makefile                 |  1 +
> >  .../i915/display/intel_display_clock_gating.c | 19 +++++++++++++++++++
> >  .../i915/display/intel_display_clock_gating.h | 17 +++++++++++++++++
> >  drivers/gpu/drm/i915/intel_clock_gating.c     |  8 ++------
> >  4 files changed, 39 insertions(+), 6 deletions(-)
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_display_clock_ga=
ting.c
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_display_clock_ga=
ting.h
> >=20
> > diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makef=
ile
> > index be976a90c5a6..89232873d4b7 100644
> > --- a/drivers/gpu/drm/i915/Makefile
> > +++ b/drivers/gpu/drm/i915/Makefile
> > @@ -254,6 +254,7 @@ i915-y +=3D \
> >  	display/intel_crtc_state_dump.o \
> >  	display/intel_cursor.o \
> >  	display/intel_dbuf_bw.o \
> > +	display/intel_display_clock_gating.o \
> >  	display/intel_display.o \
> >  	display/intel_display_conversion.o \
> >  	display/intel_display_driver.o \
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c =
b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
> > new file mode 100644
> > index 000000000000..4a94593335e0
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
> > @@ -0,0 +1,19 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright 2026 Intel Corporation
> > + */
> > +
> > +#include <drm/intel/intel_gmd_misc_regs.h>
> > +
> > +#include "intel_de.h"
> > +#include "intel_display_clock_gating.h"
> > +#include "intel_display_regs.h"
> > +
> > +void intel_display_skl_init_clock_gating(struct intel_display *display=
)
> > +{
> > +	/*
> > +	 * WaFbcTurnOffFbcWatermark:skl
> > +	 * Display WA #0562: skl
> > +	 */
> > +	intel_de_rmw(display, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.h =
b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
> > new file mode 100644
> > index 000000000000..c93997417dcb
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
> > @@ -0,0 +1,17 @@
> > +/* SPDX-License-Identifier: MIT */
> > +/*
> > + * Copyright 2026 Intel Corporation
> > + */
> > +
> > +#ifndef __INTEL_DISPLAY_CLOCK_GATING_H__
> > +#define __INTEL_DISPLAY_CLOCK_GATING_H__
> > +
> > +struct intel_display;
> > +
> > +#ifdef I915
> > +void intel_display_skl_init_clock_gating(struct intel_display *display=
);
> > +#else
> > +static inline void intel_display_skl_init_clock_gating(struct intel_di=
splay *display) {}
> > +#endif
>=20
> I don't think we should add any of this #ifdef I915 stuff, because the
> next step will be to remove all of them anyway.
>=20
> Currently they'll only get called for i915, but their existence in xe
> doesn't matter. And eventually they'll be part of the display module.

Okay, I was not sure I should add it, but I saw this in other parts of
the code, so I added.  It's now removed from the next version.  Thanks!

--
Cheers,
Luca.



> BR,
> Jani.
>=20
>=20
> > +
> > +#endif /* __INTEL_DISPLAY_CLOCK_GATING_H__ */
> > diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/dr=
m/i915/intel_clock_gating.c
> > index ee2489a2fbe7..454334fef5e7 100644
> > --- a/drivers/gpu/drm/i915/intel_clock_gating.c
> > +++ b/drivers/gpu/drm/i915/intel_clock_gating.c
> > @@ -31,9 +31,9 @@
> > =20
> >  #include "display/i9xx_plane_regs.h"
> >  #include "display/intel_display.h"
> > +#include "display/intel_display_clock_gating.h"
> >  #include "display/intel_display_core.h"
> >  #include "display/intel_display_regs.h"
> > -#include "display/intel_pch.h"
> >  #include "gt/intel_engine_regs.h"
> >  #include "gt/intel_gt.h"
> >  #include "gt/intel_gt_mcr.h"
> > @@ -349,11 +349,7 @@ static void skl_init_clock_gating(struct drm_i915_=
private *i915)
> >  	/* WAC6entrylatency:skl */
> >  	intel_uncore_rmw(&i915->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_O=
PEN);
> > =20
> > -	/*
> > -	 * WaFbcTurnOffFbcWatermark:skl
> > -	 * Display WA #0562: skl
> > -	 */
> > -	intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
> > +	intel_display_skl_init_clock_gating(i915->display);
> >  }
> > =20
> >  static void bdw_init_clock_gating(struct drm_i915_private *i915)
