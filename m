Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B1316488B
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 16:28:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AD7E6E0DF;
	Wed, 19 Feb 2020 15:28:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com
 [IPv6:2607:f8b0:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4017B6EC22
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 15:28:09 +0000 (UTC)
Received: by mail-ot1-x343.google.com with SMTP id z9so503088oth.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 07:28:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i/f38oqt5/FLpzjdTdnMTXjrQCdMVaM5ZjRcR5p/Nso=;
 b=M61bWDxGKhYRqnHGOlsy2usrIDGaHJm+wiqgtgPcco7nxN+dKiMTEqmWJN9IVpeGuF
 0VW0RjYoCaXzddbz3BncE6F1LjdUqv6GQJHq58UaNEFyyFlEalzwYsEunmRTkLPkRgko
 6/EPBf2IkO5Ci8e+jkx0db7coiMUBUd5d6TWk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i/f38oqt5/FLpzjdTdnMTXjrQCdMVaM5ZjRcR5p/Nso=;
 b=NiBzeDDGKslUen5P7rO2qkTNxJTEoeEDeLelp4zr3Jm/46grBaC24R74/jD+hsTfev
 hAt1xGk9+86uoCBVJaJ768c7q6EPmc3txJ1JCeD50GfXqmoHHfiH2U4caaW1JXsEG+3b
 6gs+JIGva8P1VLHVyrlAjlbp6yDd7GW7A7nUwI0nfU418THbffkXIN1vF9b5znRZEi8q
 GllXZQ0+yjsUveSTuGmh0lesTwaSB0FDNPjeK6AHWEb6gGWgxgQCl4cpjrncFnEq2YNr
 AS7KHsfaou06US7Gw7+1qSWi/9MUdJQ11Reyp2CyOQRIpJpZo7F1J3GOCBCSH8P1KXUg
 1Q+A==
X-Gm-Message-State: APjAAAVPnEE3t0Iv9HtSp1zzLZqvIzo/TjP8xu9EBEhRPwcCl3gp2JW3
 i47ThGSn5gynD9IkVP6bRbcV7CwuSyxecReBsutQpg==
X-Google-Smtp-Source: APXvYqyddeKiwOQ/ovdnTp/bGSEJVEaFpXewMdMeRvrK+uH7uS+D/56moMuiHOAdst5cdcU54o6dEITV+XXiazq4es4=
X-Received: by 2002:a9d:7f11:: with SMTP id j17mr21289407otq.281.1582126088255; 
 Wed, 19 Feb 2020 07:28:08 -0800 (PST)
MIME-Version: 1.0
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
 <20200219102122.1607365-23-daniel.vetter@ffwll.ch>
 <20200219143537.GM5070@pendragon.ideasonboard.com>
In-Reply-To: <20200219143537.GM5070@pendragon.ideasonboard.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 19 Feb 2020 16:27:57 +0100
Message-ID: <CAKMK7uEhvT2MWfcwQDVpUZ86bgV78CMoj9wCPbeb+kLk8s9yJA@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [Intel-gfx] [PATCH 22/52] drm: Use drmm_ for drm_dev_init
 cleanup
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

On Wed, Feb 19, 2020 at 3:35 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Daniel,
>
> Thank you for the patch.
>
> On Wed, Feb 19, 2020 at 11:20:52AM +0100, Daniel Vetter wrote:
> > Well for the simple stuff at least, vblank, gem and minor cleanup I
> > want to further split up as a demonstration.
> >
> > v2: We need to clear drm_device->dev otherwise the debug drm printing
> > after our cleanup hook (e.g. in drm_manged_release) will chase
> > released memory and result in a use-after-free. Not really pretty, but
> > oh well.
> >
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > ---
> >  drivers/gpu/drm/drm_drv.c | 48 ++++++++++++++++++++-------------------
> >  1 file changed, 25 insertions(+), 23 deletions(-)
>
> Is the managed API overhead, coupled with the fact that the code size
> doesn't get reduced, worth it for core code ?

I've mostly done this as an example, to show how if you do this
consistently, you can drop a few if (is_it_set_up) checks and remove
the onion unwinding with lots of gotos. I do think it's worth it from
that pov, since long-term I want to get to a world where everything
related to drm_device gets unwound with drmm_ actions. The logging
output becomes fairly nice if you enable it :-)

But yeah stand-alone it's not a good pitch. Heck even the overall
patch series is still a net loss I think, simply because this is just
the bare minimum to get started.
-Daniel

> > diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
> > index 782fd5d6f8b2..1f7ab88d9435 100644
> > --- a/drivers/gpu/drm/drm_drv.c
> > +++ b/drivers/gpu/drm/drm_drv.c
> > @@ -580,6 +580,23 @@ static void drm_fs_inode_free(struct inode *inode)
> >   *    used.
> >   */
> >
> > +static void drm_dev_init_release(struct drm_device *dev, void *res)
> > +{
> > +     drm_legacy_ctxbitmap_cleanup(dev);
> > +     drm_legacy_remove_map_hash(dev);
> > +     drm_fs_inode_free(dev->anon_inode);
> > +
> > +     put_device(dev->dev);
> > +     /* Prevent use-after-free in drm_managed_release when debugging is
> > +      * enabled. Slightly awkward, but can't really be helped. */
> > +     dev->dev = NULL;
> > +     mutex_destroy(&dev->master_mutex);
> > +     mutex_destroy(&dev->clientlist_mutex);
> > +     mutex_destroy(&dev->filelist_mutex);
> > +     mutex_destroy(&dev->struct_mutex);
> > +     drm_legacy_destroy_members(dev);
> > +}
> > +
> >  /**
> >   * drm_dev_init - Initialise new DRM device
> >   * @dev: DRM device
> > @@ -647,11 +664,15 @@ int drm_dev_init(struct drm_device *dev,
> >       mutex_init(&dev->clientlist_mutex);
> >       mutex_init(&dev->master_mutex);
> >
> > +     ret = drmm_add_action(dev, drm_dev_init_release, NULL);
> > +     if (ret)
> > +             return ret;
> > +
> >       dev->anon_inode = drm_fs_inode_new();
> >       if (IS_ERR(dev->anon_inode)) {
> >               ret = PTR_ERR(dev->anon_inode);
> >               DRM_ERROR("Cannot allocate anonymous inode: %d\n", ret);
> > -             goto err_free;
> > +             goto err;
> >       }
> >
> >       if (drm_core_check_feature(dev, DRIVER_RENDER)) {
> > @@ -688,19 +709,12 @@ int drm_dev_init(struct drm_device *dev,
> >       if (drm_core_check_feature(dev, DRIVER_GEM))
> >               drm_gem_destroy(dev);
> >  err_ctxbitmap:
> > -     drm_legacy_ctxbitmap_cleanup(dev);
> > -     drm_legacy_remove_map_hash(dev);
> >  err_minors:
> >       drm_minor_free(dev, DRM_MINOR_PRIMARY);
> >       drm_minor_free(dev, DRM_MINOR_RENDER);
> > -     drm_fs_inode_free(dev->anon_inode);
> > -err_free:
> > -     put_device(dev->dev);
> > -     mutex_destroy(&dev->master_mutex);
> > -     mutex_destroy(&dev->clientlist_mutex);
> > -     mutex_destroy(&dev->filelist_mutex);
> > -     mutex_destroy(&dev->struct_mutex);
> > -     drm_legacy_destroy_members(dev);
> > +err:
> > +     drm_managed_release(dev);
> > +
> >       return ret;
> >  }
> >  EXPORT_SYMBOL(drm_dev_init);
> > @@ -763,20 +777,8 @@ void drm_dev_fini(struct drm_device *dev)
> >       if (drm_core_check_feature(dev, DRIVER_GEM))
> >               drm_gem_destroy(dev);
> >
> > -     drm_legacy_ctxbitmap_cleanup(dev);
> > -     drm_legacy_remove_map_hash(dev);
> > -     drm_fs_inode_free(dev->anon_inode);
> > -
> >       drm_minor_free(dev, DRM_MINOR_PRIMARY);
> >       drm_minor_free(dev, DRM_MINOR_RENDER);
> > -
> > -     put_device(dev->dev);
> > -
> > -     mutex_destroy(&dev->master_mutex);
> > -     mutex_destroy(&dev->clientlist_mutex);
> > -     mutex_destroy(&dev->filelist_mutex);
> > -     mutex_destroy(&dev->struct_mutex);
> > -     drm_legacy_destroy_members(dev);
> >  }
> >  EXPORT_SYMBOL(drm_dev_fini);
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
