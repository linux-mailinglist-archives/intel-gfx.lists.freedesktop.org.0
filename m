Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D8E1C0086
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 17:38:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 015436E922;
	Thu, 30 Apr 2020 15:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com
 [IPv6:2607:f8b0:4864:20::f41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AC966E922
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 15:38:31 +0000 (UTC)
Received: by mail-qv1-xf41.google.com with SMTP id q2so3211314qvd.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 08:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P9HhjXHjgQ2uRdTOdCGFRzrISVJUe9hHihb1s6U+pG0=;
 b=EBCfRCyNsTlDJFaRQRt4ZOByXKwsez2d0WVoOUVj0uyzY2FQjjUArA4Cdr92cMp5yy
 00zTxOzpBt6C0OXx4Ubu0BX+XEnhoymU29QAZiSeYC1TaiquQ6Guo8m/i8tGqEPIt2Yt
 upoTJJeeNPy2dAk4ETUD4kl9Dplk18J7ntJnI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P9HhjXHjgQ2uRdTOdCGFRzrISVJUe9hHihb1s6U+pG0=;
 b=QHbOl2xDclbPjmHS4SKXxv8FfdIPPEHjbI+YDWeM/oAJL9t9xmujGW3Yl/VkwiXTW8
 cvEqvVR2pTzXlPEn0S9Di+A/TSh6YcC0JEN7oB9FzfVTIAOFusIytbqFyxn0ZBjy2jLs
 +4YvCnCxu0AA/SenmvDRCbSAuwkBDXopDxk165SmBLTBqWFQV5bqflixT5pFTCgxtt7l
 wHI5mNMShylJSmVywXNRhZ03YJBCdefO/+DFRnC425a5p56s+6Ygyb0ZglBMV1IbT0fL
 005bu9pSu0XpEbN7s7Lt8U3q1nhH4vpRtQQ7Vfi/lCM+KtlSayuIX84/2vuSO9O7bODq
 hdog==
X-Gm-Message-State: AGi0PubAzb4uHYPM7rBV+I+nrY0EtPq/fgeXrvpSUuG7RXgMAV9YivAR
 CjwtJGKsUzbcY0xN8ZjvXj5BSib8QuM=
X-Google-Smtp-Source: APiQypJH+tKzQ/BfImV65VINh8jjYrWyaQQUK0aOwPxmBl3MWNENhPMRO2hBLJn+rpN//sdqGXfziw==
X-Received: by 2002:a0c:efc3:: with SMTP id a3mr3548068qvt.223.1588261109342; 
 Thu, 30 Apr 2020 08:38:29 -0700 (PDT)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com.
 [209.85.219.178])
 by smtp.gmail.com with ESMTPSA id o33sm2434531qtj.62.2020.04.30.08.38.27
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 08:38:28 -0700 (PDT)
Received: by mail-yb1-f178.google.com with SMTP id e16so1195768ybn.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 08:38:27 -0700 (PDT)
X-Received: by 2002:a5b:483:: with SMTP id n3mr6464401ybp.519.1588261107424;
 Thu, 30 Apr 2020 08:38:27 -0700 (PDT)
MIME-Version: 1.0
References: <1588093804-30446-1-git-send-email-michalorzel.eng@gmail.com>
 <875zdiacv2.fsf@intel.com>
In-Reply-To: <875zdiacv2.fsf@intel.com>
From: Sean Paul <seanpaul@chromium.org>
Date: Thu, 30 Apr 2020 11:37:49 -0400
X-Gmail-Original-Message-ID: <CAOw6vbK69aWzti9a7MXNmAfVfJXzzC5g74p4ukSE49MhaV_b3g@mail.gmail.com>
Message-ID: <CAOw6vbK69aWzti9a7MXNmAfVfJXzzC5g74p4ukSE49MhaV_b3g@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
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
Cc: tzimmermann@suse.de, Dave Airlie <airlied@linux.ie>,
 Michal Orzel <michalorzel.eng@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, mripard@kernel.org,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 29, 2020 at 4:57 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> On Tue, 28 Apr 2020, Michal Orzel <michalorzel.eng@gmail.com> wrote:
> > As suggested by the TODO list for the kernel DRM subsystem, replace
> > the deprecated functions that take/drop modeset locks with new helpers.
> >
> > Signed-off-by: Michal Orzel <michalorzel.eng@gmail.com>
> > ---
> >  drivers/gpu/drm/drm_mode_object.c | 10 ++++++----
> >  1 file changed, 6 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/drm_mode_object.c b/drivers/gpu/drm/drm_mode_object.c
> > index 35c2719..901b078 100644
> > --- a/drivers/gpu/drm/drm_mode_object.c
> > +++ b/drivers/gpu/drm/drm_mode_object.c
> > @@ -402,12 +402,13 @@ int drm_mode_obj_get_properties_ioctl(struct drm_device *dev, void *data,
> >  {
> >       struct drm_mode_obj_get_properties *arg = data;
> >       struct drm_mode_object *obj;
> > +     struct drm_modeset_acquire_ctx ctx;
> >       int ret = 0;
> >
> >       if (!drm_core_check_feature(dev, DRIVER_MODESET))
> >               return -EOPNOTSUPP;
> >
> > -     drm_modeset_lock_all(dev);
> > +     DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, ret);
>
> I cry a little every time I look at the DRM_MODESET_LOCK_ALL_BEGIN and
> DRM_MODESET_LOCK_ALL_END macros. :(
>
> Currently only six users... but there are ~60 calls to
> drm_modeset_lock_all{,_ctx} that I presume are to be replaced. I wonder
> if this will come back and haunt us.
>

What's the alternative? Seems like the options without the macros is
to use incorrect scope or have a bunch of retry/backoff cargo-cult
everywhere (and hope the copy source is done correctly).

Sean

> BR,
> Jani.
>
>
> >
> >       obj = drm_mode_object_find(dev, file_priv, arg->obj_id, arg->obj_type);
> >       if (!obj) {
> > @@ -427,7 +428,7 @@ int drm_mode_obj_get_properties_ioctl(struct drm_device *dev, void *data,
> >  out_unref:
> >       drm_mode_object_put(obj);
> >  out:
> > -     drm_modeset_unlock_all(dev);
> > +     DRM_MODESET_LOCK_ALL_END(ctx, ret);
> >       return ret;
> >  }
> >
> > @@ -449,12 +450,13 @@ static int set_property_legacy(struct drm_mode_object *obj,
> >  {
> >       struct drm_device *dev = prop->dev;
> >       struct drm_mode_object *ref;
> > +     struct drm_modeset_acquire_ctx ctx;
> >       int ret = -EINVAL;
> >
> >       if (!drm_property_change_valid_get(prop, prop_value, &ref))
> >               return -EINVAL;
> >
> > -     drm_modeset_lock_all(dev);
> > +     DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, ret);
> >       switch (obj->type) {
> >       case DRM_MODE_OBJECT_CONNECTOR:
> >               ret = drm_connector_set_obj_prop(obj, prop, prop_value);
> > @@ -468,7 +470,7 @@ static int set_property_legacy(struct drm_mode_object *obj,
> >               break;
> >       }
> >       drm_property_change_valid_put(prop, ref);
> > -     drm_modeset_unlock_all(dev);
> > +     DRM_MODESET_LOCK_ALL_END(ctx, ret);
> >
> >       return ret;
> >  }
>
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
