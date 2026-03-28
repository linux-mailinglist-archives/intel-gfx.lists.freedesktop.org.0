Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YwVeDLAuyGlNhwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2026 20:40:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5781E34FD5B
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2026 20:40:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D35A10E179;
	Sat, 28 Mar 2026 19:40:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b="SE9Xuq5d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F8EE10E083;
 Sat, 28 Mar 2026 19:40:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1774726812; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=VyiBhaL8z+R8TAgKUzbDXS2jBswyED8y8hp3JdGrRupgmz21/Fs/PCy7G/9T2C4zxXOlTL2onQOMMBVyotiRs8sZb+cB/Zkf5bHJV4gcY6p4Xit7utWuMr9w/sNjrqIhttAYRk8EAwDstFdgNR2lQNmxBD+ng8oJKpqqMsz5MY0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1774726812;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=PFrJVdx7TP+3ufkrzt6rx/Teondi1ItY87jcEzomtRQ=; 
 b=OezzVhMsXmri4ABA1ad54GUmxQ3n6X3/R9vKcXIi/yEDBO32jGpe41uaw9ddqAxoZ05Id+P+UnZ35BqD6aIrZ8D24pUtJnDSP1XmL14ygzsi0i9UxY6CsgFindQMKOtCdzwK1mMpvkN2ZdgOceiI4pyEZKFsHpPWt5m0ivKnyEM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
 dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774726812; 
 s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
 h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
 bh=PFrJVdx7TP+3ufkrzt6rx/Teondi1ItY87jcEzomtRQ=;
 b=SE9Xuq5dcOPcB5d1g54/8MzQv3XQSqdrXi1ejQ6p8Y5CBXxR6EYZq9bpv0KEHbTl
 WT9vyliLkzIh53LBFPKPNQ7eUZqoK77+JFMYVhV7cDiyseDlPjTIJPfoSQTgyCrkXuf
 zoq4x9v5OoaaJHWby/U017gb7xcrrNKyPPSKf9Ik=
Received: by mx.zohomail.com with SMTPS id 1774726809682347.74041559485704;
 Sat, 28 Mar 2026 12:40:09 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Ville =?UTF-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>,
 Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
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
Date: Sat, 28 Mar 2026 20:39:59 +0100
Message-ID: <7430347.GXAFRqVoOG@workhorse>
In-Reply-To: <acclgID7lSVNten2@intel.com>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <4153041.tdWV9SEqCh@workhorse> <acclgID7lSVNten2@intel.com>
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
	FREEMAIL_CC(0.00)[kernel.org,amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,tuxedocomputers.com,yngvason.is];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim]
X-Rspamd-Queue-Id: 5781E34FD5B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Saturday, 28 March 2026 01:49:04 Central European Standard Time Ville Sy=
rj=C3=A4l=C3=A4 wrote:
> On Fri, Mar 27, 2026 at 01:56:06PM +0100, Nicolas Frattaroli wrote:
> > On Thursday, 26 March 2026 18:58:25 Central European Standard Time Vill=
e Syrj=C3=A4l=C3=A4 wrote:
> > > On Thu, Mar 26, 2026 at 06:02:47PM +0100, Maxime Ripard wrote:
> > > > On Wed, Mar 25, 2026 at 08:43:15PM +0200, Ville Syrj=C3=A4l=C3=A4 w=
rote:
> > > > > On Wed, Mar 25, 2026 at 03:56:58PM +0100, Maxime Ripard wrote:
> > > > > > On Wed, Mar 25, 2026 at 01:03:07PM +0200, Ville Syrj=C3=A4l=C3=
=A4 wrote:
> > > > > > > On Wed, Mar 25, 2026 at 09:24:27AM +0100, Maxime Ripard wrote:
> > > > > > > > On Tue, Mar 24, 2026 at 09:53:35PM +0200, Ville Syrj=C3=A4l=
=C3=A4 wrote:
> > > > > > > > > On Tue, Mar 24, 2026 at 08:10:11PM +0100, Nicolas Frattar=
oli wrote:
> > > > > > > > > > On Tuesday, 24 March 2026 18:00:45 Central European Sta=
ndard Time Ville Syrj=C3=A4l=C3=A4 wrote:
> > > > > > > > > > > On Tue, Mar 24, 2026 at 05:01:07PM +0100, Nicolas Fra=
ttaroli wrote:
> > > > > > > > > > > > +enum drm_connector_color_format {
> > > > > > > > > > > > +	/**
> > > > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver o=
r display protocol
> > > > > > > > > > > > +	 * helpers should pick a suitable color format. A=
ll implementations of a
> > > > > > > > > > > > +	 * specific display protocol must behave the same=
 way with "AUTO", but
> > > > > > > > > > > > +	 * different display protocols do not necessarily=
 have the same "AUTO"
> > > > > > > > > > > > +	 * semantics.
> > > > > > > > > > > > +	 *
> > > > > > > > > > > > +	 * For HDMI, "AUTO" picks RGB, but falls back to =
YCbCr 4:2:0 if the
> > > > > > > > > > > > +	 * bandwidth required for full-scale RGB is not a=
vailable, or the mode
> > > > > > > > > > > > +	 * is YCbCr 4:2:0-only, as long as the mode and o=
utput both support
> > > > > > > > > > > > +	 * YCbCr 4:2:0.
> > > > > > > > > > > > +	 *
> > > > > > > > > > > > +	 * For display protocols other than HDMI, the rec=
ursive bridge chain
> > > > > > > > > > > > +	 * format selection picks the first chain of brid=
ge formats that works,
> > > > > > > > > > > > +	 * as has already been the case before the introd=
uction of the "color
> > > > > > > > > > > > +	 * format" property. Non-HDMI bridges should ther=
efore either sort their
> > > > > > > > > > > > +	 * bus output formats by preference, or agree on =
a unified auto format
> > > > > > > > > > > > +	 * selection logic that's implemented in a common=
 state helper (like
> > > > > > > > > > > > +	 * how HDMI does it).
> > > > > > > > > > > > +	 */
> > > > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_AUTO =3D 0,
> > > > > > > > > > > > +
> > > > > > > > > > > > +	/**
> > > > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_RGB444: RGB output=
 format
> > > > > > > > > > > > +	 */
> > > > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_RGB444,
> > > > > > > > > > > > +
> > > > > > > > > > > > +	/**
> > > > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR444: YCbCr 4:=
4:4 output format (ie.
> > > > > > > > > > > > +	 * not subsampled)
> > > > > > > > > > > > +	 */
> > > > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR444,
> > > > > > > > > > > > +
> > > > > > > > > > > > +	/**
> > > > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR422: YCbCr 4:=
2:2 output format (ie.
> > > > > > > > > > > > +	 * with horizontal subsampling)
> > > > > > > > > > > > +	 */
> > > > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR422,
> > > > > > > > > > > > +
> > > > > > > > > > > > +	/**
> > > > > > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR420: YCbCr 4:=
2:0 output format (ie.
> > > > > > > > > > > > +	 * with horizontal and vertical subsampling)
> > > > > > > > > > > > +	 */
> > > > > > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR420,
> > > > > > > > > > >=20
> > > > > > > > > > > Seems like this should document what the quantization=
 range
> > > > > > > > > > > should be for each format.
> > > > > > > > > > >=20
> > > > > > > > > >=20
> > > > > > > > > > I don't think so? If you want per-component bit depth v=
alues,
> > > > > > > > > > DRM_FORMAT_* defines would be the appropriate values to=
 use. This
> > > > > > > > > > enum is more abstract than that, and is there to commun=
icate
> > > > > > > > > > YUV vs. RGB and chroma subsampling, with bit depth bein=
g handled
> > > > > > > > > > by other properties.
> > > > > > > > > >=20
> > > > > > > > > > If you mean the factor used for subsampling, then that'=
d only be
> > > > > > > > > > relevant if YCBCR410 was supported where one chroma pla=
ne isn't
> > > > > > > > > > halved but quartered in resolution. I suspect 4:1:0 wil=
l never
> > > > > > > > > > be added; no digital display protocol standard supports=
 it to my
> > > > > > > > > > knowledge, and hopefully none ever will.
> > > > > > > > >=20
> > > > > > > > > No, I mean the quantization range (16-235 vs. 0-255 etc).
> > > > > > > > >=20
> > > > > > > > > The i915 behaviour is that YCbCr is always limited range,
> > > > > > > > > RGB can either be full or limited range depending on the=
=20
> > > > > > > > > "Broadcast RGB" property and other related factors.
> > > > > > > >=20
> > > > > > > > So far the HDMI state has both the format and quantization =
range as
> > > > > > > > different fields. I'm not sure we need to document the rang=
e in the
> > > > > > > > format field, maybe only mention it's not part of the forma=
t but has a
> > > > > > > > field of its own?
> > > > > > >=20
> > > > > > > I think we only have it for RGB (on some drivers only?). For =
YCbCr
> > > > > > > I think the assumption is limited range everywhere.
> > > > > > >=20
> > > > > > > But I'm not really concerned about documenting struct members.
> > > > > > > What I'm talking about is the *uapi* docs. Surely userspace
> > > > > > > will want to know what the new property actually does so the
> > > > > > > uapi needs to be documented properly. And down the line some
> > > > > > > new driver might also implement the wrong behaviour if there
> > > > > > > is no clear specification.
> > > > > >=20
> > > > > > Ack
> > > > > >=20
> > > > > > > So I'm thinking (or perhaps hoping) the rule might be somethi=
ng like:
> > > > > > > - YCbCr limited range=20
> > > > > > > - RGB full range if "Broadcast RGB" property is not present
> > > > > >=20
> > > > > > Isn't it much more complicated than that for HDMI though? My
> > > > > > recollection was that any VIC but VIC1 would be limited range, =
and
> > > > > > anything else full range?
> > > > >=20
> > > > > Do we have some driver that implements the CTA-861 CE vs. IT mode
> > > > > logic but doesn't expose the "Broadcast RGB" property? I was hopi=
ng
> > > > > those would always go hand in hand now.
> > > >=20
> > > > I'm not sure. i915 and the HDMI state helpers handle it properly (I
> > > > think?) but it looks like only vc4 registers the Broadcast RGB prop=
erty
> > > > and uses the HDMI state helpers.
> > > >=20
> > > > And it looks like amdgpu registers Broadcast RGB but doesn't use
> > > > drm_default_rgb_quant_range() which seems suspicious?
> > >=20
> > > If they want just manual full vs. limited then they should
> > > limit the property to not expose the "auto" option at all.
> > >=20
> > > amdgpu also ties this in with the "colorspace" property, which
> > > originally in i915 only controlled the infoframes/etc. But on
> > > amdgpu it now controls various aspects of output color
> > > transformation. The end result is that the property is a complete
> > > mess with most of the values making no sense. And for whatever
> > > reason everyone involved refused to remove/deprecate the
> > > nonsensical values :/
> > >=20
> > > Looks like this series should make sure the documentation for
> > > the "colorspace" property is in sync with the new property
> > > as well. Currently now it's giving conflicting information.
> > >=20
> >=20
> > I take it the problematic information is in
> >=20
> >     * DOC: standard connector properties
> >     *
> >     * Colorspace:
> >=20
> > and probably specifically BT2020_YCC's (and BT2020_RGB's?) insistence
> > that they "produce RGB content".
> >=20
> > I think we probably just have to change the statement "The variants
> > BT2020_RGB and BT2020_YCC are equivalent and the driver chooses between
> > RGB and YCbCr on its own."
> >=20
> > The "on its own" here would get turned into "based on the color format
> > property".
> >=20
> > Speaking of i915, that patch is one of the very few (5) patches in
> > this series still lacking a review (hint hint nudge nudge). I'd like
> > to get some more feedback on the remaining patches before I send out
> > another revision, so that it's hopefully not just docs changes (I
> > know better than to think those patches must be perfect and won't
> > need revision.)
>=20
> The i915 code around this is already a big mess, and I don't really
> adding to that mess. So I think we'll need to do some refactoring before
> we add anything there. I already started typing something and so far
> it looks fairly straightforward, so I should have something soon.
>=20
> While doing that several questions came to my mind though:
>=20
> * More interactions with the colorspace property, but I sent
>   a separate mail already about that
>=20
> * Which conversion matrix to use, and the answer I suspect
>   should be "ask the colorspace property", as mentioned in the
>   other mail
>=20
> * Should we flat out reject color formats (and I suppose also
>   colorspace prop values) the sink doesn't claim to support?

That is currently the intention, yes. In the common HDMI state
helper, hdmi_try_format_bpc will return false if a format isn't
supported by the sink at a certain bpc, and ultimately, make its
caller return -EINVAL if it's not supported at any bpc.

Userspace asking for something impossible will result in userspace
being told so during atomic check, or at least that's the intention.
=20
>   If yes, then I think we'll have to forget about adding anything=20
>   to i915 MST code. The way the MST stuff works is that if one
>   stream needs a modeset then all the related streams get modeset
>   as well. Thus if the user replaces a monitor getting fed with a
>   YCbCr stream just as another stream is being modeset, then the
>   entire atomic commit could fail due to the YCbCr stream getting
>   rejected.

Yeah, my patch has an MST implementation for i915 and it does "work"
for the simple case where monitors don't have different sets of
supported formats, but I think it's better we make MST just not
have the property. May also drop it from amdgpu as a consequence.

>   I think eventually we might have to invent some mechanism where
>   all the input into the modeset computation is cached somehow,
>   and said cache updated only on explicit userspace modesets.
>   Either that or we have to come up  with a way to skip some of
>   the calculations that depend on external factors. Either way
>   it's going to be a pain.
>=20
>   OTOH if we don't mind feeding the sink with stuff it can't
>   understand, then I suppose we might add YCbCr 4:4:4 support
>   for MST. It shouldn't be any different from RGB apart from
>   the RGB->YCbCr conversion, which is handled elsewhere. But
>   YCbCr 4:2:0 is definitely out either way, the MST code has
>   no support for that currently.

My general approach so far has been that we should never feed
the sink anything it can't handle. This results in some fun edge
cases, e.g. my primary monitor (ASUS XG27AQDMG) does support
YCbCr 4:2:0 on all modes, but since I'm talking to it from an
HDMI 1.4b device, it only exposes the two modes in the EDID it
sends the device as YCbCr 4:2:0 that need it. In that case, the
kernel is stricter than the sink because it takes it by its word.
I think forcing userspace to make safer choices is preferable over
having the monitor lose its picture. If people want to be
adventurous, they can always override the EDID, and thus get away
with such things.

Kind regards,
Nicolas Frattaroli


