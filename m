Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id c2OoMwzbjmkxFgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:04:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBD4133C82
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:04:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0A8F10E7A0;
	Fri, 13 Feb 2026 08:04:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1644 seconds by postgrey-1.36 at gabe;
 Fri, 13 Feb 2026 08:04:24 UTC
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3AF410E7A0;
 Fri, 13 Feb 2026 08:04:24 +0000 (UTC)
Received: from 37-33-41-57.bb.dnainternet.fi ([37.33.41.57]
 helo=[192.168.101.110])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vqo9y-00000002LNe-2spl; Fri, 13 Feb 2026 10:04:20 +0200
Message-ID: <2358502e438f28e734c65a55364a437b0291e956.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Date: Fri, 13 Feb 2026 10:04:17 +0200
In-Reply-To: <aY6w7FuoIi0TydHB@intel.com>
References: <20260212184737.352515-1-luciano.coelho@intel.com>
 <20260212184737.352515-12-luciano.coelho@intel.com>
 <aY6w7FuoIi0TydHB@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-8 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH v2 11/15] drm/i915/display: convert W/As in
 intel_modeset_setup.c to new framework
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	R_DKIM_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[luca@coelho.fi,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_NA(0.00)[coelho.fi];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,coelho.fi:mid]
X-Rspamd-Queue-Id: CFBD4133C82
X-Rspamd-Action: no action

On Fri, 2026-02-13 at 07:04 +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
> On Thu, Feb 12, 2026 at 08:46:09PM +0200, Luca Coelho wrote:
> > Convert the low-hanging fruits of workaround checks to the workaround
> > framework.  Instead of having display structure checks for the
> > workarounds all over, concentrate the checks in intel_wa.c.
> >=20
> > Acked-by: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_wa.c    | 2 ++
> >  drivers/gpu/drm/i915/display/intel_display_wa.h    | 1 +
> >  drivers/gpu/drm/i915/display/intel_modeset_setup.c | 3 ++-
> >  3 files changed, 5 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/=
gpu/drm/i915/display/intel_display_wa.c
> > index 3aa79e607bf8..72f645686efd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > @@ -79,6 +79,8 @@ bool __intel_display_wa(struct intel_display *display=
, enum intel_display_wa wa,
> >  	case INTEL_DISPLAY_WA_13012396614:
> >  		return DISPLAY_VERx100(display) =3D=3D 3000 ||
> >  			DISPLAY_VERx100(display) =3D=3D 3500;
> > +	case INTEL_DISPLAY_WA_14010480278:
> > +		return (IS_DISPLAY_VER(display, 10, 12));
>=20
> This is now quite confusing. That w/a number only means something for
> tgl+. I think if we want to start converting this kind of places someone
> needs to come up with an actual plan how to deal with older platforms.

If there are more numbers from other platforms, I think they should
just have their own cases, like in some later patches in this series,
eg.:

	case INTEL_DISPLAY_WA_<tgl+_wa_number>:
	case INTEL_DISPLAY_WA_<lnl_wa_number>:

...but this was a problem before my series already, and it's not
something I'm trying to address here.


> Also I'm pretty sure that even among the new platforms some w/a's are
> listed with different numbers for different platforms. Has anyone
> thought what we should do about that?

Yeah, and there's also the case where more than workaround has the same
check, we'll end up with many fallthrough cases.

--
Cheers,
Luca.


> >  	case INTEL_DISPLAY_WA_14010547955:
> >  		return display->platform.dg2;
> >  	case INTEL_DISPLAY_WA_14010685332:
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/=
gpu/drm/i915/display/intel_display_wa.h
> > index 57345d0abe1c..d8359f88de29 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > @@ -30,6 +30,7 @@ enum intel_display_wa {
> >  	INTEL_DISPLAY_WA_1409120013,
> >  	INTEL_DISPLAY_WA_1409767108,
> >  	INTEL_DISPLAY_WA_13012396614,
> > +	INTEL_DISPLAY_WA_14010480278,
> >  	INTEL_DISPLAY_WA_14010547955,
> >  	INTEL_DISPLAY_WA_14010685332,
> >  	INTEL_DISPLAY_WA_14011294188,
> > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drive=
rs/gpu/drm/i915/display/intel_modeset_setup.c
> > index 9b0becee221c..7ee1494a67af 100644
> > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > @@ -25,6 +25,7 @@
> >  #include "intel_display_power.h"
> >  #include "intel_display_regs.h"
> >  #include "intel_display_types.h"
> > +#include "intel_display_wa.h"
> >  #include "intel_dmc.h"
> >  #include "intel_fifo_underrun.h"
> >  #include "intel_modeset_setup.h"
> > @@ -913,7 +914,7 @@ static void intel_early_display_was(struct intel_di=
splay *display)
> >  	 * Display WA #1185 WaDisableDARBFClkGating:glk,icl,ehl,tgl
> >  	 * Also known as Wa_14010480278.
> >  	 */
> > -	if (IS_DISPLAY_VER(display, 10, 12))
> > +	if (intel_display_wa(display, 14010480278))
>=20
> >  		intel_de_rmw(display, GEN9_CLKGATE_DIS_0, 0, DARBF_GATING_DIS);
> > =20
> >  	/*
> > --=20
> > 2.51.0
