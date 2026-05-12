Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uC2mFBn5AmokzQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 11:55:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B71F651E1CA
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 11:55:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2845110E56E;
	Tue, 12 May 2026 09:55:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="DxnuZ0dT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C32010E171;
 Tue, 12 May 2026 09:55:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id AB8EE40DE0;
 Tue, 12 May 2026 09:55:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B0C1C2BCB0;
 Tue, 12 May 2026 09:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1778579733;
 bh=sKtOdshfCoX9MSFc77fz6L3nrgnwT/LACWvUhL5OfVg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DxnuZ0dTMIPrtYkkFNyjpxIU2k1GNR56TB3NXSivcCStVQW683e2Xw7JJczyUi3ta
 0MSLaDxb/f5MTm9aKw6LGkBNmmnTOz4uFtrljJyJ5KzusZdrgeDAumATwqAwpSKP/C
 zk56xho1rCi3cE9YgLBMeZbEYyh48l1MDIHZg91ilibgHasAj1SNo/CG98mUN+NANp
 kYljsLqCtoetCiGLGlxcrGLPqWEZu8TR4crtz8nDBvdk7piw6acWzgNYk1Hr0Xjg37
 yYBXRSSWg6Sl/Yrt685291veeK7bzUZGNLPJVMvhsGfsvpqabZ9dMxpC4G0mujHmYS
 9Qw2o2ZGnFXhA==
Date: Tue, 12 May 2026 11:55:30 +0200
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
Subject: Re: [PATCH v3 10/20] drm/plane: Add new atomic_create_state callback
Message-ID: <20260512-versed-cougar-of-sunshine-dcf86c@houat>
References: <20260424-drm-mode-config-init-v3-0-8b68d9db0d8b@kernel.org>
 <20260424-drm-mode-config-init-v3-10-8b68d9db0d8b@kernel.org>
 <20260504165229.GM1344263@killaraus.ideasonboard.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="22373ydgvhi5g6fp"
Content-Disposition: inline
In-Reply-To: <20260504165229.GM1344263@killaraus.ideasonboard.com>
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
X-Rspamd-Queue-Id: B71F651E1CA
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action


--22373ydgvhi5g6fp
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 10/20] drm/plane: Add new atomic_create_state callback
MIME-Version: 1.0

Hi,

On Mon, May 04, 2026 at 07:52:29PM +0300, Laurent Pinchart wrote:
> On Fri, Apr 24, 2026 at 12:18:50PM +0200, Maxime Ripard wrote:
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
> > Continue the transition to the new pattern with planes.
> >=20
> > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > ---
> >  drivers/gpu/drm/drm_atomic_state_helper.c | 25 +++++++++++++++++++++++=
++
> >  drivers/gpu/drm/drm_mode_config.c         | 21 ++++++++++++++++++++-
> >  include/drm/drm_atomic_state_helper.h     |  2 ++
> >  include/drm/drm_plane.h                   | 16 ++++++++++++++++
> >  4 files changed, 63 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/dr=
m/drm_atomic_state_helper.c
> > index 285efbf29520..50fe4eec41a8 100644
> > --- a/drivers/gpu/drm/drm_atomic_state_helper.c
> > +++ b/drivers/gpu/drm/drm_atomic_state_helper.c
> > @@ -338,10 +338,35 @@ void drm_atomic_helper_plane_reset(struct drm_pla=
ne *plane)
> >  	if (plane->state)
> >  		__drm_atomic_helper_plane_reset(plane, plane->state);
> >  }
> >  EXPORT_SYMBOL(drm_atomic_helper_plane_reset);
> > =20
> > +/**
> > + * drm_atomic_helper_plane_create_state - default &drm_plane_funcs.ato=
mic_create_state hook for planes
>=20
> drm_atomic_helper_colorop_create_state() states "Allocates and
> initializes colorop atomic state", while here you document it as
> "default hook for planes". Consistency would be good.

I don't think it's inconsistent?

colorops don't have a create_state callback, so the only function to
create it is defined as "Allocates and initializes colorop atomic
state". For planes, the hook is documented as "Allocates a pristine,
initialized, state for the plane object and returns it.", and here we
have the default implementation for that hook, which is documented as
such.

It all seems consistent to me?

Maxime

--22373ydgvhi5g6fp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCagL5DgAKCRAnX84Zoj2+
dkRdAYD0DMSjBZG7KznVzXsEfKNp2FbSJf1ulgAd4J6iTdzQ1dB+YlrxnLFoX8sG
PCH3lKkBgN5APIC+q4CMgKtqaEulFN6SaM58HNWcqL5byNjMi/zSBGs3FJRVyiME
cyx+95kJPA==
=j3nb
-----END PGP SIGNATURE-----

--22373ydgvhi5g6fp--
