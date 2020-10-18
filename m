Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B152A29204B
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Oct 2020 23:50:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CE996E8B1;
	Sun, 18 Oct 2020 21:50:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com
 [IPv6:2607:f8b0:4864:20::841])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F17B86E8B1;
 Sun, 18 Oct 2020 21:50:12 +0000 (UTC)
Received: by mail-qt1-x841.google.com with SMTP id m9so4993580qth.7;
 Sun, 18 Oct 2020 14:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LW7NtPMGJ2R8VOhKgzw6sjc10vh2YbY8kQEEkfju8fA=;
 b=BT6sX70H+s8KhgIkqlKxOTyt7nLW9Zkkp/pWMqwoIwpRPwASphI99ISJJY/DrRq4YB
 tuxxuQta89p2LltScao7kwUamcV10d6qq0/0GsMri9Y5uCbzF0DQIPVBZym6oh2w8IRp
 jGv4FzahYM8UB3UvXODpIfq1ilK2uqq9Xd/9k1Vp0D25EYeZvsrsLMiSOVKbh0jHo8ly
 ZwpyiDfjYzQI7omWM6lYTXWC4WxC4zXCwovEKbG2sVh0lXA3kgHlfvQ9kncK/jS7lzXB
 WtZ4PQbPMGBo2Fvzsm14b4aTThFD0/Vsyl0CynTIq6qQwMl+W5yJA342KaaYBMt5xICG
 NkkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LW7NtPMGJ2R8VOhKgzw6sjc10vh2YbY8kQEEkfju8fA=;
 b=SsHnizGfes5cx3+Nv4b1GzPH6kQ8+gLCpuNviLCnVH4dNzH18zqC7yzL/NVR7V/LIn
 hUk7etXvvO4HBI2/ePJw8r3gt6dYwEuX9fHzu4GoZjtcUgL3LfsbZ4JCzmKaSDdk+NVe
 hp1kclKWgF+QJamBNlkyr3NYijk/a32K4c6Db6LoJ8H9Qxw2UKgHB8W0hvNIiiQ5Vcm1
 u7EQWO0HsdWZJnc96fUEvBKuLVc6BHJOE1DJuud9SKxaKhtqln7F6X2Um0z+s/7dirI1
 YEIDDNV53/TZkqzBfSLh64O0P1/Kq87Koe/QhFppU9+JcHgrlNl2sQrr0Hc0ox3h3Ga7
 UJBw==
X-Gm-Message-State: AOAM530h3GgTA+n3OrSOgtUFIjBYf+z/pgYjTQGYJqZHYK6Eg6uJCEre
 n8lmz8MmMZKgC1ReNGI/ag+ywwiXeaK5XBoo+mk=
X-Google-Smtp-Source: ABdhPJw59Z9ZSI7YkUnrDX/NzYUwLZIQMERPV41io/elXdvNyA/Ph+eIMdFGNAEYy/TP8jUOuq9oIUb3paHWMlURueE=
X-Received: by 2002:aed:2983:: with SMTP id o3mr12423656qtd.285.1603057812125; 
 Sun, 18 Oct 2020 14:50:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 18 Oct 2020 23:50:00 +0200
Message-ID: <CAFLxGvxsHD6zvTJSHeo2gaoRQfjUPZ6M=5BirOObHFjGqnzfew@mail.gmail.com>
To: Allen Pais <allen.cryptic@gmail.com>
Subject: Re: [Intel-gfx] [PATCH] arch: um: convert tasklets to use new
 tasklet_setup() API
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 linux-atm-general@lists.sourceforge.net, manohar.vanga@gmail.com,
 Dave Airlie <airlied@linux.ie>, Allen Pais <allen.lkml@gmail.com>,
 linux-hyperv@vger.kernel.org,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 Maxim Levitsky <maximlevitsky@gmail.com>, Richard Weinberger <richard@nod.at>,
 Helge Deller <deller@gmx.de>, jassisinghbrar@gmail.com, 3chas3@gmail.com,
 intel-gfx@lists.freedesktop.org, kuba@kernel.org, mporter@kernel.crashing.org,
 Jeff Dike <jdike@addtoit.com>, Kees Cook <keescook@chromium.org>,
 Alex Dubov <oakad@yahoo.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-input@vger.kernel.org, linux-um <linux-um@lists.infradead.org>,
 linux-block@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, Jens Axboe <axboe@kernel.dk>,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, martyn@welchs.me.uk,
 dmitry.torokhov@gmail.com, linux-mmc@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>, alex.bou9@gmail.com,
 stefanr@s5r6.in-berlin.de, linux-ntb@googlegroups.com,
 Romain Perier <romain.perier@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 17, 2020 at 11:17 AM Allen Pais <allen.cryptic@gmail.com> wrote:
>
> From: Allen Pais <allen.lkml@gmail.com>
>
> In preparation for unconditionally passing the
> struct tasklet_struct pointer to all tasklet
> callbacks, switch to using the new tasklet_setup()
> and from_tasklet() to pass the tasklet pointer explicitly.
>
> Signed-off-by: Romain Perier <romain.perier@gmail.com>
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> ---
>  arch/um/drivers/vector_kern.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Anton, can you please review this patch?

-- 
Thanks,
//richard
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
