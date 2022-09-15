Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB615B9D8A
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 16:41:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97CA610EB56;
	Thu, 15 Sep 2022 14:41:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F184D10EB56
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 14:41:13 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id f23so2323173plr.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 07:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quora.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=y/6Zjd12qfNc+BpVatybk0HBBrImLOYazIfjhpyZUdY=;
 b=cw53h7fcF7/kENlR2eYYm9U+JxrCocFnK9IGdzWtSM/y585d/oW3HC4ZrEk9xW5qDG
 BeMgJT73ewQvzzxIguPXiV1O3Y+yAf/kNAz5KO+cL+PYUiEiJjHJIuAugb86pIH6vkwM
 Q6K5uIdlt9ZaQTDfgTWEWBC2hWH0qLnZJ3EOQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=y/6Zjd12qfNc+BpVatybk0HBBrImLOYazIfjhpyZUdY=;
 b=fOSPKkOrFgfCQgpJRUfMHH+Vy+3PRmrBSm5NAYEX6he2cJEDeJp2rSPXQLTAE867mr
 uSbqR7YPxNdrq28U8NU5BrMo2qxqfoVjmWJ5Kbaww1ZrTHgwCP3tbiX8z5k42hOAYHb7
 KEwRzCxrLlm9ekMvA8vkKS1kUgk3GeDE+lRjyhBibDX+fIs/Q4M+3o2jKH/yUtls3paN
 EPb+q23OlTttiuFjp1PrsXNcJMLjbtg1Rsw5S1A5XfgTaXI4KcyKWEqvjP+OEMXV/1C6
 tNQQHUEEWnb5k4UQAdLd8ujGdndDVyPw9ActauyV5+RT4A0NeLmZeLJp8qLS/1GiHjH1
 cKeQ==
X-Gm-Message-State: ACrzQf1HbnDRDRzAoYkMC3ml36yTZi8C5IFeYkWrR/391obuOq1aB0wm
 yPOQXcnc0Y88KMxsMo/Uwl7GKx/nHd0eG9xIn0iPQy1SZz0Q8Q==
X-Google-Smtp-Source: AMsMyM5XUyYxpLXZCD3RwXJCgeaMMMNHgEfzBFvPqeWEkJBSiJfWdD5+PF2RhLi+AYdgIIkaluEscC8+ss+BoPU5dSI=
X-Received: by 2002:a17:90b:4b8b:b0:203:203:3365 with SMTP id
 lr11-20020a17090b4b8b00b0020302033365mr246607pjb.19.1663252873563; Thu, 15
 Sep 2022 07:41:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAMVG2steKr8U9t67rqai=-Qb-aTC2ocJHMiuDHxYBsSusnHckA@mail.gmail.com>
 <YyMyKsy2XdInzarL@intel.com>
In-Reply-To: <YyMyKsy2XdInzarL@intel.com>
From: Daniel J Blueman <daniel@quora.org>
Date: Thu, 15 Sep 2022 22:40:59 +0800
Message-ID: <CAMVG2svdhBp-UU2L=Zofq2qgzapwvYGbXMZxtOTzK0T+2aLMHw@mail.gmail.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] Intel Arc A370M vs Linux 5.19
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 15 Sept 2022 at 22:09, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Thu, Sep 15, 2022 at 09:08:08PM +0800, Daniel J Blueman wrote:
> > Dear Intel et al,
> >
> > With a HP Spectre x360 16 16-f1xxx/891D (Intel i7-1260P) with an Arc
> > A370M GPU [1] running the latest Ubuntu 22.10 5.19.0-15-generic
> > kernel, we see:
> >
> > i915 0000:03:00.0: Your graphics device 5693 is not properly supported
> > by the driver in this kernel version. To force driver probe anyway,
> > use i915.force_probe=5693
> >
> > Since the GPU is unmanaged, battery life is around 30% of what it
> > could be. Unsurprisingly, adding i915.force_probe=5693 causes
> > additional  issues. Given a lack of BIOS option to disable the GPU, is
> > there any advice for Linux support or at least putting the GPU into
> > D3? I see only Windows drivers on the official support page [2], and
> > Linux 6.0-rc5 isn't buildable [3].
>
> I believe this is what you are looking for:
>
> echo auto | sudo tee /sys/bus/pci/devices/0000\:03\:00.0/power/control
>
> In Linux the default is to keep the unmanaged devices in D0.
> But changing the rpm to auto should transition the device to D3.
>
> You can go further and check with the lspci -vv if there are other
> unmanaged devices in the same pci root tree and also add them to the
> 'auto' rpm so you can even achieve D3cold in that whole device, what
> gives you extra power savings.
>
> I hope this helps for now.

Yes, I was also hoping this would work as we see D3hot is supported:

# echo auto > /sys/bus/pci/devices/0000\:03\:00.0/power/control
# lspci -vvvs 03:00.0
...
Capabilities: [d0] Power Management version 3
        Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA
PME(D0+,D1-,D2-,D3hot+,D3cold-)
        Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
                ^^

However it stays in D0 with PME disabled as we see. "Kernel modules:
i915" may suggest the i915 driver holds a reference to it, preventing
the transition.

Dan
-- 
Daniel J Blueman
