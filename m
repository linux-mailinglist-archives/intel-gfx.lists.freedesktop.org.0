Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6231B984254
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 11:38:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1DEF10E690;
	Tue, 24 Sep 2024 09:38:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="c0Zepdzg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
 [209.85.218.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E9A310E1C6
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2024 09:38:03 +0000 (UTC)
Received: by mail-ej1-f50.google.com with SMTP id
 a640c23a62f3a-a8d6d0fe021so875552966b.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2024 02:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1727170681; x=1727775481; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=pA/jBwAO5XXfuYXOO0xB58A0oVBWtnFMR/8BfOS2NXA=;
 b=c0ZepdzgH5OSey+otzCb589GXUsviU8woK9z+HFgkG1QwI9K1pXZYmUd4DflPjdTfe
 eXR7GdF2CEMPm2OKX6SeyhayIezggOb9O1p5/gQO9TadUpfMBhkdbiSxcZElBJw97ilH
 xpQmzGLPiWOpBjbR88ahaRGK1z5zREfD0ooEU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727170681; x=1727775481;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pA/jBwAO5XXfuYXOO0xB58A0oVBWtnFMR/8BfOS2NXA=;
 b=K1D2Kx+Qz/Lgp/ww6sheSXiWwCXtGCmkFIBLgxPZVGjv/TIMznMMFY67qLq8RBuxAj
 dDhF37M+rgZsxWrtHofl6PIOtRkeh5dXDPNTtNBzO/F9x8EfKGow4Jl23OvOYGpI+zZg
 AM80LmX/ziPKMCe9J9c17ahYyvgVq9aQREU/ASUBZpSJA5o7EavwUbpWdRrBs1o83ZXi
 koxRau9vKc1Oi0HjIUl5u6MqiDJVoskeccR3JAl+8wB5Vn6svBHfdbLDJTGRjyd9ou2v
 OcsZ1KXZRgu3k/x+jglTEPadFNArAtkai2FrhDs13rJEmjPUarr4/YJXkYHc3AdX7wcy
 /RGw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXPS2Qg/BfKww30mkhpB8aq2A4Gq4t2IMVjkI+KYI2/lDi1Sqpw2FnwdQXSmD4eNQTQIAVKpUGGVhU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzPpy97AciZviReDHwPeYDy+51KZCexuPg2CumLI/Iwg5ekBBaQ
 RfSUGb6vch3AkcrFdsKkb6+BYYrHedOwwYU3hWMaNcEmIBtnZck59VAAf44ZDIeZsAA7qCsYm/W
 r
X-Google-Smtp-Source: AGHT+IFB+hBloJRj69I6H+/qBWvK2CLUjJ9ANVe9W838Pqm/Q5PF/DYz9NFMty68lYFF3U6E4XpF3g==
X-Received: by 2002:a17:907:a088:b0:a8d:2faf:d337 with SMTP id
 a640c23a62f3a-a90d4fdec72mr1574167266b.7.1727170681494; 
 Tue, 24 Sep 2024 02:38:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a9392f355bbsm63471766b.1.2024.09.24.02.38.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2024 02:38:01 -0700 (PDT)
Date: Tue, 24 Sep 2024 11:37:59 +0200
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Raag Jadav <raag.jadav@intel.com>
Cc: airlied@gmail.com, daniel@ffwll.ch, lucas.demarchi@intel.com,
 thomas.hellstrom@linux.intel.com, rodrigo.vivi@intel.com,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 himal.prasad.ghimiray@intel.com, francois.dugast@intel.com,
 aravind.iddamsetty@linux.intel.com, anshuman.gupta@intel.com
Subject: Re: [PATCH v4 1/3] drm: Introduce device wedged event
Message-ID: <ZvKId2EDVXiwrRJT@phenom.ffwll.local>
References: <20240906094225.3082162-1-raag.jadav@intel.com>
 <20240906094225.3082162-2-raag.jadav@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240906094225.3082162-2-raag.jadav@intel.com>
X-Operating-System: Linux phenom 6.10.6-amd64 
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

On Fri, Sep 06, 2024 at 03:12:23PM +0530, Raag Jadav wrote:
> Introduce device wedged event, which will notify userspace of wedged
> (hanged/unusable) state of the DRM device through a uevent. This is
> useful especially in cases where the device is in unrecoverable state
> and requires userspace intervention for recovery.
> 
> Purpose of this implementation is to be vendor agnostic. Userspace
> consumers (sysadmin) can define udev rules to parse this event and
> take respective action to recover the device.
> 
> Consumer expectations:
> ----------------------
> 1) Unbind driver
> 2) Reset bus device
> 3) Re-bind driver
> 
> v4: s/drm_dev_wedged/drm_dev_wedged_event
>     Use drm_info() (Jani)
>     Kernel doc adjustment (Aravind)
> 
> Signed-off-by: Raag Jadav <raag.jadav@intel.com>

I think explicit documentation in the drm-uapi.rst file that links to this
function and explains a bit what's going on would be really good here.

At least judging by the discussion thread here ...
-Sima

> ---
>  drivers/gpu/drm/drm_drv.c | 20 ++++++++++++++++++++
>  include/drm/drm_drv.h     |  1 +
>  2 files changed, 21 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
> index 93543071a500..cca5d8295eb7 100644
> --- a/drivers/gpu/drm/drm_drv.c
> +++ b/drivers/gpu/drm/drm_drv.c
> @@ -499,6 +499,26 @@ void drm_dev_unplug(struct drm_device *dev)
>  }
>  EXPORT_SYMBOL(drm_dev_unplug);
>  
> +/**
> + * drm_dev_wedged_event - generate a device wedged uevent
> + * @dev: DRM device
> + *
> + * This generates a device wedged uevent for the DRM device specified by @dev,
> + * on the basis of which, userspace may take respective action to recover the
> + * device. Currently we only set WEDGED=1 in the uevent environment, but this
> + * can be expanded in the future.
> + */
> +void drm_dev_wedged_event(struct drm_device *dev)
> +{
> +	char *event_string = "WEDGED=1";
> +	char *envp[] = { event_string, NULL };
> +
> +	drm_info(dev, "device wedged, generating uevent\n");
> +
> +	kobject_uevent_env(&dev->primary->kdev->kobj, KOBJ_CHANGE, envp);
> +}
> +EXPORT_SYMBOL(drm_dev_wedged_event);
> +
>  /*
>   * DRM internal mount
>   * We want to be able to allocate our own "struct address_space" to control
> diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
> index cd37936c3926..eed5e54c74fd 100644
> --- a/include/drm/drm_drv.h
> +++ b/include/drm/drm_drv.h
> @@ -489,6 +489,7 @@ void drm_put_dev(struct drm_device *dev);
>  bool drm_dev_enter(struct drm_device *dev, int *idx);
>  void drm_dev_exit(int idx);
>  void drm_dev_unplug(struct drm_device *dev);
> +void drm_dev_wedged_event(struct drm_device *dev);
>  
>  /**
>   * drm_dev_is_unplugged - is a DRM device unplugged
> -- 
> 2.34.1
> 

-- 
Simona Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
