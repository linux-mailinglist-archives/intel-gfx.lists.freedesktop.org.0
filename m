Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD24D343C60
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 10:10:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CEE889DFC;
	Mon, 22 Mar 2021 09:10:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com
 [IPv6:2607:f8b0:4864:20::52b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 926376EA24
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 14:28:26 +0000 (UTC)
Received: by mail-pg1-x52b.google.com with SMTP id e33so3791165pgm.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 07:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wB7XW1expiEEiA0z4q1J+zFtd6n/h701jYh9DH52x/g=;
 b=rfMY38MqhnK5WXT7hN0NFVNWJw09ySqEl6rahFHBok2eKiGSQ2SNtxC0jMRggFiFlp
 YNwZt7MGTpigDLIAQKlPZmqoBKtAhhEZfliE5yoKKwNqonCgvMFh7k/B/fMmSMvqGIKr
 5o8ELS87A24SQYN48yn1Kk4x38DeIrzUpQ1vxEuFDiJufMUpYAWSvdq2f2AhwA7AksfV
 bzKZSInC5qkZPpyyM0fxBaDgRizOcLYb/NaHoS9F2+0iegoTshz2yU6lxf5+VEoO5kuz
 hLBfKtTo5O9LWVFySPV8SYcnOJrIxqA1hBYp3/kGnJNXZaR/mMgvqz0ywTpGOA39Y6hJ
 Z+Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wB7XW1expiEEiA0z4q1J+zFtd6n/h701jYh9DH52x/g=;
 b=QhcqOr1y8HuSLHXgTmBy95NfC3OrfsFcAHHKUNmURKnDymtm36GfXabzgCLnC5dbAF
 WrANNL9pv6gWjpZow2T//yMqswUjeOXgEUKoe1lJZkIfS/yIJ7UYH9Sp9UfRnqI2aJR3
 7MfrKpyDqeydFe+zm/pnDjYHFgNQzJChhlgip0QEjyauOn/ibDq4Pfcl0ywr1Z+vlmYI
 pPkcYIadVDXeXOlZddIQ/5gKwxi/o1dCacdIsSKojktFwvr3GqyC7cWgfmr18E1e2Hw3
 rjbe8t1Iiwa1U4OhQxZlDYbLMn0sn2LHSCwh3U8GMUpzX+NzuYeHFZhxjhREiJhOwTb5
 waZQ==
X-Gm-Message-State: AOAM531FqVS88+ZxGzwu0yzs5u6GsJ7IrTIsZ2X2D2LPMj8rvESDSx88
 2YvODmaUepLxvZM1c8VG9Z70yCwfOIpVffraOSxI/w==
X-Google-Smtp-Source: ABdhPJyE0Wk9tAliN/2sKNin+z7nx+NeyBf7s/4rymph1mvk13Artsko/VpzzorcMg+3DPqfuz4cf4SD2HeAcfTrsYc=
X-Received: by 2002:a63:2321:: with SMTP id j33mr11536620pgj.120.1616164106191; 
 Fri, 19 Mar 2021 07:28:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210219215326.2227596-1-lyude@redhat.com>
 <20210219215326.2227596-8-lyude@redhat.com>
In-Reply-To: <20210219215326.2227596-8-lyude@redhat.com>
From: Robert Foss <robert.foss@linaro.org>
Date: Fri, 19 Mar 2021 15:28:15 +0100
Message-ID: <CAG3jFyt10Z_MVvvXyBfYFrN7_FQCOUywfLNXZbei2c=1DxvqhA@mail.gmail.com>
To: Lyude Paul <lyude@redhat.com>
X-Mailman-Approved-At: Mon, 22 Mar 2021 09:10:08 +0000
Subject: Re: [Intel-gfx] [PATCH 07/30] drm/bridge/analogix/anx78xx: Add
 missing drm_dp_aux_unregister() call
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
Cc: Torsten Duwe <duwe@lst.de>, Jernej Skrabec <jernej.skrabec@siol.net>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Jonas Karlman <jonas@kwiboo.se>, open list <linux-kernel@vger.kernel.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
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
> Surprisingly, this bridge actually registers it's AUX adapter at the
> correct time already. Nice job! However, it does forget to actually
> unregister the AUX adapter, so let's add a bridge function to handle that.
>
> Signed-off-by: Lyude Paul <lyude@redhat.com>
> ---
>  drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
> index 81debd02c169..ec4607dc01eb 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
> @@ -942,6 +942,11 @@ static int anx78xx_bridge_attach(struct drm_bridge *bridge,
>         return 0;
>  }
>
> +static void anx78xx_bridge_detach(struct drm_bridge *bridge)
> +{
> +       drm_dp_aux_unregister(&bridge_to_anx78xx(bridge)->aux);
> +}
> +
>  static enum drm_mode_status
>  anx78xx_bridge_mode_valid(struct drm_bridge *bridge,
>                           const struct drm_display_info *info,
> @@ -1013,6 +1018,7 @@ static void anx78xx_bridge_enable(struct drm_bridge *bridge)
>
>  static const struct drm_bridge_funcs anx78xx_bridge_funcs = {
>         .attach = anx78xx_bridge_attach,
> +       .detach = anx78xx_bridge_detach,
>         .mode_valid = anx78xx_bridge_mode_valid,
>         .disable = anx78xx_bridge_disable,
>         .mode_set = anx78xx_bridge_mode_set,
> --
> 2.29.2
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
