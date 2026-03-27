Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uK1WAoh+xmlTLAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 13:56:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4EB3449E1
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 13:56:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B341A10E1D7;
	Fri, 27 Mar 2026 12:56:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b="hYU4MBjk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0567110E1C5;
 Fri, 27 Mar 2026 12:56:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1774616179; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=nrhJQcNU2St85zr7KW0VW77O0rvjPuIFsgi0f3RHLuq01R3pXJEeYUsQDtcuvZr/SlAD7bJYG7OMKTL4t3i+m69bvvJ0u6NAKpW5UThs9vJTi8fkJXOVZL+Ksgw1SoeMmFgLMRKb+jM0TiSiMgaEhVZ76X0O23g+O5H3UxXtIHA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1774616179;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=9rZk3O9XtcgvBcy00N+ORbUqxZBMTrdkFnBuRIM06bI=; 
 b=RiLu1f6xF46lhFrMPIJ8+LCZP1DjvY7YUR7IZQhn/d4AGGFfV/BeaO9+hlrlA4IkTc8AXYUHbrQKNC7Y9aWT+WS2A7rYiZO9tL/y7PLslKQJjeerZf3m4BARf7anBe/OG+EWt9IstJe+QY9KexW0GVTgr0q/bvBYlCGzHE58fpA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
 dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774616179; 
 s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
 h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
 bh=9rZk3O9XtcgvBcy00N+ORbUqxZBMTrdkFnBuRIM06bI=;
 b=hYU4MBjkdSfxJmH/kKO/j7MNFTk9XtBpm41ookcZAIDnG353SOU0DAWhw/FagFR0
 AmxyXQ1E79tKhpvXNtkgVz3GMmzGSc6UZOkL0HpMdPVL9MIhCTOB6f/U1SJ+liOwLpg
 72BpbX2lR1jnhNBoBY+RhPXNy5J6gyEHCB9y3feQ=
Received: by mx.zohomail.com with SMTPS id 17746161764209.309822167866628;
 Fri, 27 Mar 2026 05:56:16 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Maxime Ripard <mripard@kernel.org>,
 Ville =?UTF-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Rodrigo Siqueira <siqueira@igalia.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 kernel@collabora.com, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-doc@vger.kernel.org, Werner Sembach <wse@tuxedocomputers.com>,
 Andri Yngvason <andri@yngvason.is>, Marius Vlad <marius.vlad@collabora.com>
Subject: Re: [PATCH v11 03/22] drm: Add new general DRM property "color format"
Date: Fri, 27 Mar 2026 13:56:06 +0100
Message-ID: <4153041.tdWV9SEqCh@workhorse>
In-Reply-To: <acVzwRyk_J24GrJ4@intel.com>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <20260326-pumpkin-goshawk-of-stamina-0ccb84@houat>
 <acVzwRyk_J24GrJ4@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[zohomail.com:s=zohoarc:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[41];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,suse.de,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,tuxedocomputers.com,yngvason.is];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim]
X-Rspamd-Queue-Id: 0E4EB3449E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thursday, 26 March 2026 18:58:25 Central European Standard Time Ville Sy=
rj=C3=A4l=C3=A4 wrote:
> On Thu, Mar 26, 2026 at 06:02:47PM +0100, Maxime Ripard wrote:
> > On Wed, Mar 25, 2026 at 08:43:15PM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
> > > On Wed, Mar 25, 2026 at 03:56:58PM +0100, Maxime Ripard wrote:
> > > > On Wed, Mar 25, 2026 at 01:03:07PM +0200, Ville Syrj=C3=A4l=C3=A4 w=
rote:
> > > > > On Wed, Mar 25, 2026 at 09:24:27AM +0100, Maxime Ripard wrote:
> > > > > > On Tue, Mar 24, 2026 at 09:53:35PM +0200, Ville Syrj=C3=A4l=C3=
=A4 wrote:
> > > > > > > On Tue, Mar 24, 2026 at 08:10:11PM +0100, Nicolas Frattaroli =
wrote:
> > > > > > > > On Tuesday, 24 March 2026 18:00:45 Central European Standar=
d Time Ville Syrj=C3=A4l=C3=A4 wrote:
> > > > > > > > > On Tue, Mar 24, 2026 at 05:01:07PM +0100, Nicolas Frattar=
oli wrote:
> > > > > > > > > > +enum drm_connector_color_format {
> > > > > > > > > > +	/**
> > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver or di=
splay protocol
> > > > > > > > > > +	 * helpers should pick a suitable color format. All i=
mplementations of a
> > > > > > > > > > +	 * specific display protocol must behave the same way=
 with "AUTO", but
> > > > > > > > > > +	 * different display protocols do not necessarily hav=
e the same "AUTO"
> > > > > > > > > > +	 * semantics.
> > > > > > > > > > +	 *
> > > > > > > > > > +	 * For HDMI, "AUTO" picks RGB, but falls back to YCbC=
r 4:2:0 if the
> > > > > > > > > > +	 * bandwidth required for full-scale RGB is not avail=
able, or the mode
> > > > > > > > > > +	 * is YCbCr 4:2:0-only, as long as the mode and outpu=
t both support
> > > > > > > > > > +	 * YCbCr 4:2:0.
> > > > > > > > > > +	 *
> > > > > > > > > > +	 * For display protocols other than HDMI, the recursi=
ve bridge chain
> > > > > > > > > > +	 * format selection picks the first chain of bridge f=
ormats that works,
> > > > > > > > > > +	 * as has already been the case before the introducti=
on of the "color
> > > > > > > > > > +	 * format" property. Non-HDMI bridges should therefor=
e either sort their
> > > > > > > > > > +	 * bus output formats by preference, or agree on a un=
ified auto format
> > > > > > > > > > +	 * selection logic that's implemented in a common sta=
te helper (like
> > > > > > > > > > +	 * how HDMI does it).
> > > > > > > > > > +	 */
> > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_AUTO =3D 0,
> > > > > > > > > > +
> > > > > > > > > > +	/**
> > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_RGB444: RGB output for=
mat
> > > > > > > > > > +	 */
> > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_RGB444,
> > > > > > > > > > +
> > > > > > > > > > +	/**
> > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR444: YCbCr 4:4:4 =
output format (ie.
> > > > > > > > > > +	 * not subsampled)
> > > > > > > > > > +	 */
> > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR444,
> > > > > > > > > > +
> > > > > > > > > > +	/**
> > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR422: YCbCr 4:2:2 =
output format (ie.
> > > > > > > > > > +	 * with horizontal subsampling)
> > > > > > > > > > +	 */
> > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR422,
> > > > > > > > > > +
> > > > > > > > > > +	/**
> > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR420: YCbCr 4:2:0 =
output format (ie.
> > > > > > > > > > +	 * with horizontal and vertical subsampling)
> > > > > > > > > > +	 */
> > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR420,
> > > > > > > > >=20
> > > > > > > > > Seems like this should document what the quantization ran=
ge
> > > > > > > > > should be for each format.
> > > > > > > > >=20
> > > > > > > >=20
> > > > > > > > I don't think so? If you want per-component bit depth value=
s,
> > > > > > > > DRM_FORMAT_* defines would be the appropriate values to use=
=2E This
> > > > > > > > enum is more abstract than that, and is there to communicate
> > > > > > > > YUV vs. RGB and chroma subsampling, with bit depth being ha=
ndled
> > > > > > > > by other properties.
> > > > > > > >=20
> > > > > > > > If you mean the factor used for subsampling, then that'd on=
ly be
> > > > > > > > relevant if YCBCR410 was supported where one chroma plane i=
sn't
> > > > > > > > halved but quartered in resolution. I suspect 4:1:0 will ne=
ver
> > > > > > > > be added; no digital display protocol standard supports it =
to my
> > > > > > > > knowledge, and hopefully none ever will.
> > > > > > >=20
> > > > > > > No, I mean the quantization range (16-235 vs. 0-255 etc).
> > > > > > >=20
> > > > > > > The i915 behaviour is that YCbCr is always limited range,
> > > > > > > RGB can either be full or limited range depending on the=20
> > > > > > > "Broadcast RGB" property and other related factors.
> > > > > >=20
> > > > > > So far the HDMI state has both the format and quantization rang=
e as
> > > > > > different fields. I'm not sure we need to document the range in=
 the
> > > > > > format field, maybe only mention it's not part of the format bu=
t has a
> > > > > > field of its own?
> > > > >=20
> > > > > I think we only have it for RGB (on some drivers only?). For YCbCr
> > > > > I think the assumption is limited range everywhere.
> > > > >=20
> > > > > But I'm not really concerned about documenting struct members.
> > > > > What I'm talking about is the *uapi* docs. Surely userspace
> > > > > will want to know what the new property actually does so the
> > > > > uapi needs to be documented properly. And down the line some
> > > > > new driver might also implement the wrong behaviour if there
> > > > > is no clear specification.
> > > >=20
> > > > Ack
> > > >=20
> > > > > So I'm thinking (or perhaps hoping) the rule might be something l=
ike:
> > > > > - YCbCr limited range=20
> > > > > - RGB full range if "Broadcast RGB" property is not present
> > > >=20
> > > > Isn't it much more complicated than that for HDMI though? My
> > > > recollection was that any VIC but VIC1 would be limited range, and
> > > > anything else full range?
> > >=20
> > > Do we have some driver that implements the CTA-861 CE vs. IT mode
> > > logic but doesn't expose the "Broadcast RGB" property? I was hoping
> > > those would always go hand in hand now.
> >=20
> > I'm not sure. i915 and the HDMI state helpers handle it properly (I
> > think?) but it looks like only vc4 registers the Broadcast RGB property
> > and uses the HDMI state helpers.
> >=20
> > And it looks like amdgpu registers Broadcast RGB but doesn't use
> > drm_default_rgb_quant_range() which seems suspicious?
>=20
> If they want just manual full vs. limited then they should
> limit the property to not expose the "auto" option at all.
>=20
> amdgpu also ties this in with the "colorspace" property, which
> originally in i915 only controlled the infoframes/etc. But on
> amdgpu it now controls various aspects of output color
> transformation. The end result is that the property is a complete
> mess with most of the values making no sense. And for whatever
> reason everyone involved refused to remove/deprecate the
> nonsensical values :/
>=20
> Looks like this series should make sure the documentation for
> the "colorspace" property is in sync with the new property
> as well. Currently now it's giving conflicting information.
>=20

I take it the problematic information is in

    * DOC: standard connector properties
    *
    * Colorspace:

and probably specifically BT2020_YCC's (and BT2020_RGB's?) insistence
that they "produce RGB content".

I think we probably just have to change the statement "The variants
BT2020_RGB and BT2020_YCC are equivalent and the driver chooses between
RGB and YCbCr on its own."

The "on its own" here would get turned into "based on the color format
property".

Speaking of i915, that patch is one of the very few (5) patches in
this series still lacking a review (hint hint nudge nudge). I'd like
to get some more feedback on the remaining patches before I send out
another revision, so that it's hopefully not just docs changes (I
know better than to think those patches must be perfect and won't
need revision.)

If `drm/bridge: Act on the DRM color format property` and
`drm/atomic-helper: Add HDMI bridge output bus formats helper` get a
reviewed-by/acked-by and it's still crickets on the amdgpu and i915
front, then I will just drop the amdgpu/i915 implementations so that
they don't block this from landing.

Kind regards,
Nicolas Frattaroli


