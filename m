Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 025163B7E95
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 10:02:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3D606E946;
	Wed, 30 Jun 2021 08:02:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com
 [IPv6:2607:f8b0:4864:20::22d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13C706E94B
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Jun 2021 08:02:34 +0000 (UTC)
Received: by mail-oi1-x22d.google.com with SMTP id h9so2098059oih.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Jun 2021 01:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uV4z3RFqGeJeaafqJz/eFARcsrLZ3bTibOTkwFTwAD4=;
 b=VMBMGG6RtQs1PvPg7HINvr9vCr1+kPe9nZlfr98YiJybOf5GVRU/0gF/te0ldgl9Ff
 xKLJ0ojBa/LLYues7nWFluXQ7sTlrWQOUHuv4MdZmjxrZNLHFtggCXY2MZPzwHb7/m7b
 t0tpVpXW8q2QcBcc6r5uKXFVbHvf4MjHE1qQM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uV4z3RFqGeJeaafqJz/eFARcsrLZ3bTibOTkwFTwAD4=;
 b=cOcGOSj9NUEficVn0OwL/XM6GX+uUquYNcjk+IjXAXLR+mgjRvgvqbDFFHhwu87ZSM
 AsYC61gCnVR/F4ZNRd7vF6UlLQV4O2pY4tOj69/s9NGUKy75OpP1re7OGwrUInWTqvRD
 somgA47xLw14tpBCf6hoH4rJbIiJSVoyNiQ0I+R5Niiu5esf7gyHgoy6Ku9dkHgpN9Pi
 lWac295wBhhbVwJfBWU1j1X6iUi779PtVCp6debBUs2TmxFVEFFYlKqoDBSF2eW5SEMl
 /hfGq9ekPlQTZuI2RyGdk+0bkzoaXOfuIAAjNuDBzG2L4F7nMi9/yMU1QIDy0WOQlaOk
 FsZQ==
X-Gm-Message-State: AOAM531zIDcfqaS+a+iFSIcfudTyOSbx0D8w2/BPIo+5jWT078tFGOLf
 haljLSJmiX3ToMWuWUA04RIwl9M4wfuve+OoCLDKGIWuFqs=
X-Google-Smtp-Source: ABdhPJza1q0JS4amZxpNekiLW82M8oZyXDSrZXVY/qRWwL6181B3YBrr55487+2cmhnQ/rPr9KV2efdQpA76/YExCKI=
X-Received: by 2002:aca:1a0c:: with SMTP id a12mr2071838oia.14.1625040153265; 
 Wed, 30 Jun 2021 01:02:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210629033706.20537-1-desmondcheongzx@gmail.com>
 <20210629033706.20537-4-desmondcheongzx@gmail.com>
 <YNtFJhUw0U2s1TW0@phenom.ffwll.local>
 <c71a4521-ed0e-7033-0301-3db116876a47@gmail.com>
In-Reply-To: <c71a4521-ed0e-7033-0301-3db116876a47@gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 30 Jun 2021 10:02:21 +0200
Message-ID: <CAKMK7uF0drbOO6=06+c_NM2saLuCEmm-=KTMrcwg9LkTcW2qww@mail.gmail.com>
To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
Subject: Re: [Intel-gfx] [PATCH v5 3/3] drm: protect drm_master pointers in
 drm_lease.c
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
Cc: Dave Airlie <airlied@linux.ie>, Greg KH <gregkh@linuxfoundation.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Shuah Khan <skhan@linuxfoundation.org>,
 linux-kernel-mentees@lists.linuxfoundation.org,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 30, 2021 at 9:18 AM Desmond Cheong Zhi Xi
<desmondcheongzx@gmail.com> wrote:
>
> On 30/6/21 12:07 am, Daniel Vetter wrote:
> > On Tue, Jun 29, 2021 at 11:37:06AM +0800, Desmond Cheong Zhi Xi wrote:
> >> Currently, direct copies of drm_file->master pointers should be
> >> protected by drm_device.master_mutex when being dereferenced. This is
> >> because drm_file->master is not invariant for the lifetime of
> >> drm_file. If drm_file is not the creator of master, then
> >> drm_file->is_master is false, and a call to drm_setmaster_ioctl will
> >> invoke drm_new_set_master, which then allocates a new master for
> >> drm_file and puts the old master.
> >>
> >> Thus, without holding drm_device.master_mutex, the old value of
> >> drm_file->master could be freed while it is being used by another
> >> concurrent process.
> >>
> >> In drm_lease.c, there are multiple instances where drm_file->master is
> >> accessed and dereferenced while drm_device.master_mutex is not
> >> held. This makes drm_lease.c vulnerable to use-after-free bugs.
> >>
> >> We address this issue in 3 ways:
> >>
> >> 1. Clarify in the kerneldoc that drm_file->master is protected by
> >> drm_device.master_mutex.
> >>
> >> 2. Add a new drm_file_get_master() function that calls drm_master_get
> >> on drm_file->master while holding on to drm_device.master_mutex. Since
> >> drm_master_get increments the reference count of master, this
> >> prevents master from being freed until we unreference it with
> >> drm_master_put.
> >>
> >> 3. In each case where drm_file->master is directly accessed and
> >> eventually dereferenced in drm_lease.c, we wrap the access in a call
> >> to the new drm_file_get_master function, then unreference the master
> >> pointer once we are done using it.
> >>
> >> Reported-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> >> Signed-off-by: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
> >
> > Series looks very nice, let's see what intel-gfx-ci says. You should get a
> > mail, but results are also here:
> >
> > https://patchwork.freedesktop.org/series/91969/#rev2
> >
> > One tiny comment below.
> >
> >> ---
> >>   drivers/gpu/drm/drm_auth.c  | 25 ++++++++++++
> >>   drivers/gpu/drm/drm_lease.c | 77 +++++++++++++++++++++++++++----------
> >>   include/drm/drm_auth.h      |  1 +
> >>   include/drm/drm_file.h      | 15 ++++++--
> >>   4 files changed, 95 insertions(+), 23 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/drm_auth.c b/drivers/gpu/drm/drm_auth.c
> >> index ab1863c5a5a0..c36a0b72be26 100644
> >> --- a/drivers/gpu/drm/drm_auth.c
> >> +++ b/drivers/gpu/drm/drm_auth.c
> >> @@ -384,6 +384,31 @@ struct drm_master *drm_master_get(struct drm_master *master)
> >>   }
> >>   EXPORT_SYMBOL(drm_master_get);
> >>
> >> +/**
> >> + * drm_file_get_master - reference &drm_file.master of @file_priv
> >> + * @file_priv: DRM file private
> >> + *
> >> + * Increments the reference count of @file_priv's &drm_file.master and returns
> >> + * the &drm_file.master. If @file_priv has no &drm_file.master, returns NULL.
> >> + *
> >> + * Master pointers returned from this function should be unreferenced using
> >> + * drm_master_put().
> >> + */
> >> +struct drm_master *drm_file_get_master(struct drm_file *file_priv)
> >> +{
> >> +    struct drm_master *master = NULL;
> >> +
> >> +    mutex_lock(&file_priv->minor->dev->master_mutex);
> >> +    if (!file_priv->master)
> >> +            goto unlock;
> >> +    master = drm_master_get(file_priv->master);
> >> +
> >> +unlock:
> >> +    mutex_unlock(&file_priv->minor->dev->master_mutex);
> >> +    return master;
> >> +}
> >> +EXPORT_SYMBOL(drm_file_get_master);
> >> +
> >>   static void drm_master_destroy(struct kref *kref)
> >>   {
> >>      struct drm_master *master = container_of(kref, struct drm_master, refcount);
> >> diff --git a/drivers/gpu/drm/drm_lease.c b/drivers/gpu/drm/drm_lease.c
> >> index 00fb433bcef1..cdcc87fa9685 100644
> >> --- a/drivers/gpu/drm/drm_lease.c
> >> +++ b/drivers/gpu/drm/drm_lease.c
> >> @@ -106,10 +106,19 @@ static bool _drm_has_leased(struct drm_master *master, int id)
> >>    */
> >>   bool _drm_lease_held(struct drm_file *file_priv, int id)
> >>   {
> >> -    if (!file_priv || !file_priv->master)
> >> +    bool ret;
> >> +    struct drm_master *master;
> >> +
> >> +    if (!file_priv)
> >>              return true;
> >>
> >> -    return _drm_lease_held_master(file_priv->master, id);
> >> +    master = drm_file_get_master(file_priv);
> >> +    if (master == NULL)
> >> +            return true;
> >> +    ret = _drm_lease_held_master(master, id);
> >> +    drm_master_put(&master);
> >> +
> >> +    return ret;
> >>   }
> >>
> >>   /**
> >> @@ -128,13 +137,20 @@ bool drm_lease_held(struct drm_file *file_priv, int id)
> >>      struct drm_master *master;
> >>      bool ret;
> >>
> >> -    if (!file_priv || !file_priv->master || !file_priv->master->lessor)
> >> +    if (!file_priv)
> >>              return true;
> >>
> >> -    master = file_priv->master;
> >> +    master = drm_file_get_master(file_priv);
> >> +    if (master == NULL)
> >> +            return true;
> >> +    if (!master->lessor) {
> >> +            drm_master_put(&master);
> >> +            return true;
> >> +    }
> >>      mutex_lock(&master->dev->mode_config.idr_mutex);
> >>      ret = _drm_lease_held_master(master, id);
> >>      mutex_unlock(&master->dev->mode_config.idr_mutex);
> >> +    drm_master_put(&master);
> >>      return ret;
> >>   }
> >>
> >> @@ -154,10 +170,16 @@ uint32_t drm_lease_filter_crtcs(struct drm_file *file_priv, uint32_t crtcs_in)
> >>      int count_in, count_out;
> >>      uint32_t crtcs_out = 0;
> >>
> >> -    if (!file_priv || !file_priv->master || !file_priv->master->lessor)
> >> +    if (!file_priv)
> >>              return crtcs_in;
> >>
> >> -    master = file_priv->master;
> >> +    master = drm_file_get_master(file_priv);
> >> +    if (master == NULL)
> >> +            return crtcs_in;
> >> +    if (!master->lessor) {
> >> +            drm_master_put(&master);
> >> +            return crtcs_in;
> >> +    }
> >>      dev = master->dev;
> >>
> >>      count_in = count_out = 0;
> >> @@ -176,6 +198,7 @@ uint32_t drm_lease_filter_crtcs(struct drm_file *file_priv, uint32_t crtcs_in)
> >>              count_in++;
> >>      }
> >>      mutex_unlock(&master->dev->mode_config.idr_mutex);
> >> +    drm_master_put(&master);
> >>      return crtcs_out;
> >>   }
> >>
> >> @@ -489,7 +512,7 @@ int drm_mode_create_lease_ioctl(struct drm_device *dev,
> >>      size_t object_count;
> >>      int ret = 0;
> >>      struct idr leases;
> >> -    struct drm_master *lessor = lessor_priv->master;
> >> +    struct drm_master *lessor;
> >>      struct drm_master *lessee = NULL;
> >>      struct file *lessee_file = NULL;
> >>      struct file *lessor_file = lessor_priv->filp;
> >> @@ -501,12 +524,6 @@ int drm_mode_create_lease_ioctl(struct drm_device *dev,
> >>      if (!drm_core_check_feature(dev, DRIVER_MODESET))
> >>              return -EOPNOTSUPP;
> >>
> >> -    /* Do not allow sub-leases */
> >> -    if (lessor->lessor) {
> >> -            DRM_DEBUG_LEASE("recursive leasing not allowed\n");
> >> -            return -EINVAL;
> >> -    }
> >> -
> >>      /* need some objects */
> >>      if (cl->object_count == 0) {
> >>              DRM_DEBUG_LEASE("no objects in lease\n");
> >> @@ -518,12 +535,22 @@ int drm_mode_create_lease_ioctl(struct drm_device *dev,
> >>              return -EINVAL;
> >>      }
> >>
> >> +    lessor = drm_file_get_master(lessor_priv);
> >> +    /* Do not allow sub-leases */
> >> +    if (lessor->lessor) {
> >> +            DRM_DEBUG_LEASE("recursive leasing not allowed\n");
> >> +            ret = -EINVAL;
> >> +            goto out_lessor;
> >> +    }
> >> +
> >>      object_count = cl->object_count;
> >>
> >>      object_ids = memdup_user(u64_to_user_ptr(cl->object_ids),
> >>                      array_size(object_count, sizeof(__u32)));
> >> -    if (IS_ERR(object_ids))
> >> -            return PTR_ERR(object_ids);
> >> +    if (IS_ERR(object_ids)) {
> >> +            ret = PTR_ERR(object_ids);
> >> +            goto out_lessor;
> >> +    }
> >>
> >>      idr_init(&leases);
> >>
> >> @@ -534,14 +561,15 @@ int drm_mode_create_lease_ioctl(struct drm_device *dev,
> >>      if (ret) {
> >>              DRM_DEBUG_LEASE("lease object lookup failed: %i\n", ret);
> >>              idr_destroy(&leases);
> >> -            return ret;
> >> +            goto out_lessor;
> >>      }
> >>
> >>      /* Allocate a file descriptor for the lease */
> >>      fd = get_unused_fd_flags(cl->flags & (O_CLOEXEC | O_NONBLOCK));
> >>      if (fd < 0) {
> >>              idr_destroy(&leases);
> >> -            return fd;
> >> +            ret = fd;
> >> +            goto out_lessor;
> >>      }
> >>
> >>      DRM_DEBUG_LEASE("Creating lease\n");
> >> @@ -577,6 +605,7 @@ int drm_mode_create_lease_ioctl(struct drm_device *dev,
> >>      /* Hook up the fd */
> >>      fd_install(fd, lessee_file);
> >>
> >> +    drm_master_put(&lessor);
> >>      DRM_DEBUG_LEASE("drm_mode_create_lease_ioctl succeeded\n");
> >>      return 0;
> >>
> >> @@ -586,6 +615,8 @@ int drm_mode_create_lease_ioctl(struct drm_device *dev,
> >>   out_leases:
> >>      put_unused_fd(fd);
> >>
> >> +out_lessor:
> >> +    drm_master_put(&lessor);
> >>      DRM_DEBUG_LEASE("drm_mode_create_lease_ioctl failed: %d\n", ret);
> >>      return ret;
> >>   }
> >> @@ -608,7 +639,7 @@ int drm_mode_list_lessees_ioctl(struct drm_device *dev,
> >>      struct drm_mode_list_lessees *arg = data;
> >>      __u32 __user *lessee_ids = (__u32 __user *) (uintptr_t) (arg->lessees_ptr);
> >>      __u32 count_lessees = arg->count_lessees;
> >> -    struct drm_master *lessor = lessor_priv->master, *lessee;
> >> +    struct drm_master *lessor, *lessee;
> >>      int count;
> >>      int ret = 0;
> >>
> >> @@ -619,6 +650,7 @@ int drm_mode_list_lessees_ioctl(struct drm_device *dev,
> >>      if (!drm_core_check_feature(dev, DRIVER_MODESET))
> >>              return -EOPNOTSUPP;
> >>
> >> +    lessor = drm_file_get_master(lessor_priv);
> >>      DRM_DEBUG_LEASE("List lessees for %d\n", lessor->lessee_id);
> >>
> >>      mutex_lock(&dev->mode_config.idr_mutex);
> >> @@ -642,6 +674,7 @@ int drm_mode_list_lessees_ioctl(struct drm_device *dev,
> >>              arg->count_lessees = count;
> >>
> >>      mutex_unlock(&dev->mode_config.idr_mutex);
> >> +    drm_master_put(&lessor);
> >>
> >>      return ret;
> >>   }
> >> @@ -661,7 +694,7 @@ int drm_mode_get_lease_ioctl(struct drm_device *dev,
> >>      struct drm_mode_get_lease *arg = data;
> >>      __u32 __user *object_ids = (__u32 __user *) (uintptr_t) (arg->objects_ptr);
> >>      __u32 count_objects = arg->count_objects;
> >> -    struct drm_master *lessee = lessee_priv->master;
> >> +    struct drm_master *lessee;
> >>      struct idr *object_idr;
> >>      int count;
> >>      void *entry;
> >> @@ -675,6 +708,7 @@ int drm_mode_get_lease_ioctl(struct drm_device *dev,
> >>      if (!drm_core_check_feature(dev, DRIVER_MODESET))
> >>              return -EOPNOTSUPP;
> >>
> >> +    lessee = drm_file_get_master(lessee_priv);
> >>      DRM_DEBUG_LEASE("get lease for %d\n", lessee->lessee_id);
> >>
> >>      mutex_lock(&dev->mode_config.idr_mutex);
> >> @@ -702,6 +736,7 @@ int drm_mode_get_lease_ioctl(struct drm_device *dev,
> >>              arg->count_objects = count;
> >>
> >>      mutex_unlock(&dev->mode_config.idr_mutex);
> >> +    drm_master_put(&lessee);
> >>
> >>      return ret;
> >>   }
> >> @@ -720,7 +755,7 @@ int drm_mode_revoke_lease_ioctl(struct drm_device *dev,
> >>                              void *data, struct drm_file *lessor_priv)
> >>   {
> >>      struct drm_mode_revoke_lease *arg = data;
> >> -    struct drm_master *lessor = lessor_priv->master;
> >> +    struct drm_master *lessor;
> >>      struct drm_master *lessee;
> >>      int ret = 0;
> >>
> >> @@ -730,6 +765,7 @@ int drm_mode_revoke_lease_ioctl(struct drm_device *dev,
> >>      if (!drm_core_check_feature(dev, DRIVER_MODESET))
> >>              return -EOPNOTSUPP;
> >>
> >> +    lessor = drm_file_get_master(lessor_priv);
> >>      mutex_lock(&dev->mode_config.idr_mutex);
> >>
> >>      lessee = _drm_find_lessee(lessor, arg->lessee_id);
> >> @@ -750,6 +786,7 @@ int drm_mode_revoke_lease_ioctl(struct drm_device *dev,
> >>
> >>   fail:
> >>      mutex_unlock(&dev->mode_config.idr_mutex);
> >> +    drm_master_put(&lessor);
> >>
> >>      return ret;
> >>   }
> >> diff --git a/include/drm/drm_auth.h b/include/drm/drm_auth.h
> >> index 6bf8b2b78991..f99d3417f304 100644
> >> --- a/include/drm/drm_auth.h
> >> +++ b/include/drm/drm_auth.h
> >> @@ -107,6 +107,7 @@ struct drm_master {
> >>   };
> >>
> >>   struct drm_master *drm_master_get(struct drm_master *master);
> >> +struct drm_master *drm_file_get_master(struct drm_file *file_priv);
> >>   void drm_master_put(struct drm_master **master);
> >>   bool drm_is_current_master(struct drm_file *fpriv);
> >>
> >> diff --git a/include/drm/drm_file.h b/include/drm/drm_file.h
> >> index b81b3bfb08c8..e9931fca4ab7 100644
> >> --- a/include/drm/drm_file.h
> >> +++ b/include/drm/drm_file.h
> >> @@ -226,9 +226,18 @@ struct drm_file {
> >>      /**
> >>       * @master:
> >>       *
> >> -     * Master this node is currently associated with. Only relevant if
> >> -     * drm_is_primary_client() returns true. Note that this only
> >> -     * matches &drm_device.master if the master is the currently active one.
> >> +     * Master this node is currently associated with. Protected by struct
> >> +     * &drm_device.master_mutex.
> >> +     *
> >> +     * Only relevant if drm_is_primary_client() returns true. Note that
> >> +     * this only matches &drm_device.master if the master is the currently
> >> +     * active one.
> >> +     *
> >> +     * When obtaining a copy of this pointer, it is recommended to either
> >
> > I found this a bit confusing, since I generally don't think of
> > dereferencing the pointer as "taking a copy". That's more for the entire
> > datastructure when you have a memcpy() call, or kmemdup() or something
> > like that. Also "it is recommended" is a bit weak if you get a
> > use-after-free if you dont :-)
> >
> > So instead "When dererencing this pointer either hold ... or use
> > drm_file_get_master() ...."
> >
> > Cheers, Daniel
> >
> >> +     * hold struct &drm_device.master_mutex for the duration of the
> >> +     * pointer's use, or to use drm_file_get_master() if struct
> >> +     * &drm_device.master_mutex is not currently held and there is no other
> >> +     * need to hold it. This prevents @master from being freed during use.
> >>       *
> >>       * See also @authentication and @is_master and the :ref:`section on
> >>       * primary nodes and authentication <drm_primary_node>`.
> >> --
> >> 2.25.1
> >>
> >
>
> Hi Daniel,
>
> Thanks for the suggestion, I'll clarify the kerneldoc accordingly.
>
> Regarding the results from intel-gfx-ci, it seems that the patch is
> inverting the lock hierarchy for
> &dev->master_mutex --> &dev->mode_config.idr_mutex
>
> Currently the dmesg warnings share a common call trace:
> drm_file_get_master+0x1b/0x70
> _drm_lease_held+0x21/0x70
> __drm_mode_object_find+0xd1/0xe0
>
> Looking at the functions that lock &dev->mode_config.idr_mutex, this
> should be the only instance of this lock order inversion.
>
> I'm thinking the call to _drm_lease_held can be moved outside of the
> &dev->mode_config.idr_mutex lock in __drm_mode_object. Any thoughts?

Uh very annoying. One of the callers of this is the atomic ioctl,
where we're calling this while holding drm_modeset_lock. The nesting
hierarchy is, from outermost lock to innermost: dev->master_mutex ->
dev->mode_config.mutex -> drm_modeset_lock. So I think we'll again
have an inversion, just moved it a bit :-(

But I'm also not 100% sure, so maybe type it up and see what happens?
Otherwise I think we need to figure out a solution for how we can
check leases without having to take the dev->master_mutex that
serializes a lot more things ... I think the fundamental problem we
have here is that dev->master_mutex serves 2 purposes: a) protecting
the pointers and just data consistency and b) synchronizing against
concurrent master changes where we think that's required. It's the
latter (through the fbdev emulation code) that causes all the
inversion problems, a) it's could easily nest very deeply in other
locks.

> diff --git a/drivers/gpu/drm/drm_mode_object.c
> b/drivers/gpu/drm/drm_mode_object.c
> index b26588b52795..63d35f1f98dd 100644
> --- a/drivers/gpu/drm/drm_mode_object.c
> +++ b/drivers/gpu/drm/drm_mode_object.c
> @@ -146,16 +146,18 @@ struct drm_mode_object
> *__drm_mode_object_find(struct drm_device *dev,
>          if (obj && obj->id != id)
>                  obj = NULL;
>
> -       if (obj && drm_mode_object_lease_required(obj->type) &&
> -           !_drm_lease_held(file_priv, obj->id))
> -               obj = NULL;
> -
>          if (obj && obj->free_cb) {
>                  if (!kref_get_unless_zero(&obj->refcount))
>                          obj = NULL;
>          }
>          mutex_unlock(&dev->mode_config.idr_mutex);
>
> +       if (obj && drm_mode_object_lease_required(obj->type) &&
> +               !_drm_lease_held(file_priv, obj->id)) {
> +               drm_mode_object_put(obj);
> +               obj = NULL;
> +       }

Irrespective of all this I think this change here makes sense since in
untangels the master stuff from the lookup idr, and that's always
good. Maybe do this hunk as a separate patch, and I'll apply that as
prep work?
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
