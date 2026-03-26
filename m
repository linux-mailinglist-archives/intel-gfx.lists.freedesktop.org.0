Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMaQDpgVxWnr6QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:16:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD95133441A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:16:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85E0C10E1EA;
	Thu, 26 Mar 2026 11:16:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="Ovm76Wwz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
 [209.85.208.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65F4510E2AC
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:16:32 +0000 (UTC)
Received: by mail-lj1-f176.google.com with SMTP id
 38308e7fff4ca-38a76ba6a78so6428711fa.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 04:16:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774523790; cv=none;
 d=google.com; s=arc-20240605;
 b=Sid9OJYzWSgO1YLTB8YtEHaRKCQlX/PzqXaa6z+gTE1I8BNmBygkVSNi0BVbVR9kUM
 d8TQKFqBK1zd71HgGTZqo9qnl4i2dJv90X3LiwscI6/N0Y94pp32uw0cYzH9HATs2aEi
 5ruvNbN1RxHoQMTwZfO0XP0tpGKz3T1j9rnxgcyZjs9qKRg2g3Mlj5zAqu6mmAp43x2Q
 mUoK1fiH4tZZI6CdAYpsCIVvYf3P1d+U1xNfYm///o9h5XdUrDFKyyAZvxGuc8IpEjIC
 jRD/k/r/f7q2hhyd72Vrc25GCY2dwnrdkSaHLx2OzGJLIzSzShjN2AU+8ajGTV2dMgng
 KJnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=6rf/HnBT4sVRvVngZaBiBN8W+WY+3EMKSNCjcGGlMVE=;
 fh=UTnmdm27nsui1qzelV+sn8lWQyOvP0A4TMIaTKjEBxg=;
 b=PS/TzqMtNq780Lvbrbd3/jLH6qxCgqQtd351JBMgS5xZa96zAzPy8OLtQ2vMt6u3D4
 WqecCmCG/SdmC0OnCIEkxT8x7M9+2/8fraf4ISXgZCU+P/ozBlsYsEwxkpPebBi2pqqJ
 NFN0sRu64iPyiJvjeTC4XUeUC9ToUPkew00uCf0MCmnDplHxPAG6ENiZvYW7qkzFStbx
 6P7ivlm7Xpl7xl6p7TVDkYMdivJAfVeQ2Bgyw+Z2kH627qWIyvPnHDMkrDqhWMrlhgxg
 HncFCNAm6IqlGXZFl4IAgeqUXYLyE9xluIY9vHbFJkK/rZY0/97bS4iJfVcoDYTohZEp
 yTwA==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google; t=1774523790; x=1775128590;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6rf/HnBT4sVRvVngZaBiBN8W+WY+3EMKSNCjcGGlMVE=;
 b=Ovm76Wwz8lmOccgPVHFDPFFXp2LgeiL6Wa06PLQ/jpXJDyvUi1+l4KFIzw2l0hk7Tb
 cAJatZePUpbYSkuIESzO1dKA1POWe67brI9Fl65bMkgORFPkrvwuotlpxWk/5n3sBMlU
 oI03ru9EpBoX2IC7HKE/OEne8urdZI9SUln6xcLXQYEMvyqKehNBHxR6Zwu426xqS2pU
 IQXmX6tn9yeBBCyVGSWSTasD8HCtJSfXTIslEjyZ5sv2N0c9IbDa6OctNdBrgc6aZG8I
 xPZTfvHXjtg1ntRgavGmYHOynnBjd8ZipY5NuJQC0P6ZNk5+AmlUr1qB5Jkw35sswH2M
 +e5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774523790; x=1775128590;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=6rf/HnBT4sVRvVngZaBiBN8W+WY+3EMKSNCjcGGlMVE=;
 b=dR0Kmk0FuGiHaax0FIflsXqN7qmASOHyvOOabdkDTEKQZqjHpBLTQdhEOSUUWIEfo4
 tJtzJsyxsDtPX3BSMQwkBZBdZKwtGtrL3V16Pd05NYVOGyJrk7oW/fFSxNtLFpcUdSKZ
 cqgKIZSGBiljcuw586L+upBxGzAlJgWGuXA5sDPqId2FKNsAJg6GSkDeYhRCLVBrBIQo
 7tYIs27+gshHpWJLZRMYju6pW14END+IaR7s0di4NBOMC0qMihbMkjHZ5RB1MWH1EVfd
 vodzeEvbi/Ur+y0/8OrmIodF+wqSwIc7Dr7rndigzZrG+/k/eAC5oBHXmsCgxME41bOx
 3hVQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWSmIP1eaDE2TGTLhodt2GV5HS0aZIQaoIg1nlrwALoeUsz2DNvqMwOZ2332pHQST6lSC1bHJH+lHY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz4Ntg6uLfvYf8x5xnG3k0/qAvY9hWI5SNxXb9nzhbU88WPiWWA
 d7knj9kmZKxFgxU3inqqPwXm78huFYgo/5jAHRImNw9fz8iG9p787xbRL1IFnh2kXQimE+XRKvk
 2f1pvtx6MIG3ZIYc8OeK97au5SCoFVHpwcRJ5rwQJbA==
X-Gm-Gg: ATEYQzzKbA8mQ8C5vTF2vQwZPWMukBVxqiUrYDsptj1usnm3b7nFrMkxQ6pBIQTsJIk
 IJS2DT6/qgKOdsgQ4Zu8k1TymbZqWCL03bsRzIv1V1W1qMKY5dszckKSa/PqoYIkgHqWQLFo2za
 Dh3RRZFgXAs6Sztmaj2Sp46OFIlbu3QjjmeK6/bsyM2a0BmslmgtbhzBWWoA1gTkEmpHsgfQAhY
 STn/iYwr9/zePqtnQXShuFF219LxP8qnXvDlzycrqiip8xdvxkRaqS52QNWMy70hbWOpnBLiSFy
 JGpID2yIRTdQL9nwyQtMhDMt2CEy4UxvnGg03/g=
X-Received: by 2002:a05:6512:b8b:b0:5a1:2fa5:b98f with SMTP id
 2adb3069b0e04-5a29b9959c1mr3477197e87.26.1774523790279; Thu, 26 Mar 2026
 04:16:30 -0700 (PDT)
MIME-Version: 1.0
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <20260324-color-format-v11-3-605559af4fb4@collabora.com>
 <CAPY8ntB9f_=f5kru=8w9BpTuqQR+93maGpT61EKU28Uay2vq8Q@mail.gmail.com>
 <acPmcMbUvzWMzC-Q@intel.com>
In-Reply-To: <acPmcMbUvzWMzC-Q@intel.com>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Thu, 26 Mar 2026 11:16:12 +0000
X-Gm-Features: AQROBzDGajsKgoOGqGR1Gk-yLiqzdDdCXpeNLW8nQJu3ooxAvN__EfhXfmKn6Bk
Message-ID: <CAPY8ntCRPgN_ayHMGXFv9OrJrdyakUcUT0rvgY5J=FvdCFb6eA@mail.gmail.com>
Subject: Re: [PATCH v11 03/22] drm: Add new general DRM property "color format"
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
 Rodrigo Siqueira <siqueira@igalia.com>,
 Alex Deucher <alexander.deucher@amd.com>, 
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, Sandy Huang <hjc@rock-chips.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 kernel@collabora.com, 
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org, 
 Werner Sembach <wse@tuxedocomputers.com>, Andri Yngvason <andri@yngvason.is>, 
 Marius Vlad <marius.vlad@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[raspberrypi.com,reject];
	R_DKIM_ALLOW(-0.20)[raspberrypi.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:ville.syrjala@linux.intel.com,m:nicolas.frattaroli@collabora.com,m:harry.wentland@amd.com,m:sunpeng.li@amd.com,m:siqueira@igalia.com,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:lumag@kernel.org,m:s.hauer@pengutronix.de,m:robh@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:kernel@collabora.com,m:amd-gfx@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:intel-xe@lists.freedesktop.org
 ,m:linux-doc@vger.kernel.org,m:wse@tuxedocomputers.com,m:andri@yngvason.is,m:marius.vlad@collabora.com,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[dave.stevenson@raspberrypi.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[raspberrypi.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dave.stevenson@raspberrypi.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[collabora.com,amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,tuxedocomputers.com,yngvason.is];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,yngvason.is:email,collabora.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,raspberrypi.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: DD95133441A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 25 Mar 2026 at 13:43, Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> On Wed, Mar 25, 2026 at 12:49:19PM +0000, Dave Stevenson wrote:
> > On Tue, 24 Mar 2026 at 16:02, Nicolas Frattaroli
> > <nicolas.frattaroli@collabora.com> wrote:
> > >
> > > Add a new general DRM property named "color format" which can be used=
 by
> > > userspace to request the display driver to output a particular color
> > > format.
> > >
> > > Possible options are:
> > >     - auto (setup by default, driver internally picks the color forma=
t)
> > >     - rgb
> > >     - ycbcr444
> > >     - ycbcr422
> > >     - ycbcr420
> > >
> > > Drivers should advertise from this list which formats they support.
> > > Together with this list and EDID data from the sink we should be able
> > > to relay a list of usable color formats to users to pick from.
> > >
> > > Co-developed-by: Werner Sembach <wse@tuxedocomputers.com>
> > > Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
> > > Co-developed-by: Andri Yngvason <andri@yngvason.is>
> > > Signed-off-by: Andri Yngvason <andri@yngvason.is>
> > > Signed-off-by: Marius Vlad <marius.vlad@collabora.com>
> > > Reviewed-by: Maxime Ripard <mripard@kernel.org>
> > > Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> > > ---
> > >  drivers/gpu/drm/drm_atomic_helper.c |   5 ++
> > >  drivers/gpu/drm/drm_atomic_uapi.c   |  11 ++++
> > >  drivers/gpu/drm/drm_connector.c     | 108 ++++++++++++++++++++++++++=
++++++++++
> > >  include/drm/drm_connector.h         | 104 ++++++++++++++++++++++++++=
++++++++
> > >  4 files changed, 228 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/dr=
m_atomic_helper.c
> > > index 26953ed6b53e..b7753454b777 100644
> > > --- a/drivers/gpu/drm/drm_atomic_helper.c
> > > +++ b/drivers/gpu/drm/drm_atomic_helper.c
> > > @@ -737,6 +737,11 @@ drm_atomic_helper_check_modeset(struct drm_devic=
e *dev,
> > >                         if (old_connector_state->max_requested_bpc !=
=3D
> > >                             new_connector_state->max_requested_bpc)
> > >                                 new_crtc_state->connectors_changed =
=3D true;
> > > +
> > > +                       if (old_connector_state->color_format !=3D
> > > +                           new_connector_state->color_format)
> > > +                               new_crtc_state->connectors_changed =
=3D true;
> > > +
> > >                 }
> > >
> > >                 if (funcs->atomic_check)
> > > diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_=
atomic_uapi.c
> > > index 5bd5bf6661df..dee510c85e59 100644
> > > --- a/drivers/gpu/drm/drm_atomic_uapi.c
> > > +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> > > @@ -935,6 +935,15 @@ static int drm_atomic_connector_set_property(str=
uct drm_connector *connector,
> > >                 state->privacy_screen_sw_state =3D val;
> > >         } else if (property =3D=3D connector->broadcast_rgb_property)=
 {
> > >                 state->hdmi.broadcast_rgb =3D val;
> > > +       } else if (property =3D=3D connector->color_format_property) =
{
> > > +               if (val > INT_MAX || !drm_connector_color_format_vali=
d(val)) {
> > > +                       drm_dbg_atomic(connector->dev,
> > > +                                      "[CONNECTOR:%d:%s] unknown col=
or format %llu\n",
> > > +                                      connector->base.id, connector-=
>name, val);
> > > +                       return -EINVAL;
> > > +               }
> > > +
> > > +               state->color_format =3D val;
> > >         } else if (connector->funcs->atomic_set_property) {
> > >                 return connector->funcs->atomic_set_property(connecto=
r,
> > >                                 state, property, val);
> > > @@ -1020,6 +1029,8 @@ drm_atomic_connector_get_property(struct drm_co=
nnector *connector,
> > >                 *val =3D state->privacy_screen_sw_state;
> > >         } else if (property =3D=3D connector->broadcast_rgb_property)=
 {
> > >                 *val =3D state->hdmi.broadcast_rgb;
> > > +       } else if (property =3D=3D connector->color_format_property) =
{
> > > +               *val =3D state->color_format;
> > >         } else if (connector->funcs->atomic_get_property) {
> > >                 return connector->funcs->atomic_get_property(connecto=
r,
> > >                                 state, property, val);
> > > diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_co=
nnector.c
> > > index 47dc53c4a738..e848374dee0b 100644
> > > --- a/drivers/gpu/drm/drm_connector.c
> > > +++ b/drivers/gpu/drm/drm_connector.c
> > > @@ -1388,6 +1388,18 @@ static const u32 hdmi_colorspaces =3D
> > >         BIT(DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65) |
> > >         BIT(DRM_MODE_COLORIMETRY_DCI_P3_RGB_THEATER);
> > >
> > > +static const u32 hdmi_colorformats =3D
> > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444) |
> > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444) |
> > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422) |
> > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420);
> > > +
> > > +static const u32 dp_colorformats =3D
> > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444) |
> > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444) |
> > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422) |
> > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420);
> > > +
> > >  /*
> > >   * As per DP 1.4a spec, 2.2.5.7.5 VSC SDP Payload for Pixel Encoding=
/Colorimetry
> > >   * Format Table 2-120
> > > @@ -2940,6 +2952,102 @@ int drm_connector_attach_colorspace_property(=
struct drm_connector *connector)
> > >  }
> > >  EXPORT_SYMBOL(drm_connector_attach_colorspace_property);
> > >
> > > +/**
> > > + * drm_connector_attach_color_format_property - create and attach co=
lor format property
> > > + * @connector: connector to create the color format property on
> > > + * @supported_color_formats: bitmask of bit-shifted &enum drm_output=
_color_format
> > > + *                           values the connector supports
> > > + *
> > > + * Called by a driver to create a color format property. The propert=
y is
> > > + * attached to the connector automatically on success.
> > > + *
> > > + * @supported_color_formats should only include color formats the co=
nnector
> > > + * type can actually support.
> > > + *
> > > + * Returns:
> > > + * 0 on success, negative errno on error
> > > + */
> > > +int drm_connector_attach_color_format_property(struct drm_connector =
*connector,
> > > +                                              unsigned long supporte=
d_color_formats)
> > > +{
> > > +       struct drm_device *dev =3D connector->dev;
> > > +       struct drm_prop_enum_list enum_list[DRM_CONNECTOR_COLOR_FORMA=
T_COUNT];
> > > +       unsigned int i =3D 0;
> > > +       unsigned long fmt;
> > > +
> > > +       if (connector->color_format_property)
> > > +               return 0;
> > > +
> > > +       if (!supported_color_formats) {
> > > +               drm_err(dev, "No supported color formats provided on =
[CONNECTOR:%d:%s]\n",
> > > +                       connector->base.id, connector->name);
> > > +               return -EINVAL;
> > > +       }
> > > +
> > > +       if (supported_color_formats & ~GENMASK(DRM_OUTPUT_COLOR_FORMA=
T_COUNT - 1, 0)) {
> > > +               drm_err(dev, "Unknown color formats provided on [CONN=
ECTOR:%d:%s]\n",
> > > +                       connector->base.id, connector->name);
> > > +               return -EINVAL;
> > > +       }
> > > +
> > > +       switch (connector->connector_type) {
> > > +       case DRM_MODE_CONNECTOR_HDMIA:
> > > +       case DRM_MODE_CONNECTOR_HDMIB:
> > > +               if (supported_color_formats & ~hdmi_colorformats) {
> > > +                       drm_err(dev, "Color formats not allowed for H=
DMI on [CONNECTOR:%d:%s]\n",
> > > +                               connector->base.id, connector->name);
> > > +                       return -EINVAL;
> > > +               }
> > > +               break;
> > > +       case DRM_MODE_CONNECTOR_DisplayPort:
> > > +       case DRM_MODE_CONNECTOR_eDP:
> > > +               if (supported_color_formats & ~dp_colorformats) {
> > > +                       drm_err(dev, "Color formats not allowed for D=
P on [CONNECTOR:%d:%s]\n",
> > > +                               connector->base.id, connector->name);
> > > +                       return -EINVAL;
> > > +               }
> > > +               break;
> > > +       }
> > > +
> > > +       enum_list[0].name =3D "AUTO";
> > > +       enum_list[0].type =3D DRM_CONNECTOR_COLOR_FORMAT_AUTO;
> > > +
> > > +       for_each_set_bit(fmt, &supported_color_formats, DRM_OUTPUT_CO=
LOR_FORMAT_COUNT) {
> > > +               switch (fmt) {
> > > +               case DRM_OUTPUT_COLOR_FORMAT_RGB444:
> > > +                       enum_list[++i].type =3D DRM_CONNECTOR_COLOR_F=
ORMAT_RGB444;
> > > +                       break;
> > > +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR444:
> > > +                       enum_list[++i].type =3D DRM_CONNECTOR_COLOR_F=
ORMAT_YCBCR444;
> > > +                       break;
> > > +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR422:
> > > +                       enum_list[++i].type =3D DRM_CONNECTOR_COLOR_F=
ORMAT_YCBCR422;
> > > +                       break;
> > > +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR420:
> > > +                       enum_list[++i].type =3D DRM_CONNECTOR_COLOR_F=
ORMAT_YCBCR420;
> > > +                       break;
> > > +               default:
> > > +                       drm_warn(dev, "Unknown supported format %ld o=
n [CONNECTOR:%d:%s]\n",
> > > +                                fmt, connector->base.id, connector->=
name);
> > > +                       continue;
> > > +               }
> > > +               enum_list[i].name =3D drm_hdmi_connector_get_output_f=
ormat_name(fmt);
> > > +       }
> > > +
> > > +       connector->color_format_property =3D
> > > +               drm_property_create_enum(dev, DRM_MODE_PROP_ENUM, "co=
lor format",
> > > +                                        enum_list, i + 1);
> > > +
> > > +       if (!connector->color_format_property)
> > > +               return -ENOMEM;
> > > +
> > > +       drm_object_attach_property(&connector->base, connector->color=
_format_property,
> > > +                                  DRM_CONNECTOR_COLOR_FORMAT_AUTO);
> > > +
> > > +       return 0;
> > > +}
> > > +EXPORT_SYMBOL(drm_connector_attach_color_format_property);
> > > +
> > >  /**
> > >   * drm_connector_atomic_hdr_metadata_equal - checks if the hdr metad=
ata changed
> > >   * @old_state: old connector state to compare
> > > diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.=
h
> > > index af8b92d2d5b7..bd549f912b76 100644
> > > --- a/include/drm/drm_connector.h
> > > +++ b/include/drm/drm_connector.h
> > > @@ -571,14 +571,102 @@ enum drm_colorspace {
> > >   *   YCbCr 4:2:2 output format (ie. with horizontal subsampling)
> > >   * @DRM_OUTPUT_COLOR_FORMAT_YCBCR420:
> > >   *   YCbCr 4:2:0 output format (ie. with horizontal and vertical sub=
sampling)
> > > + * @DRM_OUTPUT_COLOR_FORMAT_COUNT:
> > > + *   Number of valid output color format values in this enum
> > >   */
> > >  enum drm_output_color_format {
> > >         DRM_OUTPUT_COLOR_FORMAT_RGB444 =3D 0,
> > >         DRM_OUTPUT_COLOR_FORMAT_YCBCR444,
> > >         DRM_OUTPUT_COLOR_FORMAT_YCBCR422,
> > >         DRM_OUTPUT_COLOR_FORMAT_YCBCR420,
> > > +       DRM_OUTPUT_COLOR_FORMAT_COUNT,
> > >  };
> > >
> > > +/**
> > > + * enum drm_connector_color_format - Connector Color Format Request
> > > + *
> > > + * This enum, unlike &enum drm_output_color_format, is used to speci=
fy requests
> > > + * for a specific color format on a connector through the DRM "color=
 format"
> > > + * property. The difference is that it has an "AUTO" value to specif=
y that
> > > + * no specific choice has been made.
> > > + */
> > > +enum drm_connector_color_format {
> > > +       /**
> > > +        * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver or display pr=
otocol
> > > +        * helpers should pick a suitable color format. All implement=
ations of a
> > > +        * specific display protocol must behave the same way with "A=
UTO", but
> > > +        * different display protocols do not necessarily have the sa=
me "AUTO"
> > > +        * semantics.
> > > +        *
> > > +        * For HDMI, "AUTO" picks RGB, but falls back to YCbCr 4:2:0 =
if the
> > > +        * bandwidth required for full-scale RGB is not available, or=
 the mode
> > > +        * is YCbCr 4:2:0-only, as long as the mode and output both s=
upport
> > > +        * YCbCr 4:2:0.
> >
> > Is there a reason you propose dropping back to YCbCr 4:2:0 without
> > trying YCbCr 4:2:2 first? Minimising the subsampling is surely
> > beneficial, and vc4 for one can do 4:2:2 but not 4:2:0.
>
> On HDMI 4:2:2 is always 12bpc, so it doesn't save any bandwidth
> compared to 8bpc 4:4:4.

It does save bandwidth against 10 or 12bpc RGB 4:4:4.

Or is the implication that max_bpc =3D 12 and
DRM_CONNECTOR_COLOR_FORMAT_AUTO should drop bpc down to 8 and select
RGB in preference to selecting 4:2:2?

  Dave

> --
> Ville Syrj=C3=A4l=C3=A4
> Intel
