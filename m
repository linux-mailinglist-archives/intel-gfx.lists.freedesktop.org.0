Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5A140D1FA
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 05:20:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 166096EA99;
	Thu, 16 Sep 2021 03:20:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com
 [IPv6:2607:f8b0:4864:20::22d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 232FE6EA99
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 03:20:17 +0000 (UTC)
Received: by mail-oi1-x22d.google.com with SMTP id r26so7197139oij.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 20:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:in-reply-to:references:from:user-agent:date:message-id
 :subject:to:cc;
 bh=lPWedfA6r5VCpfB+zmlwyCRlfxGZZAM5B9I6qXkXYnw=;
 b=nRaXHUaZOABPQsT/e+jIn5OXE+ZVZn6XRVyxnQcasRRQZUzl3cSz91sbvN/1W5edQw
 u/dC/P36SbnUDKr91tmKbnnQm+yuUjXhmkqk4Z5hUHXY014Dyo3hocyEmqlPiVqrCGv8
 s2vzL610MoTnXtn2IaT2MOkECAspTo1TUA8nM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:in-reply-to:references:from
 :user-agent:date:message-id:subject:to:cc;
 bh=lPWedfA6r5VCpfB+zmlwyCRlfxGZZAM5B9I6qXkXYnw=;
 b=2j3YIFuUL50wEmh+krV0/jMqMDTIzwr8C3N8IuuAovgF01L6+fSFSTkKGWltqOurn0
 u2m60QQg31QL6B05XIKg+nR4ebBJGiweIVYftsIe5ce9RpGEDAr/7nSqbjHtB9ohVAZp
 BH/ZD168y2yAiC5wJ65TrtCMJeBSRXRxsBlfHp/f3rOQa5XJ4Dax/S+96U3ib6udAZq+
 GIAhCUCBlvcpyo89jByxhnMBgnKqhNv7bTblQ7WZ5axW9AnKmsOz5PAhPqHJgf+dxDd5
 bL5NrVfBRgNFN05Qeglkj0VCXGcekjHa5Q8IW/hGzH7G1pY5irP9Cm6vR850St6EXUYv
 g9wA==
X-Gm-Message-State: AOAM5333o/7+z4w+LQm+aFOIUbZVK/OWdofzgIALrdv3RNR8Ll7ISUBu
 q6ZPDmX0+j4r3lIsWCssc+Hf4nAWWyHObSkXEB3IsA==
X-Google-Smtp-Source: ABdhPJzcuEuuVZqh9OT/QB1maRe+ri9jh0M8oeXjbVigf7qvvq/MXTnJTKj4EjVCG4VZHXMT6ucXez6AP2ttiVv7/RE=
X-Received: by 2002:a54:4419:: with SMTP id k25mr7796058oiw.32.1631762416365; 
 Wed, 15 Sep 2021 20:20:16 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 15 Sep 2021 20:20:15 -0700
MIME-Version: 1.0
In-Reply-To: <20210817215201.795062-9-hdegoede@redhat.com>
References: <20210817215201.795062-1-hdegoede@redhat.com>
 <20210817215201.795062-9-hdegoede@redhat.com>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date: Wed, 15 Sep 2021 20:20:15 -0700
Message-ID: <CAE-0n53cRs3USijgp5nKy0KoykrNAOs90K-pMk9QBkT+qOgyHw@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Guenter Roeck <linux@roeck-us.net>, Hans de Goede <hdegoede@redhat.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Imre Deak <imre.deak@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Lyude <lyude@redhat.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 pmalani@chromium.org, robh@kernel.org
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, 
 intel-gfx <intel-gfx@lists.freedesktop.org>, dri-devel@lists.freedesktop.org, 
 linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 8/8] usb: typec: altmodes/displayport:
 Notify drm subsys of hotplug events
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

Quoting Hans de Goede (2021-08-17 14:52:01)
> diff --git a/drivers/usb/typec/altmodes/displayport.c b/drivers/usb/typec/altmodes/displayport.c
> index aa669b9cf70e..c1d8c23baa39 100644
> --- a/drivers/usb/typec/altmodes/displayport.c
> +++ b/drivers/usb/typec/altmodes/displayport.c
> @@ -125,6 +129,7 @@ static int dp_altmode_configure(struct dp_altmode *dp, u8 con)
>  static int dp_altmode_status_update(struct dp_altmode *dp)
>  {
>         bool configured = !!DP_CONF_GET_PIN_ASSIGN(dp->data.conf);
> +       bool hpd = !!(dp->data.status & DP_STATUS_HPD_STATE);
>         u8 con = DP_STATUS_CONNECTION(dp->data.status);
>         int ret = 0;
>
> @@ -137,6 +142,11 @@ static int dp_altmode_status_update(struct dp_altmode *dp)
>                 ret = dp_altmode_configure(dp, con);
>                 if (!ret)
>                         dp->state = DP_STATE_CONFIGURE;
> +       } else {
> +               if (dp->hpd != hpd) {
> +                       drm_connector_oob_hotplug_event(dp->connector_fwnode);
> +                       dp->hpd = hpd;
> +               }
>         }
>
>         return ret;
> @@ -512,6 +522,7 @@ static const struct attribute_group dp_altmode_group = {
>  int dp_altmode_probe(struct typec_altmode *alt)
>  {
>         const struct typec_altmode *port = typec_altmode_get_partner(alt);
> +       struct fwnode_handle *fwnode;
>         struct dp_altmode *dp;
>         int ret;
>
> @@ -540,6 +551,11 @@ int dp_altmode_probe(struct typec_altmode *alt)
>         alt->desc = "DisplayPort";
>         alt->ops = &dp_altmode_ops;
>
> +       fwnode = dev_fwnode(alt->dev.parent->parent); /* typec_port fwnode */
> +       dp->connector_fwnode = fwnode_find_reference(fwnode, "displayport", 0);

I'm trying to figure out how to translate this over to DT bindings. Is
there a binding document for this fwnode reference? If not, can you
please update
Documentation/devicetree/bindings/connector/usb-connector.yaml with this
property?

I think this means that the type-c node would have a 'displayport =
<&some_phandle>' property in it that points to the display port hardware
device that's pumping out the DisplayPort data?

> +       if (IS_ERR(dp->connector_fwnode))
> +               dp->connector_fwnode = NULL;
> +
>         typec_altmode_set_drvdata(alt, dp);
>
>         dp->state = DP_STATE_ENTER;
> @@ -555,6 +571,13 @@ void dp_altmode_remove(struct typec_altmode *alt)
>
>         sysfs_remove_group(&alt->dev.kobj, &dp_altmode_group);
>         cancel_work_sync(&dp->work);
> +
> +       if (dp->connector_fwnode) {
> +               if (dp->hpd)
> +                       drm_connector_oob_hotplug_event(dp->connector_fwnode);

I was hoping that we could make a type-c connector into a drm_bridge.
I'm thinking that it would be a DP-to-panel bridge. Then a panel could
be created as well on the end of the type-c connector and the bridge
would report hpd whenever the type-c logic figures out the cable has
been connected and hpd is asserted. The actual DisplayPort hardware
that's encoding data would then find the bridge through the graph
binding connected to the output node.

I'm not sure how MST is handled though. In that scenario maybe there's
more than one panel?

If you're interested the dts file that I'm trying to make this work for
is sc7180-trogdor.dtsi and I need to hook up mdss_dp's output port to
the two type-c connectors, usb_c0 and usb_c1, somehow. The two ports are
actually muxed by the EC (parent node) so only one type-c port can be
connected to the DP hardware at a time.

> +
> +               fwnode_handle_put(dp->connector_fwnode);
> +       }
