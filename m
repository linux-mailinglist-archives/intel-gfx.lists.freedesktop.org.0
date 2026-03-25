Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGXPGOfZw2lwuQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:49:43 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13657325285
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:49:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C9A010E7EF;
	Wed, 25 Mar 2026 12:49:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="D+k3uwxR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com
 [209.85.128.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DCDD10E568
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2026 12:49:37 +0000 (UTC)
Received: by mail-yw1-f178.google.com with SMTP id
 00721157ae682-79860421382so56543117b3.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2026 05:49:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774442976; cv=none;
 d=google.com; s=arc-20240605;
 b=SeMMh7KhBILhQhXlDvPi/LiX3oDgQe6jDAGYYRNe3davWkHi+fA06lT0IWQzsDPUo/
 n3oWL3J0CmuIUT+wMRdfhDfeJPfIXL6xUzOoVOII5Iin4S8ige3vxIM/ejsaLSYr5E42
 Flxgh6ShyrTsgI+InoKNLgbZFJB6fCipZPcLAL4oPBrVHM4FTLloUGMmsq/Ytm7EmB8p
 sGghs5j9Kqad+uMaNJRwsz7bTENa0DzJ6eLzK8sCw7tGEUoS2Qhifm5930HyxTSyoaa2
 4CpKOURh46+Kddkd3e3o6UvtdwxpUEtXqzS+2gTLMg3IkVGGC/fl4mSltm2E9vw3XbAL
 UB+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=VWVGdaROJEe59syGTJd027THFEoFG9QuDQ9XIoXDqcI=;
 fh=U2FpGlO5UX21o7p17hItf3/Kdvhzfop7fMsFLkf+BwM=;
 b=dUOujgpgZyYWAc/xX+jN1c4AioqSVS2vzNRzqOOmay6eDis68WnQ6HHu44JcD5pBLE
 aSZTDgUdUC1LcRO/QuKwsYsMWoUYNZ7BjpbU1gX7Gwzk1HqVbtYHaVpq7QgvXWUx4RN8
 UZcxiX1iQ7M6F0EKtnzGk15oQx7lBiLeSCLEZG3GK+yHj0IG21z/Hf3mA7wCR/9gbkTx
 tVqWgLE9BjyvXfSmnESrWj45rJEZ9C8wGnh9Jda/Ja/kVZBj9/fNtn5T5TCbNAhMMtba
 nsUspKSCulDzU1Qqd4Hxmp8azrMvcseZ7XaTrt0vPYs0QYjx+fnOvBg2H3N+DOUpRBZ0
 HASA==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google; t=1774442976; x=1775047776;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=VWVGdaROJEe59syGTJd027THFEoFG9QuDQ9XIoXDqcI=;
 b=D+k3uwxROA6obuXA46g1N7bvOTcGPAm0r/dYqjKnxCHIu3Np3jZXq6t+SlSMztCNxy
 yHpNQS/dnEQFZ5nfTGCxaPp55ZlhnMQtxYd8fxiSt5FGWpOMqWbJErCVmcIHPZCaE7JK
 vCwAx/ulBf6i2PkGoy4Eho5FG8Mf5A+AVdgBlox0NK97rW62UIjnhSOlZxH+rIIaqOCn
 nQv1S1nhXqNfZAZ2yYq4eDIIg6zx6E9jn48W82FFo6eryfl7jAi/9JbdW4CNSUyuVplP
 nvt0/ft6KRbjAmMohWXqQiTNyPXt8d1lceoaSLN7vcrBbk4QSrbtQwrDIEi/s6n6gO3A
 wVWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774442976; x=1775047776;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VWVGdaROJEe59syGTJd027THFEoFG9QuDQ9XIoXDqcI=;
 b=NGmFpv/d5VdySFk7C4wsE/fMLVtLsvAyinznGtytLX+oZJHMrme91iRTj7vZkBvbE/
 Xyx5HLGrKWxIosVSMsfC6Nx3nYxTZXjAFnmhRkRQrMIDtkK0As2RpktG4rpkYhJQKw4E
 m7tdw1QJjRRMLnUL/NdMWgPK+vlwwJJ8TufDQELGcmpxkIBES6aveQLveRC6OP22qHB5
 7JsVuLULLt4D8DnlbsEWX0lrO7+RRmpbiF9w9Qb3elRIP/qImBN45nSHImOa26603L0J
 a6aN9aAqLEq3oyial5M0L/KNo2BussHBpM5CaMKJFK1UPk4y+Djdd9WFRAl7B1w6X9lO
 KJAg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX9YkVoRrurxsCU8DgUAYn8waK+FNvAvUNbWVGceR1vmYGfLhlbZTSj3JFFiSZslnzmh9NrVdrxgcU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzE9yii1hk0fUhIEAanSXx7Y1xWBQUcUmRz3bPmxOM7ErD9inAR
 6xaJZEzWpPjAvt4lql45jd9AUjeJGH9hE1sQGG05/258gO+Oy904Z8AQ/IeSGv3RyKxfMmzM4oA
 5h4SOzImVY+AOsnUWNiubgR8bqXKe1esMSt2F+FWl6w==
X-Gm-Gg: ATEYQzwMS4S+hIdewYrrw6TVgcDQCMA/09sPBJoiOazGP1c6EtX5ajSW3SIOBkEr21c
 5rQP/6tZ8UZUdHjh8y5m4+S5/BwijQb98aDB6Jtuu1IhNKtzAR9K63gRtQ7mVGcELwA7RybSqao
 PUZWO6VYL1Y0GzTtM+Sp2TwKsSq4pFJdyAxdoku+wl9hcc0iQcEwF1lXSvUdBhgMlz3uj7DLp8F
 6TpXzzNx+qe0QWLUCe4wXFdz4jKXN4pJNd8m6WREPAD9bePYOqmrbiK5ApmJk85ifiuz5KLXiIk
 kBLj/ejLIc0dy9vLPr60kH4MvjIgBPE2rdVsIQ==
X-Received: by 2002:a05:690c:e3cf:b0:79a:b71c:9c18 with SMTP id
 00721157ae682-79acf6d3fafmr34648757b3.54.1774442975702; Wed, 25 Mar 2026
 05:49:35 -0700 (PDT)
MIME-Version: 1.0
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <20260324-color-format-v11-3-605559af4fb4@collabora.com>
In-Reply-To: <20260324-color-format-v11-3-605559af4fb4@collabora.com>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 25 Mar 2026 12:49:19 +0000
X-Gm-Features: AaiRm50VNDDjWfwK37zgUxzAmL4en6__7Zy6-AnLTnIOsCvoTh1nsZLCZm3Xzfc
Message-ID: <CAPY8ntB9f_=f5kru=8w9BpTuqQR+93maGpT61EKU28Uay2vq8Q@mail.gmail.com>
Subject: Re: [PATCH v11 03/22] drm: Add new general DRM property "color format"
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
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
	FORGED_RECIPIENTS(0.00)[m:nicolas.frattaroli@collabora.com,m:harry.wentland@amd.com,m:sunpeng.li@amd.com,m:siqueira@igalia.com,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:lumag@kernel.org,m:s.hauer@pengutronix.de,m:robh@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:kernel@collabora.com,m:amd-gfx@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:intel-xe@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:w
 se@tuxedocomputers.com,m:andri@yngvason.is,m:marius.vlad@collabora.com,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[dave.stevenson@raspberrypi.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[41];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[raspberrypi.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dave.stevenson@raspberrypi.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,tuxedocomputers.com,yngvason.is];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tuxedocomputers.com:email,yngvason.is:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 13657325285
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 24 Mar 2026 at 16:02, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
>
> Add a new general DRM property named "color format" which can be used by
> userspace to request the display driver to output a particular color
> format.
>
> Possible options are:
>     - auto (setup by default, driver internally picks the color format)
>     - rgb
>     - ycbcr444
>     - ycbcr422
>     - ycbcr420
>
> Drivers should advertise from this list which formats they support.
> Together with this list and EDID data from the sink we should be able
> to relay a list of usable color formats to users to pick from.
>
> Co-developed-by: Werner Sembach <wse@tuxedocomputers.com>
> Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
> Co-developed-by: Andri Yngvason <andri@yngvason.is>
> Signed-off-by: Andri Yngvason <andri@yngvason.is>
> Signed-off-by: Marius Vlad <marius.vlad@collabora.com>
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/gpu/drm/drm_atomic_helper.c |   5 ++
>  drivers/gpu/drm/drm_atomic_uapi.c   |  11 ++++
>  drivers/gpu/drm/drm_connector.c     | 108 ++++++++++++++++++++++++++++++++++++
>  include/drm/drm_connector.h         | 104 ++++++++++++++++++++++++++++++++++
>  4 files changed, 228 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
> index 26953ed6b53e..b7753454b777 100644
> --- a/drivers/gpu/drm/drm_atomic_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_helper.c
> @@ -737,6 +737,11 @@ drm_atomic_helper_check_modeset(struct drm_device *dev,
>                         if (old_connector_state->max_requested_bpc !=
>                             new_connector_state->max_requested_bpc)
>                                 new_crtc_state->connectors_changed = true;
> +
> +                       if (old_connector_state->color_format !=
> +                           new_connector_state->color_format)
> +                               new_crtc_state->connectors_changed = true;
> +
>                 }
>
>                 if (funcs->atomic_check)
> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
> index 5bd5bf6661df..dee510c85e59 100644
> --- a/drivers/gpu/drm/drm_atomic_uapi.c
> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> @@ -935,6 +935,15 @@ static int drm_atomic_connector_set_property(struct drm_connector *connector,
>                 state->privacy_screen_sw_state = val;
>         } else if (property == connector->broadcast_rgb_property) {
>                 state->hdmi.broadcast_rgb = val;
> +       } else if (property == connector->color_format_property) {
> +               if (val > INT_MAX || !drm_connector_color_format_valid(val)) {
> +                       drm_dbg_atomic(connector->dev,
> +                                      "[CONNECTOR:%d:%s] unknown color format %llu\n",
> +                                      connector->base.id, connector->name, val);
> +                       return -EINVAL;
> +               }
> +
> +               state->color_format = val;
>         } else if (connector->funcs->atomic_set_property) {
>                 return connector->funcs->atomic_set_property(connector,
>                                 state, property, val);
> @@ -1020,6 +1029,8 @@ drm_atomic_connector_get_property(struct drm_connector *connector,
>                 *val = state->privacy_screen_sw_state;
>         } else if (property == connector->broadcast_rgb_property) {
>                 *val = state->hdmi.broadcast_rgb;
> +       } else if (property == connector->color_format_property) {
> +               *val = state->color_format;
>         } else if (connector->funcs->atomic_get_property) {
>                 return connector->funcs->atomic_get_property(connector,
>                                 state, property, val);
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> index 47dc53c4a738..e848374dee0b 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -1388,6 +1388,18 @@ static const u32 hdmi_colorspaces =
>         BIT(DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65) |
>         BIT(DRM_MODE_COLORIMETRY_DCI_P3_RGB_THEATER);
>
> +static const u32 hdmi_colorformats =
> +       BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444) |
> +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444) |
> +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422) |
> +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420);
> +
> +static const u32 dp_colorformats =
> +       BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444) |
> +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444) |
> +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422) |
> +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420);
> +
>  /*
>   * As per DP 1.4a spec, 2.2.5.7.5 VSC SDP Payload for Pixel Encoding/Colorimetry
>   * Format Table 2-120
> @@ -2940,6 +2952,102 @@ int drm_connector_attach_colorspace_property(struct drm_connector *connector)
>  }
>  EXPORT_SYMBOL(drm_connector_attach_colorspace_property);
>
> +/**
> + * drm_connector_attach_color_format_property - create and attach color format property
> + * @connector: connector to create the color format property on
> + * @supported_color_formats: bitmask of bit-shifted &enum drm_output_color_format
> + *                           values the connector supports
> + *
> + * Called by a driver to create a color format property. The property is
> + * attached to the connector automatically on success.
> + *
> + * @supported_color_formats should only include color formats the connector
> + * type can actually support.
> + *
> + * Returns:
> + * 0 on success, negative errno on error
> + */
> +int drm_connector_attach_color_format_property(struct drm_connector *connector,
> +                                              unsigned long supported_color_formats)
> +{
> +       struct drm_device *dev = connector->dev;
> +       struct drm_prop_enum_list enum_list[DRM_CONNECTOR_COLOR_FORMAT_COUNT];
> +       unsigned int i = 0;
> +       unsigned long fmt;
> +
> +       if (connector->color_format_property)
> +               return 0;
> +
> +       if (!supported_color_formats) {
> +               drm_err(dev, "No supported color formats provided on [CONNECTOR:%d:%s]\n",
> +                       connector->base.id, connector->name);
> +               return -EINVAL;
> +       }
> +
> +       if (supported_color_formats & ~GENMASK(DRM_OUTPUT_COLOR_FORMAT_COUNT - 1, 0)) {
> +               drm_err(dev, "Unknown color formats provided on [CONNECTOR:%d:%s]\n",
> +                       connector->base.id, connector->name);
> +               return -EINVAL;
> +       }
> +
> +       switch (connector->connector_type) {
> +       case DRM_MODE_CONNECTOR_HDMIA:
> +       case DRM_MODE_CONNECTOR_HDMIB:
> +               if (supported_color_formats & ~hdmi_colorformats) {
> +                       drm_err(dev, "Color formats not allowed for HDMI on [CONNECTOR:%d:%s]\n",
> +                               connector->base.id, connector->name);
> +                       return -EINVAL;
> +               }
> +               break;
> +       case DRM_MODE_CONNECTOR_DisplayPort:
> +       case DRM_MODE_CONNECTOR_eDP:
> +               if (supported_color_formats & ~dp_colorformats) {
> +                       drm_err(dev, "Color formats not allowed for DP on [CONNECTOR:%d:%s]\n",
> +                               connector->base.id, connector->name);
> +                       return -EINVAL;
> +               }
> +               break;
> +       }
> +
> +       enum_list[0].name = "AUTO";
> +       enum_list[0].type = DRM_CONNECTOR_COLOR_FORMAT_AUTO;
> +
> +       for_each_set_bit(fmt, &supported_color_formats, DRM_OUTPUT_COLOR_FORMAT_COUNT) {
> +               switch (fmt) {
> +               case DRM_OUTPUT_COLOR_FORMAT_RGB444:
> +                       enum_list[++i].type = DRM_CONNECTOR_COLOR_FORMAT_RGB444;
> +                       break;
> +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR444:
> +                       enum_list[++i].type = DRM_CONNECTOR_COLOR_FORMAT_YCBCR444;
> +                       break;
> +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR422:
> +                       enum_list[++i].type = DRM_CONNECTOR_COLOR_FORMAT_YCBCR422;
> +                       break;
> +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR420:
> +                       enum_list[++i].type = DRM_CONNECTOR_COLOR_FORMAT_YCBCR420;
> +                       break;
> +               default:
> +                       drm_warn(dev, "Unknown supported format %ld on [CONNECTOR:%d:%s]\n",
> +                                fmt, connector->base.id, connector->name);
> +                       continue;
> +               }
> +               enum_list[i].name = drm_hdmi_connector_get_output_format_name(fmt);
> +       }
> +
> +       connector->color_format_property =
> +               drm_property_create_enum(dev, DRM_MODE_PROP_ENUM, "color format",
> +                                        enum_list, i + 1);
> +
> +       if (!connector->color_format_property)
> +               return -ENOMEM;
> +
> +       drm_object_attach_property(&connector->base, connector->color_format_property,
> +                                  DRM_CONNECTOR_COLOR_FORMAT_AUTO);
> +
> +       return 0;
> +}
> +EXPORT_SYMBOL(drm_connector_attach_color_format_property);
> +
>  /**
>   * drm_connector_atomic_hdr_metadata_equal - checks if the hdr metadata changed
>   * @old_state: old connector state to compare
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index af8b92d2d5b7..bd549f912b76 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -571,14 +571,102 @@ enum drm_colorspace {
>   *   YCbCr 4:2:2 output format (ie. with horizontal subsampling)
>   * @DRM_OUTPUT_COLOR_FORMAT_YCBCR420:
>   *   YCbCr 4:2:0 output format (ie. with horizontal and vertical subsampling)
> + * @DRM_OUTPUT_COLOR_FORMAT_COUNT:
> + *   Number of valid output color format values in this enum
>   */
>  enum drm_output_color_format {
>         DRM_OUTPUT_COLOR_FORMAT_RGB444 = 0,
>         DRM_OUTPUT_COLOR_FORMAT_YCBCR444,
>         DRM_OUTPUT_COLOR_FORMAT_YCBCR422,
>         DRM_OUTPUT_COLOR_FORMAT_YCBCR420,
> +       DRM_OUTPUT_COLOR_FORMAT_COUNT,
>  };
>
> +/**
> + * enum drm_connector_color_format - Connector Color Format Request
> + *
> + * This enum, unlike &enum drm_output_color_format, is used to specify requests
> + * for a specific color format on a connector through the DRM "color format"
> + * property. The difference is that it has an "AUTO" value to specify that
> + * no specific choice has been made.
> + */
> +enum drm_connector_color_format {
> +       /**
> +        * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver or display protocol
> +        * helpers should pick a suitable color format. All implementations of a
> +        * specific display protocol must behave the same way with "AUTO", but
> +        * different display protocols do not necessarily have the same "AUTO"
> +        * semantics.
> +        *
> +        * For HDMI, "AUTO" picks RGB, but falls back to YCbCr 4:2:0 if the
> +        * bandwidth required for full-scale RGB is not available, or the mode
> +        * is YCbCr 4:2:0-only, as long as the mode and output both support
> +        * YCbCr 4:2:0.

Is there a reason you propose dropping back to YCbCr 4:2:0 without
trying YCbCr 4:2:2 first? Minimising the subsampling is surely
beneficial, and vc4 for one can do 4:2:2 but not 4:2:0.

  Dave

> +        *
> +        * For display protocols other than HDMI, the recursive bridge chain
> +        * format selection picks the first chain of bridge formats that works,
> +        * as has already been the case before the introduction of the "color
> +        * format" property. Non-HDMI bridges should therefore either sort their
> +        * bus output formats by preference, or agree on a unified auto format
> +        * selection logic that's implemented in a common state helper (like
> +        * how HDMI does it).
> +        */
> +       DRM_CONNECTOR_COLOR_FORMAT_AUTO = 0,
> +
> +       /**
> +        * @DRM_CONNECTOR_COLOR_FORMAT_RGB444: RGB output format
> +        */
> +       DRM_CONNECTOR_COLOR_FORMAT_RGB444,
> +
> +       /**
> +        * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR444: YCbCr 4:4:4 output format (ie.
> +        * not subsampled)
> +        */
> +       DRM_CONNECTOR_COLOR_FORMAT_YCBCR444,
> +
> +       /**
> +        * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR422: YCbCr 4:2:2 output format (ie.
> +        * with horizontal subsampling)
> +        */
> +       DRM_CONNECTOR_COLOR_FORMAT_YCBCR422,
> +
> +       /**
> +        * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR420: YCbCr 4:2:0 output format (ie.
> +        * with horizontal and vertical subsampling)
> +        */
> +       DRM_CONNECTOR_COLOR_FORMAT_YCBCR420,
> +
> +       /**
> +        * @DRM_CONNECTOR_COLOR_FORMAT_COUNT: Number of valid connector color
> +        * format values in this enum
> +        */
> +       DRM_CONNECTOR_COLOR_FORMAT_COUNT,
> +};
> +
> +/**
> + * drm_connector_color_format_valid - Validate drm_connector_color_format value
> + * @fmt: value to check against all values of &enum drm_connector_color_format
> + *
> + * Checks whether the passed in value of @fmt is one of the allowable values in
> + * &enum drm_connector_color_format.
> + *
> + * Returns: %true if it's a valid value for the enum, %false otherwise.
> + */
> +static inline bool __pure
> +drm_connector_color_format_valid(enum drm_connector_color_format fmt)
> +{
> +       switch (fmt) {
> +       case DRM_CONNECTOR_COLOR_FORMAT_AUTO:
> +       case DRM_CONNECTOR_COLOR_FORMAT_RGB444:
> +       case DRM_CONNECTOR_COLOR_FORMAT_YCBCR444:
> +       case DRM_CONNECTOR_COLOR_FORMAT_YCBCR422:
> +       case DRM_CONNECTOR_COLOR_FORMAT_YCBCR420:
> +               return true;
> +       default:
> +               return false;
> +       }
> +}
> +
>  const char *
>  drm_hdmi_connector_get_output_format_name(enum drm_output_color_format fmt);
>
> @@ -1129,6 +1217,13 @@ struct drm_connector_state {
>          */
>         enum drm_colorspace colorspace;
>
> +       /**
> +        * @color_format: State variable for Connector property to request
> +        * color format change on Sink. This is most commonly used to switch
> +        * between RGB to YUV and vice-versa.
> +        */
> +       enum drm_connector_color_format color_format;
> +
>         /**
>          * @writeback_job: Writeback job for writeback connectors
>          *
> @@ -2127,6 +2222,12 @@ struct drm_connector {
>          */
>         struct drm_property *colorspace_property;
>
> +       /**
> +        * @color_format_property: Connector property to set the suitable
> +        * color format supported by the sink.
> +        */
> +       struct drm_property *color_format_property;
> +
>         /**
>          * @path_blob_ptr:
>          *
> @@ -2610,6 +2711,9 @@ bool drm_connector_has_possible_encoder(struct drm_connector *connector,
>                                         struct drm_encoder *encoder);
>  const char *drm_get_colorspace_name(enum drm_colorspace colorspace);
>
> +int drm_connector_attach_color_format_property(struct drm_connector *connector,
> +                                              unsigned long supported_color_formats);
> +
>  /**
>   * drm_for_each_connector_iter - connector_list iterator macro
>   * @connector: &struct drm_connector pointer used as cursor
>
> --
> 2.53.0
>
