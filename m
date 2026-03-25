Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMpOGcL3w2nPvAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 15:57:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 154D232744A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 15:57:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A70FE10E571;
	Wed, 25 Mar 2026 14:57:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="lveoloIP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E20F10E16D;
 Wed, 25 Mar 2026 14:57:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 3729A4024F;
 Wed, 25 Mar 2026 14:57:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BAB7C4CEF7;
 Wed, 25 Mar 2026 14:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1774450621;
 bh=kODB/4Odan0TLyX1+H2rGTJ1SkOip0pPH/GqtThBgFg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lveoloIP8+97OC9m2l5bBmtBw6c3CSQdSICZGVMCZbaVAtz/7499RlssUCIk3l9al
 BWGtZaB/Gwx87SRUYZ4cMxnfQOw/wFD3DxPoaz6ZMwVdXpkyx08nrQ9XGu9iAX/z5D
 dXQvJWfV6yPc172xpKNvXzEkN0NwwG2R1phfqiDxfT8sDpBvBgM+V2xyA1LtHBt10T
 rerF3gSEDkGf6dqX15xt8IzhWyiX9IARja5LRQxUZ3+w4ei87vSIWEb3ti0JiuO53z
 NhJjjPjGV9Y3DR3hKAwYyg+sRfCMTELoq9pie6SsHbeivGmpPiJrLsmd6IyREGDtzg
 sr4f14070acsA==
Date: Wed, 25 Mar 2026 15:56:58 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
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
Message-ID: <20260325-magnificent-ultraviolet-oarfish-baefbc@houat>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <20260324-color-format-v11-3-605559af4fb4@collabora.com>
 <acLDPYuaVI2-12JX@intel.com> <23910073.EfDdHjke4D@workhorse>
 <acLrv5hLyNss-Px5@intel.com>
 <20260325-neat-elegant-raven-ebc9ab@houat>
 <acPA60Ci3n_t__xF@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="mhdva7e7vsga4kjf"
Content-Disposition: inline
In-Reply-To: <acPA60Ci3n_t__xF@intel.com>
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
	FREEMAIL_CC(0.00)[collabora.com,amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,suse.de,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,tuxedocomputers.com,yngvason.is];
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
X-Rspamd-Queue-Id: 154D232744A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--mhdva7e7vsga4kjf
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v11 03/22] drm: Add new general DRM property "color
 format"
MIME-Version: 1.0

On Wed, Mar 25, 2026 at 01:03:07PM +0200, Ville Syrj=E4l=E4 wrote:
> On Wed, Mar 25, 2026 at 09:24:27AM +0100, Maxime Ripard wrote:
> > On Tue, Mar 24, 2026 at 09:53:35PM +0200, Ville Syrj=E4l=E4 wrote:
> > > On Tue, Mar 24, 2026 at 08:10:11PM +0100, Nicolas Frattaroli wrote:
> > > > On Tuesday, 24 March 2026 18:00:45 Central European Standard Time V=
ille Syrj=E4l=E4 wrote:
> > > > > On Tue, Mar 24, 2026 at 05:01:07PM +0100, Nicolas Frattaroli wrot=
e:
> > > > > > +enum drm_connector_color_format {
> > > > > > +	/**
> > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver or display pr=
otocol
> > > > > > +	 * helpers should pick a suitable color format. All implement=
ations of a
> > > > > > +	 * specific display protocol must behave the same way with "A=
UTO", but
> > > > > > +	 * different display protocols do not necessarily have the sa=
me "AUTO"
> > > > > > +	 * semantics.
> > > > > > +	 *
> > > > > > +	 * For HDMI, "AUTO" picks RGB, but falls back to YCbCr 4:2:0 =
if the
> > > > > > +	 * bandwidth required for full-scale RGB is not available, or=
 the mode
> > > > > > +	 * is YCbCr 4:2:0-only, as long as the mode and output both s=
upport
> > > > > > +	 * YCbCr 4:2:0.
> > > > > > +	 *
> > > > > > +	 * For display protocols other than HDMI, the recursive bridg=
e chain
> > > > > > +	 * format selection picks the first chain of bridge formats t=
hat works,
> > > > > > +	 * as has already been the case before the introduction of th=
e "color
> > > > > > +	 * format" property. Non-HDMI bridges should therefore either=
 sort their
> > > > > > +	 * bus output formats by preference, or agree on a unified au=
to format
> > > > > > +	 * selection logic that's implemented in a common state helpe=
r (like
> > > > > > +	 * how HDMI does it).
> > > > > > +	 */
> > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_AUTO =3D 0,
> > > > > > +
> > > > > > +	/**
> > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_RGB444: RGB output format
> > > > > > +	 */
> > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_RGB444,
> > > > > > +
> > > > > > +	/**
> > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR444: YCbCr 4:4:4 output f=
ormat (ie.
> > > > > > +	 * not subsampled)
> > > > > > +	 */
> > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR444,
> > > > > > +
> > > > > > +	/**
> > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR422: YCbCr 4:2:2 output f=
ormat (ie.
> > > > > > +	 * with horizontal subsampling)
> > > > > > +	 */
> > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR422,
> > > > > > +
> > > > > > +	/**
> > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR420: YCbCr 4:2:0 output f=
ormat (ie.
> > > > > > +	 * with horizontal and vertical subsampling)
> > > > > > +	 */
> > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR420,
> > > > >=20
> > > > > Seems like this should document what the quantization range
> > > > > should be for each format.
> > > > >=20
> > > >=20
> > > > I don't think so? If you want per-component bit depth values,
> > > > DRM_FORMAT_* defines would be the appropriate values to use. This
> > > > enum is more abstract than that, and is there to communicate
> > > > YUV vs. RGB and chroma subsampling, with bit depth being handled
> > > > by other properties.
> > > >=20
> > > > If you mean the factor used for subsampling, then that'd only be
> > > > relevant if YCBCR410 was supported where one chroma plane isn't
> > > > halved but quartered in resolution. I suspect 4:1:0 will never
> > > > be added; no digital display protocol standard supports it to my
> > > > knowledge, and hopefully none ever will.
> > >=20
> > > No, I mean the quantization range (16-235 vs. 0-255 etc).
> > >=20
> > > The i915 behaviour is that YCbCr is always limited range,
> > > RGB can either be full or limited range depending on the=20
> > > "Broadcast RGB" property and other related factors.
> >=20
> > So far the HDMI state has both the format and quantization range as
> > different fields. I'm not sure we need to document the range in the
> > format field, maybe only mention it's not part of the format but has a
> > field of its own?
>=20
> I think we only have it for RGB (on some drivers only?). For YCbCr
> I think the assumption is limited range everywhere.
>=20
> But I'm not really concerned about documenting struct members.
> What I'm talking about is the *uapi* docs. Surely userspace
> will want to know what the new property actually does so the
> uapi needs to be documented properly. And down the line some
> new driver might also implement the wrong behaviour if there
> is no clear specification.

Ack

> So I'm thinking (or perhaps hoping) the rule might be something like:
> - YCbCr limited range=20
> - RGB full range if "Broadcast RGB" property is not present

Isn't it much more complicated than that for HDMI though? My
recollection was that any VIC but VIC1 would be limited range, and
anything else full range?

> - RGB full or limited range based on the "Broadcast RGB" property
>   if it's present
>=20
> I think the "Broadcast RGB" property itself might also be lacking
> proper uapi docs, so that may need to be remedied as well.

I took care of documenting it when merging the HDMI helpers:
https://docs.kernel.org/gpu/drm-kms.html#hdmi-specific-connector-properties

Maxime

--mhdva7e7vsga4kjf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCacP3tQAKCRAnX84Zoj2+
dqD6AX9ruA9VQEK32t44/SErwn8ouTAnQA9K9i0WTlcaidv+2oyLtolh4CEvzUcR
Knh9fq4Bfjj/Wa5dcOSnIESCkqTRH/yo4UCESrmghwhyznX8ffjBrkE/aWSPhI2B
5bfXV1iang==
=9m7S
-----END PGP SIGNATURE-----

--mhdva7e7vsga4kjf--
