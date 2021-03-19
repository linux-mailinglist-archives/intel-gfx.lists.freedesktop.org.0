Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 334DE343C61
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 10:10:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C85289E0E;
	Mon, 22 Mar 2021 09:10:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C9976EA31
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 14:45:57 +0000 (UTC)
Received: by mail-pj1-x1033.google.com with SMTP id
 k23-20020a17090a5917b02901043e35ad4aso6796252pji.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 07:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TDOGGWm21psnrXGlHEe6HvlgMdBE2hycDbnwOwrR0qU=;
 b=UlA8BUn9E5sUqHuUQiDVI3TjSNEzIgglN6StA4KCyVdX76E7TgzijdMXlwYNtcOU0U
 oK0YUt9NaUKh9OYWeJPjOkj4C5gutCsoHgMAvOd4Co8G5QdGHna9dHm7ddeuPGYGq/UU
 Si3mf/vcqt4SyjTxw+ErupnhAHbv7gJlYCmf1cF8qg82nbjZAt3Z/IIoFUghJvvgtcHU
 +FleiDUKLNV1+6e/kdi2/1LZ5WlwKchV5dNwMhB4LJ5WQEEREoixVpYSoLkG/fUbcn/z
 iqEMWMaGTVyjVI457AtXUukS3iu0mLK0n5p3e4aIfbfoRaFuJj8XAwJkM4jRv0vRhq69
 yzqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TDOGGWm21psnrXGlHEe6HvlgMdBE2hycDbnwOwrR0qU=;
 b=XgzHLQdrbRnr5tKIpQBZj/RhE8NKVCR+Ivsc0nuDVdQL5iWnt+0F1pLoxLM+Q1XVsk
 0BaiE2lYtMp+26VXpQGfkC88DdR2xoPwR0qY0l1vwyDUgu+aKY3g9THKXxrWYfWMkHzG
 PCnC1rITye/wOch7JtdevBKLgKuOo0J+xbn3uA8H5aXQ2V62TdQl1CSiHUdTEAz/BQi6
 yXkxNMRSjKEK0WiJghv798/0ukbUG/r0AzNAflEG5uh4svwI2lFH7c20PkdXIt0oh0Yn
 riIXer6+UAAHytGXvXB85tG4NkA0S3ouSLylt2btIiNW3FzmTcO/96oxAB6siOY+taYH
 4FMQ==
X-Gm-Message-State: AOAM530hCWV3t6H621i1rjTdZqLJA0j4S9d5hnxGQSmb8GUrSNqWtxvB
 cRG0nLAtYXpIAdiExa61QoSA+V4OPN2VwrZp02S4yw==
X-Google-Smtp-Source: ABdhPJxweZfNiCPg9C7NrDu3mAB+yl61lfkYpCt6KNMgXUL5b8ziQQV9oK2kr7DsR12MgPe9uLa2ifDL7vrvhQ8WUh4=
X-Received: by 2002:a17:902:e752:b029:e6:822c:355c with SMTP id
 p18-20020a170902e752b02900e6822c355cmr14735796plf.69.1616165156604; Fri, 19
 Mar 2021 07:45:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210219215326.2227596-1-lyude@redhat.com>
 <20210219215326.2227596-14-lyude@redhat.com>
In-Reply-To: <20210219215326.2227596-14-lyude@redhat.com>
From: Robert Foss <robert.foss@linaro.org>
Date: Fri, 19 Mar 2021 15:45:45 +0100
Message-ID: <CAG3jFyuJ=_Ab_LXNANs7VQAkgB16KC47zmibK1fXUKGvrGNUEw@mail.gmail.com>
To: Lyude Paul <lyude@redhat.com>
X-Mailman-Approved-At: Mon, 22 Mar 2021 09:10:08 +0000
Subject: Re: [Intel-gfx] [PATCH 13/30] drm/bridge/analogix/dp_core:
 Unregister DP AUX channel on error in analogix_dp_probe()
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Joe Perches <joe@perches.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Jonas Karlman <jonas@kwiboo.se>, open list <linux-kernel@vger.kernel.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 amd-gfx@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Andy Yan <andy.yan@rock-chips.com>, Sam Ravnborg <sam@ravnborg.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hey Lyude,

Thanks for the patch, it looks good to me.

Reviewed-by: Robert Foss <robert.foss@linaro.org>

On Fri, 19 Feb 2021 at 22:58, Lyude Paul <lyude@redhat.com> wrote:
>
> Just another drive-by fix I noticed while going through the tree to cleanup
> DP aux adapter registration - make sure we unregister the DP AUX dev if
> analogix_dp_probe() fails.
>
> Signed-off-by: Lyude Paul <lyude@redhat.com>
> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index aa1bb86293fd..f115233b1cb9 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -1782,6 +1782,7 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
>
>  err_disable_pm_runtime:
>         pm_runtime_disable(dp->dev);
> +       drm_dp_aux_unregister(&dp->aux);
>
>         return ret;
>  }
> --
> 2.29.2
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
