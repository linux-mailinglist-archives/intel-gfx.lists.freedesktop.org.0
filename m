Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2453F015D
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 12:11:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7470A6E525;
	Wed, 18 Aug 2021 10:11:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74C8E6E527
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 10:11:10 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id d6so2280340edt.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 03:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=H6PUEJyT8yWFOs/eHUeXPFvL6SwbW/T0LWe0T2e8WmE=;
 b=GKjpI8oonPri08s2r40yIS07xBV5kd2Qcb0M+wEuCc48wKNdDQIcz1gsIg0w4AFPZH
 fTpmm7yg9dJmucZ4YwxqzV+MpHC7nNcfaQkUUDSl0ws5L1i10t9UlUGKJQLYp2Mrjnr1
 vXTDxTOZGh7Zh9xS2H8s1TXo6uM0qU+/eBKhc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=H6PUEJyT8yWFOs/eHUeXPFvL6SwbW/T0LWe0T2e8WmE=;
 b=Phem1c1ZT3pOTDndnebi2aAON5ixDgYrUY9LORsHpOU1Nb0ZjLIZYRQfBJBH4vVqG7
 LfJX2Uur8fGDfdE/rLKJKwO1gjxUW1wt5fRqPR7l1Lcy7Vr4HY8miUX3tKEL5BRa9v1j
 Q6xHOUzkd3SdnTHbTeYSv8Q1GT9+kaPylv6Lobg4uc5AA0IAgOJ63i7GrYSereP8HjFv
 CcwFOvyEdKEQbZvNv9oRN8+tcCSsiQeDn5VljRcHVtndv4pBOT7Xgexo7WoZgcC2zsYB
 ADlMkmJ1LfPQMij5CLqUFKBodPv2o3Y3hxxKevczx44OxMI+id7hg/8z11dFjoiQKqAA
 Um6g==
X-Gm-Message-State: AOAM532DiWaS9abZNCY/JWbKxD45WjUrf1nss9QXAEpIUc5KJFRaBwPp
 YZ0iEaNKohlSO/hhSX5jwFxtFUkp6jKX7g==
X-Google-Smtp-Source: ABdhPJxpWiWQ18UJm+hCSjJLPLxbcWNd9HkyUYKyAPssMAGCuTk1/N1o8a5V6hH6cJCPXAjYQUffNg==
X-Received: by 2002:a05:6402:b88:: with SMTP id
 cf8mr9311655edb.281.1629281469070; 
 Wed, 18 Aug 2021 03:11:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j22sm1805495ejt.11.2021.08.18.03.11.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Aug 2021 03:11:08 -0700 (PDT)
Date: Wed, 18 Aug 2021 12:11:06 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@linux.ie, daniel@ffwll.ch,
 sumit.semwal@linaro.org, christian.koenig@amd.com, axboe@kernel.dk,
 oleg@redhat.com, tglx@linutronix.de, dvyukov@google.com,
 walter-zh.wu@mediatek.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 skhan@linuxfoundation.org, gregkh@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org
Message-ID: <YRzcuiQrLFsWowas@phenom.ffwll.local>
Mail-Followup-To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@linux.ie, sumit.semwal@linaro.org,
 christian.koenig@amd.com, axboe@kernel.dk, oleg@redhat.com,
 tglx@linutronix.de, dvyukov@google.com, walter-zh.wu@mediatek.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, skhan@linuxfoundation.org,
 gregkh@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org
References: <20210818073824.1560124-1-desmondcheongzx@gmail.com>
 <20210818073824.1560124-5-desmondcheongzx@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210818073824.1560124-5-desmondcheongzx@gmail.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH v3 4/9] drm: fix potential null ptr
 dereferences in drm_{auth, ioctl}
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

On Wed, Aug 18, 2021 at 03:38:19PM +0800, Desmond Cheong Zhi Xi wrote:
> There are three areas where we dereference struct drm_master without
> checking if the pointer is non-NULL.
> 
> 1. drm_getmagic is called from the ioctl_handler. Since
> DRM_IOCTL_GET_MAGIC has no ioctl flags, drm_getmagic is run without
> any check that drm_file.master has been set.
> 
> 2. Similarly, drm_getunique is called from the ioctl_handler, but
> DRM_IOCTL_GET_UNIQUE has no ioctl flags. So there is no guarantee that
> drm_file.master has been set.

I think the above two are impossible, due to the refcounting rules for
struct file.

> 3. drm_master_release can also be called without having a
> drm_file.master set. Here is one error path:
>   drm_open():
>     drm_open_helper():
>       drm_master_open():
>         drm_new_set_master(); <--- returns -ENOMEM,
>                                    drm_file.master not set
>       drm_file_free():
>         drm_master_release(); <--- NULL ptr dereference
>                                    (file_priv->master->magic_map)
> 
> Fix these by checking if the master pointers are NULL before use.
> 
> Signed-off-by: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
> ---
>  drivers/gpu/drm/drm_auth.c  | 16 ++++++++++++++--
>  drivers/gpu/drm/drm_ioctl.c |  5 +++++
>  2 files changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_auth.c b/drivers/gpu/drm/drm_auth.c
> index f9267b21556e..b7230604496b 100644
> --- a/drivers/gpu/drm/drm_auth.c
> +++ b/drivers/gpu/drm/drm_auth.c
> @@ -95,11 +95,18 @@ EXPORT_SYMBOL(drm_is_current_master);
>  int drm_getmagic(struct drm_device *dev, void *data, struct drm_file *file_priv)
>  {
>  	struct drm_auth *auth = data;
> +	struct drm_master *master;
>  	int ret = 0;
>  
>  	mutex_lock(&dev->master_mutex);
> +	master = file_priv->master;
> +	if (!master) {
> +		mutex_unlock(&dev->master_mutex);
> +		return -EINVAL;
> +	}
> +
>  	if (!file_priv->magic) {
> -		ret = idr_alloc(&file_priv->master->magic_map, file_priv,
> +		ret = idr_alloc(&master->magic_map, file_priv,
>  				1, 0, GFP_KERNEL);
>  		if (ret >= 0)
>  			file_priv->magic = ret;
> @@ -355,8 +362,12 @@ void drm_master_release(struct drm_file *file_priv)
>  
>  	mutex_lock(&dev->master_mutex);
>  	master = file_priv->master;
> +
> +	if (!master)
> +		goto unlock;

This is a bit convoluted, since we're in the single-threaded release path
we don't need any locking for file_priv related things. Therefore we can
pull the master check out and just directly return.

But since it's a bit surprising maybe a comment that this can happen when
drm_master_open in drm_open_helper fails?

Another option, and maybe cleaner, would be to move the drm_master_release
from drm_file_free into drm_close_helper. That would be fully symmetrical
and should also fix the bug here?
-Daniel


> +
>  	if (file_priv->magic)
> -		idr_remove(&file_priv->master->magic_map, file_priv->magic);
> +		idr_remove(&master->magic_map, file_priv->magic);
>  
>  	if (!drm_is_current_master_locked(file_priv))
>  		goto out;
> @@ -379,6 +390,7 @@ void drm_master_release(struct drm_file *file_priv)
>  		drm_master_put(&file_priv->master);
>  		spin_unlock(&dev->master_lookup_lock);
>  	}
> +unlock:
>  	mutex_unlock(&dev->master_mutex);
>  }
>  
> diff --git a/drivers/gpu/drm/drm_ioctl.c b/drivers/gpu/drm/drm_ioctl.c
> index 26f3a9ede8fe..4d029d3061d9 100644
> --- a/drivers/gpu/drm/drm_ioctl.c
> +++ b/drivers/gpu/drm/drm_ioctl.c
> @@ -121,6 +121,11 @@ int drm_getunique(struct drm_device *dev, void *data,
>  
>  	mutex_lock(&dev->master_mutex);
>  	master = file_priv->master;
> +	if (!master) {
> +		mutex_unlock(&dev->master_mutex);
> +		return -EINVAL;
> +	}
> +
>  	if (u->unique_len >= master->unique_len) {
>  		if (copy_to_user(u->unique, master->unique, master->unique_len)) {
>  			mutex_unlock(&dev->master_mutex);
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
