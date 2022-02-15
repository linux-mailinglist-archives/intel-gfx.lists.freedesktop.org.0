Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6470A4B6681
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 09:48:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A19A210E416;
	Tue, 15 Feb 2022 08:48:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9272C10E417
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 08:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1644914919;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=cAghCw6nMXIP8DbPC2ZTmMjVdzgtfdV0Q4rDuIo9NkY=;
 b=DSqmbLSAwCAJVngxiscPK3AI83fBvtKyU1g0AilU1+5l1HWqSms+MFHSUGa0sZO/SfGwjz
 MTARKord6OnXu1SikYooOuoDXp45WeVwP+NSyH7Y/dELylzZWdS76PxZnMHKfa6/B5mtm0
 Kk9NNo2FFnT7z/6lrYWi3bCEQd9gsF4=
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com
 [209.85.216.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-446-SHDTjiPjPy6FMPzNHAHTnw-1; Tue, 15 Feb 2022 03:48:36 -0500
X-MC-Unique: SHDTjiPjPy6FMPzNHAHTnw-1
Received: by mail-pj1-f70.google.com with SMTP id
 s10-20020a17090a948a00b001b96be201f6so1370116pjo.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 00:48:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cAghCw6nMXIP8DbPC2ZTmMjVdzgtfdV0Q4rDuIo9NkY=;
 b=komi3vsebXgWvkPQyVl8lsG+QEq9XUFNMr5iWu9ko1tCqVElA897cuPeVUycS3Gde0
 tam4iaUkkQJi2r8LrI+uNsp0ggU8Y+JUAcUTUPf8IkkkIuoteKtItgK3qUrvZ1eM3ocw
 Pa29F0iriHYOQ2X7dOS0eLQKbt8PFiihbNKsu5EnEVA7IslSkwvxjvjRKZ+2ZWXbQ9GC
 dA++VnXRQ0+LiNxAOmQAmdQdR+PXkWCkGqlArE1IYQVJL6leNFdqhKwEA8SZhqQqCPK4
 SS4zrmuU4rjZ9aeRlGrSt2/O/p4oVu5fr34+gpBOkVyc882l6GoXhmgwubS8bJKy+kiN
 5mwQ==
X-Gm-Message-State: AOAM533kPEMZWDev/6fp3LB5OOIC3xHb8RVxHH3hbW67hbalQcnGeUsQ
 iX84NWoRXI/ybx7KG9lO4NNuT7Tl9WMLCv4bP3qvnKzFPq0/6LmrvVljLd81dHWNcMs80/VFJvX
 jhwjf02ZDwnd5p+qT7TEEJ9BQObfUuP/qHw+IV+zLhM/J
X-Received: by 2002:a63:2bc5:: with SMTP id r188mr2644607pgr.363.1644914915607; 
 Tue, 15 Feb 2022 00:48:35 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxNykZwzg4bf+5n8EbXDkY7JRsdOTnLNDPgNJlOcTDejNQ8sWs8DiYpM4W3ztHYleOanIdgFMhO3Rj6Rj63QAs=
X-Received: by 2002:a63:2bc5:: with SMTP id r188mr2644575pgr.363.1644914915393; 
 Tue, 15 Feb 2022 00:48:35 -0800 (PST)
MIME-Version: 1.0
References: <1644890154-64915-1-git-send-email-wangqing@vivo.com>
 <1644890154-64915-7-git-send-email-wangqing@vivo.com>
In-Reply-To: <1644890154-64915-7-git-send-email-wangqing@vivo.com>
From: Benjamin Tissoires <benjamin.tissoires@redhat.com>
Date: Tue, 15 Feb 2022 09:48:24 +0100
Message-ID: <CAO-hwJLwomyHyjza8x3cEhR97HkK7Z7yPWVXwA4-1jmM=WKqeQ@mail.gmail.com>
To: Qing Wang <wangqing@vivo.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=btissoir@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH V3 6/13] input: serio: use
 time_is_before_jiffies() instead of open coding it
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Mike Snitzer <snitzer@redhat.com>, David Airlie <airlied@linux.ie>,
 Michael Turquette <mturquette@baylibre.com>, dri-devel@lists.freedesktop.org,
 Hans Verkuil <hverkuil@xs4all.nl>, dm-devel@redhat.com,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 linux-clk@vger.kernel.org, Alasdair Kergon <agk@redhat.com>,
 amd-gfx@lists.freedesktop.org,
 "open list:HID CORE LAYER" <linux-input@vger.kernel.org>,
 xen-devel@lists.xenproject.org, linux-media@vger.kernel.org,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 intel-gfx@lists.freedesktop.org, Jiri Kosina <jikos@kernel.org>,
 linux-block@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jens Axboe <axboe@kernel.dk>, Stephen Boyd <sboyd@kernel.org>, "Pan,
 Xinhui" <Xinhui.Pan@amd.com>, lkml <linux-kernel@vger.kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 =?UTF-8?Q?Roger_Pau_Monn=C3=A9?= <roger.pau@citrix.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 15, 2022 at 2:57 AM Qing Wang <wangqing@vivo.com> wrote:
>
> From: Wang Qing <wangqing@vivo.com>
>
> Use the helper function time_is_{before,after}_jiffies() to improve
> code readability.
>
> Signed-off-by: Wang Qing <wangqing@vivo.com>
> ---

Reviewed-by: Benjamin Tissoires <benjamin.tissoires@redhat.com>

Cheers,
Benjamin

>  drivers/input/serio/ps2-gpio.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/input/serio/ps2-gpio.c b/drivers/input/serio/ps2-gpio.c
> index 8970b49..7834296
> --- a/drivers/input/serio/ps2-gpio.c
> +++ b/drivers/input/serio/ps2-gpio.c
> @@ -136,7 +136,7 @@ static irqreturn_t ps2_gpio_irq_rx(struct ps2_gpio_data *drvdata)
>         if (old_jiffies == 0)
>                 old_jiffies = jiffies;
>
> -       if ((jiffies - old_jiffies) > usecs_to_jiffies(100)) {
> +       if (time_is_before_jiffies(old_jiffies + usecs_to_jiffies(100))) {
>                 dev_err(drvdata->dev,
>                         "RX: timeout, probably we missed an interrupt\n");
>                 goto err;
> @@ -237,7 +237,7 @@ static irqreturn_t ps2_gpio_irq_tx(struct ps2_gpio_data *drvdata)
>         if (old_jiffies == 0)
>                 old_jiffies = jiffies;
>
> -       if ((jiffies - old_jiffies) > usecs_to_jiffies(100)) {
> +       if (time_is_before_jiffies(old_jiffies + usecs_to_jiffies(100))) {
>                 dev_err(drvdata->dev,
>                         "TX: timeout, probably we missed an interrupt\n");
>                 goto err;
> --
> 2.7.4
>

