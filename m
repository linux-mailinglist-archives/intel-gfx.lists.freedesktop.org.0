Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKWICHot62mBJgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 10:44:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CCF45BA8A
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 10:44:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 108F510F3CC;
	Fri, 24 Apr 2026 08:44:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="CW7ZL+CR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E41AB10F3CC;
 Fri, 24 Apr 2026 08:44:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 80AC143E0B;
 Fri, 24 Apr 2026 08:44:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB358C19425;
 Fri, 24 Apr 2026 08:44:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1777020278;
 bh=ZPtRTAcO5vKULVkGrPOpdr9dYJKbJwHKAW4LzVRqvoI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CW7ZL+CRxx2Sijgh6xjUCCZml3UTTpMsXH6cO1EZ6wibNcZoHu595LxCD4AB8p2gn
 jSaoBI3ElXU1BYxmuOc3NDEcABEdeWKt6wgHB6S1IsWuiFyVWmWv6h/971fYooCBzo
 RXo6526CET9X621wMlDYeWZctMcReAJzCTJhKeUpGjw8LbqkjVRhIMh6j6vBuXZgaN
 vJhIZiRh3AQausKSMcfwwnRicX+K/+23ib3tV7aeM7/IdPKDxwRxc5oXLTYFRczQqC
 tBByluQBB80/irXS/ql/+Ua1O0zUeEjDHWti0vhpQ85qMnzbxJfKvOh6qIr9+EWwRy
 IX3mNtvMouAVQ==
Date: Fri, 24 Apr 2026 10:44:35 +0200
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
Subject: Re: [PATCH v2 15/20] drm/drv: Call drm_mode_config_create_state() by
 default
Message-ID: <20260424-nimble-asparagus-tarsier-15f8bb@houat>
References: <20260320-drm-mode-config-init-v2-0-c63f1134e76c@kernel.org>
 <20260320-drm-mode-config-init-v2-15-c63f1134e76c@kernel.org>
 <79cc30d5-80b5-4d87-a3ad-36d6fad98853@suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="3cb63aedvnuis3py"
Content-Disposition: inline
In-Reply-To: <79cc30d5-80b5-4d87-a3ad-36d6fad98853@suse.de>
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
X-Rspamd-Queue-Id: 82CCF45BA8A
X-Rspamd-Action: no action
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


--3cb63aedvnuis3py
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 15/20] drm/drv: Call drm_mode_config_create_state() by
 default
MIME-Version: 1.0

Hi,

On Tue, Apr 21, 2026 at 03:38:16PM +0200, Thomas Zimmermann wrote:
> Am 20.03.26 um 17:27 schrieb Maxime Ripard:
> > Almost all drivers, and our documented skeleton, call
> > drm_mode_config_reset() prior to calling drm_dev_register() to
> > initialize its DRM object states.
> >=20
> > Now that we have drm_mode_config_create_state() to create that initial
> > state if it doesn't exist, we can call it directly in
> > drm_dev_register(). That way, we know that the initial atomic state will
> > always be allocated without any boilerplate.
> >=20
> > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > ---
> >   drivers/gpu/drm/drm_drv.c | 4 ++++
> >   1 file changed, 4 insertions(+)
> >=20
> > diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
> > index 2915118436ce8a6640cfb0c59936031990727ed1..820106d56ab399a39cac56d=
98662b5ddbcae8ded 100644
> > --- a/drivers/gpu/drm/drm_drv.c
> > +++ b/drivers/gpu/drm/drm_drv.c
> > @@ -1097,10 +1097,14 @@ int drm_dev_register(struct drm_device *dev, un=
signed long flags)
> >   	if (drm_core_check_feature(dev, DRIVER_MODESET)) {
> >   		ret =3D drm_modeset_register_all(dev);
> >   		if (ret)
> >   			goto err_unload;
> > +
> > +		ret =3D drm_mode_config_create_state(dev);
> > +		if (ret)
> > +			goto err_unload;
>=20
> Way too late.

Yeah... I think that was Ville's main objection too.

> Lets rather go through drivers and call this where they currently call
> drm_mode_config_reset() for initialization.

I was really hoping to remove the boilerplate from drivers, but I don't
really see a good place for it then. drm_mode_config_init() could be
another candidate, but it looks weird to put it there too.

I'll drop that then.

> This can be a single-patch mass conversion IMHO.

I'm not really sure? For it to work we'd need to convert these drivers
objects from reset to atomic_create_state too. I absolutely want to do
it next, but I don't think it will be as trivial as a sed call, and it
would probably be best done by driver to allow reverts if we screw up.

Maxime

--3cb63aedvnuis3py
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaestcwAKCRAnX84Zoj2+
dqD3AX91s5aTyrSIs+zg1NTVZ/3A3vLYBnSfFHi5Qil7rXN1H/JxIEEE9V0Ta7xL
sVv2OtMBfAktM0SQa0/hMpYggLwZw3S6EpI61etzjCn+mWT08kRxfRP0K6KBacXD
xc3d+CTDBg==
=tyOY
-----END PGP SIGNATURE-----

--3cb63aedvnuis3py--
