Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ANTVIx7+AmqrzQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 12:17:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4341D51E64A
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 12:17:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECC5610EA1A;
	Tue, 12 May 2026 10:16:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="iyynMxhK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D56510E25C;
 Tue, 12 May 2026 10:16:57 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id AC4EA43CDA;
 Tue, 12 May 2026 10:16:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BB70C2BCB0;
 Tue, 12 May 2026 10:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1778581016;
 bh=w6hATkZRGSRSJowaFjN45EX2kl/oM+c7ccdVW67Eh3s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iyynMxhKI/8Jg0jAf3zt9NS9aZuPuBUsWGBl6pjep56D0BX7ArOWIvumJnsk4Hxuq
 mnnaRaFvBV5mkvEsDlbtbvUSCRvLWYdvCMf4sNeM7vNilIbeePN5AkWfwxvjAQev7g
 /0A4u2buvc8ZFh87pXWIBdFrJFLxqXQwPpvDqOdq1iuaVD2hhWsouG5CMcWCdCXTZv
 ifyJNn5+17bVPbWwPFuyMigi7nZbU+5QYcAqZqfLOaUQjlplaxZPW1O+AKlvC2/zNq
 0oO5sua9onBYaQGmy1JTt0SnaAYmCKIZGFkBl54L+OfZD1RfSStH8Oms9Ts4XPZzEe
 eFQvD4RfZWaYw==
Date: Tue, 12 May 2026 12:16:53 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
 Shuah Khan <skhan@linuxfoundation.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Jyri Sarha <jyri.sarha@iki.fi>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, Simon Ser <contact@emersion.fr>, 
 Harry Wentland <harry.wentland@amd.com>, Melissa Wen <mwen@igalia.com>, 
 Sebastian Wick <sebastian.wick@redhat.com>, Alex Hung <alex.hung@amd.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Chen-Yu Tsai <wens@kernel.org>, Samuel Holland <samuel@sholland.org>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Daniel Stone <daniels@collabora.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v3 12/20] drm/crtc: Add new atomic_create_state callback
Message-ID: <20260512-unbiased-apricot-jaguar-a63eba@houat>
References: <20260424-drm-mode-config-init-v3-0-8b68d9db0d8b@kernel.org>
 <20260424-drm-mode-config-init-v3-12-8b68d9db0d8b@kernel.org>
 <20260504172858.GO1344263@killaraus.ideasonboard.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="xucbq2efeno5xzls"
Content-Disposition: inline
In-Reply-To: <20260504172858.GO1344263@killaraus.ideasonboard.com>
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
X-Rspamd-Queue-Id: 4341D51E64A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.41 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[linux.intel.com,suse.de,gmail.com,ffwll.ch,lwn.net,linuxfoundation.org,oss.qualcomm.com,iki.fi,ideasonboard.com,intel.com,linaro.org,kernel.org,kwiboo.se,emersion.fr,amd.com,igalia.com,redhat.com,ursulin.net,sholland.org,raspberrypi.com,lists.freedesktop.org,vger.kernel.org,collabora.com,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,qualcomm.com:email]
X-Rspamd-Action: no action


--xucbq2efeno5xzls
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 12/20] drm/crtc: Add new atomic_create_state callback
MIME-Version: 1.0

Hi,

On Mon, May 04, 2026 at 08:28:58PM +0300, Laurent Pinchart wrote:
> On Fri, Apr 24, 2026 at 12:18:52PM +0200, Maxime Ripard wrote:
> > Commit 47b5ac7daa46 ("drm/atomic: Add new atomic_create_state callback
> > to drm_private_obj") introduced a new pattern for allocating drm object
> > states.
> >=20
> > Instead of relying on the reset() callback, it created a new
> > atomic_create_state hook. This is helpful because reset is a bit
> > overloaded: it's used to create the initial software state, reset it,
> > but also reset the hardware.
> >=20
> > It can also be used either at probe time, to create the initial state
> > and possibly reset the hardware to an expected default, but also during
> > suspend/resume.
> >=20
> > Both these cases come with different expectations too: during the
> > initialization, we want to initialize all states, but during
> > suspend/resume, drm_private_states for example are expected to be kept
> > around.
> >=20
> > reset() also isn't fallible, which makes it harder to handle
> > initialization errors properly. This is only really relevant for some
> > drivers though, since all the helpers for reset only create a new
> > state, and don't touch the hardware at all.
> >=20
> > It was thus decided to create a new hook that would allocate and
> > initialize a pristine state without any side effect:
> > atomic_create_state to untangle a bit some of it, and to separate the
> > initialization with the actual reset one might need during a
> > suspend/resume.
> >=20
> > Continue the transition to the new pattern with CRTCs.
> >=20
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > ---
> >  drivers/gpu/drm/drm_atomic_state_helper.c | 47 +++++++++++++++++++++++=
++++++++
> >  drivers/gpu/drm/drm_mode_config.c         | 21 +++++++++++++-
> >  include/drm/drm_atomic_state_helper.h     |  4 +++
> >  include/drm/drm_crtc.h                    | 16 +++++++++++
> >  4 files changed, 87 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/dr=
m/drm_atomic_state_helper.c
> > index 9cd8550cabb7..b7da134c8c50 100644
> > --- a/drivers/gpu/drm/drm_atomic_state_helper.c
> > +++ b/drivers/gpu/drm/drm_atomic_state_helper.c
> > @@ -103,10 +103,32 @@ __drm_atomic_helper_crtc_reset(struct drm_crtc *c=
rtc,
> > =20
> >  	crtc->state =3D crtc_state;
> >  }
> >  EXPORT_SYMBOL(__drm_atomic_helper_crtc_reset);
> > =20
> > +/**
> > + * __drm_atomic_helper_crtc_create_state - initializes crtc state
>=20
> "Initialize a CRTC state"

Good catch, thanks.

> The name of the function is misleading ("*_create_*" while you state it
> performs initialization).
>
> > + * @crtc: crtc object
> > + * @state: new state to initialize
> > + *
> > + * Initializes the newly allocated @state, usually required when
> > + * initializing the drivers.
> > + *
> > + * @state is assumed to be zeroed.
> > + *
> > + * This is useful for drivers that subclass @drm_crtc_state.
> > + */
> > +void __drm_atomic_helper_crtc_create_state(struct drm_crtc *crtc,
> > +					   struct drm_crtc_state *state)
> > +{
> > +	__drm_atomic_helper_crtc_state_init(state, crtc);
> > +
> > +	if (drm_dev_has_vblank(crtc->dev))
> > +		drm_crtc_vblank_reset(crtc);
>=20
> This is confusing to me (at least before reading the rest of the
> series), and itn't mentioned in the function documentation or in the
> commit message.
>
> Furthermore, __drm_atomic_helper_crtc_create_state() is later used in
> tidss_crtc_create_state(), which is the
> drm_crtc_funcs.atomic_create_state() implementation of the tidss driver.
> The atomic_create_state documentation states that "This callback must
> have no side effect", and drm_crtc_vblank_reset() has side effects.

That's a good point. I've dropped that function entirely and moved the
drm_crtc_vblank_reset() call in drm_mode_config_crtc_create_state().

Maxime

--xucbq2efeno5xzls
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCagL+FQAKCRAnX84Zoj2+
dnNzAX0fzjsGevsyIM+1eS7aSdqPXqaWO2e4vKxwlm1t0+VWLC1LChDXcVfr74JX
gfLRKAABgLDj6dDvAIYO++YmRFrG/pDTCiRABTfTFmqA3MNWXLLdVzFuX/WVI0ll
s+ZfkvI9qg==
=NbJq
-----END PGP SIGNATURE-----

--xucbq2efeno5xzls--
