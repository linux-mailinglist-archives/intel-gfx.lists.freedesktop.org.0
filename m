Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YMhRK38gxWnr6QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 13:03:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4510B334E05
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 13:03:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 499F110E993;
	Thu, 26 Mar 2026 12:03:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b="ZP739l9H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E12FF10E993;
 Thu, 26 Mar 2026 12:03:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1774526570; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=UK4m17+ZQYlrWA2bbOYBYhC3Fwob+TL/2QWrNObSmqhW/Ii4c0v01Wt/OmjKqKSg9Lf0XpXfYE5p/wftfdfcbDh2ppM2Fx/0XtYLaYZ9P3bS83frTOf6W/G6xjM4OK/kQvRZfn+RUhmRGxwxCAHLU2R8CbbiMjkB8rY0F6B1iPE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1774526570;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=JAsGwI1+km7Z08+Nb8PGYNBzDhUNC5foRg64QE7Zjbk=; 
 b=Tt93eIm6dxPMzwVF8I+4pGG7WC65vdr2sDVUON0CJ4kg/rpq26tK1GScI45ui/4lXKxh+3XLFEgqjCNKVEv13HqcDjG5jv7Joe7k3nwRrfb2uQAtMHxdOyfnq2Ns/I3gCbnxskGZ4UNeNPbrM/LuvZvuqDz3oJFAGInPgBqp/b0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
 dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774526570; 
 s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
 h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
 bh=JAsGwI1+km7Z08+Nb8PGYNBzDhUNC5foRg64QE7Zjbk=;
 b=ZP739l9H6FtABisLFn2cTKLYDFpz6uZc3/P1g/maOUb9C5V+Xl5rcadAnFBZD6/5
 qd3sWGTK85KgksstzKW9YYllXRwxoW6sYbRLP8GQfnbPqOrwfu/dt5o2FUAawbId8E9
 bHPaJ0o+ueX02SK3A1RVxPCDKBAsNWJqrY8cWdc4=
Received: by mx.zohomail.com with SMTPS id 1774526568790489.7036730172855;
 Thu, 26 Mar 2026 05:02:48 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Ville =?UTF-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Rodrigo Siqueira <siqueira@igalia.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
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
Date: Thu, 26 Mar 2026 13:02:38 +0100
Message-ID: <7991520.DvuYhMxLoT@workhorse>
In-Reply-To: <CAPY8ntCRPgN_ayHMGXFv9OrJrdyakUcUT0rvgY5J=FvdCFb6eA@mail.gmail.com>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <acPmcMbUvzWMzC-Q@intel.com>
 <CAPY8ntCRPgN_ayHMGXFv9OrJrdyakUcUT0rvgY5J=FvdCFb6eA@mail.gmail.com>
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
	RCPT_COUNT_TWELVE(0.00)[42];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,tuxedocomputers.com,yngvason.is];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,yngvason.is:email,collabora.com:dkim,collabora.com:email,tuxedocomputers.com:email]
X-Rspamd-Queue-Id: 4510B334E05
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thursday, 26 March 2026 12:16:12 Central European Standard Time Dave Ste=
venson wrote:
> On Wed, 25 Mar 2026 at 13:43, Ville Syrj=C3=A4l=C3=A4
> <ville.syrjala@linux.intel.com> wrote:
> >
> > On Wed, Mar 25, 2026 at 12:49:19PM +0000, Dave Stevenson wrote:
> > > On Tue, 24 Mar 2026 at 16:02, Nicolas Frattaroli
> > > <nicolas.frattaroli@collabora.com> wrote:
> > > >
> > > > Add a new general DRM property named "color format" which can be us=
ed by
> > > > userspace to request the display driver to output a particular color
> > > > format.
> > > >
> > > > Possible options are:
> > > >     - auto (setup by default, driver internally picks the color for=
mat)
> > > >     - rgb
> > > >     - ycbcr444
> > > >     - ycbcr422
> > > >     - ycbcr420
> > > >
> > > > Drivers should advertise from this list which formats they support.
> > > > Together with this list and EDID data from the sink we should be ab=
le
> > > > to relay a list of usable color formats to users to pick from.
> > > >
> > > > Co-developed-by: Werner Sembach <wse@tuxedocomputers.com>
> > > > Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
> > > > Co-developed-by: Andri Yngvason <andri@yngvason.is>
> > > > Signed-off-by: Andri Yngvason <andri@yngvason.is>
> > > > Signed-off-by: Marius Vlad <marius.vlad@collabora.com>
> > > > Reviewed-by: Maxime Ripard <mripard@kernel.org>
> > > > Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> > > > ---
> > > >  drivers/gpu/drm/drm_atomic_helper.c |   5 ++
> > > >  drivers/gpu/drm/drm_atomic_uapi.c   |  11 ++++
> > > >  drivers/gpu/drm/drm_connector.c     | 108 ++++++++++++++++++++++++=
++++++++++++
> > > >  include/drm/drm_connector.h         | 104 ++++++++++++++++++++++++=
++++++++++
> > > >  4 files changed, 228 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/=
drm_atomic_helper.c
> > > > index 26953ed6b53e..b7753454b777 100644
> > > > --- a/drivers/gpu/drm/drm_atomic_helper.c
> > > > +++ b/drivers/gpu/drm/drm_atomic_helper.c
> > > > @@ -737,6 +737,11 @@ drm_atomic_helper_check_modeset(struct drm_dev=
ice *dev,
> > > >                         if (old_connector_state->max_requested_bpc =
!=3D
> > > >                             new_connector_state->max_requested_bpc)
> > > >                                 new_crtc_state->connectors_changed =
=3D true;
> > > > +
> > > > +                       if (old_connector_state->color_format !=3D
> > > > +                           new_connector_state->color_format)
> > > > +                               new_crtc_state->connectors_changed =
=3D true;
> > > > +
> > > >                 }
> > > >
> > > >                 if (funcs->atomic_check)
> > > > diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/dr=
m_atomic_uapi.c
> > > > index 5bd5bf6661df..dee510c85e59 100644
> > > > --- a/drivers/gpu/drm/drm_atomic_uapi.c
> > > > +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> > > > @@ -935,6 +935,15 @@ static int drm_atomic_connector_set_property(s=
truct drm_connector *connector,
> > > >                 state->privacy_screen_sw_state =3D val;
> > > >         } else if (property =3D=3D connector->broadcast_rgb_propert=
y) {
> > > >                 state->hdmi.broadcast_rgb =3D val;
> > > > +       } else if (property =3D=3D connector->color_format_property=
) {
> > > > +               if (val > INT_MAX || !drm_connector_color_format_va=
lid(val)) {
> > > > +                       drm_dbg_atomic(connector->dev,
> > > > +                                      "[CONNECTOR:%d:%s] unknown c=
olor format %llu\n",
> > > > +                                      connector->base.id, connecto=
r->name, val);
> > > > +                       return -EINVAL;
> > > > +               }
> > > > +
> > > > +               state->color_format =3D val;
> > > >         } else if (connector->funcs->atomic_set_property) {
> > > >                 return connector->funcs->atomic_set_property(connec=
tor,
> > > >                                 state, property, val);
> > > > @@ -1020,6 +1029,8 @@ drm_atomic_connector_get_property(struct drm_=
connector *connector,
> > > >                 *val =3D state->privacy_screen_sw_state;
> > > >         } else if (property =3D=3D connector->broadcast_rgb_propert=
y) {
> > > >                 *val =3D state->hdmi.broadcast_rgb;
> > > > +       } else if (property =3D=3D connector->color_format_property=
) {
> > > > +               *val =3D state->color_format;
> > > >         } else if (connector->funcs->atomic_get_property) {
> > > >                 return connector->funcs->atomic_get_property(connec=
tor,
> > > >                                 state, property, val);
> > > > diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_=
connector.c
> > > > index 47dc53c4a738..e848374dee0b 100644
> > > > --- a/drivers/gpu/drm/drm_connector.c
> > > > +++ b/drivers/gpu/drm/drm_connector.c
> > > > @@ -1388,6 +1388,18 @@ static const u32 hdmi_colorspaces =3D
> > > >         BIT(DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65) |
> > > >         BIT(DRM_MODE_COLORIMETRY_DCI_P3_RGB_THEATER);
> > > >
> > > > +static const u32 hdmi_colorformats =3D
> > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444) |
> > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444) |
> > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422) |
> > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420);
> > > > +
> > > > +static const u32 dp_colorformats =3D
> > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444) |
> > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444) |
> > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422) |
> > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420);
> > > > +
> > > >  /*
> > > >   * As per DP 1.4a spec, 2.2.5.7.5 VSC SDP Payload for Pixel Encodi=
ng/Colorimetry
> > > >   * Format Table 2-120
> > > > @@ -2940,6 +2952,102 @@ int drm_connector_attach_colorspace_propert=
y(struct drm_connector *connector)
> > > >  }
> > > >  EXPORT_SYMBOL(drm_connector_attach_colorspace_property);
> > > >
> > > > +/**
> > > > + * drm_connector_attach_color_format_property - create and attach =
color format property
> > > > + * @connector: connector to create the color format property on
> > > > + * @supported_color_formats: bitmask of bit-shifted &enum drm_outp=
ut_color_format
> > > > + *                           values the connector supports
> > > > + *
> > > > + * Called by a driver to create a color format property. The prope=
rty is
> > > > + * attached to the connector automatically on success.
> > > > + *
> > > > + * @supported_color_formats should only include color formats the =
connector
> > > > + * type can actually support.
> > > > + *
> > > > + * Returns:
> > > > + * 0 on success, negative errno on error
> > > > + */
> > > > +int drm_connector_attach_color_format_property(struct drm_connecto=
r *connector,
> > > > +                                              unsigned long suppor=
ted_color_formats)
> > > > +{
> > > > +       struct drm_device *dev =3D connector->dev;
> > > > +       struct drm_prop_enum_list enum_list[DRM_CONNECTOR_COLOR_FOR=
MAT_COUNT];
> > > > +       unsigned int i =3D 0;
> > > > +       unsigned long fmt;
> > > > +
> > > > +       if (connector->color_format_property)
> > > > +               return 0;
> > > > +
> > > > +       if (!supported_color_formats) {
> > > > +               drm_err(dev, "No supported color formats provided o=
n [CONNECTOR:%d:%s]\n",
> > > > +                       connector->base.id, connector->name);
> > > > +               return -EINVAL;
> > > > +       }
> > > > +
> > > > +       if (supported_color_formats & ~GENMASK(DRM_OUTPUT_COLOR_FOR=
MAT_COUNT - 1, 0)) {
> > > > +               drm_err(dev, "Unknown color formats provided on [CO=
NNECTOR:%d:%s]\n",
> > > > +                       connector->base.id, connector->name);
> > > > +               return -EINVAL;
> > > > +       }
> > > > +
> > > > +       switch (connector->connector_type) {
> > > > +       case DRM_MODE_CONNECTOR_HDMIA:
> > > > +       case DRM_MODE_CONNECTOR_HDMIB:
> > > > +               if (supported_color_formats & ~hdmi_colorformats) {
> > > > +                       drm_err(dev, "Color formats not allowed for=
 HDMI on [CONNECTOR:%d:%s]\n",
> > > > +                               connector->base.id, connector->name=
);
> > > > +                       return -EINVAL;
> > > > +               }
> > > > +               break;
> > > > +       case DRM_MODE_CONNECTOR_DisplayPort:
> > > > +       case DRM_MODE_CONNECTOR_eDP:
> > > > +               if (supported_color_formats & ~dp_colorformats) {
> > > > +                       drm_err(dev, "Color formats not allowed for=
 DP on [CONNECTOR:%d:%s]\n",
> > > > +                               connector->base.id, connector->name=
);
> > > > +                       return -EINVAL;
> > > > +               }
> > > > +               break;
> > > > +       }
> > > > +
> > > > +       enum_list[0].name =3D "AUTO";
> > > > +       enum_list[0].type =3D DRM_CONNECTOR_COLOR_FORMAT_AUTO;
> > > > +
> > > > +       for_each_set_bit(fmt, &supported_color_formats, DRM_OUTPUT_=
COLOR_FORMAT_COUNT) {
> > > > +               switch (fmt) {
> > > > +               case DRM_OUTPUT_COLOR_FORMAT_RGB444:
> > > > +                       enum_list[++i].type =3D DRM_CONNECTOR_COLOR=
_FORMAT_RGB444;
> > > > +                       break;
> > > > +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR444:
> > > > +                       enum_list[++i].type =3D DRM_CONNECTOR_COLOR=
_FORMAT_YCBCR444;
> > > > +                       break;
> > > > +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR422:
> > > > +                       enum_list[++i].type =3D DRM_CONNECTOR_COLOR=
_FORMAT_YCBCR422;
> > > > +                       break;
> > > > +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR420:
> > > > +                       enum_list[++i].type =3D DRM_CONNECTOR_COLOR=
_FORMAT_YCBCR420;
> > > > +                       break;
> > > > +               default:
> > > > +                       drm_warn(dev, "Unknown supported format %ld=
 on [CONNECTOR:%d:%s]\n",
> > > > +                                fmt, connector->base.id, connector=
=2D>name);
> > > > +                       continue;
> > > > +               }
> > > > +               enum_list[i].name =3D drm_hdmi_connector_get_output=
_format_name(fmt);
> > > > +       }
> > > > +
> > > > +       connector->color_format_property =3D
> > > > +               drm_property_create_enum(dev, DRM_MODE_PROP_ENUM, "=
color format",
> > > > +                                        enum_list, i + 1);
> > > > +
> > > > +       if (!connector->color_format_property)
> > > > +               return -ENOMEM;
> > > > +
> > > > +       drm_object_attach_property(&connector->base, connector->col=
or_format_property,
> > > > +                                  DRM_CONNECTOR_COLOR_FORMAT_AUTO);
> > > > +
> > > > +       return 0;
> > > > +}
> > > > +EXPORT_SYMBOL(drm_connector_attach_color_format_property);
> > > > +
> > > >  /**
> > > >   * drm_connector_atomic_hdr_metadata_equal - checks if the hdr met=
adata changed
> > > >   * @old_state: old connector state to compare
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
> > >
> > > Is there a reason you propose dropping back to YCbCr 4:2:0 without
> > > trying YCbCr 4:2:2 first? Minimising the subsampling is surely
> > > beneficial, and vc4 for one can do 4:2:2 but not 4:2:0.
> >
> > On HDMI 4:2:2 is always 12bpc, so it doesn't save any bandwidth
> > compared to 8bpc 4:4:4.
>=20
> It does save bandwidth against 10 or 12bpc RGB 4:4:4.
>=20
> Or is the implication that max_bpc =3D 12 and
> DRM_CONNECTOR_COLOR_FORMAT_AUTO should drop bpc down to 8 and select
> RGB in preference to selecting 4:2:2?

Yes. Some people consider max-bpc to not be a legitimate way of requesting
an actual bpc, and don't think drivers will choose the highest bpc <=3D max=
=2Dbpc,
and instead may negotiate a fantasy number anywhere below or equal to max-b=
pc.

Of course this logic could be done in userspace which knows whether the
less chroma for more bit depth trade-off is worth it, but userspace does
not know the negotiated link bpc, and my attempts at adding a property for
it are being blocked.

>=20
>   Dave
>=20
> > --
> > Ville Syrj=C3=A4l=C3=A4
> > Intel
>=20




