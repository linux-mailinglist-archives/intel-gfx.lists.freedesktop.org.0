Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC6711ED03
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 22:40:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E63A6EDD9;
	Fri, 13 Dec 2019 21:40:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDED96EDD1
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 21:40:17 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id s22so234356ljs.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 13:40:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BFwDG2MYVSxwjtoxPSh4lpuO+A2kFnUi1WWJsTtLfl4=;
 b=XPtRvT4HoRCyXWna51SLY/F2wFwiSQss2qJ0pbwKfSwNupS/SOWIIATssih9T/YXCl
 4IXYxnZ6s/c30SbSiYJuYkykTZwdnghcbt74Y2FSToizbomZnAufrQwDs3rQJlzv2ABa
 SvTqCB2WdohyrjqXCd82DU6UiupKwPthMAwAPQU7g+lF9nVRUNhnjqHBtTCUjRbYTYzI
 dYg4V5pmcW4XROGCxm5dTGOlHEqbpcEnNjJiv6+cVmrPE48gXXTK4ABIHEow9FLHKbkB
 LpktECzva4mou2fRds1VU6M8F4rBfOtkFkK9WLWVhcC4s9YxO6Wh3pPXfSSJ91mJCxZ/
 JPuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BFwDG2MYVSxwjtoxPSh4lpuO+A2kFnUi1WWJsTtLfl4=;
 b=TbaVgYNhhpw0gCp9hbcfEnJSNWfDOkzGy9wzm9sFMjoB+iJdWgmTha59FU+fLCMi49
 y45uZ4K+yF/vkrRE/raDGt2RTs+DKJcmfBhqwYzw0yDBObtq2sJPdHS0/4LAn8OV9f+e
 Dc1DBg4gtcUaXG0+cLNt65lorxcpWqscxaWBs02hOK+/+AAFelnTMMET6v/lnR25C/Vg
 hq9OjkIbN2dhdYuVWm+/zV+KePHBjlH4mpcUbce2GBRFfRbi3p+/szQtphUcezN2w0h+
 e5dailcCE1dW/+S/5dlAVhB7yXh2q07LqlY+dhfz7XrJDwUxcSpAqo2H0rSVhM4MiLEH
 tOtg==
X-Gm-Message-State: APjAAAUbS/rdtLb2V2piIt2aZkbg/+hAwsOWqGzH3YLx2OMavIOQfnO6
 HdN5PINHkJ1FOyl+pWL/I8PFszfa3Cj149rOqULy0g==
X-Google-Smtp-Source: APXvYqyFJ1cg7nunhp8NhBIUmsFrQJKeTzNK7xDyjUp3CnRoSGUe88NfOdkb6dyH2jBAnSpTF4ofo7qM6ioa4PtH08c=
X-Received: by 2002:a2e:9e16:: with SMTP id e22mr10535184ljk.220.1576273216096; 
 Fri, 13 Dec 2019 13:40:16 -0800 (PST)
MIME-Version: 1.0
References: <20191125094356.161941-1-daniel.vetter@ffwll.ch>
 <20191125094356.161941-5-daniel.vetter@ffwll.ch>
 <20191213201013.GM624164@phenom.ffwll.local>
In-Reply-To: <20191213201013.GM624164@phenom.ffwll.local>
From: Eric Anholt <eric@anholt.net>
Date: Fri, 13 Dec 2019 13:40:24 -0800
Message-ID: <CADaigPW509VU1QrU0j53D6Re9cC-2j2P3iaj8OiaXR_3da7c2g@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/vc4: Use dma_resv locking wrappers
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 13, 2019 at 12:10 PM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Mon, Nov 25, 2019 at 10:43:56AM +0100, Daniel Vetter wrote:
> > I'll add more fancy logic to them soon, so everyone really has to use
> > them. Plus they already provide some nice additional debug
> > infrastructure on top of direct ww_mutex usage for the fences tracked
> > by dma_resv.
> >
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
>
> Ping for some review/acks.
>
> Thanks, Daniel
>
> > ---
> >  drivers/gpu/drm/vc4/vc4_gem.c | 11 +++++------
> >  1 file changed, 5 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/vc4/vc4_gem.c b/drivers/gpu/drm/vc4/vc4_gem.c
> > index 7a06cb6e31c5..e1cfc3ccd05a 100644
> > --- a/drivers/gpu/drm/vc4/vc4_gem.c
> > +++ b/drivers/gpu/drm/vc4/vc4_gem.c
> > @@ -568,7 +568,7 @@ vc4_unlock_bo_reservations(struct drm_device *dev,
> >       for (i = 0; i < exec->bo_count; i++) {
> >               struct drm_gem_object *bo = &exec->bo[i]->base;
> >
> > -             ww_mutex_unlock(&bo->resv->lock);
> > +             dma_resv_unlock(bo->resv);
> >       }
> >
> >       ww_acquire_fini(acquire_ctx);
> > @@ -595,8 +595,7 @@ vc4_lock_bo_reservations(struct drm_device *dev,
> >  retry:
> >       if (contended_lock != -1) {
> >               bo = &exec->bo[contended_lock]->base;
> > -             ret = ww_mutex_lock_slow_interruptible(&bo->resv->lock,
> > -                                                    acquire_ctx);
> > +             ret = dma_resv_lock_slow_interruptible(bo->resv, acquire_ctx);
> >               if (ret) {
> >                       ww_acquire_done(acquire_ctx);
> >                       return ret;
> > @@ -609,19 +608,19 @@ vc4_lock_bo_reservations(struct drm_device *dev,
> >
> >               bo = &exec->bo[i]->base;
> >
> > -             ret = ww_mutex_lock_interruptible(&bo->resv->lock, acquire_ctx);
> > +             ret = dma_resv_lock_interruptible(bo->resv, acquire_ctx);
> >               if (ret) {
> >                       int j;
> >
> >                       for (j = 0; j < i; j++) {
> >                               bo = &exec->bo[j]->base;
> > -                             ww_mutex_unlock(&bo->resv->lock);
> > +                             dma_resv_unlock(bo->resv);
> >                       }
> >
> >                       if (contended_lock != -1 && contended_lock >= i) {
> >                               bo = &exec->bo[contended_lock]->base;
> >
> > -                             ww_mutex_unlock(&bo->resv->lock);
> > +                             dma_resv_unlock(bo->resv);
> >                       }
> >
> >                       if (ret == -EDEADLK) {
> > --
> > 2.24.0
> >

Assuming they're supposed to be exactly equivalent currently,

Acked-by: Eric Anholt <eric@anholt.net>

but we should really just be using drm_gem_lock_reservations()
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
