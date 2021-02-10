Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC6E316705
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Feb 2021 13:46:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CDF56E161;
	Wed, 10 Feb 2021 12:46:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91EDC6E283
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Feb 2021 12:46:01 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id z6so2338362wrq.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Feb 2021 04:46:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Rum60VafaxlPAbiRsaYr/mrmV1krBfLh/3W2IYL9TJU=;
 b=cNgfqlzpYh6Dvez+FOYeoCbiQ3L1YjnDX3dHfkb84DKmr1b6KDoW9WhiKQIjnvtK4z
 J+TJe1Ug8vVoPhZDx+qZrdHRhLbuSQa8xXbJpAuzBCsPXJAxSviNxwX4aYY+7bW3p5XU
 ZRhR8v/bpXuELMHojpUsjzyoPO85NlEcIqc0k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Rum60VafaxlPAbiRsaYr/mrmV1krBfLh/3W2IYL9TJU=;
 b=Ly31n7f7NoTMcD8kos15UD82JfH6aAlZguBkO88wbixgRpAKS+4YJrZTfMeGKEuZsr
 i/n9F7DdH4z66oJnehlBx3VXWG+EAwu7bSXUt5TcGy7L+VYtmmSHI8i0GmHVnP9g06aD
 AsuOv81te1h2AIqx/RJXMM8ky7rOwfsQLt4SHapoJ37gG+1Rsf1YeRwtTnDH1NansN66
 o/k7c0QyTaI2gfUmiUGSn3WVAIH4wb5B/Hjay4GdSJ5cYxnTwK1d2+ve/lwwc09KU1Oq
 mhgLlNaczJlDu0CBNIPR5KdXsmywdWGBk61VFAKKhA4BzlCs/NNxOADY5mek+ad51s4R
 fCsA==
X-Gm-Message-State: AOAM533UREQ4JXQSxs3GXm5A97WSnm26IP82gp7wPp3JlTgS7QRvNEMt
 p9G3gD41X37ZALRm3adqa+UKgQ==
X-Google-Smtp-Source: ABdhPJxJrAvgSXX5w7P1juJ8Jbk+pBUHP84DH+1F8ehtKz9QqG6WckIdOgsKZbFxS7mzeDziW06siA==
X-Received: by 2002:a05:6000:4e:: with SMTP id
 k14mr3432513wrx.281.1612961160148; 
 Wed, 10 Feb 2021 04:46:00 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d5sm3196863wrb.14.2021.02.10.04.45.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 04:45:59 -0800 (PST)
Date: Wed, 10 Feb 2021 13:45:57 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <YCPVhc+HwiMhfjdF@phenom.ffwll.local>
References: <20210126214626.16260-1-brian.welty@intel.com>
 <20210126214626.16260-9-brian.welty@intel.com>
 <YCJp//kMC7YjVMXv@phenom.ffwll.local>
 <faeaef17-3656-ca31-3be9-49354db3116e@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <faeaef17-3656-ca31-3be9-49354db3116e@suse.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [RFC PATCH 8/9] drm/gem: Associate GEM objects with
 drm cgroup
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
Cc: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 David Airlie <airlied@linux.ie>, Kenny Ho <Kenny.Ho@amd.com>,
 Eero Tamminen <eero.t.tamminen@intel.com>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, amd-gfx@lists.freedesktop.org,
 Tejun Heo <tj@kernel.org>, cgroups@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 10, 2021 at 08:52:29AM +0100, Thomas Zimmermann wrote:
> Hi
> =

> Am 09.02.21 um 11:54 schrieb Daniel Vetter:
> > *: vmwgfx is the only non-gem driver, but there's plans to move at least
> > vmwgfx internals (maybe not the uapi, we'll see) over to gem. Once that=
's
> > done it's truly all gpu memory.
> =

> Do you have a URL to the discussion?
> =

> While I recent worked on GEM, I thought that vmwgfx could easily switch to
> the GEM internals without adopting the interface.

Zack Rusin pinged me on irc I think, not sure there's anything on
dri-devel. zackr on freenode. I think he's working on this already.

> Personally, I think we should consider renaming struct drm_gem_object et =
al.
> It's not strictly GEM UAPI, but nowadays anything memory-related. Maybe
> drm_mem_object would fit.

I think abbrevations we've created that have been around for long enough
can stay. Otherwise we'd need to rename drm into something less confusing
too :-)

So gem just becomes the buffer based memory management thing in drm, which
is the accelerator and display framework in upstream. And ttm is our
memory manager for discrete gpus - ttm means translation table manager,
and that part just got moved out as a helper so drivers call we needed :-)

I mean we haven't even managed to rename the cma helpers to dma helpers.
The one thing we did manage is rename struct fence to struct dma_fence,
because no prefix was just really bad naming accident.

Cheers, Daniel

> =

> Best regards
> Thomas
> =

> > > ---
> > >   drivers/gpu/drm/drm_gem.c | 89 ++++++++++++++++++++++++++++++++++++=
+++
> > >   include/drm/drm_gem.h     | 17 ++++++++
> > >   2 files changed, 106 insertions(+)
> > > =

> > > diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> > > index c2ce78c4edc3..a12da41eaafe 100644
> > > --- a/drivers/gpu/drm/drm_gem.c
> > > +++ b/drivers/gpu/drm/drm_gem.c
> > > @@ -29,6 +29,7 @@
> > >   #include <linux/slab.h>
> > >   #include <linux/mm.h>
> > >   #include <linux/uaccess.h>
> > > +#include <linux/cgroup_drm.h>
> > >   #include <linux/fs.h>
> > >   #include <linux/file.h>
> > >   #include <linux/module.h>
> > > @@ -112,6 +113,89 @@ drm_gem_init(struct drm_device *dev)
> > >   	return drmm_add_action(dev, drm_gem_init_release, NULL);
> > >   }
> > > +/**
> > > + * drm_gem_object_set_cgroup - associate GEM object with a cgroup
> > > + * @obj: GEM object which is being associated with a cgroup
> > > + * @task: task associated with process control group to use
> > > + *
> > > + * This will acquire a reference on cgroup and use for charging GEM
> > > + * memory allocations.
> > > + * This helper could be extended in future to migrate charges to ano=
ther
> > > + * cgroup, print warning if this usage occurs.
> > > + */
> > > +void drm_gem_object_set_cgroup(struct drm_gem_object *obj,
> > > +			       struct task_struct *task)
> > > +{
> > > +	/* if object has existing cgroup, we migrate the charge... */
> > > +	if (obj->drmcg) {
> > > +		pr_warn("DRM: need to migrate cgroup charge of %lld\n",
> > > +			atomic64_read(&obj->drmcg_bytes_charged));
> > > +	}
> > > +	obj->drmcg =3D drmcg_get(task);
> > > +}
> > > +EXPORT_SYMBOL(drm_gem_object_set_cgroup);
> > > +
> > > +/**
> > > + * drm_gem_object_unset_cgroup - clear GEM object's associated cgroup
> > > + * @obj: GEM object
> > > + *
> > > + * This will release a reference on cgroup.
> > > + */
> > > +void drm_gem_object_unset_cgroup(struct drm_gem_object *obj)
> > > +{
> > > +	WARN_ON(atomic64_read(&obj->drmcg_bytes_charged));
> > > +	drmcg_put(obj->drmcg);
> > > +}
> > > +EXPORT_SYMBOL(drm_gem_object_unset_cgroup);
> > > +
> > > +/**
> > > + * drm_gem_object_charge_mem - try charging size bytes to DRM cgroup
> > > + * @obj: GEM object which is being charged
> > > + * @size: number of bytes to charge
> > > + *
> > > + * Try to charge @size bytes to GEM object's associated DRM cgroup. =
 This
> > > + * will fail if a successful charge would cause the current device m=
emory
> > > + * usage to go above the cgroup's GPU memory maximum limit.
> > > + *
> > > + * Returns 0 on success.  Otherwise, an error code is returned.
> > > + */
> > > +int drm_gem_object_charge_mem(struct drm_gem_object *obj, u64 size)
> > > +{
> > > +	int ret;
> > > +
> > > +	ret =3D drm_cgroup_try_charge(obj->drmcg, obj->dev,
> > > +				    DRMCG_TYPE_MEM_CURRENT, size);
> > > +	if (!ret)
> > > +		atomic64_add(size, &obj->drmcg_bytes_charged);
> > > +	return ret;
> > > +}
> > > +EXPORT_SYMBOL(drm_gem_object_charge_mem);
> > > +
> > > +/**
> > > + * drm_gem_object_uncharge_mem - uncharge size bytes from DRM cgroup
> > > + * @obj: GEM object which is being uncharged
> > > + * @size: number of bytes to uncharge
> > > + *
> > > + * Uncharge @size bytes from the DRM cgroup associated with specified
> > > + * GEM object.
> > > + *
> > > + * Returns 0 on success.  Otherwise, an error code is returned.
> > > + */
> > > +void drm_gem_object_uncharge_mem(struct drm_gem_object *obj, u64 siz=
e)
> > > +{
> > > +	u64 charged =3D atomic64_read(&obj->drmcg_bytes_charged);
> > > +
> > > +	if (WARN_ON(!charged))
> > > +		return;
> > > +	if (WARN_ON(size > charged))
> > > +		size =3D charged;
> > > +
> > > +	atomic64_sub(size, &obj->drmcg_bytes_charged);
> > > +	drm_cgroup_uncharge(obj->drmcg, obj->dev, DRMCG_TYPE_MEM_CURRENT,
> > > +			    size);
> > > +}
> > > +EXPORT_SYMBOL(drm_gem_object_uncharge_mem);
> > > +
> > >   /**
> > >    * drm_gem_object_init - initialize an allocated shmem-backed GEM o=
bject
> > >    * @dev: drm_device the object should be initialized for
> > > @@ -156,6 +240,8 @@ void drm_gem_private_object_init(struct drm_devic=
e *dev,
> > >   	obj->dev =3D dev;
> > >   	obj->filp =3D NULL;
> > > +	drm_gem_object_set_cgroup(obj, current);
> > > +
> > >   	kref_init(&obj->refcount);
> > >   	obj->handle_count =3D 0;
> > >   	obj->size =3D size;
> > > @@ -950,6 +1036,9 @@ drm_gem_object_release(struct drm_gem_object *ob=
j)
> > >   	dma_resv_fini(&obj->_resv);
> > >   	drm_gem_free_mmap_offset(obj);
> > > +
> > > +	/* Release reference on cgroup used with GEM object charging */
> > > +	drm_gem_object_unset_cgroup(obj);
> > >   }
> > >   EXPORT_SYMBOL(drm_gem_object_release);
> > > diff --git a/include/drm/drm_gem.h b/include/drm/drm_gem.h
> > > index 240049566592..06ea10fc17bc 100644
> > > --- a/include/drm/drm_gem.h
> > > +++ b/include/drm/drm_gem.h
> > > @@ -37,6 +37,7 @@
> > >   #include <linux/kref.h>
> > >   #include <linux/dma-resv.h>
> > > +#include <drm/drm_cgroup.h>
> > >   #include <drm/drm_vma_manager.h>
> > >   struct dma_buf_map;
> > > @@ -222,6 +223,17 @@ struct drm_gem_object {
> > >   	 */
> > >   	struct file *filp;
> > > +	/**
> > > +	 * @drmcg:
> > > +	 *
> > > +	 * cgroup used for charging GEM object page allocations against. Th=
is
> > > +	 * is set to the current cgroup during GEM object creation.
> > > +	 * Charging policy is up to the DRM driver to implement and should =
be
> > > +	 * charged when allocating backing store from device memory.
> > > +	 */
> > > +	struct drmcg *drmcg;
> > > +	atomic64_t drmcg_bytes_charged;
> > > +
> > >   	/**
> > >   	 * @vma_node:
> > >   	 *
> > > @@ -417,4 +429,9 @@ int drm_gem_fence_array_add_implicit(struct xarra=
y *fence_array,
> > >   int drm_gem_dumb_map_offset(struct drm_file *file, struct drm_devic=
e *dev,
> > >   			    u32 handle, u64 *offset);
> > > +void drm_gem_object_set_cgroup(struct drm_gem_object *obj,
> > > +			       struct task_struct *task);
> > > +void drm_gem_object_unset_cgroup(struct drm_gem_object *obj);
> > > +int drm_gem_object_charge_mem(struct drm_gem_object *obj, u64 size);
> > > +void drm_gem_object_uncharge_mem(struct drm_gem_object *obj, u64 siz=
e);
> > >   #endif /* __DRM_GEM_H__ */
> > > -- =

> > > 2.20.1
> > > =

> > =

> =

> -- =

> Thomas Zimmermann
> Graphics Driver Developer
> SUSE Software Solutions Germany GmbH
> Maxfeldstr. 5, 90409 N=FCrnberg, Germany
> (HRB 36809, AG N=FCrnberg)
> Gesch=E4ftsf=FChrer: Felix Imend=F6rffer
> =





-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
