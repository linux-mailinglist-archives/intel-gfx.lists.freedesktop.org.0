Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B5919BB46
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 07:17:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F9ED6E9C8;
	Thu,  2 Apr 2020 05:17:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com
 [IPv6:2607:f8b0:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 662656E9C8
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 05:17:52 +0000 (UTC)
Received: by mail-oi1-x244.google.com with SMTP id y71so1750334oia.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Apr 2020 22:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yaopb2+38ffnabaY1iGQbCJcAF6NzucQsEqlYOoZICA=;
 b=CJuGKSRuincdYZzqC1Ywm9DVBp0TESWlJgD9xqZAi8n0nR10VRzfRnDHT3w2yOTGmJ
 jhF3pEYND4pcD3BHZy1+44s9nQ0zw/Y0qc5/Vc/t/fdkCyZylZkhhLcYtxY/0HscU3ev
 wi03N3XeXgQluufBhD4YWcvy+nIrdLJlNmVu4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yaopb2+38ffnabaY1iGQbCJcAF6NzucQsEqlYOoZICA=;
 b=AP9kFCbEtHH85mc1ygrMBglgVb85e3Co5u94OOZptjMONocQJIuLKzJ8zl7ATe0NKF
 DUoi5TDmZN3OTTB1XcxuAhcbWHrwPKMz1rEt+eYHxAVc1cGFHGZqFLG0JzbY1pntb655
 EUiJOTt8TMoJO7PKpsEl25r0UQfLFPyXQw8DtGjHXHHzL2kcq3xox1JJVkCEcN6C/tAn
 hyXU2QbUOWKYipHTV9rUdq+8t+werch+36nY/MMdbLERH4SVl8knUqYnr/IpEIo7FuJZ
 0OZg8kSfWsZgnan5aw8IFxZ6rfSq6wha/2tJaw96smvJ/kYAKOccbC8galVQwmwlQuO7
 +v+w==
X-Gm-Message-State: AGi0PuaG1c4mLB5e0s60EW9fBZc3wHPeiBhe0t2ljqO30qfDTBCr2jtx
 e0OZJRR65CTPM6vFvmeUwiVecU4UwdI5/FksTXyXLw==
X-Google-Smtp-Source: APiQypKQ0j5YphFaRGLzuS4n5B5gFRIUkAV1wCD6KenkTlZ63BjGHxN6OJejgIW3SqqZh/6dVCCcQQ6b9LCtcNew+cY=
X-Received: by 2002:a54:4189:: with SMTP id 9mr1060147oiy.128.1585804671561;
 Wed, 01 Apr 2020 22:17:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
 <20200323144950.3018436-20-daniel.vetter@ffwll.ch>
 <20200402005008.GA18964@pendragon.ideasonboard.com>
In-Reply-To: <20200402005008.GA18964@pendragon.ideasonboard.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 2 Apr 2020 07:17:40 +0200
Message-ID: <CAKMK7uGqNEdaxLcpeW9sp-NM_OfOyL-duNzp_XN1WOHdOS3HfQ@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [Intel-gfx] [PATCH 19/51] drm: Cleanups after
 drmm_add_final_kfree rollout
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
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 2, 2020 at 2:50 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Daniel,
>
> (On a side note, git-format-patch accepts a -v argument to specify the
> version, I didn't realize you were not aware of it :-))
>
> On Mon, Mar 23, 2020 at 03:49:18PM +0100, Daniel Vetter wrote:
> > A few things:
> > - Update the example driver in the documentation.
> > - We can drop the old kfree in drm_dev_release.
> > - Add a WARN_ON check in drm_dev_register to make sure everyone calls
> >   drmm_add_final_kfree and there's no leaks.
> >
> > v2: Restore the full cleanup, I accidentally left some moved code
> > behind when fixing the bisectability of the series.
> >
> > Acked-by: Sam Ravnborg <sam@ravnborg.org>
> > Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
> > Cc: Sam Ravnborg <sam@ravnborg.org>
> > Cc: Dan Carpenter <dan.carpenter@oracle.com>
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > ---
> >  drivers/gpu/drm/drm_drv.c | 12 +++++-------
> >  1 file changed, 5 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
> > index 877ded348b6e..7f9d7ea543a0 100644
> > --- a/drivers/gpu/drm/drm_drv.c
> > +++ b/drivers/gpu/drm/drm_drv.c
> > @@ -297,8 +297,6 @@ void drm_minor_release(struct drm_minor *minor)
> >   *
> >   *           drm_mode_config_cleanup(drm);
> >   *           drm_dev_fini(drm);
> > - *           kfree(priv->userspace_facing);
> > - *           kfree(priv);
> >   *   }
> >   *
> >   *   static struct drm_driver driver_drm_driver = {
> > @@ -326,10 +324,11 @@ void drm_minor_release(struct drm_minor *minor)
> >   *                   kfree(drm);
> >   *                   return ret;
> >   *           }
> > + *           drmm_add_final_kfree(drm, priv);
> >   *
> >   *           drm_mode_config_init(drm);
> >   *
> > - *           priv->userspace_facing = kzalloc(..., GFP_KERNEL);
> > + *           priv->userspace_facing = drmm_kzalloc(..., GFP_KERNEL);
> >   *           if (!priv->userspace_facing)
> >   *                   return -ENOMEM;
> >   *
> > @@ -837,10 +836,7 @@ static void drm_dev_release(struct kref *ref)
> >
> >       drm_managed_release(dev);
> >
> > -     if (!dev->driver->release && !dev->managed.final_kfree) {
> > -             WARN_ON(!list_empty(&dev->managed.resources));
> > -             kfree(dev);
> > -     } else if (dev->managed.final_kfree)
> > +     if (dev->managed.final_kfree)
> >               kfree(dev->managed.final_kfree);
> >  }
> >
> > @@ -961,6 +957,8 @@ int drm_dev_register(struct drm_device *dev, unsigned long flags)
> >       if (!driver->load)
> >               drm_mode_config_validate(dev);
> >
> > +     WARN_ON(!dev->managed.final_kfree);
>
> That's too aggressive. Driver freeing their private object in .release()
> isn't wrong. I'd even go as far as saying that it should be the norm,
> until we manage to find a better way to handle that (which this series
> doesn't achieve). Many drivers need to allocate resources at probe time
> before they get a chance to init the drm device. Those resources must be
> released in the error handling paths of probe. By requiring
> drmm_add_final_kfree(), you're making that much more complex. I can't
> release those resources in the error path anymore after calling
> drmm_add_final_kfree(), or they will be released twice. And I can't rely
> on drmm_* to release them in all cases, as the error path may be hit
> before touching anything drm-related.
>
> Until we figure out a good way forward and test it on a significant
> number of drivers, let's not add WARN_ON() that will be hit with the
> majority of drivers, forcing them to be converted to something that is
> clearly half-baked.

Hm, is this conjecture, or did you actually hit this WARN_ON with a
driver? Because I did audit them all, none should hit this, all are
fixed up.

Also, I'm now actually going through all the places where I've added
the drmm_add_final_kfree and remove it again, they are _all_ about 5
lines after the kzalloc that allocates the driver structure which has
drm_device embedded.

So I'd like to understand where you get your seemingly rather sure
convinction from that this is a horrible mistake here ...

/me confused
-Daniel

>
> > +
> >       if (drm_dev_needs_global_mutex(dev))
> >               mutex_lock(&drm_global_mutex);
> >
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
