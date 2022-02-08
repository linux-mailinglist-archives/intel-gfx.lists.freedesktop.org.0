Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 479474ADAB9
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 15:04:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0DE610E297;
	Tue,  8 Feb 2022 14:04:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33CB589AAD
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 14:04:56 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id n8so12261253wmk.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 06:04:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=B6FmlZTmcDzUzTnzs/ZnYmE51lyCgX2/CWAYd99P97c=;
 b=NRaKMb4NCaHsBJXQvwGqtTS8m1aISo9EPi17EJah39Y03g7CaTHKQott64gc4dVFLo
 Uhdo9cAUaQPQ0mKLYZByUdJh3JLOVDpX7kQzE7v3+1tAY07cyMvHU22MVI4QEiRD51AZ
 tVcbf8e3BnqOM6P7zL5YaFtDr+YDwBLbWzPds=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=B6FmlZTmcDzUzTnzs/ZnYmE51lyCgX2/CWAYd99P97c=;
 b=MiXt+C+PrUwc24XAKL2mXe8UM8yAxWNp9l/PZi6PhUibndFPGfsvaehlp+V7XejVmv
 bJAPtBxK4ueSM2VIzqejrBIdEuqQDBOx9i65PP1GytafhXPRlc2A8oxu0A1UdL4wdhhQ
 M9NZgpLbRNcm7s3dOwGrdSCf8euOSKKbjpM2fw0OuP7xegIQ3q9NJDJ2uMokJk0IDsog
 GWqFjg7c4G93YUcbAnn67ek5DJk9ob/499fYOZYbBHM8Uo3jOXdwipPlV7007GLcflfy
 HurY8Cojl5r31nj9e9bXOVogtMjoqX0XxMSPHWZqznGaQRBQ5VfiSka0Ccj+a975i/IR
 a70Q==
X-Gm-Message-State: AOAM531yIH678/0RLgjqC7rAT8k3Hoic5QJBtD+wkyEg50dxdcT/icYo
 zwxnMxp3q/4KcB0Cni7PLX+B4g==
X-Google-Smtp-Source: ABdhPJy7VKPSMId+XZSUl+UPzsq7hk9qGy4vC8m7UEqCLa/LPu+gRsdppXdPV+QZ5sHxKub1DOQDkQ==
X-Received: by 2002:a05:600c:1506:: with SMTP id
 b6mr1299950wmg.30.1644329094673; 
 Tue, 08 Feb 2022 06:04:54 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z17sm2262017wml.38.2022.02.08.06.04.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 06:04:54 -0800 (PST)
Date: Tue, 8 Feb 2022 15:04:51 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <YgJ4g2BEaeUELmvF@phenom.ffwll.local>
Mail-Followup-To: Geert Uytterhoeven <geert@linux-m68k.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Jens Frederich <jfrederich@gmail.com>,
 Jon Nettleton <jon.nettleton@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-staging@lists.linux.dev,
 Daniel Vetter <daniel.vetter@intel.com>,
 Helge Deller <deller@gmx.de>, Matthew Wilcox <willy@infradead.org>,
 Sam Ravnborg <sam@ravnborg.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Zhen Lei <thunder.leizhen@huawei.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Xiyu Yang <xiyuyang19@fudan.edu.cn>, Zheyu Ma <zheyuma97@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
 <20220131210552.482606-22-daniel.vetter@ffwll.ch>
 <CAMuHMdUm76tT6u+i=A50ffh=k8hX5kgoMqH=t_wfHqH95nVOPA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdUm76tT6u+i=A50ffh=k8hX5kgoMqH=t_wfHqH95nVOPA@mail.gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 21/21] fbdev: Make registered_fb[] private
 to fbmem.c
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
Cc: Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 Zheyu Ma <zheyuma97@gmail.com>, Guenter Roeck <linux@roeck-us.net>,
 Xiyu Yang <xiyuyang19@fudan.edu.cn>, Jens Frederich <jfrederich@gmail.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-staging@lists.linux.dev, LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Zhen Lei <thunder.leizhen@huawei.com>, Matthew Wilcox <willy@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Jon Nettleton <jon.nettleton@gmail.com>, Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 04, 2022 at 09:30:56AM +0100, Geert Uytterhoeven wrote:
> Hi Daniel,
> 
> Thanks for your patch!
> 
> On Tue, Feb 1, 2022 at 9:50 PM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> > Well except when the olpc dcon fbdev driver is enabled, that thing
> > digs around in there in rather unfixable ways.
> 
> Can't the actual frame buffer driver (which one?) used on olpc export
> a pointer to its fb_info?

Yeah that might be the right thing to do, I'll add that as a stagin TODO
in the next iteration.

> 
> > --- a/drivers/video/fbdev/core/fbmem.c
> > +++ b/drivers/video/fbdev/core/fbmem.c
> > @@ -48,10 +48,14 @@
> >  static DEFINE_MUTEX(registration_lock);
> >
> >  struct fb_info *registered_fb[FB_MAX] __read_mostly;
> > -EXPORT_SYMBOL(registered_fb);
> > -
> >  int num_registered_fb __read_mostly;
> > +#if IS_ENABLED(CONFIG_OLPC_DCON)
> 
> CONFIG_FB_OLPC_DCON (everywhere), cfr. the build failure reported
> by the robot.

Yeah realized that too and fixed it locally.

Cheers, Daniel

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
http://blog.ffwll.ch
