Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mNe/AjU0xWlS8AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 14:27:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61574335F12
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 14:27:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD2D910EA10;
	Thu, 26 Mar 2026 13:27:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b="HBcXyV1a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1A4D10EA0F;
 Thu, 26 Mar 2026 13:27:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1774531618; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=inF8c0T9S04BCFBJF/AFqs0QQE1fnL6+L0KLfp2qflAKOoeaNF7POilnvsA4ogT6zDYEJzs/DCseE80aWKaUz95nmU2U1FPPkxmNHr6fa9tAABj6/T0/YzxGOEfjkI2vE7iix4wdHGsYY+jGCIIpca2Is5cbPETQB2cW49W/Z1Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1774531618;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=AMrMoDyMoCm1J1RqpO4nLs9/wPH8TbeR8ZH8ieMqM3M=; 
 b=F/uVOgmOl/+m0cjgsZP2y8CQcCEJp7/Yg24rmTHvQeop6slol6pRNfz33yzdJwytMxRzBykwUO1UZRD6U1RSUHwIQfw2LwMYGCPCK7s0zi3sF3kvj1eLwMbFVG/l1Kolu1GsIta26G2M2I0EuRjqkDbRVtjCfe7IrS/JP9zacG8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
 dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774531618; 
 s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
 h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
 bh=AMrMoDyMoCm1J1RqpO4nLs9/wPH8TbeR8ZH8ieMqM3M=;
 b=HBcXyV1aOElHJrP/+ER67nmCR0XxtxLBZgcVosoR2oun5PXk84eq4XCERgt0txCj
 n1btqz4DhdJsscJVr/Z3XksBjfuJCDRFbqPwSO1mPImfxdfB188suw3+SZnrbcmpGbo
 LUMkv9IiZsZn/W4s/g4yu3jAGvxeNMghnaVP+9zg=
Received: by mx.zohomail.com with SMTPS id 177453161763075.0968772878656;
 Thu, 26 Mar 2026 06:26:57 -0700 (PDT)
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
Date: Thu, 26 Mar 2026 14:26:47 +0100
Message-ID: <16004581.uLZWGnKmhe@workhorse>
In-Reply-To: <acUvg3Y7kMf2qioK@intel.com>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <3979783.tdWV9SEqCh@workhorse> <acUvg3Y7kMf2qioK@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,collabora.com:dkim]
X-Rspamd-Queue-Id: 61574335F12
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thursday, 26 March 2026 14:07:15 Central European Standard Time Ville Sy=
rj=C3=A4l=C3=A4 wrote:
> On Thu, Mar 26, 2026 at 01:44:03PM +0100, Nicolas Frattaroli wrote:
> > On Wednesday, 25 March 2026 12:03:07 Central European Standard Time Vil=
le Syrj=C3=A4l=C3=A4 wrote:
> > > On Wed, Mar 25, 2026 at 09:24:27AM +0100, Maxime Ripard wrote:
> > > > On Tue, Mar 24, 2026 at 09:53:35PM +0200, Ville Syrj=C3=A4l=C3=A4 w=
rote:
> > > > > On Tue, Mar 24, 2026 at 08:10:11PM +0100, Nicolas Frattaroli wrot=
e:
> > > > > > On Tuesday, 24 March 2026 18:00:45 Central European Standard Ti=
me Ville Syrj=C3=A4l=C3=A4 wrote:
> > > > > > > On Tue, Mar 24, 2026 at 05:01:07PM +0100, Nicolas Frattaroli =
wrote:
> > > > > > > > +enum drm_connector_color_format {
> > > > > > > > +	/**
> > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver or displa=
y protocol
> > > > > > > > +	 * helpers should pick a suitable color format. All imple=
mentations of a
> > > > > > > > +	 * specific display protocol must behave the same way wit=
h "AUTO", but
> > > > > > > > +	 * different display protocols do not necessarily have th=
e same "AUTO"
> > > > > > > > +	 * semantics.
> > > > > > > > +	 *
> > > > > > > > +	 * For HDMI, "AUTO" picks RGB, but falls back to YCbCr 4:=
2:0 if the
> > > > > > > > +	 * bandwidth required for full-scale RGB is not available=
, or the mode
> > > > > > > > +	 * is YCbCr 4:2:0-only, as long as the mode and output bo=
th support
> > > > > > > > +	 * YCbCr 4:2:0.
> > > > > > > > +	 *
> > > > > > > > +	 * For display protocols other than HDMI, the recursive b=
ridge chain
> > > > > > > > +	 * format selection picks the first chain of bridge forma=
ts that works,
> > > > > > > > +	 * as has already been the case before the introduction o=
f the "color
> > > > > > > > +	 * format" property. Non-HDMI bridges should therefore ei=
ther sort their
> > > > > > > > +	 * bus output formats by preference, or agree on a unifie=
d auto format
> > > > > > > > +	 * selection logic that's implemented in a common state h=
elper (like
> > > > > > > > +	 * how HDMI does it).
> > > > > > > > +	 */
> > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_AUTO =3D 0,
> > > > > > > > +
> > > > > > > > +	/**
> > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_RGB444: RGB output format
> > > > > > > > +	 */
> > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_RGB444,
> > > > > > > > +
> > > > > > > > +	/**
> > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR444: YCbCr 4:4:4 outp=
ut format (ie.
> > > > > > > > +	 * not subsampled)
> > > > > > > > +	 */
> > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR444,
> > > > > > > > +
> > > > > > > > +	/**
> > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR422: YCbCr 4:2:2 outp=
ut format (ie.
> > > > > > > > +	 * with horizontal subsampling)
> > > > > > > > +	 */
> > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR422,
> > > > > > > > +
> > > > > > > > +	/**
> > > > > > > > +	 * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR420: YCbCr 4:2:0 outp=
ut format (ie.
> > > > > > > > +	 * with horizontal and vertical subsampling)
> > > > > > > > +	 */
> > > > > > > > +	DRM_CONNECTOR_COLOR_FORMAT_YCBCR420,
> > > > > > >=20
> > > > > > > Seems like this should document what the quantization range
> > > > > > > should be for each format.
> > > > > > >=20
> > > > > >=20
> > > > > > I don't think so? If you want per-component bit depth values,
> > > > > > DRM_FORMAT_* defines would be the appropriate values to use. Th=
is
> > > > > > enum is more abstract than that, and is there to communicate
> > > > > > YUV vs. RGB and chroma subsampling, with bit depth being handled
> > > > > > by other properties.
> > > > > >=20
> > > > > > If you mean the factor used for subsampling, then that'd only be
> > > > > > relevant if YCBCR410 was supported where one chroma plane isn't
> > > > > > halved but quartered in resolution. I suspect 4:1:0 will never
> > > > > > be added; no digital display protocol standard supports it to my
> > > > > > knowledge, and hopefully none ever will.
> > > > >=20
> > > > > No, I mean the quantization range (16-235 vs. 0-255 etc).
> > > > >=20
> > > > > The i915 behaviour is that YCbCr is always limited range,
> > > > > RGB can either be full or limited range depending on the=20
> > > > > "Broadcast RGB" property and other related factors.
> > > >=20
> > > > So far the HDMI state has both the format and quantization range as
> > > > different fields. I'm not sure we need to document the range in the
> > > > format field, maybe only mention it's not part of the format but ha=
s a
> > > > field of its own?
> > >=20
> > > I think we only have it for RGB (on some drivers only?). For YCbCr
> > > I think the assumption is limited range everywhere.
> > >=20
> > > But I'm not really concerned about documenting struct members.
> > > What I'm talking about is the *uapi* docs. Surely userspace
> > > will want to know what the new property actually does so the
> > > uapi needs to be documented properly. And down the line some
> > > new driver might also implement the wrong behaviour if there
> > > is no clear specification.
> > >=20
> > > So I'm thinking (or perhaps hoping) the rule might be something like:
> > > - YCbCr limited range=20
> > > - RGB full range if "Broadcast RGB" property is not present
> > > - RGB full or limited range based on the "Broadcast RGB" property
> > >   if it's present
> > >=20
> > > I think the "Broadcast RGB" property itself might also be lacking
> > > proper uapi docs, so that may need to be remedied as well.
> > >=20
> > >=20
> >=20
> > Alright, so in v12 I'll do the following:
> >=20
> > - Add a line to all YCBCR connector formats that specifies they're
> >   limited range as long as Broadcast RGB is limited. Whether it's limit=
ed
> >   range when Broadcast RGB is full is purposefully left undefined.
>=20
> "Broadcast RGB", as the name implies, only affects RGB output.

Alright, I'll scratch the overcomplicated undefined behaviour thing
and just say it's limited range, and in the future, we can extend it
to limited range by default but full range if another new property is
set.

>=20
> >   In the future, we can expand this to state they're limited range by
> >   default unless some other property is set. If we're not re-using
> >   Broadcast RGB for that, this will work out fine, because users who
> >   don't know about the eventual new property won't have this behaviour
> >   changed. If we do re-use "Broadcast RGB" for that, then only users
> >   relying on things we explicitly left undefined will get surprise
> >   full range YCBCR.
> > - Add a line to the RGB connector format that specifies its range
> >   depends on the "Broadcast RGB" property
> >=20
> > This is a bit of a mess, because it's entirely reasonable that a
> > future YCBCR range property would want to default to full range
> > so that users get the most color out of their monitors. But with
> > this description of the connector color formats, we can't do that.
> >=20
> > If there are alternate suggestions, I'm open for them. We can't
> > really rename "Broadcast RGB" but if I had a time machine, that'd
> > be my first choice.
> >=20
> > Kind regards,
> > Nicolas Frattaroli
> >=20
>=20
>=20




