Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGjjLKbRy2mILwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 15:52:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6591D36A8A5
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 15:52:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 617F110E909;
	Tue, 31 Mar 2026 13:52:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=collabora.com header.i=@collabora.com header.b="bi248at1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com
 [148.251.105.195])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37FE310E380;
 Tue, 31 Mar 2026 13:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1774965152;
 bh=XYVYqXCJ1Dbzl2BCR+UrXAQuUmvTJy7A7k5GRda7KSQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bi248at1IoRZHdobgE2WSIfEdpEIUeKp+Na1jam/dN396FtSE2ArsaVfESWD4/PAu
 P47X23Smqlq6HwJVki39PTlIeiJsUes7lLrLJG1wmY7ZJ9cEMA2zGLkgzYNuk/ctn4
 8lY3GQSXAIyuRbO5tpGxDAXV76mHZSqLx5+Pgm3htfQETE/4cNh0KzQ113O8CCqgbQ
 oiCdMoUHLs7UPYajkvuMQmNnwPmeFxx+AyuxgzMtIGWHz/vTpDyOccC7K8P04YrvKz
 GTcvPpW59SvHCZCTJHPSEigYt7d6yHb8YJsk3tfZe41qqe//54qDVxuF9WHm0aPsCk
 cAeBPbFaVqFKg==
Received: from fluorite (unknown [194.136.85.206])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: pq)
 by bali.collaboradmins.com (Postfix) with ESMTPSA id 607AE17E64CE;
 Tue, 31 Mar 2026 15:52:30 +0200 (CEST)
Date: Tue, 31 Mar 2026 16:52:24 +0300
From: Pekka Paalanen <pekka.paalanen@collabora.com>
To: Ville =?UTF-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>, Nicolas Frattaroli
 <nicolas.frattaroli@collabora.com>, Harry Wentland
 <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira
 <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, Christian
 =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, David Airlie
 <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Andrzej Hajda <andrzej.hajda@intel.com>, Neil
 Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, Sandy Huang
 <hjc@rock-chips.com>, Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 kernel@collabora.com, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-doc@vger.kernel.org, Werner Sembach <wse@tuxedocomputers.com>, Andri
 Yngvason <andri@yngvason.is>, Marius Vlad <marius.vlad@collabora.com>
Subject: Re: [PATCH v11 03/22] drm: Add new general DRM property "color format"
Message-ID: <20260331165224.602f840f@fluorite>
In-Reply-To: <accfKbYPbH7EgAMc@intel.com>
References: <20260324-color-format-v11-3-605559af4fb4@collabora.com>
 <acLDPYuaVI2-12JX@intel.com> <23910073.EfDdHjke4D@workhorse>
 <acLrv5hLyNss-Px5@intel.com>
 <20260325-neat-elegant-raven-ebc9ab@houat>
 <acPA60Ci3n_t__xF@intel.com>
 <20260325-magnificent-ultraviolet-oarfish-baefbc@houat>
 <acQsw3Wi_xVlBZ8d@intel.com>
 <20260326-pumpkin-goshawk-of-stamina-0ccb84@houat>
 <acVzwRyk_J24GrJ4@intel.com> <accfKbYPbH7EgAMc@intel.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/Z9vd7qNP90QhQD=w6cW_nRl";
 protocol="application/pgp-signature"; micalg=pgp-sha256
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
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[42];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[pekka.paalanen@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,tuxedocomputers.com,yngvason.is];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,collabora.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 6591D36A8A5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--Sig_/Z9vd7qNP90QhQD=w6cW_nRl
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, 28 Mar 2026 02:22:01 +0200
Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com> wrote:

> On Thu, Mar 26, 2026 at 07:58:25PM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
> > On Thu, Mar 26, 2026 at 06:02:47PM +0100, Maxime Ripard wrote: =20
> > > On Wed, Mar 25, 2026 at 08:43:15PM +0200, Ville Syrj=C3=A4l=C3=A4 wro=
te: =20
> > > > On Wed, Mar 25, 2026 at 03:56:58PM +0100, Maxime Ripard wrote: =20
> > > > > On Wed, Mar 25, 2026 at 01:03:07PM +0200, Ville Syrj=C3=A4l=C3=A4=
 wrote: =20
> > > > > > On Wed, Mar 25, 2026 at 09:24:27AM +0100, Maxime Ripard wrote: =
=20
> > > > > > > On Tue, Mar 24, 2026 at 09:53:35PM +0200, Ville Syrj=C3=A4l=
=C3=A4 wrote: =20
> > > > > > > > On Tue, Mar 24, 2026 at 08:10:11PM +0100, Nicolas Frattarol=
i wrote: =20
> > > > > > > > > On Tuesday, 24 March 2026 18:00:45 Central European Stand=
ard Time Ville Syrj=C3=A4l=C3=A4 wrote: =20
> > > > > > > > > > On Tue, Mar 24, 2026 at 05:01:07PM +0100, Nicolas Fratt=
aroli wrote: =20
> > > > > > > > > > > +enum drm_connector_color_format {
> > > > > > > > > > > +	/**
> > > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver or =
display protocol
> > > > > > > > > > > +	 * helpers should pick a suitable color format. All=
 implementations of a
> > > > > > > > > > > +	 * specific display protocol must behave the same w=
ay with "AUTO", but
> > > > > > > > > > > +	 * different display protocols do not necessarily h=
ave the same "AUTO"
> > > > > > > > > > > +	 * semantics.
> > > > > > > > > > > +	 *
> > > > > > > > > > > +	 * For HDMI, "AUTO" picks RGB, but falls back to YC=
bCr 4:2:0 if the
> > > > > > > > > > > +	 * bandwidth required for full-scale RGB is not ava=
ilable, or the mode
> > > > > > > > > > > +	 * is YCbCr 4:2:0-only, as long as the mode and out=
put both support
> > > > > > > > > > > +	 * YCbCr 4:2:0.
> > > > > > > > > > > +	 *
> > > > > > > > > > > +	 * For display protocols other than HDMI, the recur=
sive bridge chain
> > > > > > > > > > > +	 * format selection picks the first chain of bridge=
 formats that works,
> > > > > > > > > > > +	 * as has already been the case before the introduc=
tion of the "color
> > > > > > > > > > > +	 * format" property. Non-HDMI bridges should theref=
ore either sort their
> > > > > > > > > > > +	 * bus output formats by preference, or agree on a =
unified auto format
> > > > > > > > > > > +	 * selection logic that's implemented in a common s=
tate helper (like
> > > > > > > > > > > +	 * how HDMI does it).
> > > > > > > > > > > +	 */
> > > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_AUTO =3D 0,
> > > > > > > > > > > +
> > > > > > > > > > > +	/**
> > > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_RGB444: RGB output f=
ormat
> > > > > > > > > > > +	 */
> > > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_RGB444,
> > > > > > > > > > > +
> > > > > > > > > > > +	/**
> > > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR444: YCbCr 4:4:=
4 output format (ie.
> > > > > > > > > > > +	 * not subsampled)
> > > > > > > > > > > +	 */
> > > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR444,
> > > > > > > > > > > +
> > > > > > > > > > > +	/**
> > > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR422: YCbCr 4:2:=
2 output format (ie.
> > > > > > > > > > > +	 * with horizontal subsampling)
> > > > > > > > > > > +	 */
> > > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR422,
> > > > > > > > > > > +
> > > > > > > > > > > +	/**
> > > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR420: YCbCr 4:2:=
0 output format (ie.
> > > > > > > > > > > +	 * with horizontal and vertical subsampling)
> > > > > > > > > > > +	 */
> > > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR420, =20
> > > > > > > > > >=20
> > > > > > > > > > Seems like this should document what the quantization r=
ange
> > > > > > > > > > should be for each format.
> > > > > > > > > >  =20
> > > > > > > > >=20
> > > > > > > > > I don't think so? If you want per-component bit depth val=
ues,
> > > > > > > > > DRM_FORMAT_* defines would be the appropriate values to u=
se. This
> > > > > > > > > enum is more abstract than that, and is there to communic=
ate
> > > > > > > > > YUV vs. RGB and chroma subsampling, with bit depth being =
handled
> > > > > > > > > by other properties.
> > > > > > > > >=20
> > > > > > > > > If you mean the factor used for subsampling, then that'd =
only be
> > > > > > > > > relevant if YCBCR410 was supported where one chroma plane=
 isn't
> > > > > > > > > halved but quartered in resolution. I suspect 4:1:0 will =
never
> > > > > > > > > be added; no digital display protocol standard supports i=
t to my
> > > > > > > > > knowledge, and hopefully none ever will. =20
> > > > > > > >=20
> > > > > > > > No, I mean the quantization range (16-235 vs. 0-255 etc).
> > > > > > > >=20
> > > > > > > > The i915 behaviour is that YCbCr is always limited range,
> > > > > > > > RGB can either be full or limited range depending on the=20
> > > > > > > > "Broadcast RGB" property and other related factors. =20
> > > > > > >=20
> > > > > > > So far the HDMI state has both the format and quantization ra=
nge as
> > > > > > > different fields. I'm not sure we need to document the range =
in the
> > > > > > > format field, maybe only mention it's not part of the format =
but has a
> > > > > > > field of its own? =20
> > > > > >=20
> > > > > > I think we only have it for RGB (on some drivers only?). For YC=
bCr
> > > > > > I think the assumption is limited range everywhere.
> > > > > >=20
> > > > > > But I'm not really concerned about documenting struct members.
> > > > > > What I'm talking about is the *uapi* docs. Surely userspace
> > > > > > will want to know what the new property actually does so the
> > > > > > uapi needs to be documented properly. And down the line some
> > > > > > new driver might also implement the wrong behaviour if there
> > > > > > is no clear specification. =20
> > > > >=20
> > > > > Ack
> > > > >  =20
> > > > > > So I'm thinking (or perhaps hoping) the rule might be something=
 like:
> > > > > > - YCbCr limited range=20
> > > > > > - RGB full range if "Broadcast RGB" property is not present =20
> > > > >=20
> > > > > Isn't it much more complicated than that for HDMI though? My
> > > > > recollection was that any VIC but VIC1 would be limited range, and
> > > > > anything else full range? =20
> > > >=20
> > > > Do we have some driver that implements the CTA-861 CE vs. IT mode
> > > > logic but doesn't expose the "Broadcast RGB" property? I was hoping
> > > > those would always go hand in hand now. =20
> > >=20
> > > I'm not sure. i915 and the HDMI state helpers handle it properly (I
> > > think?) but it looks like only vc4 registers the Broadcast RGB proper=
ty
> > > and uses the HDMI state helpers.
> > >=20
> > > And it looks like amdgpu registers Broadcast RGB but doesn't use
> > > drm_default_rgb_quant_range() which seems suspicious? =20
> >=20
> > If they want just manual full vs. limited then they should
> > limit the property to not expose the "auto" option at all.
> >=20
> > amdgpu also ties this in with the "colorspace" property, which
> > originally in i915 only controlled the infoframes/etc. But on
> > amdgpu it now controls various aspects of output color
> > transformation. The end result is that the property is a complete
> > mess with most of the values making no sense. And for whatever
> > reason everyone involved refused to remove/deprecate the
> > nonsensical values :/
> >=20
> > Looks like this series should make sure the documentation for
> > the "colorspace" property is in sync with the new property
> > as well. Currently now it's giving conflicting information. =20
>=20
> After pondering about this a bit more I guess we could actually
> use this to make all the values of the colorspace property make
> some sense.
>=20
> Since we won't have to worry about that RGB->YCbCr 4:2:0
> fallback when using and explicit color format, all we'd have
> to do is explicitly reject the nonsensical combinations:
>=20
> color_format_and_colorspace_ok()
> {
> 	switch (color_format) {
> 	case DRM_CONNECTOR_COLOR_FORMAT_YCBCR444:
> 	case DRM_CONNECTOR_COLOR_FORMAT_YCBCR422:
> 	case DRM_CONNECTOR_COLOR_FORMAT_YCBCR420:
> 		switch (colorspace) {
> 		case DRM_MODE_COLORIMETRY_NO_DATA:
> 		case DRM_MODE_COLORIMETRY_SMPTE_170M_YCC:
> 		case DRM_MODE_COLORIMETRY_BT601_YCC:
> 		case DRM_MODE_COLORIMETRY_BT709_YCC:
> 		case DRM_MODE_COLORIMETRY_XVYCC_601:
> 		case DRM_MODE_COLORIMETRY_XVYCC_709:
> 		case DRM_MODE_COLORIMETRY_SYCC_601:
> 		case DRM_MODE_COLORIMETRY_OPYCC_601:
> 		case DRM_MODE_COLORIMETRY_BT2020_CYCC:
> 		case DRM_MODE_COLORIMETRY_BT2020_YCC:
> 		case DRM_MODE_COLORIMETRY_BT709_YCC:
> 			return true;
> 		default:
> 			return false;
> 		}
> 		break;
> 	case DRM_CONNECTOR_COLOR_FORMAT_RGB444:
> 		switch (colorspace) {
> 		case DRM_MODE_COLORIMETRY_NO_DATA:
> 		case DRM_MODE_COLORIMETRY_OPRGB:
> 		case DRM_MODE_COLORIMETRY_BT2020_RGB:
> 		case DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65:
> 		case DRM_MODE_COLORIMETRY_DCI_P3_RGB_THEATER:
> 		case DRM_MODE_COLORIMETRY_RGB_WIDE_FIXED:
> 		case DRM_MODE_COLORIMETRY_RGB_WIDE_FLOAT:
> 		case DRM_MODE_COLORIMETRY_OPRGB:
> 		case DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65:
> 		case DRM_MODE_COLORIMETRY_BT2020_RGB:
> 			return true;
> 		default
> 			return false;
> 		}
> 		break;
> 	case DRM_CONNECTOR_COLOR_FORMAT_AUTO:
> 		switch (colorspace) {
> 		case DRM_MODE_COLORIMETRY_NO_DATA:
> 		case DRM_MODE_COLORIMETRY_BT2020_RGB:
> 		case DRM_MODE_COLORIMETRY_BT2020_YCC:
> 			return true;
> 		default:
> 			return false;
> 		}
> 	default:
> 		bad;
> 	}
> }
>=20
> And then presumably the colorspace property is the thing that should
> dictate which conversion matrix to use. So something like this:
>=20
> csc_matrix()
> {
> 	switch (colorspace) {
> 	case DRM_MODE_COLORIMETRY_SMPTE_170M_YCC:
> 	case DRM_MODE_COLORIMETRY_BT601_YCC:
> 	case DRM_MODE_COLORIMETRY_XVYCC_601:
> 	case DRM_MODE_COLORIMETRY_SYCC_601:
> 	case DRM_MODE_COLORIMETRY_OPYCC_601:
> 		return 601;
> 	case DRM_MODE_COLORIMETRY_BT709_YCC:
> 	case DRM_MODE_COLORIMETRY_XVYCC_709:
> 		return 709;
> 	case DRM_MODE_COLORIMETRY_BT2020_YCC:
> 	case DRM_MODE_COLORIMETRY_BT2020_RGB:
> 		return 2020;
> 	case DRM_MODE_COLORIMETRY_BT2020_CYCC:
> 		return 2020_const;
> 	case DRM_MODE_COLORIMETRY_NO_DATA:
> 		return vdisplay >=3D 720 ? 709 : 601;
> 	default:
> 		bad;
> 	}
> }
>=20

Hi Ville,

I believe the RGB-to-YCbCr matrix choice belongs in a colorop in the
CRTC color pipeline. It would be really nice to let go of the
requirement that the KMS color pipeline can be only in full-range RGB.

I imagine being able to scan out a YCbCr limited range buffer as-is
would be really useful for professional broadcasting industry and
particularly PLUGE testing which relies on being able to send the
sub-black and super-white YCbCr values for monitor calibration.

However, if there is an "auto" value in the colorop (implies the
input to the colorop must be full-range RGB) or the colorop is missing,
then your proposal could be used there.


Thanks,
pq

--Sig_/Z9vd7qNP90QhQD=w6cW_nRl
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmnL0ZgACgkQI1/ltBGq
qqcQXRAAk537VpzaLk6JptQFZZC+yWq3R7PPR4QT9azf+7XBONUhkwSc+GHslxaY
G/GN1Yp+ULNnLZs2CYuJEHXbL0Sb8LI/kMdxvMgWpkQsL3eZL6QdpQUxD5+mMvMi
hboB2wCy+i/nSdHx9TekifPgKPSxtypqlOaJcnYJnPouAJ631ukaezrIe4x4/d7+
e8qrkNq/sekMkwKdMpnbu9srnQ+mvWG9mZAhWfG5GfUdNNYP6tZ55BAjMBrqAdzo
ln8JlhSTwh8J/qxPNfhotQkDSm4aoMxoUQBE08aqdQX5VJuWcESgVy9NQiI624nv
g62s5wyxPf5VOKLfRAW11oAgSXwJKoNNxozVaQqFFWDfs/AmFjs2Y1hU5k0MWpkK
8sD30brwIwpYNVcSQJ+E5cx5iD5NvAd0vQgp2GhOrOn9tOoAz2OjiT6Le6JNe6Rs
uFtt0Wr6uL5/AsBw+Bg3SjtwXDHHTY/Vgd3jSEm0LXSkD3n3PJL2bqkuuZdpT9Wx
S2LrtYrru10WUpC18YynXLi8Nt2Sqot4R++V6DhyQfnDhFoLsiIs7RU+nsKKFCVB
uFybvcs51NyZI/Q3Kf5YGREmh20K4XS1NzY5dASlGgZSdyyMcxooGCihm1YLZTwC
CbTrUxRsPu5uS8GdkVxwn25+ezSTBChxUXU33ZEkxltq0eJT0Po=
=g/43
-----END PGP SIGNATURE-----

--Sig_/Z9vd7qNP90QhQD=w6cW_nRl--
