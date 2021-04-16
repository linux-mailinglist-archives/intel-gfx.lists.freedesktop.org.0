Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C573641AA
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Apr 2021 14:28:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E6886E30C;
	Mon, 19 Apr 2021 12:28:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com
 [IPv6:2607:f8b0:4864:20::b2a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F10486E0C5
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Apr 2021 14:09:39 +0000 (UTC)
Received: by mail-yb1-xb2a.google.com with SMTP id 65so30254203ybc.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Apr 2021 07:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+iDAodRRpEUhtkqTZXwhK3yiesnssmbfnpzAO0fQBaQ=;
 b=uQnXtdLxem4ikmdqZ3Sd178lh0PBi6OUJIlybbB1Ie5/18gwUWnyxBhpRpH6dsApt6
 HgrKJn2BSo4sflN3QC1oawT22dcpsQXEonF48AcXTCo3T7YP0nEK5+WDv5oht6teVOwz
 AiygdTYr/z/sfrxidG+UPLWcKK2sIVIJG0FOIlGo/Vk9ZzHwapDhyuh6DzaFInl5xfKH
 igFcFGX/vkuTVhINzKQ5Ry5A/neEO0evmj2KjKwapLWh4OxXRKMvv9yBKqPWN9f7fHR+
 4yFm57+/w47MwLYuHhQ/w9rf3WZlE8y2I4orMG6klYCzxRmT8QZ5mgZ5BLBexnforcOu
 yjKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+iDAodRRpEUhtkqTZXwhK3yiesnssmbfnpzAO0fQBaQ=;
 b=THCcEaCw2PR2aFZrbWtRBKcFoZW8watJ5WgQZFfPLW0FLv55t0lBLJYpX7kyD0eNC4
 dBbYz1Rvojukp0lDEvRybHI38SZherVM5ZShDKIkvQKFiiERXhIev1b6tMy2TARcGas0
 wWRyAcCEXXW7l9DHnvLn+73mZY+xTGCm5JtU44GEbn7WWjj/zChOXan/kFQQBAmy5a3V
 UYO7rVE121RYxU7gCavGI5rWsbLJwwkHHq7FdPmxS8ChCN8i54jksOkWg+x0GE1+TVlC
 cm4dMfpaVaVVleQPX5ozrAr62RPOlNWNYfFwxpcI7LWGA9ey4zVGzpdTLS01KHcuAN3j
 YSQw==
X-Gm-Message-State: AOAM532vh35p2AtzqKVQm8mt8fK2ov+ybsMkbRGfNAeuFB3HklkfEUdb
 LRqYz+kBQVuV8oAYSlHFxLM5xtEtCQS5lHaqM/z/8w==
X-Google-Smtp-Source: ABdhPJxirPkkW4ar8JP1azi15sakWVGJn4HrEQDx209hIbNv5M1svItYhPj+O3FrREbRjomo94vZ2Z3HsLbFndBeixg=
X-Received: by 2002:a25:1905:: with SMTP id 5mr11994893ybz.302.1618582179030; 
 Fri, 16 Apr 2021 07:09:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210414172916.2689361-1-hsinyi@chromium.org>
 <20210414172916.2689361-5-hsinyi@chromium.org>
In-Reply-To: <20210414172916.2689361-5-hsinyi@chromium.org>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Fri, 16 Apr 2021 16:09:28 +0200
Message-ID: <CAMpxmJUGxUPYC9NEnJDHYq7Nu=akP5GTpU0ts9htf1vELhK15Q@mail.gmail.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
X-Mailman-Approved-At: Mon, 19 Apr 2021 12:28:02 +0000
Subject: Re: [Intel-gfx] [PATCH v19 4/6] misc: eeprom: at24: check suspend
 status before disable regulator
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
Cc: arm-soc <linux-arm-kernel@lists.infradead.org>,
 linux-devicetree <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Wolfram Sang <wsa@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 linux-i2c <linux-i2c@vger.kernel.org>, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, intel-gfx@lists.freedesktop.org,
 Qii Wang <qii.wang@mediatek.com>, Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 14, 2021 at 7:29 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> cd5676db0574 ("misc: eeprom: at24: support pm_runtime control") disables
> regulator in runtime suspend. If runtime suspend is called before
> regulator disable, it will results in regulator unbalanced disabling.
>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>

Please add the Fixes tag.

> ---
>  drivers/misc/eeprom/at24.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/misc/eeprom/at24.c b/drivers/misc/eeprom/at24.c
> index 926408b41270..7a6f01ace78a 100644
> --- a/drivers/misc/eeprom/at24.c
> +++ b/drivers/misc/eeprom/at24.c
> @@ -763,7 +763,8 @@ static int at24_probe(struct i2c_client *client)
>         at24->nvmem = devm_nvmem_register(dev, &nvmem_config);
>         if (IS_ERR(at24->nvmem)) {
>                 pm_runtime_disable(dev);
> -               regulator_disable(at24->vcc_reg);
> +               if (!pm_runtime_status_suspended(dev))
> +                       regulator_disable(at24->vcc_reg);
>                 return PTR_ERR(at24->nvmem);
>         }
>
> @@ -774,7 +775,8 @@ static int at24_probe(struct i2c_client *client)
>         err = at24_read(at24, 0, &test_byte, 1);
>         if (err) {
>                 pm_runtime_disable(dev);
> -               regulator_disable(at24->vcc_reg);
> +               if (!pm_runtime_status_suspended(dev))
> +                       regulator_disable(at24->vcc_reg);
>                 return -ENODEV;
>         }
>
> --
> 2.31.1.295.g9ea45b61b8-goog
>

Acked-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
