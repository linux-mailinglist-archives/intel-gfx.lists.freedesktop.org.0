Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3319F120537
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 13:16:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE72D6E4E3;
	Mon, 16 Dec 2019 12:16:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com
 [IPv6:2607:f8b0:4864:20::941])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 986596E16F
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 12:16:32 +0000 (UTC)
Received: by mail-ua1-x941.google.com with SMTP id k33so1988849uag.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 04:16:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g6hMK4zvmiSQXDEVIro/DLpNW8Dnq2eeAYZqmv+C7n4=;
 b=ACbNbFswU1bSLXpKw7frBiJCD6yT6A648nS5mwhOnzZ/oCoWad3p+XghmD1WWzlVJm
 txMzHtwXkBDWokJ/qZ+h2NJNPo9VbjuBgNeD2ooLabCNucUnCK0laHcbbaDut7vIo027
 DGIbWg5yK8l48N2llclSO2ZAL85UBWtMaooZlHhG8lnHmOvHVcS+QEgB/B532FqJdWQh
 Ud6qSt1MTC7AD4yTbOkjMO5VSHEg7XmLrE6VGezhugDqk9s7SNpN9mJC+dL9rWjyTL+v
 ag2YGxtfHBMl2JzSpFfkRk+npQR6zGCl2dRnuhF+/nv3CFHdQT4l5R3tgcRsFnEci7bQ
 ONyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g6hMK4zvmiSQXDEVIro/DLpNW8Dnq2eeAYZqmv+C7n4=;
 b=AN7DlHcZtbWk49EoYW3y+WD3iudaSF/uDjzaADQXW263LkpE17wc2E0myvnG9qiT4z
 ZfxkSKUo7j/JDsy+bm/iJbeHO22Qs9ILwBk4BxEDrtger9s8BDeaPxqmrnBNQBJTovMw
 WUGb2McTsHyvf6EZCODBnN71fD3au0HqcsMFEKZas16nvrUeOmlsOJ5agkWnnsqw9UMn
 v9JyjdFJqorz3+CtvnQMU6+3tiZkfdn6RAtWhulFF806t8xBWqrq11JNWlHUxr7RZndo
 W3TDx6z8v/IxIoVVmb5wNBVNHNmc7+D8Figr/LrxBA2EuwaIaY+4IH2yknPO7wM3f011
 vVXA==
X-Gm-Message-State: APjAAAVdJ3ClAww5ZGNfzbog7BV5EG/NtHdIMxZeGRJWsfLmV91yIUw4
 KQz/E02lfFKcHynXJtHH6thAnaLZSw7VKFnxpJ6t6Q==
X-Google-Smtp-Source: APXvYqxgrIn4al26ZnFpKqCL0TxyFBEwhX8AWXeCD4bBS7Ttf4sGA8fJ1Pg64Ke5L5GoUz3YDXkMxfaBaYcspaOS/YE=
X-Received: by 2002:ab0:1c0a:: with SMTP id a10mr22825812uaj.140.1576498591580; 
 Mon, 16 Dec 2019 04:16:31 -0800 (PST)
MIME-Version: 1.0
References: <20191215163810.52356-1-hdegoede@redhat.com>
 <CACRpkdarJ5chDfgc5F=ntzG1pw7kchtzp0Upp+OH9CH6WLnvXw@mail.gmail.com>
 <1474a983-3e22-d59b-255a-edd3a41f0967@redhat.com>
In-Reply-To: <1474a983-3e22-d59b-255a-edd3a41f0967@redhat.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 16 Dec 2019 13:16:20 +0100
Message-ID: <CACRpkdaYgpY=Anem00tPS=HPCD5XUrfWmWjvPkszggnHCpgK2Q@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Subject: Re: [Intel-gfx] [PATCH 0/5] drm/i915/dsi: Control panel and
 backlight enable GPIOs from VBT
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 16, 2019 at 12:11 PM Hans de Goede <hdegoede@redhat.com> wrote:

> Ugh, taking one last look at the "pinctrl: Export pinctrl_unregister_mappings"
> patch it is no good, sorry.

Ooops!

> Linus, can you please drop this from your -next ?

Sure, done.

> So I see 2 options:
> 1) Add an orig_map member to maps_node and use that in the comparison,
> this is IMHO somewhat ugly
>
> 2) Add a new pinctrl_register_mappings_no_dup helper and document in
> pinctrl_unregister_mappings kdoc that it can only be used together
> with the no_dup variant.
>
> I believe that 2 is by far the best option. Linus do you agree or
> do you have any other suggestions?

What about (3) look for all calls to pinctrl_register_mappings()
in the kernel.

Hey it is 2 places in total:
arch/arm/mach-u300/core.c:      pinctrl_register_mappings(u300_pinmux_map,
drivers/pinctrl/cirrus/pinctrl-madera-core.c:           ret =
pinctrl_register_mappings(pdata->gpio_configs,

Delete  __initdata from the u300 table, the other one seems
safe. Fold this into your patch.

Go with the original idea.

Yours,
Linus Walleij
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
