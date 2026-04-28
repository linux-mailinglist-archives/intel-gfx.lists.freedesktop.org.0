Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YLSGANmA8Gn6UAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 11:41:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A81C7481B26
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 11:41:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 251B410EABD;
	Tue, 28 Apr 2026 09:41:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20A9910EABD;
 Tue, 28 Apr 2026 09:41:42 +0000 (UTC)
Received: from 37-219-152-235.nat.bb.dnainternet.fi ([37.219.152.235]
 helo=[192.168.101.111])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1wHewi-00000004f2U-14ID; Tue, 28 Apr 2026 12:41:38 +0300
Message-ID: <984eda0c91a24f209660676266288464a154ccaa.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@linux.intel.com>, Luca Coelho
 <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com
Date: Tue, 28 Apr 2026 12:41:34 +0300
In-Reply-To: <6cd074a68c151a55c5b689b8dcc4e8f10f089f0e@intel.com>
References: <20260420202252.3846880-1-luciano.coelho@intel.com>
 <6cd074a68c151a55c5b689b8dcc4e8f10f089f0e@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH v4 0/8] drm/i915: move more display dependencies from i915
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
X-Rspamd-Queue-Id: A81C7481B26
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	NEURAL_HAM(-0.00)[-0.996];
	FROM_NEQ_ENVFROM(0.00)[luca@coelho.fi,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[coelho.fi];
	RCPT_COUNT_FIVE(0.00)[5]

On Mon, 2026-04-27 at 13:06 +0300, Jani Nikula wrote:
> On Mon, 20 Apr 2026, Luca Coelho <luciano.coelho@intel.com> wrote:
> > This series continues my work of refactoring the clock gating
> > initialization, so that i915 doesn't do display-specific stuff.
> >=20
> > With this, all register dependencies should be gone.
> >=20
> > Changes in v4:
> > 	* Explain why HAS_LLC() is not needed anymore (Jani);
> > 	* Replace intel_display_core.h include with intel_pch.h (Jani);
> >=20
> > Please review.
>=20
> There's the one omission in patch 5 that I pointed out that needs to be
> fixed.
>=20
> Other than that, this is
>=20
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks for the review!


> I do have a nagging feeling that further refactoring will be needed, as
> this introduces a plethora of new display interfaces i915 core needs to
> call, and we should work to minimize that surface. However, this is good
> stuff for moving the display stuff out of i915 core, so let's roll with
> this.

Yeah, the main problem is that the calls to platform specific things
were all over, sometimes in the beginning, sometimes in the middle and
sometimes in the end of the flows.  Ville already mentioned that most
of these are probably not order-sensitive, so we could generalize the
implementation and reduce the number of interfaces.

I didn't want to change the order of these workarounds in this series.
Now that the functions are inside the display code, we can start make
some functional changes in a more isolated way.


> A minor nit for further reference. If you can, please try to avoid
> combining code movement and other changes. Reviewing pure code movement
> with 'git show --color-moved' is quick. Reviewing other mechanical
> changes with 'git show --color-words' is also quick. Unfortunately,
> having code movement and other inline changes in one breaks both
> approaches, and you have to fall back to more manual review.

Sorry for that.  I've been nagging about the same thing many times in
the past myself, so it's silly I've done it too.  I've been moving this
code forth and back quite a few times, and ended up mixing moves from
actual changes. :(

--
Cheers,
Luca.
