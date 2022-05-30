Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6969953775B
	for <lists+intel-gfx@lfdr.de>; Mon, 30 May 2022 10:53:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6FD210E1E3;
	Mon, 30 May 2022 08:53:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9E2410E1F6
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 May 2022 08:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1653900795;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RhvgJCFXfv5RG+0oVTAct7gmCCzDguggkQSBJ+VAo/A=;
 b=fXliv7pHM2Jre6LMEQLlatcvDILw79rqi6Gypb6ohnbVrIBF4xpKqOggZPI9HNhPwX24+V
 1RchNcgvKJeYTD0ccHvO0yjR0zjGaFRhMXsa13qEmeqGGPbLcD+0MnTh8PJ048EfTuMFCr
 5BgyhjKhs/sYLII3dwdFnxfGFLTohC4=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-670-ndy1QIKfNzCb8c68XaASWA-1; Mon, 30 May 2022 04:53:14 -0400
X-MC-Unique: ndy1QIKfNzCb8c68XaASWA-1
Received: by mail-ej1-f71.google.com with SMTP id
 m20-20020a170906849400b006ff296bb911so3638736ejx.6
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 May 2022 01:53:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=RhvgJCFXfv5RG+0oVTAct7gmCCzDguggkQSBJ+VAo/A=;
 b=HwBWtIul2n49oY7VWyAjQ/JSOjXQ9pNSlmoczldN+ehamah/wOHQtamCvWttG67/OW
 o+FF6/+WxNbSd5Gs4EPJan49poSYD8T7GHb+iD/kTdep26eqvv+1vCUtf3jhF3Vjh+Jg
 QFste4ZJEWmXnk2DUzI8MHDxm4RzbUZRofuFPTWJURglsBZkdGEE0HXOjSMSWKi1iRaT
 qMBEnvGhKCtbO2JgUDjr+giYPvWSbfvNefyQSaA6wYYxwNnZtIULtO1J90D2C7JaK7gp
 yavqkF1iIdPEfdqji44b1YU0oexiijpuWwlQt5uchPV9zyTUGL090Lf2l5Yq46qwnNhp
 UY2Q==
X-Gm-Message-State: AOAM531BZlNq0mgs0eh7MEcX13TYANoPo5Cn3q3dlfPbaC772dP1UIBd
 qNLFknxWXpCsbJsJx3JBzcxG1llRtRWh9uXhSGxxerLYueeVbfxuclWamr68QR08cOTvuQaWZYw
 qjyny+m+PnaeyKevgKP2Y4MRuJZjP
X-Received: by 2002:a17:907:6e20:b0:6ff:1541:8d34 with SMTP id
 sd32-20020a1709076e2000b006ff15418d34mr20498820ejc.447.1653900793070; 
 Mon, 30 May 2022 01:53:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzLS9X1+J2YlCZd50xUKza5F2TAaKjqsoBWgZZta9P6P5hLJgXAWFm13+BAHE9yuTPrdLSHXw==
X-Received: by 2002:a17:907:6e20:b0:6ff:1541:8d34 with SMTP id
 sd32-20020a1709076e2000b006ff15418d34mr20498786ejc.447.1653900792873; 
 Mon, 30 May 2022 01:53:12 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81?
 (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
 by smtp.gmail.com with ESMTPSA id
 v16-20020a1709062f1000b006fea2705d18sm3807438eji.210.2022.05.30.01.53.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 May 2022 01:53:12 -0700 (PDT)
Message-ID: <a8d1fe13-e747-016a-2d45-bfb50f23f2d9@redhat.com>
Date: Mon, 30 May 2022 10:53:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
To: Hsin-Yi Wang <hsinyi@chromium.org>, dri-devel@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
References: <20220530081910.3947168-1-hsinyi@chromium.org>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20220530081910.3947168-1-hsinyi@chromium.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
Cc: Rob Clark <robdclark@chromium.org>, Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Harry Wentland <harry.wentland@amd.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Maxime Ripard <mripard@kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 Alex Deucher <alexander.deucher@amd.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Simon Ser <contact@emersion.fr>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 5/30/22 10:19, Hsin-Yi Wang wrote:
> Some drivers, eg. mtk_drm and msm_drm, rely on the panel to set the
> orientation. Panel calls drm_connector_set_panel_orientation() to create
> orientation property and sets the value. However, connector properties
> can't be created after drm_dev_register() is called. The goal is to
> separate the orientation property creation, so drm drivers can create it
> earlier before drm_dev_register().

Sorry for jumping in pretty late in the discussion (based on the v10
I seem to have missed this before).

This sounds to me like the real issue here is that drm_dev_register()
is getting called too early?

To me it seems sensible to delay calling drm_dev_register() and
thus allowing userspace to start detecting available displays +
features until after the panel has been probed.

I see a devicetree patch in this series, so I guess that the panel
is described in devicetree. Especially in the case of devicetree
I would expect the kernel to have enough info to do the right
thing and make sure the panel is probed before calling
drm_dev_register() ?

Regards,

Hans




> 
> After this series, drm_connector_set_panel_orientation() works like
> before. It won't affect existing callers of
> drm_connector_set_panel_orientation(). The only difference is that
> some drm drivers can call drm_connector_init_panel_orientation_property()
> earlier.
> 
> Hsin-Yi Wang (4):
>   gpu: drm: separate panel orientation property creating and value
>     setting
>   drm/mediatek: init panel orientation property
>   drm/msm: init panel orientation property
>   arm64: dts: mt8183: Add panel rotation
> 
>  .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi |  1 +
>  drivers/gpu/drm/drm_connector.c               | 58 ++++++++++++++-----
>  drivers/gpu/drm/mediatek/mtk_dsi.c            |  7 +++
>  drivers/gpu/drm/msm/dsi/dsi_manager.c         |  4 ++
>  include/drm/drm_connector.h                   |  2 +
>  5 files changed, 59 insertions(+), 13 deletions(-)
> 

