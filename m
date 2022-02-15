Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3897B4B6D0C
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 14:08:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E02BE10E497;
	Tue, 15 Feb 2022 13:08:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com
 [IPv6:2607:f8b0:4864:20::136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E332310E4A1
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 13:08:42 +0000 (UTC)
Received: by mail-il1-x136.google.com with SMTP id z7so14745032ilb.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 05:08:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h8vn3ZFW8UjLnMLsgl86dcA80MaxOlksJ/pmKV8vWGU=;
 b=Xw6MjLP9Kt6wH/XPSkTrQGGvUPWDpKraFYxM4d6yH3RKbYA/YECy72aCJttKSuP587
 10FtshqY75bNZ0wPI428PCyMW2OAb6yh/TT1o8uOiXl/AYRQtBPDYcnJeIpx7cQYKuhp
 wqae+oOmMT9dVZpOYgXDUMAKab0DYkhYdVNJ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h8vn3ZFW8UjLnMLsgl86dcA80MaxOlksJ/pmKV8vWGU=;
 b=B2qnn5yNDkk26tY3K4qKkWdyZVjufvBKzwiBrWoToFqNl514og42lJa2zfPHCnUvTr
 SfYHY8ovEvRfInSqVZfkN47+yvS07xAO1sq3UbmHO6ZAK0x9GFYVvY++eM1xmjEnSJjE
 fX1t9SCyPoOY1mcjFKojNekUn97jE1u3zK+pRi3xrBPoRYiYiwfq+xWctGYnj0Pma9OF
 zMS2oZcxgHANQ0XyA+M97WNVvtQolOti99ohNQ9DcUTufy6I5+Fiupo2acpBGNqH0Bji
 JP9Gn7BR0CCHiOrUznbFByvaCkxi6I4KB7sR34GSxemlrEE5gZxTfyyLQVbDdILZNzUK
 I0EA==
X-Gm-Message-State: AOAM530MFrnShdfeF30xV1aQy3BxmDOtUGCyeIbz6pjs8sBb5giiSbPD
 FcjLLRf8TThdbFIlpT9POpurgpf2PrDXBZBV/58u2g==
X-Google-Smtp-Source: ABdhPJyn0t3qtaQoYKT56xmJWFr+oDNaEgC/gP1GxkSxrJmyzV5aD6tH7GwuIxyug6WO9KvMRXh2z7t2mVNvKMkI28E=
X-Received: by 2002:a05:6e02:18c6:: with SMTP id
 s6mr2544341ilu.230.1644930522121; 
 Tue, 15 Feb 2022 05:08:42 -0800 (PST)
MIME-Version: 1.0
References: <20220208084234.1684930-1-hsinyi@chromium.org>
 <87leydhqt3.fsf@collabora.com>
 <CAJMQK-igpiYj-pkgG9amrQuVzf1Mc9BDDOwOdKLUbceKr=CHiQ@mail.gmail.com>
 <87czjoixno.fsf@collabora.com>
In-Reply-To: <87czjoixno.fsf@collabora.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Tue, 15 Feb 2022 21:08:16 +0800
Message-ID: <CAJMQK-gvvvhj2dsu8bkT6ytj=0MZaRFmsVOqJVrtVo4Y+XCEdQ@mail.gmail.com>
To: Gabriel Krisman Bertazi <krisman@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v8 1/3] gpu: drm: separate panel orientation
 property creating and value setting
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
Cc: Maxime Ripard <mripard@kernel.org>, Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Simon Ser <contact@emersion.fr>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, Alex Deucher <alexander.deucher@amd.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Harry Wentland <harry.wentland@amd.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 15, 2022 at 12:03 PM Gabriel Krisman Bertazi
<krisman@collabora.com> wrote:
>
> Hsin-Yi Wang <hsinyi@chromium.org> writes:
>
> > On Tue, Feb 15, 2022 at 9:17 AM Gabriel Krisman Bertazi
> > <krisman@collabora.com> wrote:
> >>
> >> Hsin-Yi Wang <hsinyi@chromium.org> writes:
> >>
> >> > drm_dev_register() sets connector->registration_state to
> >> > DRM_CONNECTOR_REGISTERED and dev->registered to true. If
> >> > drm_connector_set_panel_orientation() is first called after
> >> > drm_dev_register(), it will fail several checks and results in following
> >> > warning.
> >>
> >> Hi,
> >>
> >> I stumbled upon this when investigating the same WARN_ON on amdgpu.
> >> Thanks for the patch :)
> >>
> >> > diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> >> > index a50c82bc2b2fec..572ead7ac10690 100644
> >> > --- a/drivers/gpu/drm/drm_connector.c
> >> > +++ b/drivers/gpu/drm/drm_connector.c
> >> > @@ -1252,7 +1252,7 @@ static const struct drm_prop_enum_list dp_colorspaces[] = {
> >> >   *   INPUT_PROP_DIRECT) will still map 1:1 to the actual LCD panel
> >> >   *   coordinates, so if userspace rotates the picture to adjust for
> >> >   *   the orientation it must also apply the same transformation to the
> >> > - *   touchscreen input coordinates. This property is initialized by calling
> >> > + *   touchscreen input coordinates. This property value is set by calling
> >> >   *   drm_connector_set_panel_orientation() or
> >> >   *   drm_connector_set_panel_orientation_with_quirk()
> >> >   *
> >> > @@ -2341,8 +2341,8 @@ EXPORT_SYMBOL(drm_connector_set_vrr_capable_property);
> >> >   * @connector: connector for which to set the panel-orientation property.
> >> >   * @panel_orientation: drm_panel_orientation value to set
> >> >   *
> >> > - * This function sets the connector's panel_orientation and attaches
> >> > - * a "panel orientation" property to the connector.
> >> > + * This function sets the connector's panel_orientation value. If the property
> >> > + * doesn't exist, it will try to create one.
> >> >   *
> >> >   * Calling this function on a connector where the panel_orientation has
> >> >   * already been set is a no-op (e.g. the orientation has been overridden with
> >> > @@ -2373,19 +2373,12 @@ int drm_connector_set_panel_orientation(
> >> >       info->panel_orientation = panel_orientation;
> >> >
> >> >       prop = dev->mode_config.panel_orientation_property;
> >> > -     if (!prop) {
> >> > -             prop = drm_property_create_enum(dev, DRM_MODE_PROP_IMMUTABLE,
> >> > -                             "panel orientation",
> >> > -                             drm_panel_orientation_enum_list,
> >> > -                             ARRAY_SIZE(drm_panel_orientation_enum_list));
> >> > -             if (!prop)
> >> > -                     return -ENOMEM;
> >> > -
> >> > -             dev->mode_config.panel_orientation_property = prop;
> >> > -     }
> >> > +     if (!prop &&
> >> > +         drm_connector_init_panel_orientation_property(connector) < 0)
> >> > +             return -ENOMEM;
> >> >
> >>
> >> In the case where the property has not been created beforehand, you
> >> forgot to reinitialize prop here, after calling
> >> drm_connector_init_panel_orientation_property().  This means
> > hi Gabriel,
> >
> > drm_connector_init_panel_orientation_property() will create prop if
> > it's null. If prop fails to be created there, it will return -ENOMEM.
>
> Yes.  But *after the property is successfully created*, the prop variable is still
> NULL.  And then you call the following, using prop, which is still NULL:
>
> >> > +     drm_object_property_set_value(&connector->base, prop,
> >> > +                                   info->panel_orientation);
>
> This will do property->dev right on the first line of code, and dereference the
> null prop pointer.

Ah, right. Sorry that I totally missed this.
I'll fix it in the next version if the idea of this patch is accepted.
There might be another preferred solution for this.

>
> You must do
>
>   prop = dev->mode_config.panel_orientation_property;
>
> again after drm_connector_init_panel_orientation_property successfully
> returns, or call drm_object_property_set_value using
> dev->mode_config.panel_orientation_property directly:
>
>   drm_object_property_set_value(&connector->base,
>                         dev->mode_config.panel_orientation_property
>                         info->panel_orientation);
>
> --
> Gabriel Krisman Bertazi
