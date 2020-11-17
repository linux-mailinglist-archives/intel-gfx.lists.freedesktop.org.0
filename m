Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 692E92B5C74
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 11:01:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04E746E10D;
	Tue, 17 Nov 2020 10:01:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE7CB6E03E
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 10:01:42 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id a3so2624617wmb.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 02:01:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Tvr1i8BbCmuVJQLalZ44/BhPFnHlVISYduMktrLuNCI=;
 b=itDdNhh6SSfakFwYmzALGlOUBg6O/56gi8Vi9q8ZDbDfX6vGGvyV3HJOM/9GK86Hye
 p4FfQMeGhvjyrK5wxacR4br6Quc1WhLJ/0/QsrlCEp8j8fccRueIbfPXJy4Gh0UahICZ
 Jt39bJP6M11G4y2NZ1NYMsVx4MNxKFL7m/c+s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Tvr1i8BbCmuVJQLalZ44/BhPFnHlVISYduMktrLuNCI=;
 b=T4staeWP1j/vDzSsbuOOKnywm+Xuoa8tGfV9+iALNtK8he1ZTBAvKjWTfIafq8TbE5
 93eqFY2PPWhH83DicrT0tU5wcNBA8XklbT6RodfEfPWlOEDjllnuKQ5Dg1B9smAVZ3IC
 fTYMe4tTBRd1Bcd63Hw4ZSpzeojnZsjmHAXMd0fjfTt74FBd/fC6+wKuscYnQdgtCH2e
 OfZR9EtQJjAyAeT1E2WeQuZl95xGPHqp4b+lNpUsuYCuzTkI3EVegIDq+wj9dzkmZMhO
 PkS59ok+0RNwgitKArkqHXij/Y9WA1J/TPwX5SoyPZFy7tx6ZB4jCPO1SE2Lbu0AE84g
 jLPw==
X-Gm-Message-State: AOAM531U1xxRKeg3stqiyUEtNA2Gs8WJA0RDW9iYaYZ33T1QAeJGfvGi
 GCF+NK5IkTOjO6kw+wyUI16iCA==
X-Google-Smtp-Source: ABdhPJzFJDOMhOOhKeG9aRuj/uSvAxJjIiu9FlR+hB5CrkDmb40o5tJUkolWetSSD1v7XX0EYQtWfg==
X-Received: by 2002:a1c:44d4:: with SMTP id r203mr3440851wma.60.1605607301403; 
 Tue, 17 Nov 2020 02:01:41 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id c2sm28726842wrf.68.2020.11.17.02.01.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Nov 2020 02:01:40 -0800 (PST)
Date: Tue, 17 Nov 2020 11:01:38 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <20201117100138.GI401619@phenom.ffwll.local>
References: <20201029101428.4058311-3-daniel.vetter@ffwll.ch>
 <20201029133347.4088884-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201029133347.4088884-1-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/qxl: Remove fbcon acceleration leftovers
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
Cc: spice-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 29, 2020 at 02:33:47PM +0100, Daniel Vetter wrote:
> These are leftovers from 13aff184ed9f ("drm/qxl: remove dead qxl fbdev
> emulation code").
> 
> v2: Somehow these structs provided the struct qxl_device pre-decl,
> reorder the header to not anger compilers.
> 
> Acked-by: Gerd Hoffmann <kraxel@redhat.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Dave Airlie <airlied@redhat.com>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: virtualization@lists.linux-foundation.org
> Cc: spice-devel@lists.freedesktop.org

Entire series applied to drm-misc-next.
-Daniel

> ---
>  drivers/gpu/drm/qxl/qxl_drv.h | 18 ++----------------
>  1 file changed, 2 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/qxl/qxl_drv.h b/drivers/gpu/drm/qxl/qxl_drv.h
> index 3602e8b34189..6239626503ef 100644
> --- a/drivers/gpu/drm/qxl/qxl_drv.h
> +++ b/drivers/gpu/drm/qxl/qxl_drv.h
> @@ -166,20 +166,6 @@ struct qxl_drm_image {
>  	struct list_head chunk_list;
>  };
>  
> -struct qxl_fb_image {
> -	struct qxl_device *qdev;
> -	uint32_t pseudo_palette[16];
> -	struct fb_image fb_image;
> -	uint32_t visual;
> -};
> -
> -struct qxl_draw_fill {
> -	struct qxl_device *qdev;
> -	struct qxl_rect rect;
> -	uint32_t color;
> -	uint16_t rop;
> -};
> -
>  /*
>   * Debugfs
>   */
> @@ -188,8 +174,6 @@ struct qxl_debugfs {
>  	unsigned int num_files;
>  };
>  
> -int qxl_debugfs_fence_init(struct qxl_device *rdev);
> -
>  struct qxl_device {
>  	struct drm_device ddev;
>  
> @@ -271,6 +255,8 @@ struct qxl_device {
>  
>  #define to_qxl(dev) container_of(dev, struct qxl_device, ddev)
>  
> +int qxl_debugfs_fence_init(struct qxl_device *rdev);
> +
>  extern const struct drm_ioctl_desc qxl_ioctls[];
>  extern int qxl_max_ioctl;
>  
> -- 
> 2.28.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
