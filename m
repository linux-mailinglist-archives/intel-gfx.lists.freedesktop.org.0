Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id i5vBLbnoTGqzrwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 13:53:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AAD971B1E2
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 13:53:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=krQ6jR68;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4F7810EC62;
	Tue,  7 Jul 2026 11:53:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D50AC10EC6B;
 Tue,  7 Jul 2026 11:53:26 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 589F16001D;
 Tue,  7 Jul 2026 11:53:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78FE61F000E9;
 Tue,  7 Jul 2026 11:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1783425206;
 bh=LdGStCb5UVcLDPRcPuraOk9pal84IV7d5axrwrI8p8Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=krQ6jR68sHSUwbKKl9wNL5oUT+7BXwUycr43sgVmxv4puH1T5y2oeh4S92AfQsUaV
 ikzoTol6gRvFZm/31shNM2nwiq1cx0u9pCvuQ6yy7HMNP2chqdjpCD/uM/vP10cTEN
 TQTv7N8Wzu8XKkA9VyuPTP3wl+I3GoiLpAO3nYPPmLvGAFH6DRPyaid7mkdE9GLTU4
 /ZZ+FLXrN03gqytti4yDiZcndzMI9O6ZKAcf/o8oWCt36aOB/XHFB9wRz4YSY3FJ7g
 FQgLxVr1qjSzepQQS3U0T+IFwZqW4nHoJzukKGosGAbWtq/p+0m83YZnZ4WaYtBE5r
 hKV3AC0lberQw==
Date: Tue, 7 Jul 2026 13:53:23 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Mario Limonciello <mario.limonciello@amd.com>
Cc: dri-devel@lists.freedesktop.org, harry.wentland@amd.com, 
 Simona Vetter <simona@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Xaver Hugl <xaver.hugl@gmail.com>,
 amd-gfx@lists.freedesktop.org, 
 "open list:INTEL DRM DISPLAY FOR XE AND I915 DRIVERS"
 <intel-gfx@lists.freedesktop.org>, 
 "open list:INTEL DRM DISPLAY FOR XE AND I915 DRIVERS"
 <intel-xe@lists.freedesktop.org>,
 "Mario Limonciello (AMD)" <superm1@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v6 03/10] drm: link connectors to backlight devices
Message-ID: <20260707-impartial-fierce-vole-fd0e35@penduick>
References: <20260624165751.2014759-1-mario.limonciello@amd.com>
 <20260624165751.2014759-4-mario.limonciello@amd.com>
 <20260626-warping-quizzical-cuttlefish-beb8be@houat>
 <8a4356c5-de49-43a4-a4ee-cf771ed65f18@amd.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="5rkfw3icdmipz47z"
Content-Disposition: inline
In-Reply-To: <8a4356c5-de49-43a4-a4ee-cf771ed65f18@amd.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.41 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,amd.com,ffwll.ch,linux.intel.com,suse.de,gmail.com,kernel.org,oss.qualcomm.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,penduick:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2AAD971B1E2


--5rkfw3icdmipz47z
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v6 03/10] drm: link connectors to backlight devices
MIME-Version: 1.0

On Fri, Jun 26, 2026 at 04:40:56PM -0500, Mario Limonciello wrote:
> > > + * Drivers have to call drm_backlight_alloc() after allocating a con=
nector via
> > > + * drm_connector_init(). This will automatically add a backlight dev=
ice to the
> > > + * given connector. Drivers must then link a hardware backlight by c=
alling
> > > + * drm_backlight_link() with the registered backlight_device. If no =
link is
> > > + * established, the DRM backlight property reports an empty range and
> > > + * brightness changes are no-ops.
> > > + */
> >=20
> > It's not clear to me why we need to dynamically allocate them at all. If
> > we're using the backlight subsystem we'll already have a handle to it.
> > If we don't and want to implement something like DDC/CI, then it just
> > becomes a hassle. Why not treat it like i2c, add a backlight field to
> > drm_connector, and create the link at registration, add a new hook to
> > set luminance, and then provide helpers to either use the backlight API,
> > or anything else if the driver wants to.
>=20
> I did envision that later on we can have displays with DDC use this
> infrastructure as well.  But I didn't want to hold up the series
> implementing that.

Oh absolutely. My point wasn't that you should support it right away,
but rather that the architecture you work on would be extensible enough
to accomodate for them later on.

I'm exagerating, but for example having an architecture built around
having a backlight device doesn't work, but having one where you have a
set of helpers built around the backlight API does, because then we can
easily create new helpers to deal with DDC/CI, MIPI-DCS, etc. without
reworking the core part.

Maxime

--5rkfw3icdmipz47z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCakzosgAKCRAnX84Zoj2+
dongAX9//gIADQVQqqONzAdFXTEzGqC7dQFSe7z+w1uXx9/QxHpU/LZSRoTuTiL4
rsysrjEBgO8JD2jaiBpgfisKPCE3M44O9APxt7O7m5OkUr7kkE1DeikBerCgTEIO
7d3ece0tqA==
=30uc
-----END PGP SIGNATURE-----

--5rkfw3icdmipz47z--
