Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D30440CD66
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 21:48:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90AE66EA0C;
	Wed, 15 Sep 2021 19:48:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3CD36EA0C
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 19:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631735305;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5QhPz3aMDmMaiubdIQIAXvCxnYxuMA732ECNckrS7nI=;
 b=e2xiNCY0q3/V0f4QgND0z8Ig5QoT4h38uw1rI8lNB0HKxqx6s6hpj3rXmUHtIHvyuK1cqT
 +51Hs8Ug7fv2s7TcPlyYCxpmLgsNAFqu/LTcP0iJ9OwZ3DTHNuzS9+n0hwigST4/12WXdq
 6AlSD8Jscm10R3YBe2sEjc3H1R4W6H0=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-46-QRFnezvJPTabHGLim2rK7A-1; Wed, 15 Sep 2021 15:48:24 -0400
X-MC-Unique: QRFnezvJPTabHGLim2rK7A-1
Received: by mail-qk1-f200.google.com with SMTP id
 v21-20020a05620a0a9500b003d5c1e2f277so6874429qkg.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 12:48:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=5QhPz3aMDmMaiubdIQIAXvCxnYxuMA732ECNckrS7nI=;
 b=VWP5ixbrZr1xuI79FjLwvLGMmHUeWyGt2s0sr1uLE/BqYc0wW13O3WcJks+0MSQuDY
 SI52IRivCA5FsHHSPdcXrIWKAX1UEtCbrjS/WWEqyNodSzTVlJgW0QsVEPrqkOx8Q1Ye
 Ok74M8aFyk2bLUxctor2SD4C1hEt5UnNRzqd299Vpy7/tKaI8nu23+/DQVCFyBoIawFJ
 4XKM6aU+1fEfLWJZk7ZvcEtn78oi0MW9/vAPjFdv+8YhsWKs91FUIBbjhPTyQ6j3TFr/
 xbm2yYUlUNOxQ/rd6bBF4Q62sRnYJOkkMe4zWb2uWwnWAQQeVDN00gdKLS6uf6wtu+4s
 BtJg==
X-Gm-Message-State: AOAM531eSBEdGTQsEZVvj6plSYM8MgUirr+2qGfCTyijK0lF/X/1Pkdc
 eD8KPxXbT7jkbfFxfVjmQ+s5akXRx+hCu5dUnUFjw7Dx3GM1rByMMUNLGxGnEnx8Lh+SfeoXpHY
 VVHWPbanneYrURwD2iIMswQqFVShF
X-Received: by 2002:a05:6214:2427:: with SMTP id
 gy7mr1746778qvb.20.1631735301883; 
 Wed, 15 Sep 2021 12:48:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz3I5qwk1E3TVUdZmWzVo/ax0LEqjjb9iApw7AxVo+ftr2xVKzWq3gcPWLdHL+NNdd8nFlNeQ==
X-Received: by 2002:a05:6214:2427:: with SMTP id
 gy7mr1746719qvb.20.1631735301414; 
 Wed, 15 Sep 2021 12:48:21 -0700 (PDT)
Received: from [192.168.8.206] (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id i16sm625800qtw.15.2021.09.15.12.48.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Sep 2021 12:48:20 -0700 (PDT)
Message-ID: <9a843feee4c5b422b63f8cc5890bdfa67bbb0f17.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Hans de Goede <hdegoede@redhat.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Rajat Jain <rajatja@google.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,  Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mark Gross <mgross@linux.intel.com>, Andy Shevchenko <andy@infradead.org>
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, Pekka
 Paalanen <pekka.paalanen@collabora.com>, Mario Limonciello
 <mario.limonciello@outlook.com>, Mark Pearson <markpearson@lenovo.com>,
 Sebastien Bacher <seb128@ubuntu.com>, Marco Trevisan
 <marco.trevisan@canonical.com>, Emil Velikov <emil.l.velikov@gmail.com>, 
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org,  platform-driver-x86@vger.kernel.org,
 Mario Limonciello <Mario.limonciello@dell.com>
Date: Wed, 15 Sep 2021 15:48:19 -0400
In-Reply-To: <20210906073519.4615-2-hdegoede@redhat.com>
References: <20210906073519.4615-1-hdegoede@redhat.com>
 <20210906073519.4615-2-hdegoede@redhat.com>
Organization: Red Hat
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/connector: Add support for
 privacy-screen properties (v4)
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

On Mon, 2021-09-06 at 09:35 +0200, Hans de Goede wrote:
> From: Rajat Jain <rajatja@google.com>
> 
> Add support for generic electronic privacy screen properties, that
> can be added by systems that have an integrated EPS.
> 
> Changes in v2 (Hans de Goede)
> - Create 2 properties, "privacy-screen sw-state" and
>   "privacy-screen hw-state", to deal with devices where the OS might be
>   locked out of making state changes
> - Write kerneldoc explaining how the 2 properties work together, what
>   happens when changes to the state are made outside of the DRM code's
>   control, etc.
> 
> Changes in v3 (Hans de Goede)
> - Some small tweaks to the kerneldoc describing the 2 properties
> 
> Changes in v4 (Hans de Goede)
> - Change the "Enabled, locked" and "Disabled, locked" hw-state enum value
>   names to "Enabled-locked" and "Disabled-locked". The xrandr command shows
>   all possible enum values separated by commas in its output, so having a
>   comma in an enum name is not a good idea.
> - Do not add a privacy_screen_hw_state member to drm_connector_state
>   since this property is immutable its value must be directly stored in the
>   obj->properties->values array
> 
> Signed-off-by: Rajat Jain <rajatja@google.com>
> Co-authored-by: Hans de Goede <hdegoede@redhat.com>
> Acked-by: Pekka Paalanen <pekka.paalanen@collabora.com>
> Reviewed-by: Mario Limonciello <Mario.limonciello@dell.com>
> Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> ---
>  Documentation/gpu/drm-kms.rst     |   2 +
>  drivers/gpu/drm/drm_atomic_uapi.c |   4 ++
>  drivers/gpu/drm/drm_connector.c   | 101 ++++++++++++++++++++++++++++++
>  include/drm/drm_connector.h       |  44 +++++++++++++
>  4 files changed, 151 insertions(+)
> 
> diff --git a/Documentation/gpu/drm-kms.rst b/Documentation/gpu/drm-kms.rst
> index 1ef7951ded5e..d14bf1c35d7e 100644
> --- a/Documentation/gpu/drm-kms.rst
> +++ b/Documentation/gpu/drm-kms.rst
> @@ -506,6 +506,8 @@ Property Types and Blob Property Support
>  .. kernel-doc:: drivers/gpu/drm/drm_property.c
>     :export:
>  
> +.. _standard_connector_properties:
> +
>  Standard Connector Properties
>  -----------------------------
>  
> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c
> b/drivers/gpu/drm/drm_atomic_uapi.c
> index 909f31833181..cdd31fc78bfc 100644
> --- a/drivers/gpu/drm/drm_atomic_uapi.c
> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> @@ -797,6 +797,8 @@ static int drm_atomic_connector_set_property(struct
> drm_connector *connector,
>                                                    fence_ptr);
>         } else if (property == connector->max_bpc_property) {
>                 state->max_requested_bpc = val;
> +       } else if (property == connector->privacy_screen_sw_state_property)
> {
> +               state->privacy_screen_sw_state = val;
>         } else if (connector->funcs->atomic_set_property) {
>                 return connector->funcs->atomic_set_property(connector,
>                                 state, property, val);
> @@ -874,6 +876,8 @@ drm_atomic_connector_get_property(struct drm_connector
> *connector,
>                 *val = 0;
>         } else if (property == connector->max_bpc_property) {
>                 *val = state->max_requested_bpc;
> +       } else if (property == connector->privacy_screen_sw_state_property)
> {
> +               *val = state->privacy_screen_sw_state;
>         } else if (connector->funcs->atomic_get_property) {
>                 return connector->funcs->atomic_get_property(connector,
>                                 state, property, val);
> diff --git a/drivers/gpu/drm/drm_connector.c
> b/drivers/gpu/drm/drm_connector.c
> index e0a30e0ee86a..dd1ca68881ba 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -1264,6 +1264,46 @@ static const struct drm_prop_enum_list
> dp_colorspaces[] = {
>   *     For DVI-I and TVout there is also a matching property "select
> subconnector"
>   *     allowing to switch between signal types.
>   *     DP subconnector corresponds to a downstream port.
> + *
> + * privacy-screen sw-state, privacy-screen hw-state:
> + *     These 2 optional properties can be used to query the state of the
> + *     electronic privacy screen that is available on some displays; and in
> + *     some cases also control the state. If a driver implements these
> + *     properties then both properties must be present.
> + *
> + *     "privacy-screen hw-state" is read-only and reflects the actual state
> + *     of the privacy-screen, possible values: "Enabled", "Disabled,
> + *     "Enabled-locked", "Disabled-locked". The locked states indicate
> + *     that the state cannot be changed through the DRM API. E.g. there
> + *     might be devices where the firmware-setup options, or a hardware
> + *     slider-switch, offer always on / off modes.
> + *
> + *     "privacy-screen sw-state" can be set to change the privacy-screen
> state
> + *     when not locked. In this case the driver must update the hw-state
> + *     property to reflect the new state on completion of the commit of the
> + *     sw-state property. Setting the sw-state property when the hw-state
> is
> + *     locked must be interpreted by the driver as a request to change the
> + *     state to the set state when the hw-state becomes unlocked. E.g. if
> + *     "privacy-screen hw-state" is "Enabled-locked" and the sw-state
> + *     gets set to "Disabled" followed by the user unlocking the state by
> + *     changing the slider-switch position, then the driver must set the
> + *     state to "Disabled" upon receiving the unlock event.
> + *
> + *     In some cases the privacy-screen's actual state might change outside
> of
> + *     control of the DRM code. E.g. there might be a firmware handled
> hotkey
> + *     which toggles the actual state, or the actual state might be changed
> + *     through another userspace API such as writing
> /proc/acpi/ibm/lcdshadow.
> + *     In this case the driver must update both the hw-state and the sw-
> state
> + *     to reflect the new value, overwriting any pending state requests in
> the
> + *     sw-state. Any pending sw-state requests are thus discarded.
> + *
> + *     Note that the ability for the state to change outside of control of
> + *     the DRM master process means that userspace must not cache the value
> + *     of the sw-state. Caching the sw-state value and including it in
> later
> + *     atomic commits may lead to overriding a state change done through
> e.g.
> + *     a firmware handled hotkey. Therefor userspace must not include the
> + *     privacy-screen sw-state in an atomic commit unless it wants to
> change
> + *     its value.
>   */
>  
>  int drm_connector_create_standard_properties(struct drm_device *dev)
> @@ -2341,6 +2381,67 @@ int drm_connector_set_panel_orientation_with_quirk(
>  }
>  EXPORT_SYMBOL(drm_connector_set_panel_orientation_with_quirk);
>  
> +static const struct drm_prop_enum_list privacy_screen_enum[] = {
> +       { PRIVACY_SCREEN_DISABLED,              "Disabled" },
> +       { PRIVACY_SCREEN_ENABLED,               "Enabled" },
> +       { PRIVACY_SCREEN_DISABLED_LOCKED,       "Disabled-locked" },
> +       { PRIVACY_SCREEN_ENABLED_LOCKED,        "Enabled-locked" },
> +};
> +
> +/**
> + * drm_connector_create_privacy_screen_properties - create the drm
> connecter's
> + *    privacy-screen properties.
> + * @connector: connector for which to create the privacy-screen properties
> + *
> + * This function creates the "privacy-screen sw-state" and "privacy-screen
> + * hw-state" properties for the connector. They are not attached.
> + */
> +void
> +drm_connector_create_privacy_screen_properties(struct drm_connector
> *connector)
> +{
> +       if (connector->privacy_screen_sw_state_property)
> +               return;
> +
> +       /* Note sw-state only supports the first 2 values of the enum */
> +       connector->privacy_screen_sw_state_property =
> +               drm_property_create_enum(connector->dev, DRM_MODE_PROP_ENUM,
> +                               "privacy-screen sw-state",
> +                               privacy_screen_enum, 2);
> +
> +       connector->privacy_screen_hw_state_property =
> +               drm_property_create_enum(connector->dev,
> +                               DRM_MODE_PROP_IMMUTABLE |
> DRM_MODE_PROP_ENUM,
> +                               "privacy-screen hw-state",
> +                               privacy_screen_enum,
> +                               ARRAY_SIZE(privacy_screen_enum));
> +}
> +EXPORT_SYMBOL(drm_connector_create_privacy_screen_properties);
> +
> +/**
> + * drm_connector_attach_privacy_screen_properties - attach the drm
> connecter's
> + *    privacy-screen properties.
> + * @connector: connector on which to attach the privacy-screen properties
> + *
> + * This function attaches the "privacy-screen sw-state" and "privacy-screen
> + * hw-state" properties to the connector. The initial state of both is set
> + * to "Disabled".
> + */
> +void
> +drm_connector_attach_privacy_screen_properties(struct drm_connector
> *connector)
> +{
> +       if (!connector->privacy_screen_sw_state_property)
> +               return;
> +
> +       drm_object_attach_property(&connector->base,
> +                                  connector-
> >privacy_screen_sw_state_property,
> +                                  PRIVACY_SCREEN_DISABLED);
> +
> +       drm_object_attach_property(&connector->base,
> +                                  connector-
> >privacy_screen_hw_state_property,
> +                                  PRIVACY_SCREEN_DISABLED);
> +}
> +EXPORT_SYMBOL(drm_connector_attach_privacy_screen_properties);
> +
>  int drm_connector_set_obj_prop(struct drm_mode_object *obj,
>                                     struct drm_property *property,
>                                     uint64_t value)
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index 79fa34e5ccdb..1acbcf0626ce 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -320,6 +320,30 @@ struct drm_monitor_range_info {
>         u8 max_vfreq;
>  };
>  
> +/**
> + * enum drm_privacy_screen_status - privacy screen status
> + *
> + * This enum is used to track and control the state of the integrated
> privacy
> + * screen present on some display panels, via the "privacy-screen sw-state"
> + * and "privacy-screen hw-state" properties. Note the _LOCKED enum values
> + * are only valid for the "privacy-screen hw-state" property.
> + *
> + * @PRIVACY_SCREEN_DISABLED:
> + *  The privacy-screen on the panel is disabled
> + * @PRIVACY_SCREEN_ENABLED:
> + *  The privacy-screen on the panel is enabled
> + * @PRIVACY_SCREEN_DISABLED_LOCKED:
> + *  The privacy-screen on the panel is disabled and locked (cannot be
> changed)
> + * @PRIVACY_SCREEN_ENABLED_LOCKED:
> + *  The privacy-screen on the panel is enabled and locked (cannot be
> changed)
> + */
> +enum drm_privacy_screen_status {
> +       PRIVACY_SCREEN_DISABLED = 0,
> +       PRIVACY_SCREEN_ENABLED,
> +       PRIVACY_SCREEN_DISABLED_LOCKED,
> +       PRIVACY_SCREEN_ENABLED_LOCKED,
> +};
> +
>  /*
>   * This is a consolidated colorimetry list supported by HDMI and
>   * DP protocol standard. The respective connectors will register
> @@ -781,6 +805,12 @@ struct drm_connector_state {
>          */
>         u8 max_bpc;
>  
> +       /**
> +        * @privacy_screen_sw_state: See :ref:`Standard Connector
> +        * Properties<standard_connector_properties>`
> +        */

So THAT'S how you reference other sections. I've always wondered!

> +       enum drm_privacy_screen_status privacy_screen_sw_state;
> +
>         /**
>          * @hdr_output_metadata:
>          * DRM blob property for HDR output metadata
> @@ -1409,6 +1439,18 @@ struct drm_connector {
>          */
>         struct drm_property *max_bpc_property;
>  
> +       /**
> +        * @privacy_screen_sw_state_property: Optional atomic property for
> the
> +        * connector to control the integrated privacy screen.
> +        */
> +       struct drm_property *privacy_screen_sw_state_property;
> +
> +       /**
> +        * @privacy_screen_hw_state_property: Optional atomic property for
> the
> +        * connector to report the actual integrated privacy screen state.
> +        */
> +       struct drm_property *privacy_screen_hw_state_property;
> +
>  #define DRM_CONNECTOR_POLL_HPD (1 << 0)
>  #define DRM_CONNECTOR_POLL_CONNECT (1 << 1)
>  #define DRM_CONNECTOR_POLL_DISCONNECT (1 << 2)
> @@ -1732,6 +1774,8 @@ int drm_connector_set_panel_orientation_with_quirk(
>         int width, int height);
>  int drm_connector_attach_max_bpc_property(struct drm_connector *connector,
>                                           int min, int max);
> +void drm_connector_create_privacy_screen_properties(struct drm_connector
> *conn);
> +void drm_connector_attach_privacy_screen_properties(struct drm_connector
> *conn);
>  
>  /**
>   * struct drm_tile_group - Tile group metadata

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

