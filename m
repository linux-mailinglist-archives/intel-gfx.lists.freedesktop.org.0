Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DB3365A34
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Apr 2021 15:33:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C109E6E826;
	Tue, 20 Apr 2021 13:33:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com
 [IPv6:2607:f8b0:4864:20::135])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 202AF6E826
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Apr 2021 13:33:53 +0000 (UTC)
Received: by mail-il1-x135.google.com with SMTP id l9so3596521ilh.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Apr 2021 06:33:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xgfc7mO4E1wXWUmekqC8sEt5bIbUy15Zn+YoHQva8NI=;
 b=PYyvqtFzdzRakpUOqbunR4I7/Lj/8HDyE7lqd9tAm0PNx6Uh1yOIHCDmuaqBR1ViP4
 mmStHq4YHDIb9iNLpswctc4T/0gjz0QMypKb9sh/woNGTQHvzByI8qY89af1f2aYk6+S
 wieFezmrOmmKh35TaWQ/tU2N5mVDzf8HRzVYk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xgfc7mO4E1wXWUmekqC8sEt5bIbUy15Zn+YoHQva8NI=;
 b=KidSEKPtBmXpUNqnyUDHF46wRgBj4ebXw9rMexj3zG4qISFv+EPwz26Ymoxvr7vUsw
 LJ0BWPJzdsau6Oqdarj8oK6vg8rZlCW6hBu72I48Jhl/AYGFVRXfR7HgVyH9int1l1zl
 yGeNyqSQHEk6nFEm8cIWHuCtieChP76iH+bL3AS2K5zWLap9DrLIzTSckWOPH2Ki1mxV
 xvQiCFg0Yw3s7YJtko79uezaobK4NVSypnTl/X3QbW9HAdAehXIjN3iWIdl28EyyvyQE
 ZWyAs7zadTaBIqAEpaAw1P3fYNriCPrNEEGCvybWIg389/zKIc809tTrMAMUJfBXkbUH
 Ap8A==
X-Gm-Message-State: AOAM533XIw092/g0aLE4KEb3GkeAgUEqPms/ylZQhow52jApZQoUirx5
 UCcvOMoDpSyu008Wy32EboWd0dy4mMW/u/ZdPAfpwQ==
X-Google-Smtp-Source: ABdhPJy6RgMFJUk30o3Bp+6VqEWzChzCOkzvaHDVug4JPECZShpDcemglkoDMMwZ/VXKrU9wV09fLSo20xOiZ0XVnHs=
X-Received: by 2002:a92:d684:: with SMTP id p4mr22468413iln.150.1618925632435; 
 Tue, 20 Apr 2021 06:33:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210414172916.2689361-1-hsinyi@chromium.org>
 <20210414172916.2689361-5-hsinyi@chromium.org>
 <CAMpxmJUGxUPYC9NEnJDHYq7Nu=akP5GTpU0ts9htf1vELhK15Q@mail.gmail.com>
In-Reply-To: <CAMpxmJUGxUPYC9NEnJDHYq7Nu=akP5GTpU0ts9htf1vELhK15Q@mail.gmail.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Tue, 20 Apr 2021 21:33:25 +0800
Message-ID: <CAJMQK-huKTYepZ+xCZDG01RBGB5Tu4ic=Hs03=remLii0WBTaQ@mail.gmail.com>
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
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

On Fri, Apr 16, 2021 at 10:09 PM Bartosz Golaszewski
<bgolaszewski@baylibre.com> wrote:
>
> On Wed, Apr 14, 2021 at 7:29 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> >
> > cd5676db0574 ("misc: eeprom: at24: support pm_runtime control") disables
> > regulator in runtime suspend. If runtime suspend is called before
> > regulator disable, it will results in regulator unbalanced disabling.
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
>
> Please add the Fixes tag.
>

Hi,

I resend the patch with the fix tag separately since other patches in
this series are not changed.

https://patchwork.ozlabs.org/project/linux-i2c/patch/20210420133050.377209-1-hsinyi@chromium.org/

Thanks

> > ---
> >  drivers/misc/eeprom/at24.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/misc/eeprom/at24.c b/drivers/misc/eeprom/at24.c
> > index 926408b41270..7a6f01ace78a 100644
> > --- a/drivers/misc/eeprom/at24.c
> > +++ b/drivers/misc/eeprom/at24.c
> > @@ -763,7 +763,8 @@ static int at24_probe(struct i2c_client *client)
> >         at24->nvmem = devm_nvmem_register(dev, &nvmem_config);
> >         if (IS_ERR(at24->nvmem)) {
> >                 pm_runtime_disable(dev);
> > -               regulator_disable(at24->vcc_reg);
> > +               if (!pm_runtime_status_suspended(dev))
> > +                       regulator_disable(at24->vcc_reg);
> >                 return PTR_ERR(at24->nvmem);
> >         }
> >
> > @@ -774,7 +775,8 @@ static int at24_probe(struct i2c_client *client)
> >         err = at24_read(at24, 0, &test_byte, 1);
> >         if (err) {
> >                 pm_runtime_disable(dev);
> > -               regulator_disable(at24->vcc_reg);
> > +               if (!pm_runtime_status_suspended(dev))
> > +                       regulator_disable(at24->vcc_reg);
> >                 return -ENODEV;
> >         }
> >
> > --
> > 2.31.1.295.g9ea45b61b8-goog
> >
>
> Acked-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
