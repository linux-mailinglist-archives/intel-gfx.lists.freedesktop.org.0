Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QBu3LlQKzmkwkgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 08:19:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6C8384635
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 08:18:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B1C110EED2;
	Thu,  2 Apr 2026 06:18:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9161B10EED2;
 Thu,  2 Apr 2026 06:18:57 +0000 (UTC)
Received: from 91-156-54-51.elisa-laajakaista.fi ([91.156.54.51]
 helo=[192.168.100.133])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1w8BOF-00000003uAY-29mX; Thu, 02 Apr 2026 09:18:53 +0300
Message-ID: <22eb8689dbc03f80c23f3a31ed0f36e2c752f79b.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, Dibin Moolakadan
 Subrahmanian	 <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org"	 <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org"	 <intel-xe@lists.freedesktop.org>
Cc: "Shankar, Uma" <uma.shankar@intel.com>, "Coelho, Luciano"	
 <luciano.coelho@intel.com>, "Deak, Imre" <imre.deak@intel.com>, Ville
 =?ISO-8859-1?Q?Syrj=E4l=E4?=	 <ville.syrjala@linux.intel.com>, "Syrjala, 
 Ville" <ville.syrjala@intel.com>
Date: Thu, 02 Apr 2026 09:18:48 +0300
In-Reply-To: <DM3PPF208195D8D4BC28ED35567CAF02A88E351A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260401073159.3227703-1-dibin.moolakadan.subrahmanian@intel.com>
 <DM3PPF208195D8D4BC28ED35567CAF02A88E351A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,URIBL_BLOCKED,URIBL_DBL_BLOCKED_OPENDNS autolearn=ham
 autolearn_force=no version=4.0.2
Subject: Re: [PATCH] drm/i915/dmc: Reduce wakelock hold time
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[coelho.fi];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.191];
	FROM_NEQ_ENVFROM(0.00)[luca@coelho.fi,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 0D6C8384635
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 2026-04-02 at 04:27 +0000, Kandpal, Suraj wrote:
> > Subject: [PATCH] drm/i915/dmc: Reduce wakelock hold time
> >=20
> > __intel_dmc_wl_release() schedules delayed work which releases the DMC
> > wakelock after a fixed timeout of 50 ms. Until the delayed work runs, t=
he
> > wakelock remains held and prevents entry into deeper DC states.
> >=20
> > The delayed work mechanism addresses two separate concerns:
> >=20
> > 1. Avoid blocking the MMIO caller context: The actual wakelock release =
clears
> > DMC_WAKELOCK_CTL_REQ and then waits for DMC_WAKELOCK_CTL_ACK to
> > deassert via __intel_de_wait_for_register_atomic_nowl(), with a timeout=
 of
> > DMC_WAKELOCK_CTL_TIMEOUT_US (up to 5 ms). Deferring this sequence to a
> > workqueue avoids potentially long polling from the
> > intel_dmc_wl_put() / intel_de_*() call paths.
> >=20
> > 2. Provide a debounce/guard window: DMC_WAKELOCK_HOLD_TIME adds a
> > delay before scheduling the release work, effectively keeping the wakel=
ock held
> > for a period after the last MMIO access. This likely helps avoid unnece=
ssary DC
> > state entry/exit attempts between closely spaced accesses.
> >=20
> > Reducing DMC_WAKELOCK_HOLD_TIME from 50 ms to 5 ms only shortens the
>=20
> Nit: We want to keep the git commit message as imperative, also this is w=
hat you are doing in the patch so maybe
> Some thing like
>=20
> "Reduce DMC_WAKELOCK_HOLD_TIME to 5ms. This shortens the ...."

Right, and I think we don't need the whole explanation about the
control timeout, because it's a different thing and doesn't concern
this patch at all.  Only the second part is relevant.

--
Cheers,
Luca.



> Rest looks good to me.
>=20
> Regards,
> Suraj Kandpal
>=20
> > debounce/guard window in (2), while the deferred release mechanism in
> > (1)remains unchanged.This should allow the system to enter deeper DC st=
ates
> > sooner once MMIO activity settles down.
> >=20
> > Signed-off-by: Dibin Moolakadan Subrahmanian
> > <dibin.moolakadan.subrahmanian@intel.com>
> > Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
> > ---
> >=20
> > Notes:
> > =C2=A0=C2=A0=C2=A0=C2=A0RFC: https://patchwork.freedesktop.org/patch/71=
1634/
> >=20
> > =C2=A0drivers/gpu/drm/i915/display/intel_dmc_wl.c | 2 +-
> > =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > index 73a3101514f3..ddf1a1f1ebc3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > @@ -46,7 +46,7 @@
> > =C2=A0=C2=A0* atomic variant of waiting MMIO.
> > =C2=A0=C2=A0*/
> > =C2=A0#define DMC_WAKELOCK_CTL_TIMEOUT_US 5000 -#define
> > DMC_WAKELOCK_HOLD_TIME 50
> > +#define DMC_WAKELOCK_HOLD_TIME 5
> >=20
> > =C2=A0/*
> > =C2=A0=C2=A0* Possible non-negative values for the enable_dmc_wl param.
> > --
> > 2.43.0
