Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C8B40FC9C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 17:37:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56E736EDBB;
	Fri, 17 Sep 2021 15:37:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com
 [IPv6:2607:f8b0:4864:20::f2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9FF86EDBB
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 15:37:09 +0000 (UTC)
Received: by mail-qv1-xf2f.google.com with SMTP id a12so6654842qvz.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 08:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4666f6QLqu0abf0jU2FdUqJtGO6Mim9/7DYqj3cqe0Y=;
 b=UNfUGtD9E+jyZoZ+7ymL/dy8zrvBU1sjI0inJg8wkVTtZDQaJmozzzAfhI/3etcDVN
 jK3EAL+40OSPutMsH93shP4YrB4FxNQWZH8/PBPk9wF2FUhFNO2Hm/ltp2UxiB2j9WSp
 GW13iXrrDxG2t3HMMjN0R4iZzEX9CtIaz8JxJsAH2rfedTtCSlAMUEteOZ6WuAGG7Dcl
 LMJzO83Qby9lVbMhNjeOEVBWWaT0tih1R4Q+6e3WzxUHGvFy7A+xVAWA0EuIBYJCWh5y
 9fAU+KRH3lsjfNISmSvN1JkrYUbJAVvVg1Raas+xNnyGVsi4DMQVpvNirWF8WHbQgqlx
 6nWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4666f6QLqu0abf0jU2FdUqJtGO6Mim9/7DYqj3cqe0Y=;
 b=5Mwla6F5WxBku1qVU1BGalVj2+toH/EXfaLnIW1NDFsAKcIo7cz4BoTRqzKgEHlzqT
 2V2mOoEinkIcFGGJ8q/yvAlV4sBSS/KMdgbjUj1yEhFDN9WbsiIFBfeMUrsmH7h2LdQK
 PEZRf2/m6Lg8HKcCAcCtZgKZbrUiZYu+RigzVjpjX7+jj1uqG+WuHgD1FK6bbLgMbyWf
 AGMOV1ZHw+5+YwdKrvsAmWLvcCJvo6nDBv8tIy6JBQwnADQ9j/XXBoQPyebq+I/nvwHu
 KGJg/y72I6FIRzZiY66uLBCFMybo1wr0IpL5IWXXAc3KR9S4nk4Cl1c7uKV92joj07yx
 B0ag==
X-Gm-Message-State: AOAM531J/4jQyEBMPiN5fUnHHxszIhKpfvlexkpme3QNVYx7UG/qM43/
 DQbw91niin/jzu8NQ2VdlPS3GQ==
X-Google-Smtp-Source: ABdhPJw+k6NgZ72KgYvcl0ua622jIRGM/haARKec3HSClLiaWd4JyaqXtWZnrgyQTO38g4T48nhviQ==
X-Received: by 2002:a05:6214:1243:: with SMTP id
 q3mr2052455qvv.0.1631893029055; 
 Fri, 17 Sep 2021 08:37:09 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id t3sm5035654qkg.2.2021.09.17.08.37.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 Sep 2021 08:37:08 -0700 (PDT)
Date: Fri, 17 Sep 2021 11:37:07 -0400
From: Sean Paul <sean@poorly.run>
To: Fernando Ramos <greenfoo@u92.eu>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 sean@poorly.run, linux-doc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org,
 linux-tegra@vger.kernel.org
Message-ID: <20210917153707.GE2515@art_vandelay>
References: <20210916211552.33490-1-greenfoo@u92.eu>
 <20210916211552.33490-6-greenfoo@u92.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210916211552.33490-6-greenfoo@u92.eu>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 05/15] drm/vmwgfx: cleanup:
 drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()
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

On Thu, Sep 16, 2021 at 11:15:42PM +0200, Fernando Ramos wrote:
> As requested in Documentation/gpu/todo.rst, replace driver calls to
> drm_modeset_lock_all() with DRM_MODESET_LOCK_ALL_BEGIN() and
> DRM_MODESET_LOCK_ALL_END()
> 

Reviewed-by: Sean Paul <sean@poorly.run>

> Signed-off-by: Fernando Ramos <greenfoo@u92.eu>
> ---
>  drivers/gpu/drm/vmwgfx/vmwgfx_ioctl.c | 11 +++++++----
>  drivers/gpu/drm/vmwgfx/vmwgfx_kms.c   | 12 ++++++++----
>  2 files changed, 15 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_ioctl.c b/drivers/gpu/drm/vmwgfx/vmwgfx_ioctl.c
> index 28af34ab6ed6..7df35c6f1458 100644
> --- a/drivers/gpu/drm/vmwgfx/vmwgfx_ioctl.c
> +++ b/drivers/gpu/drm/vmwgfx/vmwgfx_ioctl.c
> @@ -28,6 +28,7 @@
>  #include "vmwgfx_drv.h"
>  #include "vmwgfx_devcaps.h"
>  #include <drm/vmwgfx_drm.h>
> +#include <drm/drm_drv.h>
>  #include "vmwgfx_kms.h"
>  
>  int vmw_getparam_ioctl(struct drm_device *dev, void *data,
> @@ -172,6 +173,7 @@ int vmw_present_ioctl(struct drm_device *dev, void *data,
>  	struct drm_vmw_rect __user *clips_ptr;
>  	struct drm_vmw_rect *clips = NULL;
>  	struct drm_framebuffer *fb;
> +	struct drm_modeset_acquire_ctx ctx;
>  	struct vmw_framebuffer *vfb;
>  	struct vmw_resource *res;
>  	uint32_t num_clips;
> @@ -203,7 +205,7 @@ int vmw_present_ioctl(struct drm_device *dev, void *data,
>  		goto out_no_copy;
>  	}
>  
> -	drm_modeset_lock_all(dev);
> +	DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, ret);
>  
>  	fb = drm_framebuffer_lookup(dev, file_priv, arg->fb_id);
>  	if (!fb) {
> @@ -231,7 +233,7 @@ int vmw_present_ioctl(struct drm_device *dev, void *data,
>  out_no_surface:
>  	drm_framebuffer_put(fb);
>  out_no_fb:
> -	drm_modeset_unlock_all(dev);
> +	DRM_MODESET_LOCK_ALL_END(dev, ctx, ret);
>  out_no_copy:
>  	kfree(clips);
>  out_clips:
> @@ -250,6 +252,7 @@ int vmw_present_readback_ioctl(struct drm_device *dev, void *data,
>  	struct drm_vmw_rect __user *clips_ptr;
>  	struct drm_vmw_rect *clips = NULL;
>  	struct drm_framebuffer *fb;
> +	struct drm_modeset_acquire_ctx ctx;
>  	struct vmw_framebuffer *vfb;
>  	uint32_t num_clips;
>  	int ret;
> @@ -280,7 +283,7 @@ int vmw_present_readback_ioctl(struct drm_device *dev, void *data,
>  		goto out_no_copy;
>  	}
>  
> -	drm_modeset_lock_all(dev);
> +	DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, ret);
>  
>  	fb = drm_framebuffer_lookup(dev, file_priv, arg->fb_id);
>  	if (!fb) {
> @@ -303,7 +306,7 @@ int vmw_present_readback_ioctl(struct drm_device *dev, void *data,
>  out_no_ttm_lock:
>  	drm_framebuffer_put(fb);
>  out_no_fb:
> -	drm_modeset_unlock_all(dev);
> +	DRM_MODESET_LOCK_ALL_END(dev, ctx, ret);
>  out_no_copy:
>  	kfree(clips);
>  out_clips:
> diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_kms.c b/drivers/gpu/drm/vmwgfx/vmwgfx_kms.c
> index 74fa41909213..268095cb8c84 100644
> --- a/drivers/gpu/drm/vmwgfx/vmwgfx_kms.c
> +++ b/drivers/gpu/drm/vmwgfx/vmwgfx_kms.c
> @@ -33,6 +33,7 @@
>  #include <drm/drm_rect.h>
>  #include <drm/drm_sysfs.h>
>  #include <drm/drm_vblank.h>
> +#include <drm/drm_drv.h>
>  
>  #include "vmwgfx_kms.h"
>  
> @@ -243,15 +244,17 @@ void vmw_kms_legacy_hotspot_clear(struct vmw_private *dev_priv)
>  	struct drm_device *dev = &dev_priv->drm;
>  	struct vmw_display_unit *du;
>  	struct drm_crtc *crtc;
> +	struct drm_modeset_acquire_ctx ctx;
> +	int ret;
>  
> -	drm_modeset_lock_all(dev);
> +	DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, ret);
>  	drm_for_each_crtc(crtc, dev) {
>  		du = vmw_crtc_to_du(crtc);
>  
>  		du->hotspot_x = 0;
>  		du->hotspot_y = 0;
>  	}
> -	drm_modeset_unlock_all(dev);
> +	DRM_MODESET_LOCK_ALL_END(dev, ctx, ret);
>  }
>  
>  void vmw_kms_cursor_post_execbuf(struct vmw_private *dev_priv)
> @@ -1012,9 +1015,10 @@ static int vmw_framebuffer_bo_dirty(struct drm_framebuffer *framebuffer,
>  	struct vmw_framebuffer_bo *vfbd =
>  		vmw_framebuffer_to_vfbd(framebuffer);
>  	struct drm_clip_rect norect;
> +	struct drm_modeset_acquire_ctx ctx;
>  	int ret, increment = 1;
>  
> -	drm_modeset_lock_all(&dev_priv->drm);
> +	DRM_MODESET_LOCK_ALL_BEGIN((&dev_priv->drm), ctx, 0, ret);
>  
>  	if (!num_clips) {
>  		num_clips = 1;
> @@ -1040,7 +1044,7 @@ static int vmw_framebuffer_bo_dirty(struct drm_framebuffer *framebuffer,
>  
>  	vmw_cmd_flush(dev_priv, false);
>  
> -	drm_modeset_unlock_all(&dev_priv->drm);
> +	DRM_MODESET_LOCK_ALL_END((&dev_priv->drm), ctx, ret);
>  
>  	return ret;
>  }
> -- 
> 2.33.0
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS
