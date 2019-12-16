Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 683EF120285
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 11:30:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76BC389FF6;
	Mon, 16 Dec 2019 10:30:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com
 [IPv6:2a00:1450:4864:20::141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94BCB89FF6
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 10:30:07 +0000 (UTC)
Received: by mail-lf1-x141.google.com with SMTP id y1so3823076lfb.6
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 02:30:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zAZ66aTL4botjOAzyywFJUSCyL81NlmcXv7uzteZ4R8=;
 b=MNDQAaFQhnjUWeVovtaucXzv5IniCaNpgTqcGXFx4jLe9x12jIYadC1PDnKMkPQDMK
 l2ehosXgsMnxhudijyOvnJ+2vzbUWEIeHPFUriZ0paYwJfnoOn54P2B+sQklEVWVQcw4
 1T13ARTxSHB4SWDKf+zLThCGQ1iXcfpXnb6ACQsNk7u2HJXgpABr6a2qReZ5vfuS007z
 NjpK9Bhvzu5DQHSzVNXdv0/U8izrlloNKK1hMI5lpzL6sQzLwNTL1SIjwhP6Zna7Ivxv
 ewXg9sokgFFnzWqgeMrYd7orbCOiTcx9is4y2ZlEFFndxObGz4NfhSy7ItC3L8XppQCW
 Mw0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zAZ66aTL4botjOAzyywFJUSCyL81NlmcXv7uzteZ4R8=;
 b=czydPH1g+1eyA6CC4icc/3DMWMkhVpw8iupTEeJtEqjLzI/ih1Q4V1kFk2NkMhZmcN
 HElO64hCdVITpxAled3stA/9R5Q85COqyr9XSV6mTWDxh0FGW57HJkoZDlsUXWfLAOqi
 E4uvc9yQRCqcBgepnWy/a5WH5ELLqLucXRhiFo5bMYhY625AStJ2QhVvPfQKsMVAPWtW
 YT6yzg5osSedX1z7j7OZjVXL2URqiQduLT4a65kSEVkOk51AahIfKe6/C7emDSa/qsuQ
 NSKozNlPj0Qns39gahfL5AlZMv7doBZ1n+pBmWxlo4fAXY9ecJ6GVZ4JRSezOrousmrC
 l3JQ==
X-Gm-Message-State: APjAAAVQk+Cwd2JPtpwixIoRAtoxihxMQm86KZReAUVuuXewv6tx1xSC
 I/AeJLhnm65MYPBSv00B2ZNsZAR0drnKeCPmdGspcg==
X-Google-Smtp-Source: APXvYqxlD1vfPmZyf5Z5diCSQWuPAUZ5VXeaBxCzjkY1MrbIYOP/373nkrVwCGdhAD+O1kDqu2EG46B1jbTPzJyZdoo=
X-Received: by 2002:ac2:4945:: with SMTP id o5mr15738312lfi.93.1576492205964; 
 Mon, 16 Dec 2019 02:30:05 -0800 (PST)
MIME-Version: 1.0
References: <20191215163810.52356-1-hdegoede@redhat.com>
 <20191215163810.52356-6-hdegoede@redhat.com>
In-Reply-To: <20191215163810.52356-6-hdegoede@redhat.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 16 Dec 2019 11:29:54 +0100
Message-ID: <CACRpkdZCehawbGz+dELgjte6pTz0oEFQ3mo-2FuM4CQwm58tHQ@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/dsi: Control panel and
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

> On Bay Trail devices the MIPI power on/off sequences for DSI LCD panels
> do not control the LCD panel- and backlight-enable GPIOs. So far, when
> the VBT indicates we should use the SoC for backlight control, we have
> been relying on these GPIOs being configured as output and driven high by
> the Video BIOS (GOP) when it initializes the panel.
>
> This does not work when the device is booted with a HDMI monitor connected
> as then the GOP will initialize the HDMI instead of the panel, leaving the
> panel black, even though the i915 driver tries to output an image to it.
>
> Likewise on some device-models when the GOP does not initialize the DSI
> panel it also leaves the mux of the PWM0 pin in generic GPIO mode instead
> of muxing it to the PWM controller.
>
> This commit makes the DSI code control the SoC GPIOs for panel- and
> backlight-enable on BYT, when the VBT indicates the SoC should be used
>
> for backlight control. It also ensures that the PWM0 pin is muxed to the
> PWM controller in this case.
>
> This fixes the LCD panel not lighting up on various devices when booted
> with a HDMI monitor connected. This has been tested to fix this on the
> following devices:
>
> Peaq C1010
> Point of View MOBII TAB-P800W
> Point of View MOBII TAB-P1005W
> Terra Pad 1061
> Yours Y8W81
>
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>

Looks good to me:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
