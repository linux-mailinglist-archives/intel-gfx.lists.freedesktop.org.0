Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMrdG6CqDmr6AwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 08:48:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF6459F9DB
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 08:47:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB16110E0E0;
	Thu, 21 May 2026 06:47:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B628110E0E0;
 Thu, 21 May 2026 06:47:56 +0000 (UTC)
Received: from 91-152-155-144.elisa-laajakaista.fi ([91.152.155.144]
 helo=[192.168.100.133])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1wPxCA-00000005NAR-0npe; Thu, 21 May 2026 09:47:52 +0300
Message-ID: <2bb5651ead8635bde0af9a1a1883b9cd0051689a.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@linux.intel.com>, Luca Coelho
 <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Date: Thu, 21 May 2026 09:47:49 +0300
In-Reply-To: <44b3a002fbba80bdafd440fcbb8c912bb1243765@intel.com>
References: <20260519112243.1454375-1-luciano.coelho@intel.com>
 <20260519112243.1454375-2-luciano.coelho@intel.com>
 <44b3a002fbba80bdafd440fcbb8c912bb1243765@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH 1/4] drm/i915/display: harden masks in
 HSW_AUD_PIN_ELD_CP_VLD macros
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
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[coelho.fi];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[luca@coelho.fi,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,coelho.fi:mid]
X-Rspamd-Queue-Id: AEF6459F9DB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 2026-05-19 at 14:49 +0300, Jani Nikula wrote:
> On Tue, 19 May 2026, Luca Coelho <luciano.coelho@intel.com> wrote:
> > HSW_AUD_PIN_ELD_CP_VLD has a 4-bit field per transcoder for
> > TRANSCODER_A..TRANSCODER_D only (bits 0..15).  Any other transcoder
> > value (TRANSCODER_EDP, TRANSCODER_DSI_*, INVALID_TRANSCODER) is not
> > valid here.
> >=20
> > This is not a problem with the current implementation, because trans
> > is always valid when these macros are called, but it's more robust to
> > mask the index to the low 2 bits so the shift is always well-defined.
> >=20
> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_audio_regs.h | 16 ++++++++++++----
> >  1 file changed, 12 insertions(+), 4 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h b/drivers/=
gpu/drm/i915/display/intel_audio_regs.h
> > index 4c31844d21df..25df7af4f67f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> > @@ -109,12 +109,20 @@
> >  #define _HSW_AUD_EDID_DATA_B		0x65150
> >  #define HSW_AUD_EDID_DATA(trans)	_MMIO_TRANS(trans, _HSW_AUD_EDID_DATA=
_A, _HSW_AUD_EDID_DATA_B)
> > =20
> > +/*
> > + * HSW_AUD_PIN_ELD_CP_VLD has a 4-bit field per transcoder for
> > + * TRANSCODER_A..TRANSCODER_D only (bits 0..15).  Any other transcoder
> > + * value (TRANSCODER_EDP, TRANSCODER_DSI_*, INVALID_TRANSCODER) is not
> > + * valid here.  Mask the index to the low 2 bits so the shift is
> > + * always well-defined.
> > + */
> >  #define HSW_AUD_PIPE_CONV_CFG		_MMIO(0x6507c)
> >  #define HSW_AUD_PIN_ELD_CP_VLD		_MMIO(0x650c0)
> > -#define   AUDIO_INACTIVE(trans)		((1 << 3) << ((trans) * 4))
> > -#define   AUDIO_OUTPUT_ENABLE(trans)	((1 << 2) << ((trans) * 4))
> > -#define   AUDIO_CP_READY(trans)		((1 << 1) << ((trans) * 4))
> > -#define   AUDIO_ELD_VALID(trans)	((1 << 0) << ((trans) * 4))
> > +#define   __AUDIO_MASK_TRANS(trans)	(((unsigned int)(trans) & 0x3) * 4=
)
> > +#define   AUDIO_INACTIVE(trans)		((u32)BIT(3) << __AUDIO_MASK_TRANS(tr=
ans))
> > +#define   AUDIO_OUTPUT_ENABLE(trans)	((u32)BIT(2) << __AUDIO_MASK_TRAN=
S(trans))
> > +#define   AUDIO_CP_READY(trans)		((u32)BIT(1) << __AUDIO_MASK_TRANS(tr=
ans))
> > +#define   AUDIO_ELD_VALID(trans)	((u32)BIT(0) << __AUDIO_MASK_TRANS(tr=
ans))
>=20
> Please use REG_BIT() instead of (u32)BIT().

Yeah, looks much nicer, thanks.  I converted it to use REG_BIT().


> All of this would be cleaner with the REG_GENMASK() stuff too.

I don't see how REG_GENMASK() could be used here.  We're handling
single-bits only, with a shift to get it in the proper place, so it's
not really a mask.

--
Cheers,
Luca.
