Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCCcABU3xWn/8AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 14:39:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8EE33621D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 14:39:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ED2C10E9D9;
	Thu, 26 Mar 2026 13:39:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="VWIz5Dqu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com
 [209.85.128.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E7E310E969
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 13:39:23 +0000 (UTC)
Received: by mail-yw1-f176.google.com with SMTP id
 00721157ae682-7982c3b7dfcso10070167b3.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 06:39:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774532362; cv=none;
 d=google.com; s=arc-20240605;
 b=Wv67rYOciiONgcsTRpfpH//nJ2tId2R/rcmnJXfBoUlVEspGtB5+PrhD2ftYLnZOwo
 pWwMS7ikfhSA+Psx2bh8fXWM9U/4i3YnBKuHJm9rdfYbmST6d4mwQf1ykFMDRo1WAU5D
 HNR8KxVNvXF0zg/9SdZgTBOcUiHEFvNklyIea5kx1uYD14IdmkqYZ2t1z9N2IyLMSBA+
 udgYBmNfFq/mKVelxhFPAeXFJkbRl7Sc2uAjhMSU2ms4DY/S8YxQItn2VxSsuZ4VX0Ef
 Eo+YTdubY7NiAyOhu74Ra07VwxOzanGvBGrWG5D7XN95xcy8TknH5JKn2dzGVHC+Y3lg
 3BXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=IWnlq3YY7P2VGUr2BUkZ+fGGbSx856WYxcxWvnN8cGU=;
 fh=oLpuS+/pTwVG44aM0nA6YfBRD6lvYjT6AjrlYIwe8Eg=;
 b=Nbea64X/EyYYwPHv03Z457pD1DqE60EQOCUnzbnz+la/qqkOdPhBOUeg1ZM0fCRiBh
 hU0gfP1kBzll/clnI7gvrUG+yU1TMek7vKwWF4dXzAyHJMCsm4M92lG7yHmDYJMn1jut
 dQ9PPRczFrVxE5k1JjlVGkc2cXWn6LBmRtT5ZQt1uMLWC6Qw/qFJy19Hls0KfSCQhVWe
 utchVPBeJfEm0Bywd1ZCwyAWZJXL3LYFS/4i1DC2lurbTTv14Wta6FnAEOeyOrKP1Qj+
 k44vb0dmlxngZmNGD50Vqii87MVxIYlqK6Lyq9m2SfSdfpWh8PalrtkB0MgTjcVXTxML
 brdg==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google; t=1774532362; x=1775137162;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IWnlq3YY7P2VGUr2BUkZ+fGGbSx856WYxcxWvnN8cGU=;
 b=VWIz5DquPpxhvNQuBRF/KNB4nghz+Cev85IkmYO5/WFT7MLWzCMNSumzaCHCTtCfUw
 x7jIul9/nTLfi6aqhhg1XB+q+Zge8+AKQhK3Jsm1x1kNNnP2rFPQhGnM6mtoalkwXTFV
 qbFkJDUI4DtNKa6kGER0ibAl1s7z0YIlAnvPdGkqRsif/TWyROieIlORnS/uIPpr05O0
 6obJjLScx89MG3L6b167FfnIutyc6daJYSzsNlkrbka2/CtdSYAa7glspCf4NvGujwaM
 V5AtNZSJuCDLuhGI6kEjNTxcfP4VuRnRVN09JIlkOtSL+ITShRlaN1er1Cljs8PJdJrR
 fV9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774532362; x=1775137162;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=IWnlq3YY7P2VGUr2BUkZ+fGGbSx856WYxcxWvnN8cGU=;
 b=Z44A+lfcRzZboQrPRcK+AnL+wLBYO+VHe3bFUmxKLhwG3Y044oNj0YJl3mQRFcMgQe
 1QdpTNmtPRDrs9b3TfJQhAQujiZe8xPExmft95kqdeecv3aMpMmLFxu6qvXUGcFCe7CC
 Cpbx7hNOraxu1+wX5BT9ayiXgg/+4msWRUkvyMcgWkaR49bg9laXqf6r/yEpkmrodOlt
 RkkOwSwqktBqVJhrZFDn8WTIw0wEinH605VwPr26wxkhSMF//V+BaVeQWccLWEPEHDxU
 GdCYSElhxoclw6Yr8vTahcAiiIPpNeAyRpCCWn4zdISzOFuoNiLW0AHfCJ5rY5nLoc/b
 rBNw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXYIAeF32XQmvWzTRJxEsRPKUDAYh4dShXchBAZYXxxYJksguVpUfVH/0/QJ73DosjtqOCp75SA66Q=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwRdzmVz9AVzxLUZ7jdsTDL4Vbv1LNDnhWVvfJ4jtigIFSFR5Th
 iggx7WGQmjHKzwZii8vwKS9qDNZMeTUa+uDZjINwaIsuSEdApn+WIDXsr9bT47k1VdfHKe11E6P
 DVqjIXFbfESMfy4RF2XUw7FMZMhNqA2IUocpM8plfyA==
X-Gm-Gg: ATEYQzx/oAxF4dKyJiZwn5o4/M9CmH1XHLV5hY1J6j0rfoVt94H0FHOPOyQ9BzNUlIH
 TSVFubxW6RsBApz5oSWrVlyN9W0GtOdrD4owb1v11GS8/UMKnk0uJT3L6C0jdj3vmF5U7pT4VUd
 QFZFWhxLjWCTzdNDfdJpZhbkX1ciRnNV2GeFdpdQF/HCcdMWPgCOEmXi06AkIY6B94T8KelhZ26
 71DbSfP+rB085NMVfqVGgRu7Cy76aIIBnpfQmTNT9pgzf7otes8qV9C/57dEWWlJASnICI6uns+
 Q0mvWgNodR1X4wbmLia6o59rrnM+a2Bvi9XanJM=
X-Received: by 2002:a05:690c:6086:b0:799:1d0a:aca8 with SMTP id
 00721157ae682-79acf391fcamr83445117b3.19.1774532361939; Thu, 26 Mar 2026
 06:39:21 -0700 (PDT)
MIME-Version: 1.0
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <20260324-color-format-v11-3-605559af4fb4@collabora.com>
 <CAPY8ntB9f_=f5kru=8w9BpTuqQR+93maGpT61EKU28Uay2vq8Q@mail.gmail.com>
 <acPmcMbUvzWMzC-Q@intel.com>
 <CAPY8ntCRPgN_ayHMGXFv9OrJrdyakUcUT0rvgY5J=FvdCFb6eA@mail.gmail.com>
 <acUi6NEPJ0p48a3U@intel.com>
In-Reply-To: <acUi6NEPJ0p48a3U@intel.com>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Thu, 26 Mar 2026 13:39:04 +0000
X-Gm-Features: AQROBzC-fzB7pltEtFba3kfrVDmyhycx0P3xOtZmVXy7A1SvRy2ZJPGwTUQXf-A
Message-ID: <CAPY8ntDZ30NWmYaptMQzOuXPoi8wzEObzAL=oqhxuq8jSvv2mQ@mail.gmail.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,collabora.com:email,mail.gmail.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 9D8EE33621D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 26 Mar 2026 at 12:13, Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> On Thu, Mar 26, 2026 at 11:16:12AM +0000, Dave Stevenson wrote:
> > On Wed, 25 Mar 2026 at 13:43, Ville Syrj=C3=A4l=C3=A4
> > <ville.syrjala@linux.intel.com> wrote:
> > >
> > > On Wed, Mar 25, 2026 at 12:49:19PM +0000, Dave Stevenson wrote:
> > > > On Tue, 24 Mar 2026 at 16:02, Nicolas Frattaroli
> > > > <nicolas.frattaroli@collabora.com> wrote:
> > > > >
> > > > > Add a new general DRM property named "color format" which can be =
used by
> > > > > userspace to request the display driver to output a particular co=
lor
> > > > > format.
> > > > >
> > > > > Possible options are:
> > > > >     - auto (setup by default, driver internally picks the color f=
ormat)
> > > > >     - rgb
> > > > >     - ycbcr444
> > > > >     - ycbcr422
> > > > >     - ycbcr420
> > > > >
> > > > > Drivers should advertise from this list which formats they suppor=
t.
> > > > > Together with this list and EDID data from the sink we should be =
able
> > > > > to relay a list of usable color formats to users to pick from.
> > > > >
> > > > > Co-developed-by: Werner Sembach <wse@tuxedocomputers.com>
> > > > > Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
> > > > > Co-developed-by: Andri Yngvason <andri@yngvason.is>
> > > > > Signed-off-by: Andri Yngvason <andri@yngvason.is>
> > > > > Signed-off-by: Marius Vlad <marius.vlad@collabora.com>
> > > > > Reviewed-by: Maxime Ripard <mripard@kernel.org>
> > > > > Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.c=
om>
> > > > > ---
> > > > >  drivers/gpu/drm/drm_atomic_helper.c |   5 ++
> > > > >  drivers/gpu/drm/drm_atomic_uapi.c   |  11 ++++
> > > > >  drivers/gpu/drm/drm_connector.c     | 108 ++++++++++++++++++++++=
++++++++++++++
> > > > >  include/drm/drm_connector.h         | 104 ++++++++++++++++++++++=
++++++++++++
> > > > >  4 files changed, 228 insertions(+)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/dr=
m/drm_atomic_helper.c
> > > > > index 26953ed6b53e..b7753454b777 100644
> > > > > --- a/drivers/gpu/drm/drm_atomic_helper.c
> > > > > +++ b/drivers/gpu/drm/drm_atomic_helper.c
> > > > > @@ -737,6 +737,11 @@ drm_atomic_helper_check_modeset(struct drm_d=
evice *dev,
> > > > >                         if (old_connector_state->max_requested_bp=
c !=3D
> > > > >                             new_connector_state->max_requested_bp=
c)
> > > > >                                 new_crtc_state->connectors_change=
d =3D true;
> > > > > +
> > > > > +                       if (old_connector_state->color_format !=
=3D
> > > > > +                           new_connector_state->color_format)
> > > > > +                               new_crtc_state->connectors_change=
d =3D true;
> > > > > +
> > > > >                 }
> > > > >
> > > > >                 if (funcs->atomic_check)
> > > > > diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/=
drm_atomic_uapi.c
> > > > > index 5bd5bf6661df..dee510c85e59 100644
> > > > > --- a/drivers/gpu/drm/drm_atomic_uapi.c
> > > > > +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> > > > > @@ -935,6 +935,15 @@ static int drm_atomic_connector_set_property=
(struct drm_connector *connector,
> > > > >                 state->privacy_screen_sw_state =3D val;
> > > > >         } else if (property =3D=3D connector->broadcast_rgb_prope=
rty) {
> > > > >                 state->hdmi.broadcast_rgb =3D val;
> > > > > +       } else if (property =3D=3D connector->color_format_proper=
ty) {
> > > > > +               if (val > INT_MAX || !drm_connector_color_format_=
valid(val)) {
> > > > > +                       drm_dbg_atomic(connector->dev,
> > > > > +                                      "[CONNECTOR:%d:%s] unknown=
 color format %llu\n",
> > > > > +                                      connector->base.id, connec=
tor->name, val);
> > > > > +                       return -EINVAL;
> > > > > +               }
> > > > > +
> > > > > +               state->color_format =3D val;
> > > > >         } else if (connector->funcs->atomic_set_property) {
> > > > >                 return connector->funcs->atomic_set_property(conn=
ector,
> > > > >                                 state, property, val);
> > > > > @@ -1020,6 +1029,8 @@ drm_atomic_connector_get_property(struct dr=
m_connector *connector,
> > > > >                 *val =3D state->privacy_screen_sw_state;
> > > > >         } else if (property =3D=3D connector->broadcast_rgb_prope=
rty) {
> > > > >                 *val =3D state->hdmi.broadcast_rgb;
> > > > > +       } else if (property =3D=3D connector->color_format_proper=
ty) {
> > > > > +               *val =3D state->color_format;
> > > > >         } else if (connector->funcs->atomic_get_property) {
> > > > >                 return connector->funcs->atomic_get_property(conn=
ector,
> > > > >                                 state, property, val);
> > > > > diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/dr=
m_connector.c
> > > > > index 47dc53c4a738..e848374dee0b 100644
> > > > > --- a/drivers/gpu/drm/drm_connector.c
> > > > > +++ b/drivers/gpu/drm/drm_connector.c
> > > > > @@ -1388,6 +1388,18 @@ static const u32 hdmi_colorspaces =3D
> > > > >         BIT(DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65) |
> > > > >         BIT(DRM_MODE_COLORIMETRY_DCI_P3_RGB_THEATER);
> > > > >
> > > > > +static const u32 hdmi_colorformats =3D
> > > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444) |
> > > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444) |
> > > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422) |
> > > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420);
> > > > > +
> > > > > +static const u32 dp_colorformats =3D
> > > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444) |
> > > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444) |
> > > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422) |
> > > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420);
> > > > > +
> > > > >  /*
> > > > >   * As per DP 1.4a spec, 2.2.5.7.5 VSC SDP Payload for Pixel Enco=
ding/Colorimetry
> > > > >   * Format Table 2-120
> > > > > @@ -2940,6 +2952,102 @@ int drm_connector_attach_colorspace_prope=
rty(struct drm_connector *connector)
> > > > >  }
> > > > >  EXPORT_SYMBOL(drm_connector_attach_colorspace_property);
> > > > >
> > > > > +/**
> > > > > + * drm_connector_attach_color_format_property - create and attac=
h color format property
> > > > > + * @connector: connector to create the color format property on
> > > > > + * @supported_color_formats: bitmask of bit-shifted &enum drm_ou=
tput_color_format
> > > > > + *                           values the connector supports
> > > > > + *
> > > > > + * Called by a driver to create a color format property. The pro=
perty is
> > > > > + * attached to the connector automatically on success.
> > > > > + *
> > > > > + * @supported_color_formats should only include color formats th=
e connector
> > > > > + * type can actually support.
> > > > > + *
> > > > > + * Returns:
> > > > > + * 0 on success, negative errno on error
> > > > > + */
> > > > > +int drm_connector_attach_color_format_property(struct drm_connec=
tor *connector,
> > > > > +                                              unsigned long supp=
orted_color_formats)
> > > > > +{
> > > > > +       struct drm_device *dev =3D connector->dev;
> > > > > +       struct drm_prop_enum_list enum_list[DRM_CONNECTOR_COLOR_F=
ORMAT_COUNT];
> > > > > +       unsigned int i =3D 0;
> > > > > +       unsigned long fmt;
> > > > > +
> > > > > +       if (connector->color_format_property)
> > > > > +               return 0;
> > > > > +
> > > > > +       if (!supported_color_formats) {
> > > > > +               drm_err(dev, "No supported color formats provided=
 on [CONNECTOR:%d:%s]\n",
> > > > > +                       connector->base.id, connector->name);
> > > > > +               return -EINVAL;
> > > > > +       }
> > > > > +
> > > > > +       if (supported_color_formats & ~GENMASK(DRM_OUTPUT_COLOR_F=
ORMAT_COUNT - 1, 0)) {
> > > > > +               drm_err(dev, "Unknown color formats provided on [=
CONNECTOR:%d:%s]\n",
> > > > > +                       connector->base.id, connector->name);
> > > > > +               return -EINVAL;
> > > > > +       }
> > > > > +
> > > > > +       switch (connector->connector_type) {
> > > > > +       case DRM_MODE_CONNECTOR_HDMIA:
> > > > > +       case DRM_MODE_CONNECTOR_HDMIB:
> > > > > +               if (supported_color_formats & ~hdmi_colorformats)=
 {
> > > > > +                       drm_err(dev, "Color formats not allowed f=
or HDMI on [CONNECTOR:%d:%s]\n",
> > > > > +                               connector->base.id, connector->na=
me);
> > > > > +                       return -EINVAL;
> > > > > +               }
> > > > > +               break;
> > > > > +       case DRM_MODE_CONNECTOR_DisplayPort:
> > > > > +       case DRM_MODE_CONNECTOR_eDP:
> > > > > +               if (supported_color_formats & ~dp_colorformats) {
> > > > > +                       drm_err(dev, "Color formats not allowed f=
or DP on [CONNECTOR:%d:%s]\n",
> > > > > +                               connector->base.id, connector->na=
me);
> > > > > +                       return -EINVAL;
> > > > > +               }
> > > > > +               break;
> > > > > +       }
> > > > > +
> > > > > +       enum_list[0].name =3D "AUTO";
> > > > > +       enum_list[0].type =3D DRM_CONNECTOR_COLOR_FORMAT_AUTO;
> > > > > +
> > > > > +       for_each_set_bit(fmt, &supported_color_formats, DRM_OUTPU=
T_COLOR_FORMAT_COUNT) {
> > > > > +               switch (fmt) {
> > > > > +               case DRM_OUTPUT_COLOR_FORMAT_RGB444:
> > > > > +                       enum_list[++i].type =3D DRM_CONNECTOR_COL=
OR_FORMAT_RGB444;
> > > > > +                       break;
> > > > > +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR444:
> > > > > +                       enum_list[++i].type =3D DRM_CONNECTOR_COL=
OR_FORMAT_YCBCR444;
> > > > > +                       break;
> > > > > +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR422:
> > > > > +                       enum_list[++i].type =3D DRM_CONNECTOR_COL=
OR_FORMAT_YCBCR422;
> > > > > +                       break;
> > > > > +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR420:
> > > > > +                       enum_list[++i].type =3D DRM_CONNECTOR_COL=
OR_FORMAT_YCBCR420;
> > > > > +                       break;
> > > > > +               default:
> > > > > +                       drm_warn(dev, "Unknown supported format %=
ld on [CONNECTOR:%d:%s]\n",
> > > > > +                                fmt, connector->base.id, connect=
or->name);
> > > > > +                       continue;
> > > > > +               }
> > > > > +               enum_list[i].name =3D drm_hdmi_connector_get_outp=
ut_format_name(fmt);
> > > > > +       }
> > > > > +
> > > > > +       connector->color_format_property =3D
> > > > > +               drm_property_create_enum(dev, DRM_MODE_PROP_ENUM,=
 "color format",
> > > > > +                                        enum_list, i + 1);
> > > > > +
> > > > > +       if (!connector->color_format_property)
> > > > > +               return -ENOMEM;
> > > > > +
> > > > > +       drm_object_attach_property(&connector->base, connector->c=
olor_format_property,
> > > > > +                                  DRM_CONNECTOR_COLOR_FORMAT_AUT=
O);
> > > > > +
> > > > > +       return 0;
> > > > > +}
> > > > > +EXPORT_SYMBOL(drm_connector_attach_color_format_property);
> > > > > +
> > > > >  /**
> > > > >   * drm_connector_atomic_hdr_metadata_equal - checks if the hdr m=
etadata changed
> > > > >   * @old_state: old connector state to compare
> > > > > diff --git a/include/drm/drm_connector.h b/include/drm/drm_connec=
tor.h
> > > > > index af8b92d2d5b7..bd549f912b76 100644
> > > > > --- a/include/drm/drm_connector.h
> > > > > +++ b/include/drm/drm_connector.h
> > > > > @@ -571,14 +571,102 @@ enum drm_colorspace {
> > > > >   *   YCbCr 4:2:2 output format (ie. with horizontal subsampling)
> > > > >   * @DRM_OUTPUT_COLOR_FORMAT_YCBCR420:
> > > > >   *   YCbCr 4:2:0 output format (ie. with horizontal and vertical=
 subsampling)
> > > > > + * @DRM_OUTPUT_COLOR_FORMAT_COUNT:
> > > > > + *   Number of valid output color format values in this enum
> > > > >   */
> > > > >  enum drm_output_color_format {
> > > > >         DRM_OUTPUT_COLOR_FORMAT_RGB444 =3D 0,
> > > > >         DRM_OUTPUT_COLOR_FORMAT_YCBCR444,
> > > > >         DRM_OUTPUT_COLOR_FORMAT_YCBCR422,
> > > > >         DRM_OUTPUT_COLOR_FORMAT_YCBCR420,
> > > > > +       DRM_OUTPUT_COLOR_FORMAT_COUNT,
> > > > >  };
> > > > >
> > > > > +/**
> > > > > + * enum drm_connector_color_format - Connector Color Format Requ=
est
> > > > > + *
> > > > > + * This enum, unlike &enum drm_output_color_format, is used to s=
pecify requests
> > > > > + * for a specific color format on a connector through the DRM "c=
olor format"
> > > > > + * property. The difference is that it has an "AUTO" value to sp=
ecify that
> > > > > + * no specific choice has been made.
> > > > > + */
> > > > > +enum drm_connector_color_format {
> > > > > +       /**
> > > > > +        * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver or displa=
y protocol
> > > > > +        * helpers should pick a suitable color format. All imple=
mentations of a
> > > > > +        * specific display protocol must behave the same way wit=
h "AUTO", but
> > > > > +        * different display protocols do not necessarily have th=
e same "AUTO"
> > > > > +        * semantics.
> > > > > +        *
> > > > > +        * For HDMI, "AUTO" picks RGB, but falls back to YCbCr 4:=
2:0 if the
> > > > > +        * bandwidth required for full-scale RGB is not available=
, or the mode
> > > > > +        * is YCbCr 4:2:0-only, as long as the mode and output bo=
th support
> > > > > +        * YCbCr 4:2:0.
> > > >
> > > > Is there a reason you propose dropping back to YCbCr 4:2:0 without
> > > > trying YCbCr 4:2:2 first? Minimising the subsampling is surely
> > > > beneficial, and vc4 for one can do 4:2:2 but not 4:2:0.
> > >
> > > On HDMI 4:2:2 is always 12bpc, so it doesn't save any bandwidth
> > > compared to 8bpc 4:4:4.
> >
> > It does save bandwidth against 10 or 12bpc RGB 4:4:4.
> >
> > Or is the implication that max_bpc =3D 12 and
> > DRM_CONNECTOR_COLOR_FORMAT_AUTO should drop bpc down to 8 and select
> > RGB in preference to selecting 4:2:2?
>
> Yeah, YCbCr has all kinds of extra complications compared to RGB, so
> the policy is to use RGB if possible, and only fall back to YCbCr as a
> last resort. And in that case 4:2:0 is the only thing that can help.

So a media player wanting to do 12bpc HDR playback at 4k60 over HDMI
2.0 ends up with 8bpc RGB regardless. That sucks.
I guess at least an override is being added so userspace can take control.

I'd missed that vc4 had its behaviour changed with the
drm_hdmi_state_helper update :-(

  Dave
