Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A244A5A22
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 11:37:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B10C610ED50;
	Tue,  1 Feb 2022 10:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com
 [IPv6:2607:f8b0:4864:20::235])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE71010ED4D
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Feb 2022 10:36:56 +0000 (UTC)
Received: by mail-oi1-x235.google.com with SMTP id x193so32493041oix.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 01 Feb 2022 02:36:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=thQSKAMpg3vonVejk+upRRfxFVRMJlvDC8QT1+vvLTE=;
 b=BjysRH1/UjWKl4SwTWns+a3iySdYESImlXYI7dzIfcW5U3YKan1zfT4PIm9Yg1CO+i
 UeBzRv66NeNKkAxDGEvzfZAO0hDDWZu37G4sPsJ0qidfgez8DuvVdkYwSyJc/ruD4Unm
 v10dtEg3+JZQA08R+oq5qhyMzzEa33iBiE/uo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=thQSKAMpg3vonVejk+upRRfxFVRMJlvDC8QT1+vvLTE=;
 b=BScR6H+FvOTkwqjxAImEobd6EEgkSNJWVCSEucJLY8tN4mI7xV88Wl2x/3NTmIvBCb
 7GqABUUAs518ZeBexEyR0i6cEZMY09efIhusukIC4cxi3pRvKg/D3LEqNRc4UgNFSqfZ
 J+qxdyAIGW0mBl5LBUqRYDSDmtNUliXDKIFOflYGXKoP5aW9bqjelTaIOF60nFzmqy4g
 vPZTYkhs2kTXd7Et9SFR+sIvIkr1sFeQCtWM2mdbJGwbbwGvB2BXotsDUvGtvY0a2eH0
 LfXBxaFfhQEwTJy3IZZbCxm+AKkMuLOfYWT27l8EFXOYx9ojqR9v5Rx34G8MMYsKJeeA
 ShpA==
X-Gm-Message-State: AOAM531TtYXAn3at1e+mrt1vh/lePBWOO+sgISzU4FXersxI00EedbES
 sl5Vg2m0B8p+DQL2/+bJeZSGFB+OaFjxqWSQNV280w==
X-Google-Smtp-Source: ABdhPJyRYjaTjIpRbmzrzjkG0kQCosoH7kxsVtTm5JDqQlhuefr1UAJQF2kq5O9RD6DgxMJ94sRyCMJm8h5u3PghwEM=
X-Received: by 2002:a54:4803:: with SMTP id j3mr745297oij.279.1643711816234;
 Tue, 01 Feb 2022 02:36:56 -0800 (PST)
MIME-Version: 1.0
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
 <20220131210552.482606-4-daniel.vetter@ffwll.ch>
 <9c22b709-cbcf-6a29-a45e-5a57ba0b9c14@gmx.de>
In-Reply-To: <9c22b709-cbcf-6a29-a45e-5a57ba0b9c14@gmx.de>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 1 Feb 2022 11:36:44 +0100
Message-ID: <CAKMK7uGvOVe8kkJCTkQBEFw+3i2iAMANsyG9vGqZkcROZ9he4A@mail.gmail.com>
To: Helge Deller <deller@gmx.de>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 03/21] fbcon: Restore fbcon scrolling
 acceleration
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
Cc: linux-fbdev@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Sam Ravnborg <sam@ravnborg.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 Javier Martinez Canillas <javierm@redhat.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 DRI Development <dri-devel@lists.freedesktop.org>, Pavel Machek <pavel@ucw.cz>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Dave Airlie <airlied@gmail.com>,
 Sven Schnelle <svens@stackframe.org>, Gerd Hoffmann <kraxel@redhat.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 1, 2022 at 11:16 AM Helge Deller <deller@gmx.de> wrote:
>
> On 1/31/22 22:05, Daniel Vetter wrote:
> > This functionally undoes 39aead8373b3 ("fbcon: Disable accelerated
> > scrolling"), but behind the FRAMEBUFFER_CONSOLE_LEGACY_ACCELERATION
> > option.
>
> you have two trivial copy-n-paste errors in this patch which still prevent the
> console acceleration.

Duh :-(

But before we dig into details I think the big picture would be
better. I honestly don't like the #ifdef pile here that much. I wonder
whether your approach, also with GETVX/YRES adjusted somehow, wouldn't
look cleaner? Like I said in the cover letter I got mostly distracted
with fbcon locking last week, not really with this one here at all, so
maybe going with your 4 (or 2 if we squash them like I did here)
patches is neater?

Cheers, Daniel

>
> > diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
> > index 2ff90061c7f3..39dc18a5de86 100644
> > --- a/drivers/video/fbdev/core/fbcon.c
> > +++ b/drivers/video/fbdev/core/fbcon.c
> > @@ -1125,13 +1125,15 @@ static void fbcon_init(struct vc_data *vc, int init)
> >
> >       ops->graphics = 0;
> >
> > -     /*
> > -      * No more hw acceleration for fbcon.
> > -      *
> > -      * FIXME: Garbage collect all the now dead code after sufficient time
> > -      * has passed.
> > -      */
> > +#ifdef CONFIG_FRAMEBUFFER_CONSOLE_ROTATION
>
> should be:
> #ifdef CONFIG_FRAMEBUFFER_CONSOLE_LEGACY_ACCELERATION
>
>
> > +     if ((info->flags & FBINFO_HWACCEL_COPYAREA) &&
> > +         !(info->flags & FBINFO_HWACCEL_DISABLED))
> > +             p->scrollmode = SCROLL_MOVE;
> > +     else /* default to something safe */
> > +             p->scrollmode = SCROLL_REDRAW;
> > +#else
> >       p->scrollmode = SCROLL_REDRAW;
> > +#endif
> >
> >       /*
> >        *  ++guenther: console.c:vc_allocate() relies on initializing
> > @@ -1971,15 +1973,49 @@ static void updatescrollmode(struct fbcon_display *p,
> >  {
> >       struct fbcon_ops *ops = info->fbcon_par;
> >       int fh = vc->vc_font.height;
> > +     int cap = info->flags;
> > +     u16 t = 0;
> > +     int ypan = FBCON_SWAP(ops->rotate, info->fix.ypanstep,
> > +                           info->fix.xpanstep);
> > +     int ywrap = FBCON_SWAP(ops->rotate, info->fix.ywrapstep, t);
> >       int yres = FBCON_SWAP(ops->rotate, info->var.yres, info->var.xres);
> >       int vyres = FBCON_SWAP(ops->rotate, info->var.yres_virtual,
> >                                  info->var.xres_virtual);
> > +     int good_pan = (cap & FBINFO_HWACCEL_YPAN) &&
> > +             divides(ypan, vc->vc_font.height) && vyres > yres;
> > +     int good_wrap = (cap & FBINFO_HWACCEL_YWRAP) &&
> > +             divides(ywrap, vc->vc_font.height) &&
> > +             divides(vc->vc_font.height, vyres) &&
> > +             divides(vc->vc_font.height, yres);
> > +     int reading_fast = cap & FBINFO_READS_FAST;
> > +     int fast_copyarea = (cap & FBINFO_HWACCEL_COPYAREA) &&
> > +             !(cap & FBINFO_HWACCEL_DISABLED);
> > +     int fast_imageblit = (cap & FBINFO_HWACCEL_IMAGEBLIT) &&
> > +             !(cap & FBINFO_HWACCEL_DISABLED);
> >
> >       p->vrows = vyres/fh;
> >       if (yres > (fh * (vc->vc_rows + 1)))
> >               p->vrows -= (yres - (fh * vc->vc_rows)) / fh;
> >       if ((yres % fh) && (vyres % fh < yres % fh))
> >               p->vrows--;
> > +
> > +     if (good_wrap || good_pan) {
> > +             if (reading_fast || fast_copyarea)
> > +                     p->scrollmode = good_wrap ?
> > +                             SCROLL_WRAP_MOVE : SCROLL_PAN_MOVE;
> > +             else
> > +                     p->scrollmode = good_wrap ? SCROLL_REDRAW :
> > +                             SCROLL_PAN_REDRAW;
> > +     } else {
> > +             if (reading_fast || (fast_copyarea && !fast_imageblit))
> > +                     p->scrollmode = SCROLL_MOVE;
> > +             else
> > +                     p->scrollmode = SCROLL_REDRAW;
> > +     }
> > +
> > +#ifndef CONFIG_FRAMEBUFFER_CONSOLE_ROTATION
>
> same here... it needs to be:
> #ifdef CONFIG_FRAMEBUFFER_CONSOLE_LEGACY_ACCELERATION
>
>
> > +     p->scrollmode = SCROLL_REDRAW;
> > +#endif
> >  }
> >
> >  #define PITCH(w) (((w) + 7) >> 3)
> >
>
> still reviewing the other patches...
>
> Helge



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
