Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BAC343C58
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 10:10:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE24989DEA;
	Mon, 22 Mar 2021 09:10:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14B626EA49
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 14:38:03 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id v23so3042536ple.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 07:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r8t+Haw8hnnyPI1A8ckYO+AnKAwkWRp0vTVGtS6IUlo=;
 b=VHOSnptigraQrnHtiYP3M5TJPLgguQqQNkJ+HKd6uE/tEHIW1D2lCZYt4kluq/2Uyo
 +XIW78QJtL/XDkFFfwtHiv31BNMpBs+3fONQIb0wj4848a0o8Nvc/e4aIs0pkwMAblku
 GAA/cn8GOMk3KVKy/PN5Y9R5fA0FccSOupDMtLD/c+JgPqJU+pGEvGd/d/0DTs1kvd7J
 qgE7tuYaHWJfSY2oUN6QbFQCwn8sw2WEPS2upkrhFubBrn4vhwpswSpZuAJ3eAIGGZuV
 9H9YKEuPCTliyuPzVKa5nnr7CvtuIstrFaSr+ovqhzSSSqV17hqiKOimHpNyb8R1EJ3b
 IPWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r8t+Haw8hnnyPI1A8ckYO+AnKAwkWRp0vTVGtS6IUlo=;
 b=swd2nNcb3h1qaAF1M3ngpz0NY+hMq7ta+pXZxVeGXUmy5cODqBqilHldUTC+Zl48Ll
 10OFDAWTplLu0t/GwNkKooEHs58L8QA2kPs+gRAjAeoaVA2BQhVQzYcRszHov0Z8DG0J
 AxavZ2aaA/cWiORRfHuc1h1POk1eMk3o4tNm90Amfklwc4rdH882QwEUY1j+mo3BZkJV
 G2oDCljy2AuE7ue4w3CN+jMqCPPDd9kO5PonyKQQXLjxy3zIe0NxpqY8DC3rWP80WiBE
 G+VR7zfCWZ4YSazzO01GPtVzEFBrTnSo2Rrqt+uC07wGmNtkDkS6+5td5FT9IgtEhGrV
 rgXw==
X-Gm-Message-State: AOAM533qaW7jH5OyfvEA3BUWKeE7p7cbRQhmiZ6xRRrxJTaY43AsxCis
 D/ocb2NMWm0tdcVyzFHEY05CS5zqS8bSXcWWpjYnFQ==
X-Google-Smtp-Source: ABdhPJw8c9CchTDySBs3NZLqT/TkgcU8jgQYXzTtozt8IS+78Ccw8naSaLYw4NWbogbCmYjnH85XuIvZ55HTa3abjoE=
X-Received: by 2002:a17:902:7d8d:b029:e6:4061:b767 with SMTP id
 a13-20020a1709027d8db02900e64061b767mr14682850plm.32.1616164682659; Fri, 19
 Mar 2021 07:38:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210219215326.2227596-1-lyude@redhat.com>
 <20210219215326.2227596-10-lyude@redhat.com>
In-Reply-To: <20210219215326.2227596-10-lyude@redhat.com>
From: Robert Foss <robert.foss@linaro.org>
Date: Fri, 19 Mar 2021 15:37:51 +0100
Message-ID: <CAG3jFyvW3YxG8jNq9krRJmWUbTFc3sXNXTjnsY0Pmgky6GJgQQ@mail.gmail.com>
To: Lyude Paul <lyude@redhat.com>
X-Mailman-Approved-At: Mon, 22 Mar 2021 09:10:08 +0000
Subject: Re: [Intel-gfx] [PATCH 09/30] drm/bridge/analogix/anx78xx: Cleanup
 on error in anx78xx_bridge_attach()
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Jonas Karlman <jonas@kwiboo.se>, open list <linux-kernel@vger.kernel.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Torsten Duwe <duwe@lst.de>,
 amd-gfx@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Sam Ravnborg <sam@ravnborg.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hey Lyude,

Thanks for the patch, it looks good to me.

Reviewed-by: Robert Foss <robert.foss@linaro.org>

On Fri, 19 Feb 2021 at 22:56, Lyude Paul <lyude@redhat.com> wrote:
>
> Just another issue I noticed while correcting usages of
> drm_dp_aux_init()/drm_dp_aux_register() around the tree. If any of the
> steps in anx78xx_bridge_attach() fail, we end up leaking resources. So,
> let's fix that (and fix leaking a DP AUX adapter in the process) by
> unrolling on errors.
>
> Signed-off-by: Lyude Paul <lyude@redhat.com>
> ---
>  drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
> index 338dd8531d4b..f20558618220 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
> @@ -918,7 +918,7 @@ static int anx78xx_bridge_attach(struct drm_bridge *bridge,
>                                  DRM_MODE_CONNECTOR_DisplayPort);
>         if (err) {
>                 DRM_ERROR("Failed to initialize connector: %d\n", err);
> -               return err;
> +               goto aux_unregister;
>         }
>
>         drm_connector_helper_add(&anx78xx->connector,
> @@ -930,16 +930,21 @@ static int anx78xx_bridge_attach(struct drm_bridge *bridge,
>                                            bridge->encoder);
>         if (err) {
>                 DRM_ERROR("Failed to link up connector to encoder: %d\n", err);
> -               return err;
> +               goto connector_cleanup;
>         }
>
>         err = drm_connector_register(&anx78xx->connector);
>         if (err) {
>                 DRM_ERROR("Failed to register connector: %d\n", err);
> -               return err;
> +               goto connector_cleanup;
>         }
>
>         return 0;
> +connector_cleanup:
> +       drm_connector_cleanup(&anx78xx->connector);
> +aux_unregister:
> +       drm_dp_aux_unregister(&anx78xx->aux);
> +       return err;
>  }
>
>  static void anx78xx_bridge_detach(struct drm_bridge *bridge)
> --
> 2.29.2
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
