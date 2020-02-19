Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA4416486E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 16:24:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11F926EC20;
	Wed, 19 Feb 2020 15:24:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com
 [IPv6:2607:f8b0:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38F6C6E81E
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 15:24:55 +0000 (UTC)
Received: by mail-ot1-x344.google.com with SMTP id r27so472336otc.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 07:24:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qYhTUrrqc0aLy+KOWkzKXyYiFD3OiQz8nR4EBQhR2MQ=;
 b=YYXCWoS/O3lwoqOnriNrI0nnKjLXig8xjLg1dPM4g4apQg8la80sjEaj2II6A8Lkng
 4hDjOyou6Jw43+fp3Cmy8u9aFzek4SHaJGqNdcd/62UvQmYU7O4ZbzKd7GBZsc9gfRb2
 obggNzcSt85e6r374iBK5U8h+7ZMKxbUUUFeI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qYhTUrrqc0aLy+KOWkzKXyYiFD3OiQz8nR4EBQhR2MQ=;
 b=UXZYZlYqqAImdkfhxfF9fg+8lmUGDbG7YiGubAmc4c3e5x9z/04gKWCfnCfuAciXQZ
 25xUnxkvt1e/+3LFg9mJItI2jYjbTSjxHvPZWeI2Qb1Sh3mBzDvPa5U0aTf+nNuExxxD
 GsvZ4QO5+8HAkqfoh8cD0rEUm5oZ6ySZkaUTPgx/eH/0K65+XX3sNJby8byWBJoEboM5
 Xf1U8cezsSmxrgkWz5sBl54EsBT2TNiN73xJnSvCVOpG6mEc2Os/Zzz8X/D8qZ7vZ0Z0
 ZB77Rws/UVL/tdXj6VdmxPk/tmwSmcUGSAKvL6F7JMvGoyy66PXYUgXbkEiVsKPC7dvy
 6Pug==
X-Gm-Message-State: APjAAAVrurpT1SpADUGYIjd6Q3x83KuU/VlrjYmbPRvjzsZA/Wtn7ceT
 smC4yBu9p7bo4+OJDq6nS0Oh9q7FNYry5R5cbqDNiQ==
X-Google-Smtp-Source: APXvYqzzmLKI5olmUYDKGNYNd+676QwGsmwy/g9Z33JvLCyh2VU+peD3DX1CWR9wXdvcuaIGdVrRj+sWqszyHt7zp+4=
X-Received: by 2002:a9d:7f11:: with SMTP id j17mr21278221otq.281.1582125894477; 
 Wed, 19 Feb 2020 07:24:54 -0800 (PST)
MIME-Version: 1.0
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
 <20200219102122.1607365-22-daniel.vetter@ffwll.ch>
 <20200219142806.GL5070@pendragon.ideasonboard.com>
In-Reply-To: <20200219142806.GL5070@pendragon.ideasonboard.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 19 Feb 2020 16:24:42 +0100
Message-ID: <CAKMK7uF+_CGAiLhd772HBEmgsdH9RgBV9F_cmvOfZZrCR7-Q4w@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Intel-gfx] [PATCH 21/52] drm: Handle dev->unique with drmm_
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 19, 2020 at 3:28 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Daniel,
>
> Thank you for the patch.
>
> On Wed, Feb 19, 2020 at 11:20:51AM +0100, Daniel Vetter wrote:
> > We need to add a drmm_kstrdup for this, but let's start somewhere.
> >
> > This is not exactly perfect onion unwinding, but it's jsut a kfree so
> > doesn't really matter at all.
> >
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > ---
> >  drivers/gpu/drm/drm_drv.c     |  5 ++---
> >  drivers/gpu/drm/drm_managed.c | 16 ++++++++++++++++
> >  include/drm/drm_managed.h     |  1 +
> >  3 files changed, 19 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
> > index 1ee606b4a4f9..782fd5d6f8b2 100644
> > --- a/drivers/gpu/drm/drm_drv.c
> > +++ b/drivers/gpu/drm/drm_drv.c
> > @@ -777,7 +777,6 @@ void drm_dev_fini(struct drm_device *dev)
> >       mutex_destroy(&dev->filelist_mutex);
> >       mutex_destroy(&dev->struct_mutex);
> >       drm_legacy_destroy_members(dev);
> > -     kfree(dev->unique);
> >  }
> >  EXPORT_SYMBOL(drm_dev_fini);
> >
> > @@ -1063,8 +1062,8 @@ EXPORT_SYMBOL(drm_dev_unregister);
> >   */
> >  int drm_dev_set_unique(struct drm_device *dev, const char *name)
> >  {
> > -     kfree(dev->unique);
> > -     dev->unique = kstrdup(name, GFP_KERNEL);
> > +     drmm_kfree(dev, dev->unique);
> > +     dev->unique = drmm_kstrdup(dev, name, GFP_KERNEL);
> >
> >       return dev->unique ? 0 : -ENOMEM;
> >  }
> > diff --git a/drivers/gpu/drm/drm_managed.c b/drivers/gpu/drm/drm_managed.c
> > index ee7c7253af61..d8a484e19830 100644
> > --- a/drivers/gpu/drm/drm_managed.c
> > +++ b/drivers/gpu/drm/drm_managed.c
> > @@ -147,6 +147,22 @@ void *drmm_kmalloc(struct drm_device *dev, size_t size, gfp_t gfp)
> >  }
> >  EXPORT_SYMBOL(drmm_kmalloc);
> >
> > +char *drmm_kstrdup(struct drm_device *dev, const char *s, gfp_t gfp)
>
> Do we need support for gfp_t other than GFP_KERNEL ? Given that the
> memory will be released when the drm_device is destroyed, GFP_ATOMIC
> would seem of dubious use to me, and we may want to not make it possible
> to use it.

Hm .. I just copied the devm_ functions with struct drm_device
substituting struct device. I agree there's not going to be a use-case
for anything else than GFP_KERNEL. If there ever will be, I guess we
could add a __drm_kmallock for that case.

The downside of dropping the gfp argument is that drmm_ wont be a
drop-in replacament for devm_k*alloc functions anymore. Adding Greg,
maybe he has a good idea about what we should be doing here?

Personally I'd be happy to drop the gfp argument, it feels somewhat
pointless for these.
-Daniel


> > +{
> > +     size_t size;
> > +     char *buf;
> > +
> > +     if (!s)
> > +             return NULL;
> > +
> > +     size = strlen(s) + 1;
> > +     buf = drmm_kmalloc(dev, size, gfp);
> > +     if (buf)
> > +             memcpy(buf, s, size);
> > +     return buf;
> > +}
> > +EXPORT_SYMBOL_GPL(drmm_kstrdup);
> > +
> >  void drmm_kfree(struct drm_device *dev, void *data)
> >  {
> >       struct drmres *dr = NULL, *tmp;
> > diff --git a/include/drm/drm_managed.h b/include/drm/drm_managed.h
> > index 75f2c8932c69..240edd395e88 100644
> > --- a/include/drm/drm_managed.h
> > +++ b/include/drm/drm_managed.h
> > @@ -21,5 +21,6 @@ static inline void *drmm_kzalloc(struct drm_device *dev, size_t size, gfp_t gfp)
> >  {
> >       return drmm_kmalloc(dev, size, gfp | __GFP_ZERO);
> >  }
> > +char *drmm_kstrdup(struct drm_device *dev, const char *s, gfp_t gfp);
> >
> >  void drmm_kfree(struct drm_device *dev, void *data);
>
> --
> Regards,
>
> Laurent Pinchart



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
