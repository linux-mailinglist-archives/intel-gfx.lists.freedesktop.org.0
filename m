Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B166436E9B4
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 13:40:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C93E6EE43;
	Thu, 29 Apr 2021 11:40:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3280B6EE40
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 11:40:32 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 f15-20020a05600c4e8fb029013f5599b8a9so9077488wmq.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 04:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9eUkxQOkVtQDsF9AwW1ogEMCTUXqtTF+d+YnllLLjEg=;
 b=YAoccdsFiPYqGJfIn/ZoRDYWHv/Q3ZF9Y7n7AwQ+X+Q/4CVynOl4O3Wh6JMNCT5IzY
 uqXjovTfjYnCWXAwNTd60dzQl0DSuFTl8otxbfI1/O9wbJajUpUrTGI+LMX82EYFW7dH
 NSheFuQjSO6DgbF9h+juTkX/elPK08f0uKcS0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9eUkxQOkVtQDsF9AwW1ogEMCTUXqtTF+d+YnllLLjEg=;
 b=Gs0kVneU6N9CXoKAhSXLEVrxJMJTeIZ4c1CG3IXczP4KOxAnAoFd2Vmw7CqnFL1z3F
 +aQVmMSVNPtEl0MhRYL8GW13NMbNCFLR2kS7tlPm7O9hzpClO3mnX+b/8hyIAHt3eihC
 AhVLH9MCQ3iZ/C1qegA4IN9YSffk+u/XTU0SJRHaJ8jlUCzG2xYpdjU5IHN93cWeN41B
 SdP4w9hy43P0pvdhN5i33+zzx31x3HsPzYhi+GpSPEpE/HTMpSdNvsSPEgYDHjb34sYn
 NbTdEb8ZNmSOKhPcro94Y8dPcvLMnoOyu7znImU7q/1P9pfTYnUvuQkLKQZQFG9H6FNx
 w9fQ==
X-Gm-Message-State: AOAM532bgeyAAwWeesRXYSJWN5X7lrmZS2SLaUBjq/tTAmIIEyTSrEBU
 ByPvB11SJLsBCsYduTgOo54dHw==
X-Google-Smtp-Source: ABdhPJy6P94bq1TrQU8Q0uKhEm5PJtAjsM/T+lraIRT6DDfyHLGiD3njKgkzDmrd0SOO3lsGi098Fg==
X-Received: by 2002:a1c:f618:: with SMTP id w24mr36312197wmc.93.1619696430950; 
 Thu, 29 Apr 2021 04:40:30 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q12sm1942738wrx.17.2021.04.29.04.40.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Apr 2021 04:40:30 -0700 (PDT)
Date: Thu, 29 Apr 2021 13:40:28 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <YIqbLDIeGXNSjSTS@phenom.ffwll.local>
References: <20210428215257.500088-1-hdegoede@redhat.com>
 <20210428215257.500088-2-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210428215257.500088-2-hdegoede@redhat.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/connector: Make the drm_sysfs
 connector->kdev device hold a reference to the connector
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
Cc: dri-devel@lists.freedesktop.org,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 platform-driver-x86@vger.kernel.org, linux-usb@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 28, 2021 at 11:52:49PM +0200, Hans de Goede wrote:
> Userspace could hold open a reference to the connector->kdev device,
> through e.g. holding a sysfs-atrtribute open after
> drm_sysfs_connector_remove() has been called. In this case the connector
> could be free-ed while the connector->kdev device's drvdata is still
> pointing to it.
> 
> Give drm_connector devices there own device type, which allows
> us to specify our own release function and make drm_sysfs_connector_add()
> take a reference on the connector object, and have the new release
> function put the reference when the device is released.
> 
> Giving drm_connector devices there own device type, will also allow
> checking if a device is a drm_connector device with a
> "if (device->type == &drm_sysfs_device_connector)" check.
> 
> Note that the setting of the name member of the device_type struct will
> cause udev events for drm_connector-s to now contain DEVTYPE=drm_connector
> as extra info. So this extends the uevent part of the userspace API.
> 
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>

Are you sure? I thought sysfs is supposed to flush out any pending
operations (they complete fast) and handle open fd internally?

Also I'd assume this creates a loop since the connector holds a reference
on the kdev?
-Daniel

> ---
>  drivers/gpu/drm/drm_sysfs.c | 54 +++++++++++++++++++++++++++++++------
>  1 file changed, 46 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_sysfs.c b/drivers/gpu/drm/drm_sysfs.c
> index f0336c804639..c344c6d5e738 100644
> --- a/drivers/gpu/drm/drm_sysfs.c
> +++ b/drivers/gpu/drm/drm_sysfs.c
> @@ -50,6 +50,10 @@ static struct device_type drm_sysfs_device_minor = {
>  	.name = "drm_minor"
>  };
>  
> +static struct device_type drm_sysfs_device_connector = {
> +	.name = "drm_connector",
> +};
> +
>  struct class *drm_class;
>  
>  static char *drm_devnode(struct device *dev, umode_t *mode)
> @@ -271,30 +275,64 @@ static const struct attribute_group *connector_dev_groups[] = {
>  	NULL
>  };
>  
> +static void drm_sysfs_connector_release(struct device *dev)
> +{
> +	struct drm_connector *connector = to_drm_connector(dev);
> +
> +	drm_connector_put(connector);
> +	kfree(dev);
> +}
> +
>  int drm_sysfs_connector_add(struct drm_connector *connector)
>  {
>  	struct drm_device *dev = connector->dev;
> +	struct device *kdev;
> +	int r;
>  
>  	if (connector->kdev)
>  		return 0;
>  
> -	connector->kdev =
> -		device_create_with_groups(drm_class, dev->primary->kdev, 0,
> -					  connector, connector_dev_groups,
> -					  "card%d-%s", dev->primary->index,
> -					  connector->name);
> +	kdev = kzalloc(sizeof(*kdev), GFP_KERNEL);
> +	if (!kdev)
> +		return -ENOMEM;
> +
> +	device_initialize(kdev);
> +	kdev->class = drm_class;
> +	kdev->type = &drm_sysfs_device_connector;
> +	kdev->parent = dev->primary->kdev;
> +	kdev->groups = connector_dev_groups;
> +	kdev->release = drm_sysfs_connector_release;
> +	dev_set_drvdata(kdev, connector);
> +
> +	r = dev_set_name(kdev, "card%d-%s", dev->primary->index, connector->name);
> +	if (r)
> +		goto err_free;
> +
>  	DRM_DEBUG("adding \"%s\" to sysfs\n",
>  		  connector->name);
>  
> -	if (IS_ERR(connector->kdev)) {
> -		DRM_ERROR("failed to register connector device: %ld\n", PTR_ERR(connector->kdev));
> -		return PTR_ERR(connector->kdev);
> +	r = device_add(kdev);
> +	if (r) {
> +		DRM_ERROR("failed to register connector device: %d\n", r);
> +		goto err_free;
>  	}
>  
> +	/*
> +	 * Ensure the connector object does not get free-ed if userspace still has
> +	 * references open to the device through e.g. the connector sysfs-attributes.
> +	 */
> +	drm_connector_get(connector);
> +
> +	connector->kdev = kdev;
> +
>  	if (connector->ddc)
>  		return sysfs_create_link(&connector->kdev->kobj,
>  				 &connector->ddc->dev.kobj, "ddc");
>  	return 0;
> +
> +err_free:
> +	put_device(kdev);
> +	return r;
>  }
>  
>  void drm_sysfs_connector_remove(struct drm_connector *connector)
> -- 
> 2.31.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
