Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4E6UHoLmw2lvugQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 14:43:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7DA326024
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 14:43:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F19D10E24F;
	Wed, 25 Mar 2026 13:43:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EH25YKe7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E430E10E1EE;
 Wed, 25 Mar 2026 13:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774446206; x=1805982206;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=USnSAocz041NVQ9slqBw6wO1PA7R8fY1BY5fwAmUMi8=;
 b=EH25YKe7HHll96sexOMHHq4+1PpB8Pzb1Jzbak3n0OIcjN6A/9p8CNOR
 ysVYBLxkFtncLSAGpEu6Vd1m8n5+IkOApIqDXauYMbxAP8+OM+dhKhR7O
 Q/61A+HjJ2wfDxAr/aaVF+0gUn5EaGRGiZ2VPlCQgXlZqVzdDw5snLQpv
 rycAIn1oTi3xqUGQICOmtGTtJ04wyd6UvtBLmr69sR9ENhTj5q6OfBUym
 wm6+568tbVNTs8YRZmym68SQSZoUAUup1wWWEjXj37CFfoU96mChAEa/P
 gzXgOxeCBvolsrPWTymLNxFdcM8Y9tijvg2tnG+a47TZkT15n0JKU0/Ig A==;
X-CSE-ConnectionGUID: bMNHmqwwT/WDX5j8RcjrmQ==
X-CSE-MsgGUID: /9QGmuDdS7eu2NR+xOc+rA==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="79339422"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="79339422"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 06:43:25 -0700
X-CSE-ConnectionGUID: Dp2wbwftTGKT1qTzAue8Eg==
X-CSE-MsgGUID: UnI+HlpAQJSi5OjsBx6Y1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="229624274"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 06:43:15 -0700
Date: Wed, 25 Mar 2026 15:43:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Harry Wentland <harry.wentland@amd.com>,
 Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Shuah Khan <skhan@linuxfoundation.org>, kernel@collabora.com,
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org,
 Werner Sembach <wse@tuxedocomputers.com>,
 Andri Yngvason <andri@yngvason.is>, Marius Vlad <marius.vlad@collabora.com>
Subject: Re: [PATCH v11 03/22] drm: Add new general DRM property "color format"
Message-ID: <acPmcMbUvzWMzC-Q@intel.com>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <20260324-color-format-v11-3-605559af4fb4@collabora.com>
 <CAPY8ntB9f_=f5kru=8w9BpTuqQR+93maGpT61EKU28Uay2vq8Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAPY8ntB9f_=f5kru=8w9BpTuqQR+93maGpT61EKU28Uay2vq8Q@mail.gmail.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MIXED_CHARSET(0.63)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	FREEMAIL_CC(0.00)[collabora.com,amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,tuxedocomputers.com,yngvason.is];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxedocomputers.com:email,intel.com:dkim,intel.com:mid,yngvason.is:email,collabora.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 1E7DA326024
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 12:49:19PM +0000, Dave Stevenson wrote:
> On Tue, 24 Mar 2026 at 16:02, Nicolas Frattaroli
> <nicolas.frattaroli@collabora.com> wrote:
> >
> > Add a new general DRM property named "color format" which can be used by
> > userspace to request the display driver to output a particular color
> > format.
> >
> > Possible options are:
> >     - auto (setup by default, driver internally picks the color format)
> >     - rgb
> >     - ycbcr444
> >     - ycbcr422
> >     - ycbcr420
> >
> > Drivers should advertise from this list which formats they support.
> > Together with this list and EDID data from the sink we should be able
> > to relay a list of usable color formats to users to pick from.
> >
> > Co-developed-by: Werner Sembach <wse@tuxedocomputers.com>
> > Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
> > Co-developed-by: Andri Yngvason <andri@yngvason.is>
> > Signed-off-by: Andri Yngvason <andri@yngvason.is>
> > Signed-off-by: Marius Vlad <marius.vlad@collabora.com>
> > Reviewed-by: Maxime Ripard <mripard@kernel.org>
> > Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> > ---
> >  drivers/gpu/drm/drm_atomic_helper.c |   5 ++
> >  drivers/gpu/drm/drm_atomic_uapi.c   |  11 ++++
> >  drivers/gpu/drm/drm_connector.c     | 108 ++++++++++++++++++++++++++++++++++++
> >  include/drm/drm_connector.h         | 104 ++++++++++++++++++++++++++++++++++
> >  4 files changed, 228 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
> > index 26953ed6b53e..b7753454b777 100644
> > --- a/drivers/gpu/drm/drm_atomic_helper.c
> > +++ b/drivers/gpu/drm/drm_atomic_helper.c
> > @@ -737,6 +737,11 @@ drm_atomic_helper_check_modeset(struct drm_device *dev,
> >                         if (old_connector_state->max_requested_bpc !=
> >                             new_connector_state->max_requested_bpc)
> >                                 new_crtc_state->connectors_changed = true;
> > +
> > +                       if (old_connector_state->color_format !=
> > +                           new_connector_state->color_format)
> > +                               new_crtc_state->connectors_changed = true;
> > +
> >                 }
> >
> >                 if (funcs->atomic_check)
> > diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
> > index 5bd5bf6661df..dee510c85e59 100644
> > --- a/drivers/gpu/drm/drm_atomic_uapi.c
> > +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> > @@ -935,6 +935,15 @@ static int drm_atomic_connector_set_property(struct drm_connector *connector,
> >                 state->privacy_screen_sw_state = val;
> >         } else if (property == connector->broadcast_rgb_property) {
> >                 state->hdmi.broadcast_rgb = val;
> > +       } else if (property == connector->color_format_property) {
> > +               if (val > INT_MAX || !drm_connector_color_format_valid(val)) {
> > +                       drm_dbg_atomic(connector->dev,
> > +                                      "[CONNECTOR:%d:%s] unknown color format %llu\n",
> > +                                      connector->base.id, connector->name, val);
> > +                       return -EINVAL;
> > +               }
> > +
> > +               state->color_format = val;
> >         } else if (connector->funcs->atomic_set_property) {
> >                 return connector->funcs->atomic_set_property(connector,
> >                                 state, property, val);
> > @@ -1020,6 +1029,8 @@ drm_atomic_connector_get_property(struct drm_connector *connector,
> >                 *val = state->privacy_screen_sw_state;
> >         } else if (property == connector->broadcast_rgb_property) {
> >                 *val = state->hdmi.broadcast_rgb;
> > +       } else if (property == connector->color_format_property) {
> > +               *val = state->color_format;
> >         } else if (connector->funcs->atomic_get_property) {
> >                 return connector->funcs->atomic_get_property(connector,
> >                                 state, property, val);
> > diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> > index 47dc53c4a738..e848374dee0b 100644
> > --- a/drivers/gpu/drm/drm_connector.c
> > +++ b/drivers/gpu/drm/drm_connector.c
> > @@ -1388,6 +1388,18 @@ static const u32 hdmi_colorspaces =
> >         BIT(DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65) |
> >         BIT(DRM_MODE_COLORIMETRY_DCI_P3_RGB_THEATER);
> >
> > +static const u32 hdmi_colorformats =
> > +       BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444) |
> > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444) |
> > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422) |
> > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420);
> > +
> > +static const u32 dp_colorformats =
> > +       BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444) |
> > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444) |
> > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422) |
> > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420);
> > +
> >  /*
> >   * As per DP 1.4a spec, 2.2.5.7.5 VSC SDP Payload for Pixel Encoding/Colorimetry
> >   * Format Table 2-120
> > @@ -2940,6 +2952,102 @@ int drm_connector_attach_colorspace_property(struct drm_connector *connector)
> >  }
> >  EXPORT_SYMBOL(drm_connector_attach_colorspace_property);
> >
> > +/**
> > + * drm_connector_attach_color_format_property - create and attach color format property
> > + * @connector: connector to create the color format property on
> > + * @supported_color_formats: bitmask of bit-shifted &enum drm_output_color_format
> > + *                           values the connector supports
> > + *
> > + * Called by a driver to create a color format property. The property is
> > + * attached to the connector automatically on success.
> > + *
> > + * @supported_color_formats should only include color formats the connector
> > + * type can actually support.
> > + *
> > + * Returns:
> > + * 0 on success, negative errno on error
> > + */
> > +int drm_connector_attach_color_format_property(struct drm_connector *connector,
> > +                                              unsigned long supported_color_formats)
> > +{
> > +       struct drm_device *dev = connector->dev;
> > +       struct drm_prop_enum_list enum_list[DRM_CONNECTOR_COLOR_FORMAT_COUNT];
> > +       unsigned int i = 0;
> > +       unsigned long fmt;
> > +
> > +       if (connector->color_format_property)
> > +               return 0;
> > +
> > +       if (!supported_color_formats) {
> > +               drm_err(dev, "No supported color formats provided on [CONNECTOR:%d:%s]\n",
> > +                       connector->base.id, connector->name);
> > +               return -EINVAL;
> > +       }
> > +
> > +       if (supported_color_formats & ~GENMASK(DRM_OUTPUT_COLOR_FORMAT_COUNT - 1, 0)) {
> > +               drm_err(dev, "Unknown color formats provided on [CONNECTOR:%d:%s]\n",
> > +                       connector->base.id, connector->name);
> > +               return -EINVAL;
> > +       }
> > +
> > +       switch (connector->connector_type) {
> > +       case DRM_MODE_CONNECTOR_HDMIA:
> > +       case DRM_MODE_CONNECTOR_HDMIB:
> > +               if (supported_color_formats & ~hdmi_colorformats) {
> > +                       drm_err(dev, "Color formats not allowed for HDMI on [CONNECTOR:%d:%s]\n",
> > +                               connector->base.id, connector->name);
> > +                       return -EINVAL;
> > +               }
> > +               break;
> > +       case DRM_MODE_CONNECTOR_DisplayPort:
> > +       case DRM_MODE_CONNECTOR_eDP:
> > +               if (supported_color_formats & ~dp_colorformats) {
> > +                       drm_err(dev, "Color formats not allowed for DP on [CONNECTOR:%d:%s]\n",
> > +                               connector->base.id, connector->name);
> > +                       return -EINVAL;
> > +               }
> > +               break;
> > +       }
> > +
> > +       enum_list[0].name = "AUTO";
> > +       enum_list[0].type = DRM_CONNECTOR_COLOR_FORMAT_AUTO;
> > +
> > +       for_each_set_bit(fmt, &supported_color_formats, DRM_OUTPUT_COLOR_FORMAT_COUNT) {
> > +               switch (fmt) {
> > +               case DRM_OUTPUT_COLOR_FORMAT_RGB444:
> > +                       enum_list[++i].type = DRM_CONNECTOR_COLOR_FORMAT_RGB444;
> > +                       break;
> > +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR444:
> > +                       enum_list[++i].type = DRM_CONNECTOR_COLOR_FORMAT_YCBCR444;
> > +                       break;
> > +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR422:
> > +                       enum_list[++i].type = DRM_CONNECTOR_COLOR_FORMAT_YCBCR422;
> > +                       break;
> > +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR420:
> > +                       enum_list[++i].type = DRM_CONNECTOR_COLOR_FORMAT_YCBCR420;
> > +                       break;
> > +               default:
> > +                       drm_warn(dev, "Unknown supported format %ld on [CONNECTOR:%d:%s]\n",
> > +                                fmt, connector->base.id, connector->name);
> > +                       continue;
> > +               }
> > +               enum_list[i].name = drm_hdmi_connector_get_output_format_name(fmt);
> > +       }
> > +
> > +       connector->color_format_property =
> > +               drm_property_create_enum(dev, DRM_MODE_PROP_ENUM, "color format",
> > +                                        enum_list, i + 1);
> > +
> > +       if (!connector->color_format_property)
> > +               return -ENOMEM;
> > +
> > +       drm_object_attach_property(&connector->base, connector->color_format_property,
> > +                                  DRM_CONNECTOR_COLOR_FORMAT_AUTO);
> > +
> > +       return 0;
> > +}
> > +EXPORT_SYMBOL(drm_connector_attach_color_format_property);
> > +
> >  /**
> >   * drm_connector_atomic_hdr_metadata_equal - checks if the hdr metadata changed
> >   * @old_state: old connector state to compare
> > diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> > index af8b92d2d5b7..bd549f912b76 100644
> > --- a/include/drm/drm_connector.h
> > +++ b/include/drm/drm_connector.h
> > @@ -571,14 +571,102 @@ enum drm_colorspace {
> >   *   YCbCr 4:2:2 output format (ie. with horizontal subsampling)
> >   * @DRM_OUTPUT_COLOR_FORMAT_YCBCR420:
> >   *   YCbCr 4:2:0 output format (ie. with horizontal and vertical subsampling)
> > + * @DRM_OUTPUT_COLOR_FORMAT_COUNT:
> > + *   Number of valid output color format values in this enum
> >   */
> >  enum drm_output_color_format {
> >         DRM_OUTPUT_COLOR_FORMAT_RGB444 = 0,
> >         DRM_OUTPUT_COLOR_FORMAT_YCBCR444,
> >         DRM_OUTPUT_COLOR_FORMAT_YCBCR422,
> >         DRM_OUTPUT_COLOR_FORMAT_YCBCR420,
> > +       DRM_OUTPUT_COLOR_FORMAT_COUNT,
> >  };
> >
> > +/**
> > + * enum drm_connector_color_format - Connector Color Format Request
> > + *
> > + * This enum, unlike &enum drm_output_color_format, is used to specify requests
> > + * for a specific color format on a connector through the DRM "color format"
> > + * property. The difference is that it has an "AUTO" value to specify that
> > + * no specific choice has been made.
> > + */
> > +enum drm_connector_color_format {
> > +       /**
> > +        * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver or display protocol
> > +        * helpers should pick a suitable color format. All implementations of a
> > +        * specific display protocol must behave the same way with "AUTO", but
> > +        * different display protocols do not necessarily have the same "AUTO"
> > +        * semantics.
> > +        *
> > +        * For HDMI, "AUTO" picks RGB, but falls back to YCbCr 4:2:0 if the
> > +        * bandwidth required for full-scale RGB is not available, or the mode
> > +        * is YCbCr 4:2:0-only, as long as the mode and output both support
> > +        * YCbCr 4:2:0.
> 
> Is there a reason you propose dropping back to YCbCr 4:2:0 without
> trying YCbCr 4:2:2 first? Minimising the subsampling is surely
> beneficial, and vc4 for one can do 4:2:2 but not 4:2:0.

On HDMI 4:2:2 is always 12bpc, so it doesn't save any bandwidth
compared to 8bpc 4:4:4.

-- 
Ville Syrjälä
Intel
