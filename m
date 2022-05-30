Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E345379F5
	for <lists+intel-gfx@lfdr.de>; Mon, 30 May 2022 13:34:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3209B10E416;
	Mon, 30 May 2022 11:34:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe35.google.com (mail-vs1-xe35.google.com
 [IPv6:2607:f8b0:4864:20::e35])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12F1010E416
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 May 2022 11:34:54 +0000 (UTC)
Received: by mail-vs1-xe35.google.com with SMTP id z6so10587489vsp.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 May 2022 04:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qavSBhjyJguHpZQtpsLoQunCmJj0UaxeZNUkFbvKHQI=;
 b=nylRUfykXAR4BPxN2kUQcQBx4UFaWucm9OU50Q26J8eVjUxEfey2e3vXkpeXlJPdBw
 yk04wEP2nFeCYhiVSzO2zQEQN7BleasMfad4K+q10YYI80QpMv9sXRHHxhDiw+J4mjqe
 y47MsyfOZhDnFZ0lbA46oIfYX2KDrn8RZ59ME=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qavSBhjyJguHpZQtpsLoQunCmJj0UaxeZNUkFbvKHQI=;
 b=j5lXHg15zTilt+8vwFRbsg4QCodPvYBr6BG5XCkZJu+xVTUGONxldj8j4Zjg9Uxgwl
 YlnvW6lvZtfK5+5U0lYekp/OfMwFU4R6+llw1IbLye4jzOVnnw500PK3K9R5TAH3Q7wz
 jxm4nqbfLYv6aDGkcNf6shHecDcjeCeKRMNFroLL77BqdQF8UBz210Nbs6nJ4f9msaqQ
 ZkjDuPyH0rlnyqSpRP47LdXHBhBLUjzjATtcrmpOt2Q06ie2yywa+yLjFkpgsDujiZLD
 v44oPbMaIm0qANgKBw3bzfNGBOLHRoJjekxkznm/HDg4ywJNmJJ32SJIeJsfGBb0DnbF
 svzQ==
X-Gm-Message-State: AOAM531nsidFkL6EgJjbs9Kgay9MuVP1pls3XGpbHXBOThnhvKB5Eb4i
 x3HDdd29Y98lWnq9V5Q27EhtiJsZYVjpAMOraNewuw==
X-Google-Smtp-Source: ABdhPJz7U/gg2bILW7eDQUEq+WiZSAg270VcwmISAU4Df/YG59TiLQ7aY2VN1tkTv7lkJuqBw4E/tvdvjiwMPfduP50=
X-Received: by 2002:a05:6102:1008:b0:335:e260:9ff1 with SMTP id
 q8-20020a056102100800b00335e2609ff1mr21708870vsp.32.1653910493009; Mon, 30
 May 2022 04:34:53 -0700 (PDT)
MIME-Version: 1.0
References: <20220530081910.3947168-1-hsinyi@chromium.org>
 <a8d1fe13-e747-016a-2d45-bfb50f23f2d9@redhat.com>
In-Reply-To: <a8d1fe13-e747-016a-2d45-bfb50f23f2d9@redhat.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Mon, 30 May 2022 19:34:27 +0800
Message-ID: <CAJMQK-iM-ip7edA2mBOhp-8maWKG5+kTceZUM5U6BOLLBq1H4Q@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v10 0/4] Separate panel orientation property
 creating and value setting
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
Cc: devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Rob Clark <robdclark@chromium.org>, amd-gfx@lists.freedesktop.org,
 Harry Wentland <harry.wentland@amd.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Simon Ser <contact@emersion.fr>,
 Douglas Anderson <dianders@chromium.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 30, 2022 at 4:53 PM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Hi,
>
> On 5/30/22 10:19, Hsin-Yi Wang wrote:
> > Some drivers, eg. mtk_drm and msm_drm, rely on the panel to set the
> > orientation. Panel calls drm_connector_set_panel_orientation() to create
> > orientation property and sets the value. However, connector properties
> > can't be created after drm_dev_register() is called. The goal is to
> > separate the orientation property creation, so drm drivers can create it
> > earlier before drm_dev_register().
>
> Sorry for jumping in pretty late in the discussion (based on the v10
> I seem to have missed this before).
>
> This sounds to me like the real issue here is that drm_dev_register()
> is getting called too early?
>
Right.

> To me it seems sensible to delay calling drm_dev_register() and
> thus allowing userspace to start detecting available displays +
> features until after the panel has been probed.
>

Most panels set this value very late, in .get_modes callback (since it
is when the connector is known), though the value was known during
panel probe.

I think we can also let drm check if they have remote panel nodes: If
there is a panel and the panel sets the orientation, let the drm read
this value and set the property. Does this workflow sound reasonable?

The corresponding patch to implement this:
https://patchwork.kernel.org/project/linux-mediatek/patch/20220530113033.124072-1-hsinyi@chromium.org/

Thanks

> I see a devicetree patch in this series, so I guess that the panel
> is described in devicetree. Especially in the case of devicetree
> I would expect the kernel to have enough info to do the right
> thing and make sure the panel is probed before calling
> drm_dev_register() ?
>
> Regards,
>
> Hans
>
>
>
>
> >
> > After this series, drm_connector_set_panel_orientation() works like
> > before. It won't affect existing callers of
> > drm_connector_set_panel_orientation(). The only difference is that
> > some drm drivers can call drm_connector_init_panel_orientation_property()
> > earlier.
> >
> > Hsin-Yi Wang (4):
> >   gpu: drm: separate panel orientation property creating and value
> >     setting
> >   drm/mediatek: init panel orientation property
> >   drm/msm: init panel orientation property
> >   arm64: dts: mt8183: Add panel rotation
> >
> >  .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi |  1 +
> >  drivers/gpu/drm/drm_connector.c               | 58 ++++++++++++++-----
> >  drivers/gpu/drm/mediatek/mtk_dsi.c            |  7 +++
> >  drivers/gpu/drm/msm/dsi/dsi_manager.c         |  4 ++
> >  include/drm/drm_connector.h                   |  2 +
> >  5 files changed, 59 insertions(+), 13 deletions(-)
> >
>
