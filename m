Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D4012024B
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 11:26:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C5366E190;
	Mon, 16 Dec 2019 10:26:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com
 [IPv6:2a00:1450:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 439C96E190
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 10:26:24 +0000 (UTC)
Received: by mail-lj1-x243.google.com with SMTP id k8so6188747ljh.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 02:26:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OkpVHHKfDIvE++qC7pqWmg/jiaUV0l9IrypFklbrI6o=;
 b=lDL84PL+2Ns4vFAqwLLrdQi1O+3TQ6U/1dl28aR2f5iPN84nonscwhbbksUFjIlS5R
 otbTznmgxLMJaAner5nrpGth72IVvBmT/6uaM4tx+Y+mEEawgORon/elo6UPVH5JvJYb
 Ck2/MV674z0jbmRgEZH0vAlKytoZnH/ItSxaGXx0K213YovI7A4yEtfAGr8qVFC8qILi
 94ezCXOUyfvLoV8f/yzdmpj1qIfvNUfwHHlA4TO3fmxjmrNVgk41krWYbwyb3SMyU9cr
 Nn8qkvnhE3ahvqrWYa02Vf4Ret+ZHDC4hZD4vr81kUyvgcplB6Y5bMnP2WfkMtddC/uN
 iXIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OkpVHHKfDIvE++qC7pqWmg/jiaUV0l9IrypFklbrI6o=;
 b=Uronb23jXGxtewVUYH08PV+UmODjZeHUVrJ03hDSd1Vc4ygDKeezm4EiTXJSqiPvnW
 6Fql0rr7lXNvYheeBW7UeLUpztZrPBVNkXZQuMCB/DS/IBGRihkxTbe2cl2DUBvNc0eF
 Jy/ha40Ty4t+nu48r5H/Yzn2vlVaQYaLLUqM3CWmmSRKuoxEHPni7yCxGkGjq9g86CWQ
 tD6F0KY6P43u58RA/mO/XmUZOzVy992b6hnmwVYT5caR6mhCPFfXCaEUH6yMPIUkRhwk
 CGFKKFbbT1mQ3C/W6b4I46UXSt/iwqCd6WxBMfnlphpVSyRTeb5kgtwIsnTuHthsAHWC
 YaxQ==
X-Gm-Message-State: APjAAAXDJYLe0/cmWTPJPf+FQRId9WsnrMz9Crk0jdvRwWX6mDltVao5
 /hwNijqFsSP0Po7BK720L9LHO8ubDLQnZszZzPSMTAnZsENm3A==
X-Google-Smtp-Source: APXvYqyfCsSztFtNTTzlCe+aXkIxE7g02n2kJDD5isrSGVNYwnEfbfi911iDlZCap4HI8gvXspWAPVC8NvrEdEvcY0s=
X-Received: by 2002:a05:651c:1049:: with SMTP id
 x9mr18582325ljm.233.1576491982626; 
 Mon, 16 Dec 2019 02:26:22 -0800 (PST)
MIME-Version: 1.0
References: <20191215163810.52356-1-hdegoede@redhat.com>
In-Reply-To: <20191215163810.52356-1-hdegoede@redhat.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 16 Dec 2019 11:26:10 +0100
Message-ID: <CACRpkdarJ5chDfgc5F=ntzG1pw7kchtzp0Upp+OH9CH6WLnvXw@mail.gmail.com>
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

On Sun, Dec 15, 2019 at 5:38 PM Hans de Goede <hdegoede@redhat.com> wrote:

> Linus, this series starts with the already discussed pinctrl change to
> export the function to unregister a pinctrl-map. We can either merge this
> through drm-intel, or you could pick it up and then provide an immutable
> branch with it for merging into drm-intel-next. Which option do you prefer?

I have created an immutable branch with these changes and pulled it
to my "devel" branch for v5.6:
https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git/log/?h=ib-pinctrl-unreg-mappings

Please pull this in and put the other patches on top of that.

I had a bit of mess in my subsystems last kernel cycle so I
want to avoid that by strictly including all larger commits
in my trees.

Yours,
Linus Walleij
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
