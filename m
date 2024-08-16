Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FC7954C13
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2024 16:15:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADD8910E7AC;
	Fri, 16 Aug 2024 14:15:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by gabe.freedesktop.org (Postfix) with ESMTP id 77C2B10E7B9
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2024 14:15:30 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1C79D143D
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2024 07:15:56 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E743E3F73B
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2024 07:15:29 -0700 (PDT)
Date: Fri, 16 Aug 2024 15:15:21 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: daniel@ffwll.ch, airlied@gmail.com, jfalempe@redhat.com,
 javierm@redhat.com, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, nouveau@lists.freedesktop.org
Subject: Re: [PATCH 07/86] drm/arm/komeda: Run DRM default client setup
Message-ID: <Zr9e-XdYo0fH4dCy@e110455-lin.cambridge.arm.com>
References: <20240816125408.310253-1-tzimmermann@suse.de>
 <20240816125408.310253-8-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240816125408.310253-8-tzimmermann@suse.de>
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

On Fri, Aug 16, 2024 at 02:22:33PM +0200, Thomas Zimmermann wrote:
> Call drm_client_setup() to run the kernel's default client setup
> for DRM. Set fbdev_probe in struct drm_driver, so that the client
> setup can start the common fbdev client.
> 
> The komeda driver specifies a preferred color mode of 32. As this
> is the default if no format has been given, leave it out entirely.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Liviu Dudau <liviu.dudau@arm.com>

Acked-by: Liviu Dudau <liviu.dudau@arm.com>

> ---
>  drivers/gpu/drm/arm/display/komeda/komeda_drv.c | 4 ++--
>  drivers/gpu/drm/arm/display/komeda/komeda_kms.c | 2 ++
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_drv.c b/drivers/gpu/drm/arm/display/komeda/komeda_drv.c
> index 55c3773befde..6d475bb34002 100644
> --- a/drivers/gpu/drm/arm/display/komeda/komeda_drv.c
> +++ b/drivers/gpu/drm/arm/display/komeda/komeda_drv.c
> @@ -9,7 +9,7 @@
>  #include <linux/of.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
> -#include <drm/drm_fbdev_dma.h>
> +#include <drm/drm_client_setup.h>
>  #include <drm/drm_module.h>
>  #include <drm/drm_of.h>
>  #include "komeda_dev.h"
> @@ -84,7 +84,7 @@ static int komeda_platform_probe(struct platform_device *pdev)
>  	}
>  
>  	dev_set_drvdata(dev, mdrv);
> -	drm_fbdev_dma_setup(&mdrv->kms->base, 32);
> +	drm_client_setup(&mdrv->kms->base, NULL);
>  
>  	return 0;
>  
> diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_kms.c b/drivers/gpu/drm/arm/display/komeda/komeda_kms.c
> index fe46b0ebefea..f3314261925c 100644
> --- a/drivers/gpu/drm/arm/display/komeda/komeda_kms.c
> +++ b/drivers/gpu/drm/arm/display/komeda/komeda_kms.c
> @@ -9,6 +9,7 @@
>  #include <drm/drm_atomic.h>
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_drv.h>
> +#include <drm/drm_fbdev_dma.h>
>  #include <drm/drm_gem_dma_helper.h>
>  #include <drm/drm_gem_framebuffer_helper.h>
>  #include <drm/drm_managed.h>
> @@ -58,6 +59,7 @@ static irqreturn_t komeda_kms_irq_handler(int irq, void *data)
>  static const struct drm_driver komeda_kms_driver = {
>  	.driver_features = DRIVER_GEM | DRIVER_MODESET | DRIVER_ATOMIC,
>  	DRM_GEM_DMA_DRIVER_OPS_WITH_DUMB_CREATE(komeda_gem_dma_dumb_create),
> +	DRM_FBDEV_DMA_DRIVER_OPS,
>  	.fops = &komeda_cma_fops,
>  	.name = "komeda",
>  	.desc = "Arm Komeda Display Processor driver",
> -- 
> 2.46.0
> 

-- 
====================
| I would like to |
| fix the world,  |
| but they're not |
| giving me the   |
 \ source code!  /
  ---------------
    ¯\_(ツ)_/¯
