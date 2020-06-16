Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C171C1FBC96
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 19:17:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2635D6E927;
	Tue, 16 Jun 2020 17:16:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc44.google.com (mail-oo1-xc44.google.com
 [IPv6:2607:f8b0:4864:20::c44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8F8E6E91C
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 17:16:57 +0000 (UTC)
Received: by mail-oo1-xc44.google.com with SMTP id 127so1936757ooc.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 10:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XLKyIFQjA0hO+M2HmvoX6/wXmPu/pZbk4Ns+D8IxKQg=;
 b=fh8k4TyxJEnnkRd4t674E0UMUbtaUhGFG+OzQWn1vFd5LjFe+lMyhx6J458g/rkdhe
 vODv7JRsqHb5bHi9LdD3DhNiwSx4CTgZ+q+l7rnpclA8fpr/h9bRBVRnohfq5VDf7m10
 EMn94Y8EVRFvL5nMTXPsfc+4MOY8JYohuBhkc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XLKyIFQjA0hO+M2HmvoX6/wXmPu/pZbk4Ns+D8IxKQg=;
 b=MNCdEuf6NI7CGBgoJD3xtq8Ctq7cC32E0iZDxpiVz9zQamtdnJ3DlpJ1v7koMbeb7T
 r4oTWGwdgzSIqI2ygO1ODR1+5XadGMiZFthPBsJpUQrlrmbIfzZDBn/+lXyxND21fOaA
 nKLLWvU3d8wsMQ1EN4cb+H6KP0VcXmHLP43vGsNslLvpqHwxyrPY8zPut1P4/Ev+HP1s
 yLnC7rMGcnBpXkb0ZG6SJ317cQPW3JSAmivxh0TnFIn273YH/Ea34V6H/OVP7fk6Zdbq
 x3+zRUEPEY1aFpEghJZWl/g/d0eFJHPwD5uA9du3XwbQr66pLekXIk6JoXgrV9W9Enmj
 693w==
X-Gm-Message-State: AOAM531n+ANrmcC/o8Ai1lx8a3d3oZ8P9Ttk5ejL78EOqJuWjHQnP6iU
 EArQGXjxX94ykHrsp8c+5+4kh6ayB5pypQn7jojE5w==
X-Google-Smtp-Source: ABdhPJwLyWLfAi2ZOO8whksvPxRYdp+aFssT/X1/Y4FJyT4yCXm97qT49tYUkHfToY6XpIAozSeuW97m9p4w5/Fdw9Y=
X-Received: by 2002:a4a:5209:: with SMTP id d9mr3284142oob.28.1592327816894;
 Tue, 16 Jun 2020 10:16:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
 <20200612160056.2082681-7-daniel.vetter@ffwll.ch>
 <CACvgo51AVVOxhGK2Uin=ZLgPpihJiEsnc6pvAyKqFKPvLdOzLA@mail.gmail.com>
 <CAKMK7uEEkH+8BuFcFUVTv6p8swZZTwcho-HNx5GdZTO1vHDoeg@mail.gmail.com>
 <CACvgo51ZObyCiOeV+cdJo6xJ3ahuvBUxx1DrK+emDHTOfmVA_g@mail.gmail.com>
In-Reply-To: <CACvgo51ZObyCiOeV+cdJo6xJ3ahuvBUxx1DrK+emDHTOfmVA_g@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 16 Jun 2020 19:16:45 +0200
Message-ID: <CAKMK7uFkXzMMWqaS52K6_tdi-xbsqWTySQATpJewLDL_ebXiMA@mail.gmail.com>
To: Emil Velikov <emil.l.velikov@gmail.com>
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/mipi-dbi: Remove ->enabled
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
Cc: David Lechner <david@lechnology.com>, David Airlie <airlied@linux.ie>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 16, 2020 at 3:57 PM Emil Velikov <emil.l.velikov@gmail.com> wrote:
>
> On Tue, 16 Jun 2020 at 07:50, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> >
> > On Mon, Jun 15, 2020 at 11:35 PM Emil Velikov <emil.l.velikov@gmail.com> wrote:
> > >
> > > Hi Daniel,
> > >
> > > On Fri, 12 Jun 2020 at 17:01, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> > > >
> > > > The atomic helpers try really hard to not lose track of things,
> > > > duplicating enabled tracking in the driver is at best confusing.
> > > > Double-enabling or disabling is a bug in atomic helpers.
> > > >
> > > > In the fb_dirty function we can just assume that the fb always exists,
> > > > simple display pipe helpers guarantee that the crtc is only enabled
> > > > together with the output, so we always have a primary plane around.
> > > >
> > > > Now in the update function we need to be a notch more careful, since
> > > > that can also get called when the crtc is off. And we don't want to
> > > > upload frames when that's the case, so filter that out too.
> > > >
> > > > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > Cc: Maxime Ripard <mripard@kernel.org>
> > > > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > > > Cc: David Airlie <airlied@linux.ie>
> > > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > > Cc: David Lechner <david@lechnology.com>
> > > > ---
> > > >  drivers/gpu/drm/drm_mipi_dbi.c | 16 ++++++----------
> > > >  drivers/gpu/drm/tiny/ili9225.c | 12 +++---------
> > > >  drivers/gpu/drm/tiny/st7586.c  | 11 +++--------
> > > >  include/drm/drm_mipi_dbi.h     |  5 -----
> > > >  4 files changed, 12 insertions(+), 32 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/drm_mipi_dbi.c b/drivers/gpu/drm/drm_mipi_dbi.c
> > > > index fd8d672972a9..79532b9a324a 100644
> > > > --- a/drivers/gpu/drm/drm_mipi_dbi.c
> > > > +++ b/drivers/gpu/drm/drm_mipi_dbi.c
> > > > @@ -268,7 +268,7 @@ static void mipi_dbi_fb_dirty(struct drm_framebuffer *fb, struct drm_rect *rect)
> > > >         bool full;
> > > >         void *tr;
> > > >
> > > > -       if (!dbidev->enabled)
> > > > +       if (WARN_ON(!fb))
> > > >                 return;
> > > >
> > > AFAICT no other driver has such WARN_ON. Let's drop that - it is
> > > pretty confusing and misleading as-is.
> >
> > Yeah, this is a helper library which might be used wrongly by drivers.
> > That's why I put it in - if you don't put all the various calls
> > together correctly, this should at least catch one case. So really
> > would like to keep this, can I convince you?
>
> There are plenty of similar places where a drm library/helper can be
> misused, lacking a WARN. Nevertheless - sure feel free to keep it.

Yeah I agree, we can't check for everything. Personally I think a
check is warranted in two conditions:
- drivers got it wrong, and the WARNING helps catch driver-bugs we've
seen in the wild. Not really the case here
- drivers do check something as defensive programming, but it's an
invariant enforced by higher levels or helpers. Those I like to
convert to WARNING so that other driver authors learn that this should
never happen. This is such a case imo, I removed a bunch of fb checks
from drivers here.

But yeah I think we should only add WARNING checks if this is actually
something people have gotten wrong, otherwise there's just too many of
them, distracting from the code.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
