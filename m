Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C281D343C59
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 10:10:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3F3589DF7;
	Mon, 22 Mar 2021 09:10:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9573F6EA2E
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 14:43:55 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id
 kr3-20020a17090b4903b02900c096fc01deso4959773pjb.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 07:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=86LC+1JkNbbYNnfKum5G/BlJ9HpQquJ6GZDdITyjMEY=;
 b=ESqHg/Y6nunNSt2A+n9NWRNhz9fMlfBI4MSa8ZUCLsFHV6hBHTbyKTb5LvtUBy3sDl
 tZ3TZCOfAxuslM6hVBzvZBG+WDWr6+KKfr45IXsC++3CgBLssBEmOYJPoltIUCj5Ab5r
 Ps5BzO93U4v5ATBIff4UXI55yoi3tueb3M2Mxsxr8AalFKT0qmZjt0ytDLMrSuh+Xjv2
 nn1qSIhjlu63a0/GM1HyDQ0gsQjhbyl0d2JTYfEuiD0xDFDASfbE81sV/e6NUMEG69T/
 p4rrhKaWnvLHgogq2P8lT5x0kwhxjSmRELfZbJfWCaMnzgbK6aqmocai87gZbkTlRmnh
 tqaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=86LC+1JkNbbYNnfKum5G/BlJ9HpQquJ6GZDdITyjMEY=;
 b=it57jvcfPdmJeAQ/7XDNxzP7XLtNWsI7uGZDOjMaL9NGu+fGLzbeyA8DtYVZM8YcIl
 FeYhmgvlcNUyH6LJ117WGiMtiWX+dsLLiTeINSn7X3+G1olzHyTGDV/IMYyJvObm66w7
 mNsNHRW/69D9RTWZTJHa75EHiP/U6JIzk/l7bQ9AXgIeNgHEYDuQNprnojTirqGk6gIv
 ymuPW8lNvsuyqbTGrNOfG4X1iSI27aZnENEri2AM7o86sxMdI0jee0eD8N4qQFkeXxMW
 MFJFqdr8MRihqj4jeUSles0ur/81JW94/IShDrQNZLdg07sgpNORIocpyBwXyZ3LG/8k
 YUkA==
X-Gm-Message-State: AOAM533Xu0GvC8lTaFWsC7QXKnpY6TyI2QAJfYFHd+7xiMfcA6u6/50x
 8huuipFylRMk+bUAyH8L/irCo2gelJknckoU6o50cw==
X-Google-Smtp-Source: ABdhPJxMIHdTlGCXNCULSxlRJJagvj2AatBYPGQF37Ua2ikdmUUVJ4WnoNWSgNo0fgfSZ+4tH2iCCodydlKkCHKtvhM=
X-Received: by 2002:a17:90a:be07:: with SMTP id
 a7mr10386254pjs.75.1616165035134; 
 Fri, 19 Mar 2021 07:43:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210219215326.2227596-1-lyude@redhat.com>
 <20210219215326.2227596-12-lyude@redhat.com>
In-Reply-To: <20210219215326.2227596-12-lyude@redhat.com>
From: Robert Foss <robert.foss@linaro.org>
Date: Fri, 19 Mar 2021 15:43:44 +0100
Message-ID: <CAG3jFyvMb+ENOnM4Ug8Vkfk1uGThQj=+M96mf3ef0e9jzapoCw@mail.gmail.com>
To: Lyude Paul <lyude@redhat.com>
X-Mailman-Approved-At: Mon, 22 Mar 2021 09:10:08 +0000
Subject: Re: [Intel-gfx] [PATCH 11/30] drm/bridge/analogix/anx6345: Don't
 link encoder until after connector registration
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 nouveau@lists.freedesktop.org, dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Sam Ravnborg <sam@ravnborg.org>, amd-gfx@lists.freedesktop.org,
 Vasily Khoruzhick <anarsoul@gmail.com>, Icenowy Zheng <icenowy@aosc.io>,
 Jonas Karlman <jonas@kwiboo.se>, intel-gfx@lists.freedesktop.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 open list <linux-kernel@vger.kernel.org>, Torsten Duwe <duwe@lst.de>,
 Thomas Zimmermann <tzimmermann@suse.de>, Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hey Lyude,

Thanks for the patch, it looks good to me.

Reviewed-by: Robert Foss <robert.foss@linaro.org>

On Fri, 19 Feb 2021 at 22:58, Lyude Paul <lyude@redhat.com> wrote:
>
> Another case of linking an encoder to a connector after the connector's
> been registered. The proper place to do this is before connector
> registration, so let's fix that.
>
> Signed-off-by: Lyude Paul <lyude@redhat.com>
> ---
>  drivers/gpu/drm/bridge/analogix/analogix-anx6345.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> index 8e016ba7c54a..6258f16da0e8 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> @@ -556,12 +556,6 @@ static int anx6345_bridge_attach(struct drm_bridge *bridge,
>         drm_connector_helper_add(&anx6345->connector,
>                                  &anx6345_connector_helper_funcs);
>
> -       err = drm_connector_register(&anx6345->connector);
> -       if (err) {
> -               DRM_ERROR("Failed to register connector: %d\n", err);
> -               return err;
> -       }
> -
>         anx6345->connector.polled = DRM_CONNECTOR_POLL_HPD;
>
>         err = drm_connector_attach_encoder(&anx6345->connector,
> @@ -571,6 +565,12 @@ static int anx6345_bridge_attach(struct drm_bridge *bridge,
>                 return err;
>         }
>
> +       err = drm_connector_register(&anx6345->connector);
> +       if (err) {
> +               DRM_ERROR("Failed to register connector: %d\n", err);
> +               return err;
> +       }
> +
>         return 0;
>  }
>
> --
> 2.29.2
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
