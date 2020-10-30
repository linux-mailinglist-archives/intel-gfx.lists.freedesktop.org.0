Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB592A006C
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 09:52:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB5226E980;
	Fri, 30 Oct 2020 08:52:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc44.google.com (mail-oo1-xc44.google.com
 [IPv6:2607:f8b0:4864:20::c44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C5566E980
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 08:52:13 +0000 (UTC)
Received: by mail-oo1-xc44.google.com with SMTP id v123so1414358ooa.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 01:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sROKsWha4Hz2bAVIx/xdgtU//r/RKM3264fFYvCQuQU=;
 b=EALtV0HMhRIcWS47jWUhaaSLc5CYpmOLAncz1BBgEc0ujy7C5BF1IOL8VWhfXAzI7r
 KsDAEJ75yjJooXkTkVIaPWb4xeXmYFvuT4aoj6qLtFai9jbv1so7SRBGx74nswZbCIbS
 V5LdffJSGDeJpPpy5+fxUm9T2Qna63QrVTLdw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sROKsWha4Hz2bAVIx/xdgtU//r/RKM3264fFYvCQuQU=;
 b=t1XLYRXlP8uz7Xp6y9yuhILcmbIoe13uMun2kWnYKCXRVEeT5X68kQo7PN8XWRJj7z
 N8KjT3LmdDIvT6DWUKwqZQJVyPkV2LFTPxj/tiYtPTgGYHv1Ar7k5y6WeV/8kVIL7YSm
 sLUrVPO6M/gTcuRguvvBqhwayxYKT4DA6l4dArzEhSqbGWd0eCHJhfdn9aG9g/JeltYm
 DMvI0d4okv8bEhQmBbhPe9o5XKcO2PJxYHlYIF4bUcfrLr1QheECPpSjkHgx37VaPibT
 w+tbS+8bn53Sa6NXiSAVaIyYAZ5/xh2H9prYxBe52PrOVKnCZrQ0wqUDZ3RRs9twftGT
 k4BA==
X-Gm-Message-State: AOAM5320euL33N93vnfL/C80oEeY/VTf3L8AQ/OcUqlUYkKEmOAN+xc1
 avFQK82BS8YqEPrLnv5ehuQZ5ZKcCtV4SB9qpcLWTw==
X-Google-Smtp-Source: ABdhPJztwOoU7TFvMLGmA3q8p6nsC5myNMpPdKxrEMx25F3XgQTxx/9ygbvJ7W7BR79mQBzbQ2stw0sxZPPitPBaGiA=
X-Received: by 2002:a4a:b503:: with SMTP id r3mr958264ooo.28.1604047932902;
 Fri, 30 Oct 2020 01:52:12 -0700 (PDT)
MIME-Version: 1.0
References: <20201029101428.4058311-1-daniel.vetter@ffwll.ch>
 <20201029132229.4068359-1-daniel.vetter@ffwll.ch>
 <df3f5733-21b3-809c-71d7-0bd83f29ae62@ti.com>
In-Reply-To: <df3f5733-21b3-809c-71d7-0bd83f29ae62@ti.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 30 Oct 2020 09:52:01 +0100
Message-ID: <CAKMK7uEH5dYP9-ybQ2OjS6c3Np99uEWE4QyL-x+nhLT=S7y0AA@mail.gmail.com>
To: Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: Re: [Intel-gfx] [PATCH] fbcon: Disable accelerated scrolling
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
Cc: George Kennedy <george.kennedy@oracle.com>, Sam Ravnborg <sam@ravnborg.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Peter Rosin <peda@axentia.se>, Linus Torvalds <torvalds@linux-foundation.org>,
 Ben Skeggs <bskeggs@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Nouveau Dev <nouveau@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Jiri Slaby <jirislaby@kernel.org>, Peilin Ye <yepeilin.cs@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 30, 2020 at 9:30 AM Tomi Valkeinen <tomi.valkeinen@ti.com> wrote:
>
> On 29/10/2020 15:22, Daniel Vetter wrote:
> > So ever since syzbot discovered fbcon, we have solid proof that it's
> > full of bugs. And often the solution is to just delete code and remove
> > features, e.g.  50145474f6ef ("fbcon: remove soft scrollback code").
> >
> > Now the problem is that most modern-ish drivers really only treat
> > fbcon as an dumb kernel console until userspace takes over, and Oops
> > printer for some emergencies. Looking at drm drivers and the basic
> > vesa/efi fbdev drivers shows that only 3 drivers support any kind of
> > acceleration:
> >
> > - nouveau, seems to be enabled by default
> > - omapdrm, when a DMM remapper exists using remapper rewriting for
> >   y/xpanning
> > - gma500, but that is getting deleted now for the GTT remapper trick,
> >   and the accelerated copyarea never set the FBINFO_HWACCEL_COPYAREA
> >   flag, so unused (and could be deleted already I think).
> >
> > No other driver supportes accelerated fbcon. And fbcon is the only
> > user of this accel code (it's not exposed as uapi through ioctls),
> > which means we could garbage collect fairly enormous amounts of code
> > if we kill this.
> >
> > Plus because syzbot only runs on virtual hardware, and none of the
> > drivers for that have acceleration, we'd remove a huge gap in testing.
> > And there's no other even remotely comprehensive testing aside from
> > syzbot.
> >
> > This patch here just disables the acceleration code by always
> > redrawing when scrolling. The plan is that once this has been merged
> > for well over a year in released kernels, we can start to go around
> > and delete a lot of code.
> >
> > v2:
> > - Drop a few more unused local variables, somehow I missed the
> > compiler warnings (Sam)
> > - Fix typo in comment (Jiri)
> > - add a todo entry for the cleanup (Thomas)
> >
> > v3: Remove more unused variables (0day)
> >
> > Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
> > Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Acked-by: Sam Ravnborg <sam@ravnborg.org>
> > Cc: Jiri Slaby <jirislaby@kernel.org>
> > Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Cc: Linus Torvalds <torvalds@linux-foundation.org>
> > Cc: Ben Skeggs <bskeggs@redhat.com>
> > Cc: nouveau@lists.freedesktop.org
> > Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Cc: Jiri Slaby <jirislaby@kernel.org>
> > Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
> > Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> > Cc: Peilin Ye <yepeilin.cs@gmail.com>
> > Cc: George Kennedy <george.kennedy@oracle.com>
> > Cc: Nathan Chancellor <natechancellor@gmail.com>
> > Cc: Peter Rosin <peda@axentia.se>
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > ---
> >  Documentation/gpu/todo.rst       | 18 +++++++++++++
> >  drivers/video/fbdev/core/fbcon.c | 45 ++++++--------------------------
> >  2 files changed, 26 insertions(+), 37 deletions(-)
> >
> > diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
> > index 6b224ef14455..bec99341a904 100644
> > --- a/Documentation/gpu/todo.rst
> > +++ b/Documentation/gpu/todo.rst
> > @@ -277,6 +277,24 @@ Contact: Daniel Vetter, Noralf Tronnes
> >
> >  Level: Advanced
> >
> > +Garbage collect fbdev scrolling acceleration
> > +--------------------------------------------
> > +
> > +Scroll acceleration is disabled in fbcon by hard-wiring p->scrollmode =
> > +SCROLL_REDRAW. There's a ton of code this will allow us to remove:
> > +- lots of code in fbcon.c
> > +- a bunch of the hooks in fbcon_ops, maybe the remaining hooks could be called
> > +  directly instead of the function table (with a switch on p->rotate)
> > +- fb_copyarea is unused after this, and can be deleted from all drivers
> > +
> > +Note that not all acceleration code can be deleted, since clearing and cursor
> > +support is still accelerated, which might be good candidates for further
> > +deletion projects.
>
> Apparently omapdrm's accelerated panning has been broken for some time, and no one has noticed. It does:
>
> strcmp(fbi->fix.id, MODULE_NAME), which is a comparison of omapdrmdrmfb == omapdrm and always fails.
>
> Fixing that, and applying this patch, things work fine (unaccelerated, of course). I did notice a
> single call to omap_fbdev_pan_display() when loading the drivers. This comes from fbcon_switch ->
> bit_update_start -> fb_pan_display. Maybe this is from the clearing you mention above?

The accel left is through fb_fillrect and fb_imageblt, plus there's
still fb_cursor (but not much use of that even in fbdev drivers).

I'm honestly not sure why there's the pan call in there, maybe just to
reset to default state in case an fbdev chardev user moved the origin
around. Aside from the accel code there's a call to this in
fbcon_switch and fbcon_modechanged, so I think it's just that.
-Daniel
>
> Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
>
>  Tomi
>
> --
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
> Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
