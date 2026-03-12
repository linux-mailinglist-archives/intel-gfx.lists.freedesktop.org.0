Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KIKSJ9t9smkcNAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:48:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BEF26F23F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:48:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 035CF10EA2C;
	Thu, 12 Mar 2026 08:48:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1A0610EA28;
 Thu, 12 Mar 2026 08:48:19 +0000 (UTC)
Received: from 37-33-19-16.bb.dnainternet.fi ([37.33.19.16]
 helo=[192.168.101.111])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1w0biH-00000003G7Z-21YF; Thu, 12 Mar 2026 10:48:15 +0200
Message-ID: <96514ac2339ed51716c709e8f735aa7ffa3c6d72.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@linux.intel.com>, Luca Coelho
 <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Date: Thu, 12 Mar 2026 10:48:12 +0200
In-Reply-To: <a7361eb05a3162ccd24d87b0ad77f8702ae0bfb1@intel.com>
References: <20260312081647.1083777-1-luciano.coelho@intel.com>
 <a7361eb05a3162ccd24d87b0ad77f8702ae0bfb1@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-8 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH] drm/i915/display: fail compilation on
 intel_display_wa() with invalid enums
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[coelho.fi];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MSBL_EBL_FAIL(0.00)[jani.nikula@linux.intel.com:query timed out];
	FROM_NEQ_ENVFROM(0.00)[luca@coelho.fi,intel-gfx-bounces@lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.958];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,coelho.fi:mid]
X-Rspamd-Queue-Id: 77BEF26F23F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 2026-03-12 at 10:33 +0200, Jani Nikula wrote:
> On Thu, 12 Mar 2026, Luca Coelho <luciano.coelho@intel.com> wrote:
> > In a previous commit, the intel_display_wa() was changed so it
> > wouldn't receive an integer as the workaround number, but the enum
> > value itself.  This caused compilation not to fail anymore when the
> > enum passed didn't exist.
> >=20
> > Bring this back by using BUILD_BUG_ON() to check that the enum passed
> > sits within the range of defined enums.
> >=20
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_wa.h | 9 ++++++---
> >  1 file changed, 6 insertions(+), 3 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/=
gpu/drm/i915/display/intel_display_wa.h
> > index 15fec843f15e..4239e4295ec7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > @@ -60,11 +60,14 @@ enum intel_display_wa {
> >  	INTEL_DISPLAY_WA_22012358565,
> >  	INTEL_DISPLAY_WA_22014263786,
> >  	INTEL_DISPLAY_WA_22021048059,
> > +
> > +	INTEL_DISPLAY_WA_COUNT
> >  };
> > =20
> >  bool __intel_display_wa(struct intel_display *display, enum intel_disp=
lay_wa wa, const char *name);
> > =20
> > -#define intel_display_wa(__display, __wa) \
> > -	__intel_display_wa((__display), __wa, __stringify(__wa))
> > -
> > +#define intel_display_wa(__display, __wa) ({				  \
> > +		BUILD_BUG_ON(__wa >=3D INTEL_DISPLAY_WA_COUNT);		  \
> > +		__intel_display_wa((__display), __wa, __stringify(__wa)); \
> > +	})
> >  #endif
>=20
> I'm not sure if this is worth it to be honest. We'll get the runtime
> warn anyway.

Yeah, I'm not sure either.  But you commented, I implemented. :)

I made some test with bloat-o-meter and, removing only the const char
*name argument as you suggested, doesn't help much, we only gain 2
bytes somehow.

But, with this patch, I can remove the warn at runtime (because it
wouldn't even compile then) and we can gain 49 bytes total. LOL

Anyway, nice exercise.  It's your call, if you want I can send the
patch to remove the const char and the warn at runtime to go on top of
this one.

--
Cheers,
Luca.
