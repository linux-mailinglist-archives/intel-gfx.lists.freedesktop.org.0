Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B81321642BE
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:57:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19FF06E14D;
	Wed, 19 Feb 2020 10:57:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com
 [IPv6:2607:f8b0:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 395866EB6C
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:57:08 +0000 (UTC)
Received: by mail-ot1-x343.google.com with SMTP id r27so22650079otc.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:57:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=153qW4tHZt+epjLHed7T9YfWSeCdMzNbOBOdt8RnzTI=;
 b=A3eN7btHHXZsWafpBPsTGy0oWdLfB8zrgTyl9qInVYy3cJ+2YOEdd+m3bNKmuoYgjG
 3xtKF33K6HfO5U0yrvgtbCGZ1H2Ek7Zs300VTO0Fh4N6ll/FM2Kwij8TpZaq9hUdVsm2
 eXXNnh3faEqNwU1aoLTg/VP/K5ARjaJwsOtPs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=153qW4tHZt+epjLHed7T9YfWSeCdMzNbOBOdt8RnzTI=;
 b=cRhK3/A0B/9OSeqYz+8rZqLnq+zi8lVxouYTms1kPW02u6i6+n5cQCS6RXcyzMpcu7
 Zzn04P8zmP2zd17+HD3iC8Is8n/yzhV2qXMvyeKlkhyv4BHSWFH7qAcUY77hQ5efmbnJ
 bo2Onc1Wr/3E8VnO/d5oqJejPPGOUbyh7uWvJmVXsI7hDJlPnKigXaXPCloaojxrs3M/
 J4eTox4DMAFYja8lLnRK9T6E96X+X7jHXX/GoJRfY3VGEA0KMDho4FwwiD+KXXs/MhmL
 TFVur57eAEqcy9KSxAKBdyyoWWFYV7NeXLC+g8TyVb5QZGngaGV+Ek01zmaryoDSOQcv
 CwBQ==
X-Gm-Message-State: APjAAAVirr3GM6LcL3y2brSXPQjcD/6k3lu8JXBr35eWPJkXRksrIoxu
 GX2nlXPjXNuUqocR7FTwXkFzkEX8Is9a5yugr517Qg==
X-Google-Smtp-Source: APXvYqzhVU/8YU7fOP8XG5w8Fsr1rDNQhQv0DSiGwmuM988lcIbV6mBUUwNcnuKjaYUaalX++tNemL2nkIpPSqU+Rgo=
X-Received: by 2002:a05:6830:2015:: with SMTP id
 e21mr18501032otp.106.1582109827400; 
 Wed, 19 Feb 2020 02:57:07 -0800 (PST)
MIME-Version: 1.0
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
 <20200219102122.1607365-38-daniel.vetter@ffwll.ch>
 <CAMuHMdXit+F2nK8JSXyzP26epeDA3pxOYyzVMFtKWqaGCNqBxA@mail.gmail.com>
In-Reply-To: <CAMuHMdXit+F2nK8JSXyzP26epeDA3pxOYyzVMFtKWqaGCNqBxA@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 19 Feb 2020 11:56:56 +0100
Message-ID: <CAKMK7uFrzjAOxBK0GBPtHt=VGRjvC3GJcOTvP087gyO1nAEVPQ@mail.gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [Intel-gfx] [PATCH 37/52] drm/rcar-du: Drop explicit
 drm_mode_config_cleanup call
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 19, 2020 at 11:30 AM Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
>
> Hi Daniel,
>
> On Wed, Feb 19, 2020 at 11:22 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> > It's right above the drm_dev_put().
> >
> > Aside: Another driver with a bit much devm_kzalloc, which should
> > probably use drmm_kzalloc instead ...
>
> What's drmm_kzalloc()?
> The only references I can find are in this patch series.

Yup, it's all new. Read cover letter for reading instructions for the
entire patch series. I'm afraid the driver patches wont make much
sense without the context. None actually :-/
-Daniel

>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
