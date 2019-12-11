Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4B6119FDE
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 01:24:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B27086E9B6;
	Wed, 11 Dec 2019 00:24:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D83F86E9B3
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 00:24:20 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id a13so21925687ljm.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 16:24:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FzptMs7UZH6tl5XnB4UdAl95BzHbDkNlnuDcD9QRDL8=;
 b=cLhiqiuP6lKc2NY83ihPT47G3f+3QK4gZxKFKmw65nI/bJUTPbL1OjQ3/4EllNePCM
 OBINPY2S7VQ49MkrBdTCMtAjDl6tcNokO7M8rS2kQtWpfU0g+d3zdtKiOMkYGsyKmOr8
 JkZOg0YTxCt4YVjkOhCNImrhQDKtSjw6qYJNLuE8MQtu9GkRGEiq08YmpoX0yD2p5qPQ
 D/sdqJRrkY1E0EaTMYyDhsblV9geNYlSdkpSKp8bRuByL3iYs0NdjZbsWTlKq1WwXOPo
 kiJ8wMZb9xBnMw9ZnPAq1XrFyhqAluKOJjgBE0OSi8dd4m32SO0dsx7U/6aP4NqAZLoN
 MH9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FzptMs7UZH6tl5XnB4UdAl95BzHbDkNlnuDcD9QRDL8=;
 b=kg22R7zkSSoqg9wafjg1MUe1IGzbk2uaqV3/+bmExkg4TpKf4rtZC1VDO2GcokKCFO
 PcDNSillO34bNWJJxJDF7TfLJl7uOM5Ir34fixHOM+utFx+9Gwz8RgEd++/KwzDSwR8g
 GO7MY2T16riwYcXdGz1KR7mLn5w5G2MbY9hnrfFQuuEY8ynUGYbN2t4il/uAZUqL+1x2
 +PXdMA9+RgjXJeufNM9/wZqBn/MSDnptM+ZiVAsyKahfz6x9Tba+T7ye0iolbOSpW+5Q
 wHfMSCsQADi5LQA7BP1SCdOqnT/z5PnjG6xGwZnZhVPxFIWry2F2iO4nyYtOxUWpuD5D
 WWfg==
X-Gm-Message-State: APjAAAUWhnJ5fuOFPChc0dN+IiGmIsvcFVG24BAGyCJkztoGf8vRTYm8
 l8iNU1zU9fhZiQ+7YtWz82k2qedqEVIDlRT2HZJrzw==
X-Google-Smtp-Source: APXvYqxunEspa1cPku2zi+O3v5VP7+hdM/iiNVHSELvrW9FMmlBlF5UcunUZT+DJ74s0UyP/7ItRKxU/YAJNU6q4iw0=
X-Received: by 2002:a2e:9587:: with SMTP id w7mr74491ljh.42.1576023859174;
 Tue, 10 Dec 2019 16:24:19 -0800 (PST)
MIME-Version: 1.0
References: <20191129185836.2789-1-hdegoede@redhat.com>
 <20191129185836.2789-3-hdegoede@redhat.com>
 <CACRpkdbRb-LF2tNN-ueo=tKuJc+u4B7Y20+BCyqnN7wYbm8y7Q@mail.gmail.com>
 <87wobfj65b.fsf@intel.com> <47c36b75-bc30-502b-7f8d-035cf2348fc4@redhat.com>
In-Reply-To: <47c36b75-bc30-502b-7f8d-035cf2348fc4@redhat.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Dec 2019 01:24:07 +0100
Message-ID: <CACRpkdaJGZsJpYu3cgQCeWuJD1y9CQyzuk_VYfGfAT8WC=_1VA@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/vlv_dsi: Control panel and
 backlight enable GPIOs on BYT
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
Cc: ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 2, 2019 at 4:49 PM Hans de Goede <hdegoede@redhat.com> wrote:

> There is only one problem, currently is is not possible to
> unregister a mapping added with pinctrl_register_mappings
> and the i915 driver is typically a module which can be unloaded
> and I believe actually is unloaded as part of the i915 CI.
>
> pinctrl_register_mappings copies the passed in mapping, but
> it is a shallow copy, so it contains pointers to the modules
> const segment and we do not want to re-add another copy of
> the mapping when the module loads a second time.
>
> Fixing this is easy though, there already is a pinctrl_unregister_map()
> function, we just need to export it so that the i915 driver can
> remove the mapping when it is unbound.
>
> Linus would exporting this function be ok with you?

Yep!

> Linus, question what is the purpose of the "dupping" / shallow
> copying of the argument passed to pinctrl_register_map ?

The initial commit contained this comment later removed:

+       /*
+        * Make a copy of the map array - string pointers will end up in the
+        * kernel const section anyway so these do not need to be deep copied.
+        */

The use was to free up memory for platforms using boardfiles
with a gazillion variants and huge pin control tables, so these
could be marked  __initdata and discarded after boot.
As the strings would anyway stay around we didn't need to
deep copy.

See for example in arch/arm/mach-u300/core.c
static struct pinctrl_map __initdata u300_pinmux_map[]

> Since
> it is shallow the mem for any pointers contained within there need
> to be kept around by the caller, so why not let the caller keep
> the pinctrl_map struct itself around too?

So the strings will be kept around because the kernel can't get
rid of strings. (Yeah it is silly, should haven been fixed ages
ago, but not by me, haha :)

> If we are going to export pinctrl_unregister_map() we need to make it
> do the right thing for dupped maps too, we can just store the dup flag
> in struct pinctrl_maps. So this is easy, but I wonder if we cannot
> get rid of the dupping all together ?

Maybe ... I don't know. What do you think? I suppose you could
make u300 crash if you do that.

Yours,
Linus Walleij
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
