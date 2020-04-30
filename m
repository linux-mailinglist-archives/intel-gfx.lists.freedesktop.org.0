Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D1E1C04D4
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 20:31:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C33AB6E29E;
	Thu, 30 Apr 2020 18:31:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com
 [IPv6:2607:f8b0:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAA096E29E
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 18:31:07 +0000 (UTC)
Received: by mail-ot1-x343.google.com with SMTP id z25so336793otq.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 11:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iMCD+Jo7E8IZbBxHKMYz3Qb/9HJIoY2bae742xpPUjY=;
 b=aua11ZHUyJrWxfH/6aP8CrbZcJDCWjioXF2XxEBLB2ngHWepZw1xBuSZfnzrNfwzta
 xUjumh+rBT00oWNzWYG66IRDKD4J8zWQqYylpHeFPUpc9QvQbSsyHakHoEu+dyjLRUc4
 SFxbpETHruDT3zVej0CEUaXZc0FXxgtLEXrYU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iMCD+Jo7E8IZbBxHKMYz3Qb/9HJIoY2bae742xpPUjY=;
 b=CF1xtjdOvYlGOGyNUONPEwz2lQGUUUY5FCAoutJj8z8QJy3EK1bm+DQYIjL64NNXJe
 NJMi8/ctZm8SXxlivUX8sHzxNQzv+fnMBmpPl0+k+69e5TKBRe08LAl89brMno4vWZ22
 mwbd8SaUXx98aawD5Rj6SrC2lXzBMqUQDjp9cqjt+wMHCg53qqF58IKdN64StAgRxH3s
 AlFC76P/bwAD7MlOijACLOoE0omEMj2DMmLk6KRSkaBKxxLNAl/4uEQCd+rjOqceL+Sq
 SvTJpKmTVRhyGHqTx+sbIMaYo2VEBr5j7Q64Os7/+EC94sF4RDndeIqWqOcToYt9JZ/F
 G9jA==
X-Gm-Message-State: AGi0PuZKZ/G/oUxnOMwSfBFuL9T1JZPQeviLgweGVy6f89J6/Yypo9rL
 AuV7/U99rz0D+5nsv4TxIQPyYCIT0VXIV0TSXtD6eQ==
X-Google-Smtp-Source: APiQypKyYOqC4tEmwwTS7QE+OtDLiAeWnwyyRNPl/roowM0owcKKaIbR2jDNbxulnsFh0+v9ggay3MC+vnWMcWGOKEk=
X-Received: by 2002:a9d:d06:: with SMTP id 6mr405884oti.188.1588271466950;
 Thu, 30 Apr 2020 11:31:06 -0700 (PDT)
MIME-Version: 1.0
References: <1588093804-30446-1-git-send-email-michalorzel.eng@gmail.com>
 <875zdiacv2.fsf@intel.com>
 <CAOw6vbK69aWzti9a7MXNmAfVfJXzzC5g74p4ukSE49MhaV_b3g@mail.gmail.com>
In-Reply-To: <CAOw6vbK69aWzti9a7MXNmAfVfJXzzC5g74p4ukSE49MhaV_b3g@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 30 Apr 2020 20:30:53 +0200
Message-ID: <CAKMK7uEzTn2nKyEaxMcd6602tprwkdnBrmrFYO+_Hi7FY39jAw@mail.gmail.com>
To: Sean Paul <seanpaul@chromium.org>
Subject: Re: [Intel-gfx] [PATCH] drm: Replace drm_modeset_lock/unlock_all
 with DRM_MODESET_LOCK_ALL_* helpers
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
Cc: dri-devel <dri-devel@lists.freedesktop.org>, Dave Airlie <airlied@linux.ie>,
 Michal Orzel <michalorzel.eng@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 30, 2020 at 5:38 PM Sean Paul <seanpaul@chromium.org> wrote:
>
> On Wed, Apr 29, 2020 at 4:57 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
> >
> > On Tue, 28 Apr 2020, Michal Orzel <michalorzel.eng@gmail.com> wrote:
> > > As suggested by the TODO list for the kernel DRM subsystem, replace
> > > the deprecated functions that take/drop modeset locks with new helpers.
> > >
> > > Signed-off-by: Michal Orzel <michalorzel.eng@gmail.com>
> > > ---
> > >  drivers/gpu/drm/drm_mode_object.c | 10 ++++++----
> > >  1 file changed, 6 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/drm_mode_object.c b/drivers/gpu/drm/drm_mode_object.c
> > > index 35c2719..901b078 100644
> > > --- a/drivers/gpu/drm/drm_mode_object.c
> > > +++ b/drivers/gpu/drm/drm_mode_object.c
> > > @@ -402,12 +402,13 @@ int drm_mode_obj_get_properties_ioctl(struct drm_device *dev, void *data,
> > >  {
> > >       struct drm_mode_obj_get_properties *arg = data;
> > >       struct drm_mode_object *obj;
> > > +     struct drm_modeset_acquire_ctx ctx;
> > >       int ret = 0;
> > >
> > >       if (!drm_core_check_feature(dev, DRIVER_MODESET))
> > >               return -EOPNOTSUPP;
> > >
> > > -     drm_modeset_lock_all(dev);
> > > +     DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, ret);
> >
> > I cry a little every time I look at the DRM_MODESET_LOCK_ALL_BEGIN and
> > DRM_MODESET_LOCK_ALL_END macros. :(
> >
> > Currently only six users... but there are ~60 calls to
> > drm_modeset_lock_all{,_ctx} that I presume are to be replaced. I wonder
> > if this will come back and haunt us.
> >
>
> What's the alternative? Seems like the options without the macros is
> to use incorrect scope or have a bunch of retry/backoff cargo-cult
> everywhere (and hope the copy source is done correctly).

Yeah Sean & me had a bunch of bikesheds and this is the least worst
option we could come up with. You can't make it a function because of
the control flow. You don't want to open code this because it's tricky
to get right, if all you want is to just grab all locks. But it is
magic hidden behind a macro, which occasionally ends up hurting.
-Daniel

> Sean
>
> > BR,
> > Jani.
> >
> >
> > >
> > >       obj = drm_mode_object_find(dev, file_priv, arg->obj_id, arg->obj_type);
> > >       if (!obj) {
> > > @@ -427,7 +428,7 @@ int drm_mode_obj_get_properties_ioctl(struct drm_device *dev, void *data,
> > >  out_unref:
> > >       drm_mode_object_put(obj);
> > >  out:
> > > -     drm_modeset_unlock_all(dev);
> > > +     DRM_MODESET_LOCK_ALL_END(ctx, ret);
> > >       return ret;
> > >  }
> > >
> > > @@ -449,12 +450,13 @@ static int set_property_legacy(struct drm_mode_object *obj,
> > >  {
> > >       struct drm_device *dev = prop->dev;
> > >       struct drm_mode_object *ref;
> > > +     struct drm_modeset_acquire_ctx ctx;
> > >       int ret = -EINVAL;
> > >
> > >       if (!drm_property_change_valid_get(prop, prop_value, &ref))
> > >               return -EINVAL;
> > >
> > > -     drm_modeset_lock_all(dev);
> > > +     DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, ret);
> > >       switch (obj->type) {
> > >       case DRM_MODE_OBJECT_CONNECTOR:
> > >               ret = drm_connector_set_obj_prop(obj, prop, prop_value);
> > > @@ -468,7 +470,7 @@ static int set_property_legacy(struct drm_mode_object *obj,
> > >               break;
> > >       }
> > >       drm_property_change_valid_put(prop, ref);
> > > -     drm_modeset_unlock_all(dev);
> > > +     DRM_MODESET_LOCK_ALL_END(ctx, ret);
> > >
> > >       return ret;
> > >  }
> >
> > --
> > Jani Nikula, Intel Open Source Graphics Center



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
