Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3333F8832
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 14:59:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 795996E845;
	Thu, 26 Aug 2021 12:59:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EDD56E843
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Aug 2021 12:59:14 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id z10so4520470edb.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Aug 2021 05:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=9l2OOUE09XlxnnN5BrE9RmBj7/x5XGUJNjJth0rLH1M=;
 b=Ei9E2sHB5jiRqflPCY7aBs/1YnEabwomR6Lx9CIoy+4q4IJ1GWbgIGI5h8Z81lSRrM
 Ic3dn6L4Rlj84egP64hYiygM5/+rxOdekuY0h3uuuHXgbU0HqDQNha4dlPBNmZBBnu3X
 F4JZYhB0pUVWUDPuW2FcOY+aP1WVtuF+dXeMo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=9l2OOUE09XlxnnN5BrE9RmBj7/x5XGUJNjJth0rLH1M=;
 b=VJYEhC9oAn5KEfgJds5qAoFCBmimw3UklMlhXNNbjT1oYMtGbdPABBvZtGFC8W5LKW
 3RKk9xPkA9/vASolC+aMrTrntwu4E7dKSB5gQQYT4joUVdHsa8McVT08QdEJiy7Nfgtl
 Ul8aXmUbr7h76+dfDOj3Jb+ZEgdGg0cQu9erwfM005JEG6ZrCw3K7F5MwT62Oh0B5Iyg
 3acx/y/0QXGc/rWLWJNeTyBMmRsLJy3OAcNu1Q0f5EoHL2n4CeQZLHKmydKTMECf14WR
 3VW2j6E7gfGrKyTVPbV9NrRZl60FTb6rTr2fZ00XfJsHtBoxEJNugKCbPVQXl1bpnyev
 49HQ==
X-Gm-Message-State: AOAM533BIzKAmCkNXyiNw3O3cPzRdloK+ESYhbSRFh62P840nD8ev8Di
 ZwIELUezWV/JSwYpFkXKJsvswQ==
X-Google-Smtp-Source: ABdhPJxL8ltd/Qr/lqVn7DnqHxZsvtwRm1Gkw/gARKFkvBq13n0SPt510NYzOn3B5A87x9j8hTrQSw==
X-Received: by 2002:a05:6402:40c9:: with SMTP id
 z9mr4155954edb.159.1629982753092; 
 Thu, 26 Aug 2021 05:59:13 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id bl16sm1362875ejb.37.2021.08.26.05.59.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Aug 2021 05:59:12 -0700 (PDT)
Date: Thu, 26 Aug 2021 14:59:10 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@linux.ie, daniel@ffwll.ch,
 sumit.semwal@linaro.org, christian.koenig@amd.com,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, chris@chris-wilson.co.uk,
 ville.syrjala@linux.intel.com, matthew.auld@intel.com,
 dan.carpenter@oracle.com, tvrtko.ursulin@intel.com,
 matthew.d.roper@intel.com, lucas.demarchi@intel.com,
 karthik.b.s@intel.com, jose.souza@intel.com,
 manasi.d.navare@intel.com, airlied@redhat.com,
 aditya.swarup@intel.com, andrescj@chromium.org,
 linux-graphics-maintainer@vmware.com, zackr@vmware.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, skhan@linuxfoundation.org,
 gregkh@linuxfoundation.org, linux-kernel-mentees@lists.linuxfoundation.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <YSeQHvagpTjlifpX@phenom.ffwll.local>
Mail-Followup-To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@linux.ie, sumit.semwal@linaro.org,
 christian.koenig@amd.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 chris@chris-wilson.co.uk, ville.syrjala@linux.intel.com,
 matthew.auld@intel.com, dan.carpenter@oracle.com,
 tvrtko.ursulin@intel.com, matthew.d.roper@intel.com,
 lucas.demarchi@intel.com, karthik.b.s@intel.com,
 jose.souza@intel.com, manasi.d.navare@intel.com, airlied@redhat.com,
 aditya.swarup@intel.com, andrescj@chromium.org,
 linux-graphics-maintainer@vmware.com, zackr@vmware.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, skhan@linuxfoundation.org,
 gregkh@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org
References: <20210826020122.1488002-1-desmondcheongzx@gmail.com>
 <20210826020122.1488002-5-desmondcheongzx@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210826020122.1488002-5-desmondcheongzx@gmail.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH v8 4/7] drm: avoid races with modesetting
 rights
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 26, 2021 at 10:01:19AM +0800, Desmond Cheong Zhi Xi wrote:
> In drm_client_modeset.c and drm_fb_helper.c,
> drm_master_internal_{acquire,release} are used to avoid races with DRM
> userspace. These functions hold onto drm_device.master_rwsem while
> committing, and bail if there's already a master.
> 
> However, there are other places where modesetting rights can race. A
> time-of-check-to-time-of-use error can occur if an ioctl that changes
> the modeset has its rights revoked after it validates its permissions,
> but before it completes.
> 
> There are four places where modesetting permissions can change:
> 
> - DROP_MASTER ioctl removes rights for a master and its leases
> 
> - REVOKE_LEASE ioctl revokes rights for a specific lease
> 
> - SET_MASTER ioctl sets the device master if the master role hasn't
> been acquired yet
> 
> - drm_open which can create a new master for a device if one does not
> currently exist
> 
> These races can be avoided using drm_device.master_rwsem: users that
> perform modesetting should hold a read lock on the new
> drm_device.master_rwsem, and users that change these permissions
> should hold a write lock.
> 
> To avoid deadlocks with master_rwsem, for ioctls that need to check
> for modesetting permissions, but also need to hold a write lock on
> master_rwsem to protect some other attribute (or recurses to some
> function that holds a write lock, like drm_mode_create_lease_ioctl
> which eventually calls drm_master_open), we remove the DRM_MASTER flag
> and push the master_rwsem lock and permissions check into the ioctl.
> 
> Reported-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> Signed-off-by: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
> ---
>  drivers/gpu/drm/drm_auth.c  |  4 ++++
>  drivers/gpu/drm/drm_ioctl.c | 20 +++++++++++++++-----
>  drivers/gpu/drm/drm_lease.c | 35 ++++++++++++++++++++++++-----------
>  include/drm/drm_device.h    |  5 +++++
>  4 files changed, 48 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_auth.c b/drivers/gpu/drm/drm_auth.c
> index 73ade0513ccb..65065f7e1499 100644
> --- a/drivers/gpu/drm/drm_auth.c
> +++ b/drivers/gpu/drm/drm_auth.c
> @@ -120,6 +120,10 @@ int drm_authmagic(struct drm_device *dev, void *data,
>  	DRM_DEBUG("%u\n", auth->magic);
>  
>  	down_write(&dev->master_rwsem);
> +	if (unlikely(!drm_is_current_master(file_priv))) {
> +		up_write(&dev->master_rwsem);
> +		return -EACCES;
> +	}
>  	file = idr_find(&file_priv->master->magic_map, auth->magic);
>  	if (file) {
>  		file->authenticated = 1;
> diff --git a/drivers/gpu/drm/drm_ioctl.c b/drivers/gpu/drm/drm_ioctl.c
> index 158629d88319..8bea39ffc5c0 100644
> --- a/drivers/gpu/drm/drm_ioctl.c
> +++ b/drivers/gpu/drm/drm_ioctl.c
> @@ -386,6 +386,10 @@ static int drm_setversion(struct drm_device *dev, void *data, struct drm_file *f
>  	int if_version, retcode = 0;
>  
>  	down_write(&dev->master_rwsem);
> +	if (unlikely(!drm_is_current_master(file_priv))) {
> +		retcode = -EACCES;
> +		goto unlock;
> +	}
>  	if (sv->drm_di_major != -1) {
>  		if (sv->drm_di_major != DRM_IF_MAJOR ||
>  		    sv->drm_di_minor < 0 || sv->drm_di_minor > DRM_IF_MINOR) {
> @@ -420,8 +424,9 @@ static int drm_setversion(struct drm_device *dev, void *data, struct drm_file *f
>  	sv->drm_di_minor = DRM_IF_MINOR;
>  	sv->drm_dd_major = dev->driver->major;
>  	sv->drm_dd_minor = dev->driver->minor;
> -	up_write(&dev->master_rwsem);
>  
> +unlock:
> +	up_write(&dev->master_rwsem);
>  	return retcode;
>  }
>  
> @@ -574,12 +579,12 @@ static const struct drm_ioctl_desc drm_ioctls[] = {
>  	DRM_IOCTL_DEF(DRM_IOCTL_GET_STATS, drm_getstats, 0),
>  	DRM_IOCTL_DEF(DRM_IOCTL_GET_CAP, drm_getcap, DRM_RENDER_ALLOW),
>  	DRM_IOCTL_DEF(DRM_IOCTL_SET_CLIENT_CAP, drm_setclientcap, 0),
> -	DRM_IOCTL_DEF(DRM_IOCTL_SET_VERSION, drm_setversion, DRM_MASTER),
> +	DRM_IOCTL_DEF(DRM_IOCTL_SET_VERSION, drm_setversion, 0),

Random bikeshed, if you're bored: In newer code we've given ioctl
callbacks an _ioctl suffix, so they'r easier to spot. Could do that in a
follow-up if you want.

>  
>  	DRM_IOCTL_DEF(DRM_IOCTL_SET_UNIQUE, drm_invalid_op, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
>  	DRM_IOCTL_DEF(DRM_IOCTL_BLOCK, drm_noop, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
>  	DRM_IOCTL_DEF(DRM_IOCTL_UNBLOCK, drm_noop, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
> -	DRM_IOCTL_DEF(DRM_IOCTL_AUTH_MAGIC, drm_authmagic, DRM_MASTER),
> +	DRM_IOCTL_DEF(DRM_IOCTL_AUTH_MAGIC, drm_authmagic, 0),
>  
>  	DRM_LEGACY_IOCTL_DEF(DRM_IOCTL_ADD_MAP, drm_legacy_addmap_ioctl, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
>  	DRM_LEGACY_IOCTL_DEF(DRM_IOCTL_RM_MAP, drm_legacy_rmmap_ioctl, DRM_AUTH),
> @@ -706,10 +711,10 @@ static const struct drm_ioctl_desc drm_ioctls[] = {
>  		      DRM_RENDER_ALLOW),
>  	DRM_IOCTL_DEF(DRM_IOCTL_CRTC_GET_SEQUENCE, drm_crtc_get_sequence_ioctl, 0),
>  	DRM_IOCTL_DEF(DRM_IOCTL_CRTC_QUEUE_SEQUENCE, drm_crtc_queue_sequence_ioctl, 0),
> -	DRM_IOCTL_DEF(DRM_IOCTL_MODE_CREATE_LEASE, drm_mode_create_lease_ioctl, DRM_MASTER),
> +	DRM_IOCTL_DEF(DRM_IOCTL_MODE_CREATE_LEASE, drm_mode_create_lease_ioctl, 0),
>  	DRM_IOCTL_DEF(DRM_IOCTL_MODE_LIST_LESSEES, drm_mode_list_lessees_ioctl, DRM_MASTER),
>  	DRM_IOCTL_DEF(DRM_IOCTL_MODE_GET_LEASE, drm_mode_get_lease_ioctl, DRM_MASTER),
> -	DRM_IOCTL_DEF(DRM_IOCTL_MODE_REVOKE_LEASE, drm_mode_revoke_lease_ioctl, DRM_MASTER),
> +	DRM_IOCTL_DEF(DRM_IOCTL_MODE_REVOKE_LEASE, drm_mode_revoke_lease_ioctl, 0),
>  };
>  
>  #define DRM_CORE_IOCTL_COUNT	ARRAY_SIZE( drm_ioctls )
> @@ -776,6 +781,9 @@ long drm_ioctl_kernel(struct file *file, drm_ioctl_t *func, void *kdata,
>  	if (unlikely(drm_core_check_feature(dev, DRIVER_LEGACY)) && !(flags & DRM_UNLOCKED))
>  		mutex_lock(&drm_global_mutex);
>  
> +	if (unlikely(flags & DRM_MASTER))
> +		down_read(&dev->master_rwsem);
> +
>  	retcode = drm_ioctl_permit(flags, file_priv);
>  	if (unlikely(retcode))
>  		goto out;
> @@ -783,6 +791,8 @@ long drm_ioctl_kernel(struct file *file, drm_ioctl_t *func, void *kdata,
>  	retcode = func(dev, kdata, file_priv);
>  
>  out:
> +	if (unlikely(flags & DRM_MASTER))
> +		up_read(&dev->master_rwsem);
>  	if (unlikely(drm_core_check_feature(dev, DRIVER_LEGACY)) && !(flags & DRM_UNLOCKED))
>  		mutex_unlock(&drm_global_mutex);
>  	return retcode;
> diff --git a/drivers/gpu/drm/drm_lease.c b/drivers/gpu/drm/drm_lease.c
> index dee4f24a1808..bed6f7636cbe 100644
> --- a/drivers/gpu/drm/drm_lease.c
> +++ b/drivers/gpu/drm/drm_lease.c
> @@ -500,6 +500,18 @@ int drm_mode_create_lease_ioctl(struct drm_device *dev,
>  		return -EINVAL;
>  	}
>  
> +	/* Clone the lessor file to create a new file for us */
> +	DRM_DEBUG_LEASE("Allocating lease file\n");
> +	lessee_file = file_clone_open(lessor_file);
> +	if (IS_ERR(lessee_file))
> +		return PTR_ERR(lessee_file);
> +
> +	down_read(&dev->master_rwsem);
> +	if (unlikely(!drm_is_current_master(lessor_priv))) {
> +		ret = -EACCES;
> +		goto out_file;
> +	}
> +
>  	lessor = drm_file_get_master(lessor_priv);
>  	/* Do not allow sub-leases */
>  	if (lessor->lessor) {
> @@ -547,14 +559,6 @@ int drm_mode_create_lease_ioctl(struct drm_device *dev,
>  		goto out_leases;
>  	}
>  
> -	/* Clone the lessor file to create a new file for us */
> -	DRM_DEBUG_LEASE("Allocating lease file\n");
> -	lessee_file = file_clone_open(lessor_file);
> -	if (IS_ERR(lessee_file)) {
> -		ret = PTR_ERR(lessee_file);
> -		goto out_lessee;
> -	}
> -
>  	lessee_priv = lessee_file->private_data;
>  	/* Change the file to a master one */
>  	drm_master_put(&lessee_priv->master);
> @@ -571,17 +575,19 @@ int drm_mode_create_lease_ioctl(struct drm_device *dev,
>  	fd_install(fd, lessee_file);
>  
>  	drm_master_put(&lessor);

Hm if we're unlucky this might be the last reference (against nasty
userspace only), and that could then perhaps collide with us still holding
the lock. It looks like we're fine, the only thing that drm_master_put
might be locking is

	mutex_lock(&dev->mode_config.idr_mutex);

through drm_lease_destroy(). We don't care about legacy drivers and hence
the dev->struct_mutex (plus that lock is a complete mess anyway).

Maybe another patch to add a might_lock to drm_master_put, just to be
safe?

> +	up_read(&dev->master_rwsem);
>  	DRM_DEBUG_LEASE("drm_mode_create_lease_ioctl succeeded\n");
>  	return 0;
>  
> -out_lessee:
> -	drm_master_put(&lessee);
> -
>  out_leases:
>  	put_unused_fd(fd);
>  
>  out_lessor:
>  	drm_master_put(&lessor);
> +
> +out_file:
> +	up_read(&dev->master_rwsem);
> +	fput(lessee_file);
>  	DRM_DEBUG_LEASE("drm_mode_create_lease_ioctl failed: %d\n", ret);
>  	return ret;
>  }
> @@ -705,6 +711,11 @@ int drm_mode_revoke_lease_ioctl(struct drm_device *dev,
>  	if (!drm_core_check_feature(dev, DRIVER_MODESET))
>  		return -EOPNOTSUPP;
>  
> +	down_write(&dev->master_rwsem);
> +	if (unlikely(!drm_is_current_master(lessor_priv))) {
> +		ret = -EACCES;
> +		goto unlock;
> +	}
>  	lessor = drm_file_get_master(lessor_priv);
>  	mutex_lock(&dev->mode_config.idr_mutex);
>  
> @@ -728,5 +739,7 @@ int drm_mode_revoke_lease_ioctl(struct drm_device *dev,
>  	mutex_unlock(&dev->mode_config.idr_mutex);
>  	drm_master_put(&lessor);
>  
> +unlock:
> +	up_write(&dev->master_rwsem);
>  	return ret;
>  }
> diff --git a/include/drm/drm_device.h b/include/drm/drm_device.h
> index 142fb2f6e74d..7d32bb69e6db 100644
> --- a/include/drm/drm_device.h
> +++ b/include/drm/drm_device.h
> @@ -151,6 +151,11 @@ struct drm_device {
>  	 * Lock for &drm_device.master, &drm_file.was_master,
>  	 * &drm_file.is_master, &drm_file.master, &drm_master.unique,
>  	 * &drm_master.unique_len, and &drm_master.magic_map.
> +	 *
> +	 * Additionally, synchronizes modesetting rights between multiple users.

Current modern drives only use this for modesetting rights, but this is
about anything which is exclusively owned by the drm_master. So maybe
reword to "synchronizes access rights to exclusive resources like
modesetting access".

With that clarified:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

The other suggestions are for follow-up patches, if you feel like.
-Daniel

> +	 * Users that can change the modeset or display state must hold a read
> +	 * lock on @master_rwsem, and users that change modesetting rights
> +	 * should hold a write lock.
>  	 */
>  	struct rw_semaphore master_rwsem;
>  
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
