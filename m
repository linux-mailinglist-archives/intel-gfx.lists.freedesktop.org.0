Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENEYGr3mw2lvugQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 14:44:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0040832608E
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 14:44:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1277810E570;
	Wed, 25 Mar 2026 13:44:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="KAE5zjq0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6442010E1EE;
 Wed, 25 Mar 2026 13:44:24 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 5706260123;
 Wed, 25 Mar 2026 13:44:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83E8EC4CEF7;
 Wed, 25 Mar 2026 13:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1774446263;
 bh=R4VEk07h2v3XpY1QKdgb2vlUARw9jfCfolYo6/LkTvs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KAE5zjq0k6W6MQSkOk93LdaEMZFdhYeBkdfVVr5L9uBMksZM7Uj+Rg3tJ/F0cDoxQ
 /ZpWod11vMvBRZaWGpklLfxcVY8wnzkhrkpOKxO2ZpzX3i19eYIlo7JmFdPK8EEcbQ
 JBBTabX12+UWJfO1Bq/qIi6F99cuuS6xKFOHX2vMn9kETetBKgbivIuXWwjRZeoc68
 beV0nrCKaz3wo+/gqXJ9gA7YdKNV/Fs1hiFTBtGQQaaXsLS3mioPckoYsTNVOkDbRS
 G2w69gTn1NGrUnTnqKUR8XcjTDmia772g0/pL5mUppzkDufoGI7LB78+c4NUcgi3sA
 5UJr5EIo2ULvg==
Date: Wed, 25 Mar 2026 14:44:20 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
 Rodrigo Siqueira <siqueira@igalia.com>,
 Alex Deucher <alexander.deucher@amd.com>, 
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, Sandy Huang <hjc@rock-chips.com>, 
 Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Dmitry Baryshkov <lumag@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Rob Herring <robh@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
 Shuah Khan <skhan@linuxfoundation.org>, kernel@collabora.com,
 amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-doc@vger.kernel.org, 
 Werner Sembach <wse@tuxedocomputers.com>, Andri Yngvason <andri@yngvason.is>, 
 Marius Vlad <marius.vlad@collabora.com>
Subject: Re: [PATCH v11 03/22] drm: Add new general DRM property "color format"
Message-ID: <20260325-holistic-llama-of-plenty-acbeca@houat>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <CAPY8ntB9f_=f5kru=8w9BpTuqQR+93maGpT61EKU28Uay2vq8Q@mail.gmail.com>
 <20260325-quaint-bull-of-fortitude-dc68da@houat>
 <12425220.nUPlyArG6x@workhorse>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="nu5efgjywb5co2ik"
Content-Disposition: inline
In-Reply-To: <12425220.nUPlyArG6x@workhorse>
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
	RCPT_COUNT_TWELVE(0.00)[41];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[raspberrypi.com,amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,suse.de,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,tuxedocomputers.com,yngvason.is];
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
X-Rspamd-Queue-Id: 0040832608E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--nu5efgjywb5co2ik
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v11 03/22] drm: Add new general DRM property "color
 format"
MIME-Version: 1.0

On Wed, Mar 25, 2026 at 02:21:24PM +0100, Nicolas Frattaroli wrote:
> On Wednesday, 25 March 2026 14:05:25 Central European Standard Time Maxim=
e Ripard wrote:
> > Hi Dave,
> >=20
> > On Wed, Mar 25, 2026 at 12:49:19PM +0000, Dave Stevenson wrote:
> > > > diff --git a/include/drm/drm_connector.h b/include/drm/drm_connecto=
r.h
> > > > index af8b92d2d5b7..bd549f912b76 100644
> > > > --- a/include/drm/drm_connector.h
> > > > +++ b/include/drm/drm_connector.h
> > > > @@ -571,14 +571,102 @@ enum drm_colorspace {
> > > >   *   YCbCr 4:2:2 output format (ie. with horizontal subsampling)
> > > >   * @DRM_OUTPUT_COLOR_FORMAT_YCBCR420:
> > > >   *   YCbCr 4:2:0 output format (ie. with horizontal and vertical s=
ubsampling)
> > > > + * @DRM_OUTPUT_COLOR_FORMAT_COUNT:
> > > > + *   Number of valid output color format values in this enum
> > > >   */
> > > >  enum drm_output_color_format {
> > > >         DRM_OUTPUT_COLOR_FORMAT_RGB444 =3D 0,
> > > >         DRM_OUTPUT_COLOR_FORMAT_YCBCR444,
> > > >         DRM_OUTPUT_COLOR_FORMAT_YCBCR422,
> > > >         DRM_OUTPUT_COLOR_FORMAT_YCBCR420,
> > > > +       DRM_OUTPUT_COLOR_FORMAT_COUNT,
> > > >  };
> > > >
> > > > +/**
> > > > + * enum drm_connector_color_format - Connector Color Format Request
> > > > + *
> > > > + * This enum, unlike &enum drm_output_color_format, is used to spe=
cify requests
> > > > + * for a specific color format on a connector through the DRM "col=
or format"
> > > > + * property. The difference is that it has an "AUTO" value to spec=
ify that
> > > > + * no specific choice has been made.
> > > > + */
> > > > +enum drm_connector_color_format {
> > > > +       /**
> > > > +        * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver or display =
protocol
> > > > +        * helpers should pick a suitable color format. All impleme=
ntations of a
> > > > +        * specific display protocol must behave the same way with =
"AUTO", but
> > > > +        * different display protocols do not necessarily have the =
same "AUTO"
> > > > +        * semantics.
> > > > +        *
> > > > +        * For HDMI, "AUTO" picks RGB, but falls back to YCbCr 4:2:=
0 if the
> > > > +        * bandwidth required for full-scale RGB is not available, =
or the mode
> > > > +        * is YCbCr 4:2:0-only, as long as the mode and output both=
 support
> > > > +        * YCbCr 4:2:0.
> > >=20
> > > Is there a reason you propose dropping back to YCbCr 4:2:0 without
> > > trying YCbCr 4:2:2 first? Minimising the subsampling is surely
> > > beneficial, and vc4 for one can do 4:2:2 but not 4:2:0.
> >=20
> > The "auto" behaviour is strictly identical to the one we have right now,
> > and this one stems from i915. Back when all that logic was added, it was
> > decided to align every driver behavior on i915 because that's what most
> > compositors would expect.
>
> would it be okay to extend the behavior while we're at it? 4:2:2 does save
> bandwidth compared to RGB (unlike YCbCr 4:4:4). I do think 4:2:2 instead =
of
> 4:2:0 will provide benefits in some cases.

I don't really know, we would need to ask some Wayland/Weston devs as
well, but it sure is something worth discussing.

I wouldn't do it in this series but as a follow-up though.

Maxime

--nu5efgjywb5co2ik
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCacPmswAKCRAnX84Zoj2+
dmGlAX0Q9JHOxhbPAWTKWwWdOKb27uv7yw9UktgOGpTC//J0c33s5cWESV5s9FVr
OXH5nAQBeQGG5UBUfjnKVw2z5/UIP190HSYoXIe99ktfdFWZXL8eG7RH4sRMWGxb
vSEBp9nfpg==
=4Hsf
-----END PGP SIGNATURE-----

--nu5efgjywb5co2ik--
