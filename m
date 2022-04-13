Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA9A4FF34B
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 11:21:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6338510E02E;
	Wed, 13 Apr 2022 09:21:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D61DC10EEAB
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 09:21:27 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id b24so1571721edu.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 02:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=iilHrhh4/0eL/EBjxtahi4U/C0WF7WRxHhNe+yYoDAk=;
 b=UlIQFt1jJhCSY1C7NG8nBKQp5f08sSvYR6scwSh2VkkZXd/DNvBa1qynO81iGIeV5O
 w8AlM/5aTffaT8lug7Ya21/ZSe+nuOPnCf0xMPbHTkrex6FJGDJ8qUxr/u8nElpR3XCB
 bdPLwEfrlboq4imcTQ6KI5s2GXBgUrj+qUG8A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iilHrhh4/0eL/EBjxtahi4U/C0WF7WRxHhNe+yYoDAk=;
 b=sKZeSDuT3vN4ioJnoexwMf691AEW7pRoC+kmd/iM5Oxc6doO/ZPxDUF1PvnDz4062q
 0D1qUTuMOHZUMJN+H+2bn1QFaA0eS/vKIG7ueDrEFA+PGuMNYlzDiPfn1ZJCamfsAcnE
 JT3n4VilSlb9Ik+CMt8bEjCzpW0hG8fKgiY3r10sn4wlU6H18qb18psPdpgWKbTX8tMK
 cYzgAjsvkwyKXAoZQKUqmnhyzzVeedGrPkaTZQvGp7hd+Ri+37Lh5y92IOYCfelD7fK2
 IQzJSrZSCYAFvpY5bom1c7f5Ctlp3KPlaoA4R63Bi0xG9i+mWmN/cdxvLl05Rt1r+c5f
 GY3Q==
X-Gm-Message-State: AOAM533fbcVPQ6tKX4XS2y5avLWtHQpvN/7jiV2wbdQhfFbPvY2Nz4KP
 B0Qvp5NOqhM9NkktTr7A8CCjhQ==
X-Google-Smtp-Source: ABdhPJyYedQ42njaFhsaXTgOBWqpUNLwZgGH6OCjlFRD22W2Y4Ri+gse07OqJp9pbxiFjjCGNdsbsw==
X-Received: by 2002:a05:6402:358e:b0:41d:1900:768a with SMTP id
 y14-20020a056402358e00b0041d1900768amr28316252edc.334.1649841686290; 
 Wed, 13 Apr 2022 02:21:26 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 b12-20020a056402278c00b004195a50759fsm970688ede.84.2022.04.13.02.21.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 02:21:25 -0700 (PDT)
Date: Wed, 13 Apr 2022 11:21:23 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Javier Martinez Canillas <javierm@redhat.com>
Message-ID: <YlaWE+/YBtcrnLHY@phenom.ffwll.local>
References: <20220413082128.348186-1-daniel.vetter@ffwll.ch>
 <955400a5-a785-57af-92d4-42710c55ce99@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <955400a5-a785-57af-92d4-42710c55ce99@redhat.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH] fbcon: Fix delayed takeover locking
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
Cc: Daniel Vetter <daniel.vetter@intel.com>, Du Cheng <ducheng2@gmail.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Zheyu Ma <zheyuma97@gmail.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Nathan Chancellor <nathan@kernel.org>, Matthew Wilcox <willy@infradead.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Sam Ravnborg <sam@ravnborg.org>,
 Helge Deller <deller@gmx.de>, Guenter Roeck <linux@roeck-us.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 13, 2022 at 11:16:08AM +0200, Javier Martinez Canillas wrote:
> Hello Daniel,
> 
> On 4/13/22 10:21, Daniel Vetter wrote:
> > I messed up the delayed takover path in the locking conversion in
> > 6e7da3af008b ("fbcon: Move console_lock for register/unlink/unregister").
> >
> 
> Maybe a few more words of what the issue is ? Something like the following:
> 
> If CONFIG_FRAMEBUFFER_CONSOLE_DEFERRED_TAKEOVER is enabled, fbcon take-over
> doesn't take place when calling fbcon_fb_registered(). Instead, is deferred
> using a workqueue and its fbcon_register_existing_fbs() function calls to
> fbcon_fb_registered() again for each registered fbcon fb.
> 
> This leads to the console_lock tried to be held twice, causing a deadlock.

Will add.
>  
> > Fix it by re-extracting the lockless function and using it in the
> > delayed takeover path, where we need to hold the lock already to
> > iterate over the list of already registered fb. Well the current code
> > still is broken in there (since the list is protected by a
> > registration_lock, which we can't take here because it nests the other
> > way round with console_lock), but in the future this will be a list
> > protected by console_lock when this is all sorted out.
> > 
> 
> [snip]
> 
> >  
> > -/* called with console_lock held */
> >  void fbcon_fb_unbind(struct fb_info *info)
> >  {
> >  	int i, new_idx = -1;
> > @@ -2822,7 +2821,6 @@ void fbcon_fb_unbind(struct fb_info *info)
> >  	console_unlock();
> >  }
> >  
> > -/* called with console_lock held */
> >  void fbcon_fb_unregistered(struct fb_info *info)
> >  {
> 
> Removing these comments feels like should be in a separate patch or at least
> mention in the patch description that should had been removed in the commit
> 6e7da3af008b ("fbcon: Move console_lock for register/unlink/unregister"),
> that made these functions to be called without the console_lock being held.

Yeah I forgot to mention that in the commit message - while reviewing all
the locking to figure out the bug I also noticed that I didn't update the
comments, and since it's all issues in the same patch I figured I'll do it
all in one go.

Ok if I explain that and then keep the comment removals?
-Daniel
> 
> The changes themselves look good to me.
> 
> Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
> 
> -- 
> Best regards,
> 
> Javier Martinez Canillas
> Linux Engineering
> Red Hat
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
