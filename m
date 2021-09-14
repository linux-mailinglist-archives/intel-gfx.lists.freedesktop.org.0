Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F17EB40A27D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 03:28:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5FEF6E323;
	Tue, 14 Sep 2021 01:28:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com
 [IPv6:2607:f8b0:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C4B86E30F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 01:28:41 +0000 (UTC)
Received: by mail-ot1-x334.google.com with SMTP id
 i3-20020a056830210300b0051af5666070so16087980otc.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 18:28:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:in-reply-to:references:from:user-agent:date:message-id
 :subject:to:cc;
 bh=1iyEkjOspz1YHSZHaH57x8hyXl0nLGx/16zCo4qzljY=;
 b=Tul4Quso1sZ207HiO8jFYq9hTqO+BCojLOgrdEXHGGbHVUFXmyNkDGbglwl0FW93zC
 L+RZ9IiQ8+3BBHc5yuu047ayDXEw05KS4A6NjUoLO2QQAie6moBVa+dr7LR667B4iDzJ
 pjh80uBN8NZKxP/g2j9hoq7Yki43v2L2hdnYU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:in-reply-to:references:from
 :user-agent:date:message-id:subject:to:cc;
 bh=1iyEkjOspz1YHSZHaH57x8hyXl0nLGx/16zCo4qzljY=;
 b=7AvdZIleCRrdzDXY+JXvcit2D5grts+eVIbnBttlW0fqer8uvTSgOvPabBaTONYV8E
 0vvGkxXe8z7/unt/KWcaGoXC4PbEf/gVdos4rFwHQul8fUeVEXoZpJM8pu4jEPxuogNV
 On2ch3Ap0n/bKpuHUkf6Luva1pZY5Hw9WsI3mtFBZ5q7z6sAbOKEWHz3kWeRNElJeaf2
 7Ok84Z+/qe7mO/F1aHJssOCAnWWci1vWkNX1sPuspEzHc6hpRy0N81sX9PZtETSrLvQi
 zkJ8wBmHzw8BWIe8tXk73DjFG9QBw3JCnE1Roh63auN1BzC5wWo6zffQdyMLilMKRaJm
 L1Qw==
X-Gm-Message-State: AOAM530s+/uzupScRccEnyI6SI3a0tW7rBaXZVumhYsKzzYGiqCneSsH
 TCaFCht00m8K45G0FExfN3qrAR4O/jWWGH+Fv9jZfg==
X-Google-Smtp-Source: ABdhPJxiz7kY7hb1EpH/a+L2f+xpsb4urURtmhr4zIGOU4NpfdsFNt7CDlKp7ojpYl5biW2svbBuKdfBR4HRic5UJvg=
X-Received: by 2002:a05:6830:719:: with SMTP id
 y25mr12267405ots.77.1631582920355; 
 Mon, 13 Sep 2021 18:28:40 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 13 Sep 2021 18:28:39 -0700
MIME-Version: 1.0
In-Reply-To: <20210913175747.47456-14-sean@poorly.run>
References: <20210913175747.47456-1-sean@poorly.run>
 <20210913175747.47456-14-sean@poorly.run>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date: Mon, 13 Sep 2021 18:28:39 -0700
Message-ID: <CAE-0n50DybNUXSQOaPQ56-Ge56tmG8JDkPuzWnQf-S5Y++AnVA@mail.gmail.com>
To: Sean Paul <sean@poorly.run>, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Sean Paul <seanpaul@chromium.org>, Rob Clark <robdclark@gmail.com>, 
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 13/14] drm/msm: Add hdcp register ranges to
 sc7180 device tree
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

Quoting Sean Paul (2021-09-13 10:57:44)
> From: Sean Paul <seanpaul@chromium.org>
>
> This patch adds the register ranges required for HDCP to the sc7180
> device tree. These registers will be used to inject HDCP key as well as
> toggle HDCP on and off.

It doesn't look to do any of that?

>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> ---
>  drivers/gpu/drm/msm/dp/dp_parser.c | 30 +++++++++++++++++++++++++++---
>  drivers/gpu/drm/msm/dp/dp_parser.h |  4 ++++
>  2 files changed, 31 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/msm/dp/dp_parser.c b/drivers/gpu/drm/msm/dp/dp_parser.c
> index 0519dd3ac3c3..4bbe2485ce3c 100644
> --- a/drivers/gpu/drm/msm/dp/dp_parser.c
> +++ b/drivers/gpu/drm/msm/dp/dp_parser.c
> @@ -20,11 +20,19 @@ static const struct dp_regulator_cfg sdm845_dp_reg_cfg = {
>  };
>
>  static int msm_dss_ioremap(struct platform_device *pdev,
> -                               struct dss_io_data *io_data)
> +                               struct dss_io_data *io_data, const char *name,
> +                               int fallback_idx)
>  {
>         struct resource *res = NULL;
>
> -       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +       res = platform_get_resource_byname(pdev, IORESOURCE_MEM, name);
> +
> +       /* Support dts which do not have named resources */

Please no. Just use index and know that 0 is the dp hardware, 1 is the
hdcp key and 2 is the tz interaction zone. There is some backwards
compat logic to maintain for when it was split out but I hope we can
drop that soon. Alternatively we could make a new compatible and then
not care about future conflicts.

> +       if (!res) {
> +               if (fallback_idx >= 0)
> +                       res = platform_get_resource(pdev, IORESOURCE_MEM,
> +                                                   fallback_idx);
> +       }
>         if (!res) {
>                 DRM_ERROR("%pS->%s: msm_dss_get_res failed\n",
>                         __builtin_return_address(0), __func__);
> @@ -55,6 +63,8 @@ static void dp_parser_unmap_io_resources(struct dp_parser *parser)
>  {
>         struct dp_io *io = &parser->io;
>
> +       msm_dss_iounmap(&io->hdcp_tz);
> +       msm_dss_iounmap(&io->hdcp_key);
>         msm_dss_iounmap(&io->dp_controller);
>  }
>
> @@ -64,12 +74,26 @@ static int dp_parser_ctrl_res(struct dp_parser *parser)
>         struct platform_device *pdev = parser->pdev;
>         struct dp_io *io = &parser->io;
>
> -       rc = msm_dss_ioremap(pdev, &io->dp_controller);
> +       rc = msm_dss_ioremap(pdev, &io->dp_controller, "dp_controller", 0);
>         if (rc) {
>                 DRM_ERROR("unable to remap dp io resources, rc=%d\n", rc);
>                 goto err;
>         }
>
> +       rc = msm_dss_ioremap(pdev, &io->hdcp_key, "hdcp_key", -1);
> +       if (rc) {
> +               DRM_INFO("unable to remap dp hdcp resources, rc=%d\n", rc);
> +               io->hdcp_key.base = NULL;
> +               io->hdcp_key.len = 0;
> +       }
> +
> +       rc = msm_dss_ioremap(pdev, &io->hdcp_tz, "hdcp_tz", -1);
> +       if (rc) {
> +               DRM_INFO("unable to remap dp hdcp resources, rc=%d\n", rc);

These shouldn't be info messages. Also, the ioremap wrapper already
prints the message that it failed so these are redundant.

> +               io->hdcp_tz.base = NULL;
> +               io->hdcp_tz.len = 0;
> +       }
> +
>         io->phy = devm_phy_get(&pdev->dev, "dp");
>         if (IS_ERR(io->phy)) {
>                 rc = PTR_ERR(io->phy);
