Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A13F120254
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 11:27:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FE306E48C;
	Mon, 16 Dec 2019 10:27:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1B096E48B
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 10:27:51 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id k8so6193591ljh.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 02:27:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Kc8cYBIPzK7WSX6Dhpknsv+Az7sG/90zzv4gmeMoX/I=;
 b=W8eY0lMy6Qgx6i4PCyCCiBvKfrdmAknD/ElHqjjw1MmaCLGGVpfqimMzwD1KrZptEq
 SmGOOMB6K3EOysXDm1NJibNn3lksuBlHSOBZrz7e9YSXZZ0/0O6PP09e6gPdiqPt3m5B
 Mzcdx5+SQBHVInfd1/jdFHaDUeTp0P1+OMJdM1fjj5O8gEMcfmVDBZX0mnqwtI0FHoC+
 +JUpPJrkD3KtCHDJhkPV8xNvd5tGBAAQXPgmTaEpRRoIKPhM13zRhxUl2XeCnablcB1K
 ZJsSS4yXSWQpyFNu04ukz20OTdBlqcQ4In2zbgGsTFzFdFnwdgDL7N3EYLh7dEwVzQDp
 aAag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Kc8cYBIPzK7WSX6Dhpknsv+Az7sG/90zzv4gmeMoX/I=;
 b=nWN8gusj3qqTtBS6xBjXBOcQi+bn+gK7L0OBb67lHFYsXpz1MMHsBpaaNPi6pTCiC0
 v1d6G/yXQxPLPLXT3Vn97xRzjS3OPuDWKajG2kpBqaWA6UkvHN6uMr6fzX/f+tjKJv5+
 JKf+1E9rB2iHXiv5B4hHE1cSTVB2zEfpC9zYCr9vN0D3Fn/nHeYHcBJoyQkXCslwvYfp
 f5JSdNcSxs3U9s0Rer2dkmrlyXOHc5xHy/OLJhZHL5TrEKkD+Zg4Ht3SY9pNZqKtOw9T
 W/r9Ar0WtpFzF72IKKBfQpNVrYJpwtAXZbrHMj87ibNssKPoeRCqnhf0oKgBZS4DChhW
 wFAg==
X-Gm-Message-State: APjAAAWURUryfwpUvVvyBfDxq+pqu8CkQt+PGziruEdzexDvhIkB2KK7
 HdUItczdI/eulAV0HyFklUCVt56KoahgmF4JSmJ8/g==
X-Google-Smtp-Source: APXvYqxyqyrkWKlQ1gXsP1WttRxjmUxJOJGIdWOtatnGZNr2dHpk3W2tQ6LrXKWaSo/Xkh46gNIkzci0Gfo9VddG5bc=
X-Received: by 2002:a2e:8045:: with SMTP id p5mr18792305ljg.251.1576492069993; 
 Mon, 16 Dec 2019 02:27:49 -0800 (PST)
MIME-Version: 1.0
References: <20191215163810.52356-1-hdegoede@redhat.com>
 <20191215163810.52356-3-hdegoede@redhat.com>
In-Reply-To: <20191215163810.52356-3-hdegoede@redhat.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 16 Dec 2019 11:27:38 +0100
Message-ID: <CACRpkdYWi5dX8jRBoJmrA3Mrig-JUKw+qq5gth2veY3EyUALqQ@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/dsi: Move poking of
 panel-enable GPIO to intel_dsi_vbt.c
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

On Sun, Dec 15, 2019 at 5:38 PM Hans de Goede <hdegoede@redhat.com> wrote:

> On some older devices (BYT, CHT) which may use v2 VBT MIPI-sequences,
> we need to manually control the panel enable GPIO as v2 sequences do
> not do this.
>
> So far we have been carrying the code to do this on BYT/CHT devices
> with a Crystal Cove PMIC in vlv_dsi.c, but as this really is a shortcoming
> of the VBT MIPI-sequences, intel_dsi_vbt.c is a better place for this,
> so move it there.
>
> This is a preparation patch for adding panel-enable and backlight-enable
> GPIO support for BYT devices where instead of the PMIC the SoC is used
> for backlight control.
>
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>

The kernel looks prettier after than before and it seems correct so:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
