Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEf7L4Nu6GmNKQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 08:45:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7174F4428EA
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 08:45:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29F6F10EEE6;
	Wed, 22 Apr 2026 06:45:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="Ddhmfalq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6F2D10EECF;
 Wed, 22 Apr 2026 06:45:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 7DAA54353C;
 Wed, 22 Apr 2026 06:45:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8D6DC2BCB3;
 Wed, 22 Apr 2026 06:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1776840319;
 bh=pYMxzy5OOvpaaRU5o941SfAWX+eqdO8KE44KbLMbd7Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DdhmfalqLLHd9GLo6AHzXaUb59GTRlMbd3z7X7bpR4gWre4PnQaPyczOtXwMb+2mp
 BdG7O6F0DvzQAcj98JCSOKe85mfMwLGD1dfGxCGhN/F5X+3AGCymvlsnXfBoBmzkvz
 8WpGL1jYe7h93YrA2b573sIPOGpri5F+9AGTyTW6HxKMQSnQjVhBLb9NDNiqvvw6jp
 aU/3Gc5qf1x1Cq5jyBoYHFt4eIEAC1V4XJwZZViYGgwXHUIZx8Lb2PjP4UHvGMeV01
 3OHS4wdTfZe0l68e9D+HnIc698iXzzT6EDYtqrQWCovkuGH01IBk2fCy51S/JXgEvY
 02//vyIBdljvw==
Date: Wed, 22 Apr 2026 08:45:16 +0200
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
Message-ID: <20260422-vermilion-bumblebee-from-betelgeuse-cffbc1@houat>
References: <20260320-drm-mode-config-init-v2-0-c63f1134e76c@kernel.org>
 <20260320-drm-mode-config-init-v2-15-c63f1134e76c@kernel.org>
 <79cc30d5-80b5-4d87-a3ad-36d6fad98853@suse.de>
 <dd39f423-1598-4749-8c95-98b8daf69680@suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="mmuav45v5xyeg7x4"
Content-Disposition: inline
In-Reply-To: <dd39f423-1598-4749-8c95-98b8daf69680@suse.de>
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
X-Rspamd-Queue-Id: 7174F4428EA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--mmuav45v5xyeg7x4
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 15/20] drm/drv: Call drm_mode_config_create_state() by
 default
MIME-Version: 1.0

Hi Thomas,

On Tue, Apr 21, 2026 at 05:33:12PM +0200, Thomas Zimmermann wrote:
> Am 21.04.26 um 15:38 schrieb Thomas Zimmermann:
> > Hi
> >=20
> > Am 20.03.26 um 17:27 schrieb Maxime Ripard:
> > > Almost all drivers, and our documented skeleton, call
> > > drm_mode_config_reset() prior to calling drm_dev_register() to
> > > initialize its DRM object states.
> > >=20
> > > Now that we have drm_mode_config_create_state() to create that initial
> > > state if it doesn't exist, we can call it directly in
> > > drm_dev_register(). That way, we know that the initial atomic state w=
ill
> > > always be allocated without any boilerplate.
> > >=20
> > > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > > ---
> > > =A0 drivers/gpu/drm/drm_drv.c | 4 ++++
> > > =A0 1 file changed, 4 insertions(+)
> > >=20
> > > diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
> > > index 2915118436ce8a6640cfb0c59936031990727ed1..820106d56ab399a39cac5=
6d98662b5ddbcae8ded
> > > 100644
> > > --- a/drivers/gpu/drm/drm_drv.c
> > > +++ b/drivers/gpu/drm/drm_drv.c
> > > @@ -1097,10 +1097,14 @@ int drm_dev_register(struct drm_device *dev,
> > > unsigned long flags)
> > > =A0 =A0=A0=A0=A0=A0 if (drm_core_check_feature(dev, DRIVER_MODESET)) {
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 ret =3D drm_modeset_register_all(dev);
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 if (ret)
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 goto err_unload;
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0 ret =3D drm_mode_config_create_state(dev);
> > > +=A0=A0=A0=A0=A0=A0=A0 if (ret)
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 goto err_unload;
> >=20
> > Way too late. Lets rather go through drivers and call this where they
> > currently call drm_mode_config_reset() for initialization. This can be a
> > single-patch mass conversion IMHO.

I think that was Ville's main objection too. He suggested to do it in
the object initialization instead, but I believe it would be too early.

> On a second thought, can't we modify the suspend code and leave the reset
> as-is for now?=A0 I'd still be interested to use reset as a means of
> initializing the hardware or loading state on probe. So keeping the _rese=
t()
> calls in place might be helpful for that.
>=20
> What's the long-term plan here?

So, the way I was thinking about this is reset is done for several
things right now: initial state creation and software reset, and
hardware reset.

The latter isn't really commonly used. Most drivers, basically all
drivers that use the reset helpers, will not perform the hardware reset
as part of drm_mode_config_reset but will do it in probe or similar.

This is also a concern for hardware state read-out, since you don't want
that reset to happen.

So, eventually, I wanted to have something like try a readout, and if it
fails for any reason (disabled, unsupported, or failing to perform the
readout), we fallback to allocating a pristine state + resetting the
hardware.

To do that, we need create_state introduced here both for the readout
and non-readout paths, but also a (possibly device wide?) hw_reset hook
that will *only* reset the device without affecting the software state.

So:
 - probe with readout would be create_state + readout_state for all objects
 - probe without readout would be create_state + hw_reset for all objects
 - resume would be create_state + hw_reset for a limited number of objects

And then we don't need .reset at all anymore and / or can implement
drm_mode_config_reset() on top of that.

I wanted to work on that next when done with this series.

Maxime

--mmuav45v5xyeg7x4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaehueAAKCRAnX84Zoj2+
dk+SAYDSxsLLjUkEwpwBzrLclRVmyy7Pnj03L4U6OuOb8UUQK/YHd8u6ZI0Y5Fn8
lXwP3SkBgIJRm9gxqUlt2WlYOp3xz6AwEEaxd7tHd6n7tpSv6KJ44hNAwTVtgZFI
mLpzKOrOQg==
=tglw
-----END PGP SIGNATURE-----

--mmuav45v5xyeg7x4--
