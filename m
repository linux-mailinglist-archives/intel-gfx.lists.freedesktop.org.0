Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E85264AD2C1
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 09:07:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC8DD10E25E;
	Tue,  8 Feb 2022 08:07:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com
 [IPv6:2607:f8b0:4864:20::12f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D581B10E284
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 08:07:25 +0000 (UTC)
Received: by mail-il1-x12f.google.com with SMTP id n5so327842ilk.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 00:07:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2nn1yw6s4IptKKkqexjsVuYGnZXdnpYECt5wmy4nCLI=;
 b=RbemnSrhXrKKcmiNAQChCDTCfg6l6ls5LgDIaRQkZLTLaWYDjG6MM8osL8JkLF3bCp
 /Kq4sd9uU0NEZm+Wz8RgynFJAbap5ItA1CILACu+hFiwrULXgQ7eCzkQ14TNBanKSWIw
 TjONrz2gQtSvRje+DKUublwrHeFhbhnyVgZ3k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2nn1yw6s4IptKKkqexjsVuYGnZXdnpYECt5wmy4nCLI=;
 b=FBjERtruESfFviqMx1f4pL4E/FKXyPV46P822hVg18QiSI4h7JKh+AVSyxdVnZzbvj
 cDHdm9NnDlW1WeDt4IMZobW8h8w0PjYWYlCkvzgDLU4zog8yPyCR4k62iWo8T4jNLTTZ
 B9PMZOVfETxSRMqZeCDngR5Pr55Ppz0yK7cm57LnVXgJC9p5ZKBPUU4/UVlv5rrAdLkg
 Fw6v3j9Gs4t6g6iTD75bniaJPA+RVetVPP3N+sXam7qT+TkCY6K4tcqjWLYtYanzC/+P
 +VvCeVLObIpuxE9eI7aXbd7Oj67oRZrK9n01vgDpWogtPLcxweS5fJeGO8WnfGDoFkYO
 VyBQ==
X-Gm-Message-State: AOAM530j/yGXYNfiNXvxMbSvreJtI+rM5aSg9o0xcVvmQUUH7y5DUt3b
 v9EGcHMLRHBYXls7qEbV7bOrFz6tSoS0TO7Gmou1pw==
X-Google-Smtp-Source: ABdhPJzX6bk4eNvEnp69aytew5yHADtPJVvGPNtbE4EZRnOFljwbLJwfYxI5lISAClkMzxAfRIq8Gdm85/RAs5cGYNM=
X-Received: by 2002:a05:6e02:18c6:: with SMTP id
 s6mr1637885ilu.230.1644307645048; 
 Tue, 08 Feb 2022 00:07:25 -0800 (PST)
MIME-Version: 1.0
References: <20220208073714.1540390-1-hsinyi@chromium.org>
 <YgIhJb3+MckKD4dC@intel.com>
In-Reply-To: <YgIhJb3+MckKD4dC@intel.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Tue, 8 Feb 2022 16:06:59 +0800
Message-ID: <CAJMQK-hzjtZrXC+sdcs39kF6nvUzkNcgNXFXPzTUQHzr8f6ZkA@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v7 1/3] gpu: drm: separate panel orientation
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
 amd-gfx@lists.freedesktop.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Alex Deucher <alexander.deucher@amd.com>,
 Harry Wentland <harry.wentland@amd.com>, linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 8, 2022 at 3:52 PM Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> On Tue, Feb 08, 2022 at 03:37:12PM +0800, Hsin-Yi Wang wrote:
> > +int drm_connector_init_panel_orientation_property(
> > +     struct drm_connector *connector)
> > +{
> > +     struct drm_device *dev =3D connector->dev;
> > +     struct drm_property *prop;
> > +
> > +     prop =3D drm_property_create_enum(dev, DRM_MODE_PROP_IMMUTABLE,
> > +                     "panel orientation",
> > +                     drm_panel_orientation_enum_list,
> > +                     ARRAY_SIZE(drm_panel_orientation_enum_list));
> > +     if (!prop)
> > +             return -ENOMEM;
> > +
> > +     dev->mode_config.panel_orientation_property =3D prop;
>
> Leak when called multiple times. I guess you could just put
> this into drm_connector_create_standard_properties() instead
> and avoid that issue entirely.
>
I'll add a check for dev->mode_config.panel_orientation_property to
avoid the leak issue if called multiple times.
If we add in drm_connector_create_standard_properties(), we still need
another function to attach the property earlier for bridge/connectors
that require this property, since not all bridge/connectors need this
property.

> --
> Ville Syrj=C3=A4l=C3=A4
> Intel
