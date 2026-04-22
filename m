Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QOPGHxZw6GmvKQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 08:52:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E42564429C1
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 08:52:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E0B010F1D6;
	Wed, 22 Apr 2026 06:52:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="uBI2YyHQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73FDF10F1D2;
 Wed, 22 Apr 2026 06:52:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 5F70C60018;
 Wed, 22 Apr 2026 06:52:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C9AEC19425;
 Wed, 22 Apr 2026 06:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1776840721;
 bh=F+k2j61BaRiqQdtTNTgqmqkRXzyWVzQqwf1yxx9Jl5Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uBI2YyHQ14xILWfOLl0M781/RFBZxHKsv77ZC0eXBHFwUqbPFiRATOVszWZUCkuoy
 P8AsHN90clI5gEzB7QzrZq4mJrZ4zgAO8JLsI6oI8YqouSwk0t0Dgb3PIz3G2erBO7
 gfHj0aU9d3+y+LdzG60/FGB3OnyhG4AuGHGGxVSdKByYp1bAJjSWJ/7z48Csc1C9Lb
 +4B0hE6FXg5eWOEiUZBsCNh0TQK6AvpA4lO8XvJFvdAh900rmQ0FOV9vkoYibxG9qo
 gudHD4vXrsQnwh9duF4E+0jCjD8KIYut7hNPttSsTAwGrdFr1ApLK4/ho+U5OnHKW/
 5g5uCvXkkYfvA==
Date: Wed, 22 Apr 2026 08:51:58 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Jyri Sarha <jyri.sarha@iki.fi>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, 
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
Subject: Re: [PATCH v2 02/20] drm/atomic: Drop drm_private_state.obj
 assignment from create_state
Message-ID: <20260422-poetic-malamute-of-greatness-ceee0f@houat>
References: <20260320-drm-mode-config-init-v2-0-c63f1134e76c@kernel.org>
 <20260320-drm-mode-config-init-v2-2-c63f1134e76c@kernel.org>
 <bbb554a6-2034-4f6e-9b48-fa9e10b4a95a@suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="bcajdpsxzzkhkmjz"
Content-Disposition: inline
In-Reply-To: <bbb554a6-2034-4f6e-9b48-fa9e10b4a95a@suse.de>
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
X-Spamd-Result: default: False [-1.41 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[linux.intel.com,gmail.com,ffwll.ch,lwn.net,linuxfoundation.org,oss.qualcomm.com,iki.fi,ideasonboard.com,intel.com,linaro.org,kernel.org,kwiboo.se,emersion.fr,amd.com,igalia.com,redhat.com,ursulin.net,sholland.org,raspberrypi.com,lists.freedesktop.org,vger.kernel.org,collabora.com,lists.infradead.org,lists.linux.dev];
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
X-Rspamd-Queue-Id: E42564429C1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--bcajdpsxzzkhkmjz
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 02/20] drm/atomic: Drop drm_private_state.obj
 assignment from create_state
MIME-Version: 1.0

On Tue, Apr 21, 2026 at 03:03:50PM +0200, Thomas Zimmermann wrote:
> Hi
>=20
> Am 20.03.26 um 17:27 schrieb Maxime Ripard:
> > The initial intent of the atomic_create_state helper was to simply
> > allocate a proper drm_private_state and returning it, without any side
> > effect.
> >=20
> > However, the __drm_atomic_helper_private_obj_create_state() introduces a
> > side effect by setting the drm_private_obj.state to the newly allocated
> > state.
> >=20
> > This assignment defeats the purpose, but is also redundant since
> > the only caller, drm_atomic_private_obj_init(), will also set this
> > pointer to the newly allocated state.
>=20
> Is this paragraph no longer up to date? Grepping for
> __drm_atomic_helper_private_obj_create_state returns plenty of callers.

No, it's still up to date but super confusing. I didn't mean that there
wase one single caller of __drm_atomic_helper_private_obj_create_state()
that would set obj->state, but rather that the
drm_private_state_funcs.atomic_create_state hook is called only by
drm_atomic_private_obj_init() and it will set obj->state.

So, you're right, there's plenty of drivers calling
__drm_atomic_helper_private_obj_create_state() but we always end up
there through drm_atomic_private_obj_init().

Maxime

--bcajdpsxzzkhkmjz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaehwDQAKCRAnX84Zoj2+
dpyKAXkBF+Uqrnq4REnKuA0OlvLZRGSTJJ2HUa7jCMcyxQLt/PBQx4V/BABYGfiY
yGO45+UBgIaXbaB8TXvhywyna7iuhl4sopx2bu7lqy0Hut5/L8CNhH/7RgZBQYhD
2HA5L3Ii3g==
=qp7L
-----END PGP SIGNATURE-----

--bcajdpsxzzkhkmjz--
