Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4621A984472
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 13:23:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11B2F10E6CD;
	Tue, 24 Sep 2024 11:23:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="SxcIYGkW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
 [209.85.218.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7BF710E6D8
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2024 11:23:17 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id
 a640c23a62f3a-a8d2b24b7a8so238574266b.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2024 04:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1727176996; x=1727781796; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=PWF4jgAjAqYALGiQR7ccrKly/48F752VryNGutLVGB4=;
 b=SxcIYGkW29F0kMLgydKGn7+IEEz8iPZTDN/I3P74OwETRche4dU5mnI6Fp60tnoBD+
 5Z8jwh2Jshd8JfJKuSHu0KYOejVK6GA7CGVj4bq0dqBH3VAYcAPSTHWs/tdUOH9pf2zc
 xw7/hLrk2Lx5a3MxajhEqTaBq+CIWqgCBnQWU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727176996; x=1727781796;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PWF4jgAjAqYALGiQR7ccrKly/48F752VryNGutLVGB4=;
 b=sOXPSzB5i3JRXGohesUtbOHbWWUyYU/ekKNHYro1UA6BPew1vqjD0SspjL4kV/rfte
 EvdnxABjrqZG7x0OtMTNKkzSYrteUQsQ9wEqUhxnLx27rQgdKleRl11CF/log2bSSsYM
 ls+t0wevLhYA1RaDQZ/Q909VFwmypGmBNUoqbUEBzK6GPF0gcJ6pyLtZkN5+fX55nGHN
 yunR0C/pK/hxcXq+JDIargqC6dgusfCT/BJ3YvSU4Vg1t1uPCIf3vxA5a11+ge+zcZZy
 0GVVkie4poaphMZAejcPZUXH0E62jV8SsC6kX4JYmkhdLAdo5NRQKMxhFJ8wqcSyMJ3R
 /Hew==
X-Forwarded-Encrypted: i=1;
 AJvYcCUsksF3MWyhvzUkwHAL1Y3N6+L6i4VO+obCMFNdzin2tokZvOtS+OZaV/LR4cJO5AteGKdswIIWYHQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Ywf6n7KTDrkLJJpqIVda5+ruZnOYVePCDw0TwX4Jd6ZN0F6qbtu
 2bhbRLzctEpZq0DERE6FGLdyJ7FxPsEIJznG04MZRXIALDQTxt9+6Gnqclfynbw=
X-Google-Smtp-Source: AGHT+IEidRMre7ErKs8tgKvaFc7lsybDIIF3WlBFvN5M+ui2jWlwdMQmZuKbfKBVmcI4C/7UazzmMQ==
X-Received: by 2002:a17:907:1b85:b0:a86:8f9b:ef6e with SMTP id
 a640c23a62f3a-a92c482d251mr229795766b.13.1727176996011; 
 Tue, 24 Sep 2024 04:23:16 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a93930fae7csm71585866b.169.2024.09.24.04.23.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2024 04:23:15 -0700 (PDT)
Date: Tue, 24 Sep 2024 13:23:13 +0200
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Raag Jadav <raag.jadav@intel.com>
Cc: airlied@gmail.com, simona@ffwll.ch, lucas.demarchi@intel.com,
 thomas.hellstrom@linux.intel.com, rodrigo.vivi@intel.com,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net, lina@asahilina.net,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, himal.prasad.ghimiray@intel.com,
 francois.dugast@intel.com, aravind.iddamsetty@linux.intel.com,
 anshuman.gupta@intel.com, andi.shyti@linux.intel.com,
 andriy.shevchenko@linux.intel.com, matthew.d.roper@intel.com
Subject: Re: [PATCH v6 1/4] drm: Introduce device wedged event
Message-ID: <ZvKhIQGnGrcPURhD@phenom.ffwll.local>
References: <20240923035826.624196-1-raag.jadav@intel.com>
 <20240923035826.624196-2-raag.jadav@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240923035826.624196-2-raag.jadav@intel.com>
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

On Mon, Sep 23, 2024 at 09:28:23AM +0530, Raag Jadav wrote:
> Introduce device wedged event, which will notify userspace of wedged
> (hanged/unusable) state of the DRM device through a uevent. This is
> useful especially in cases where the device is no longer operating as
> expected and has become unrecoverable from driver context.
> 
> Purpose of this implementation is to provide drivers a way to recover
> through userspace intervention. Different drivers may have different
> ideas of a "wedged device" depending on their hardware implementation,
> and hence the vendor agnostic nature of the event. It is up to the drivers
> to decide when they see the need for recovery and how they want to recover
> from the available methods.
> 
> Current implementation defines three recovery methods, out of which,
> drivers can choose to support any one or multiple of them. Preferred
> recovery method will be sent in the uevent environment as WEDGED=<method>.
> Userspace consumers (sysadmin) can define udev rules to parse this event
> and take respective action to recover the device.
> 
>  Method    | Consumer expectations
> -----------|-----------------------------------
>  rebind    | unbind + rebind driver
>  bus-reset | unbind + reset bus device + rebind
>  reboot    | reboot system
> 
> v4: s/drm_dev_wedged/drm_dev_wedged_event
>     Use drm_info() (Jani)
>     Kernel doc adjustment (Aravind)
> v5: Send recovery method with uevent (Lina)
> v6: Access wedge_recovery_opts[] using helper function (Jani)
>     Use snprintf() (Jani)
> 
> Signed-off-by: Raag Jadav <raag.jadav@intel.com>

Finally caught up on mail, so dropping this here again: Please also add a
small section to drm-uapi.rst, pointing at these functions. Just the
kerneldoc for developers is kinda not enough I think.

Also maybe link to an example udev script which handles this would be
neat.

Cheers, Sima


> ---
>  drivers/gpu/drm/drm_drv.c | 41 +++++++++++++++++++++++++++++++++++++++
>  include/drm/drm_device.h  | 24 +++++++++++++++++++++++
>  include/drm/drm_drv.h     | 18 +++++++++++++++++
>  3 files changed, 83 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
> index ac30b0ec9d93..03a5d9009689 100644
> --- a/drivers/gpu/drm/drm_drv.c
> +++ b/drivers/gpu/drm/drm_drv.c
> @@ -70,6 +70,18 @@ static struct dentry *drm_debugfs_root;
>  
>  DEFINE_STATIC_SRCU(drm_unplug_srcu);
>  
> +/*
> + * Available recovery methods for wedged device. To be sent along with device
> + * wedged uevent.
> + */
> +#define WEDGE_LEN	32	/* Need 16+ */
> +
> +const char *const wedge_recovery_opts[] = {
> +	[DRM_WEDGE_RECOVERY_REBIND] = "rebind",
> +	[DRM_WEDGE_RECOVERY_BUS_RESET] = "bus-reset",
> +	[DRM_WEDGE_RECOVERY_REBOOT] = "reboot",
> +};
> +
>  /*
>   * DRM Minors
>   * A DRM device can provide several char-dev interfaces on the DRM-Major. Each
> @@ -497,6 +509,35 @@ void drm_dev_unplug(struct drm_device *dev)
>  }
>  EXPORT_SYMBOL(drm_dev_unplug);
>  
> +/**
> + * drm_dev_wedged_event - generate a device wedged uevent
> + * @dev: DRM device
> + * @method: method to be used for recovery
> + *
> + * This generates a device wedged uevent for the DRM device specified by @dev.
> + * Recovery @method from wedge_recovery_opts[] (if supprted by the device) is
> + * sent in the uevent environment as WEDGED=<method>, on the basis of which,
> + * userspace may take respective action to recover the device.
> + *
> + * Returns: 0 on success, or negative error code otherwise.
> + */
> +int drm_dev_wedged_event(struct drm_device *dev, enum wedge_recovery_method method)
> +{
> +	char event_string[WEDGE_LEN] = {};
> +	char *envp[] = { event_string, NULL };
> +
> +	if (!test_bit(method, &dev->wedge_recovery)) {
> +		drm_err(dev, "device wedged, recovery method not supported\n");
> +		return -EOPNOTSUPP;
> +	}
> +
> +	snprintf(event_string, sizeof(event_string), "WEDGED=%s", recovery_method_name(method));
> +
> +	drm_info(dev, "device wedged, generating uevent\n");
> +	return kobject_uevent_env(&dev->primary->kdev->kobj, KOBJ_CHANGE, envp);
> +}
> +EXPORT_SYMBOL(drm_dev_wedged_event);
> +
>  /*
>   * DRM internal mount
>   * We want to be able to allocate our own "struct address_space" to control
> diff --git a/include/drm/drm_device.h b/include/drm/drm_device.h
> index c91f87b5242d..f1a71763c22a 100644
> --- a/include/drm/drm_device.h
> +++ b/include/drm/drm_device.h
> @@ -40,6 +40,27 @@ enum switch_power_state {
>  	DRM_SWITCH_POWER_DYNAMIC_OFF = 3,
>  };
>  
> +/**
> + * enum wedge_recovery_method - Recovery method for wedged device in order
> + * of severity. To be set as bit fields in drm_device.wedge_recovery variable.
> + * Drivers can choose to support any one or multiple of them depending on their
> + * needs.
> + */
> +
> +enum wedge_recovery_method {
> +	/** @DRM_WEDGE_RECOVERY_REBIND: unbind + rebind driver */
> +	DRM_WEDGE_RECOVERY_REBIND,
> +
> +	/** @DRM_WEDGE_RECOVERY_BUS_RESET: unbind + reset bus device + rebind */
> +	DRM_WEDGE_RECOVERY_BUS_RESET,
> +
> +	/** @DRM_WEDGE_RECOVERY_REBOOT: reboot system */
> +	DRM_WEDGE_RECOVERY_REBOOT,
> +
> +	/** @DRM_WEDGE_RECOVERY_MAX: for bounds checking, do not use */
> +	DRM_WEDGE_RECOVERY_MAX
> +};
> +
>  /**
>   * struct drm_device - DRM device structure
>   *
> @@ -317,6 +338,9 @@ struct drm_device {
>  	 * Root directory for debugfs files.
>  	 */
>  	struct dentry *debugfs_root;
> +
> +	/** @wedge_recovery: Supported recovery methods for wedged device */
> +	unsigned long wedge_recovery;
>  };
>  
>  #endif
> diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
> index 02ea4e3248fd..83d44e153557 100644
> --- a/include/drm/drm_drv.h
> +++ b/include/drm/drm_drv.h
> @@ -45,6 +45,8 @@ struct drm_mode_create_dumb;
>  struct drm_printer;
>  struct sg_table;
>  
> +extern const char *const wedge_recovery_opts[];
> +
>  /**
>   * enum drm_driver_feature - feature flags
>   *
> @@ -461,6 +463,7 @@ void drm_put_dev(struct drm_device *dev);
>  bool drm_dev_enter(struct drm_device *dev, int *idx);
>  void drm_dev_exit(int idx);
>  void drm_dev_unplug(struct drm_device *dev);
> +int drm_dev_wedged_event(struct drm_device *dev, enum wedge_recovery_method method);
>  
>  /**
>   * drm_dev_is_unplugged - is a DRM device unplugged
> @@ -551,4 +554,19 @@ static inline void drm_debugfs_dev_init(struct drm_device *dev, struct dentry *r
>  }
>  #endif
>  
> +static inline bool recovery_method_is_valid(enum wedge_recovery_method method)
> +{
> +	if (method >= DRM_WEDGE_RECOVERY_REBIND && method < DRM_WEDGE_RECOVERY_MAX)
> +		return true;
> +
> +	return false;
> +}
> +
> +static inline const char *recovery_method_name(enum wedge_recovery_method method)
> +{
> +	if (recovery_method_is_valid(method))
> +		return wedge_recovery_opts[method];
> +
> +	return NULL;
> +}
>  #endif
> -- 
> 2.34.1
> 

-- 
Simona Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
