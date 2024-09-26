Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7460987428
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 15:07:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC89010EB1E;
	Thu, 26 Sep 2024 13:07:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="cATg3Fyt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B63710EB1C;
 Thu, 26 Sep 2024 13:07:33 +0000 (UTC)
Received: from [192.168.88.20] (91-156-87-48.elisa-laajakaista.fi
 [91.156.87.48])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id AAA97169;
 Thu, 26 Sep 2024 15:06:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1727355964;
 bh=8a9h+HewWsIu+jebXIBna58bL29KBDj60dbTvMIoS9A=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=cATg3FytRRUWRoqGTCzT1bhxmPGFH/AoRoAmQRxSkGfol0CUoO0E2yBVGccdzDeU/
 +ddXW1E1XblonqfHLIAUH84eN2H+0zEwk13XxFYGrkr+bPIxfeZ5KY8fI40Q0vjHpB
 hq392NP0cNGA01tAQ9KgSSHbLk8TfSoZBmIdr1Hk=
Message-ID: <029f0567-f9df-402c-ae42-3bf27c060986@ideasonboard.com>
Date: Thu, 26 Sep 2024 16:07:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 79/80] drm/omapdrm: Remove struct drm_fb_helper from
 struct omap_fbdev.
To: Thomas Zimmermann <tzimmermann@suse.de>, javierm@redhat.com,
 jfalempe@redhat.com, airlied@gmail.com, simona@ffwll.ch
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, nouveau@lists.freedesktop.org
References: <20240924071734.98201-1-tzimmermann@suse.de>
 <20240924071734.98201-80-tzimmermann@suse.de>
Content-Language: en-US
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Autocrypt: addr=tomi.valkeinen@ideasonboard.com; keydata=
 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
In-Reply-To: <20240924071734.98201-80-tzimmermann@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

Hi,

On 24/09/2024 10:13, Thomas Zimmermann wrote:
> Store instances of drm_fb_helper and struct omap_fbdev separately.
> This will allow omapdrm to use the common fbdev client, which allocates
> its own instance of struct drm_fb_helper.
> 
> There is at most one instance of each per DRM device, so both can be
> referenced directly from the omap and DRM device structures. A later
> patchset might rework the common fbdev client to allow for storing
> both, drm_fb_helper and omap_fbdev, together in the same place.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> Acked-by: Javier Martinez Canillas <javierm@redhat.com>
> ---
>   drivers/gpu/drm/omapdrm/omap_drv.h   |  3 ++
>   drivers/gpu/drm/omapdrm/omap_fbdev.c | 42 +++++++++++++++-------------
>   2 files changed, 26 insertions(+), 19 deletions(-)

The ywrap seems to be broken, but it's broken without this series too. 
With some quick hacks I managed to get the omapdrm's panning function 
called, and it works the same way with or without this series.

Tested on DRA76 EVM.

Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

For reference, in case someone is interested fixing omapdrm's ywrap code:

- get_fb() doesn't work. I don't understand the point of the function. 
It compares fbi->fix.id and MODULE_NAME, and the "fbi->fix.id" has 
changed along the years so the check no longer works. Afaik, the whole 
function is not needed, and we can just use fbi->par.

- omap_fbdev_pan_display() doesn't seem to get called when the console 
scrolls. I can get it called with an userspace app that does some y 
panning. Maybe FBINFO_HWACCEL_YWRAP is not supported anymore?

  Tomi

> diff --git a/drivers/gpu/drm/omapdrm/omap_drv.h b/drivers/gpu/drm/omapdrm/omap_drv.h
> index 4c7217b35f6b..d903568fd8cc 100644
> --- a/drivers/gpu/drm/omapdrm/omap_drv.h
> +++ b/drivers/gpu/drm/omapdrm/omap_drv.h
> @@ -32,6 +32,7 @@
>   #define MODULE_NAME     "omapdrm"
>   
>   struct omap_drm_usergart;
> +struct omap_fbdev;
>   
>   struct omap_drm_pipeline {
>   	struct drm_crtc *crtc;
> @@ -97,6 +98,8 @@ struct omap_drm_private {
>   
>   	/* memory bandwidth limit if it is needed on the platform */
>   	unsigned int max_bandwidth;
> +
> +	struct omap_fbdev *fbdev;
>   };
>   
>   
> diff --git a/drivers/gpu/drm/omapdrm/omap_fbdev.c b/drivers/gpu/drm/omapdrm/omap_fbdev.c
> index 523be34682ca..044e80403c3b 100644
> --- a/drivers/gpu/drm/omapdrm/omap_fbdev.c
> +++ b/drivers/gpu/drm/omapdrm/omap_fbdev.c
> @@ -13,6 +13,7 @@
>   #include <drm/drm_fourcc.h>
>   #include <drm/drm_framebuffer.h>
>   #include <drm/drm_gem_framebuffer_helper.h>
> +#include <drm/drm_managed.h>
>   #include <drm/drm_util.h>
>   
>   #include "omap_drv.h"
> @@ -26,10 +27,8 @@ module_param_named(ywrap, ywrap_enabled, bool, 0644);
>    * fbdev funcs, to implement legacy fbdev interface on top of drm driver
>    */
>   
> -#define to_omap_fbdev(x) container_of(x, struct omap_fbdev, base)
> -
>   struct omap_fbdev {
> -	struct drm_fb_helper base;
> +	struct drm_device *dev;
>   	bool ywrap_enabled;
>   
>   	/* for deferred dmm roll when getting called in atomic ctx */
> @@ -41,7 +40,7 @@ static struct drm_fb_helper *get_fb(struct fb_info *fbi);
>   static void pan_worker(struct work_struct *work)
>   {
>   	struct omap_fbdev *fbdev = container_of(work, struct omap_fbdev, work);
> -	struct drm_fb_helper *helper = &fbdev->base;
> +	struct drm_fb_helper *helper = fbdev->dev->fb_helper;
>   	struct fb_info *fbi = helper->info;
>   	struct drm_gem_object *bo = drm_gem_fb_get_obj(helper->fb, 0);
>   	int npages;
> @@ -55,24 +54,25 @@ FB_GEN_DEFAULT_DEFERRED_DMAMEM_OPS(omap_fbdev,
>   				   drm_fb_helper_damage_range,
>   				   drm_fb_helper_damage_area)
>   
> -static int omap_fbdev_pan_display(struct fb_var_screeninfo *var,
> -		struct fb_info *fbi)
> +static int omap_fbdev_pan_display(struct fb_var_screeninfo *var, struct fb_info *fbi)
>   {
>   	struct drm_fb_helper *helper = get_fb(fbi);
> -	struct omap_fbdev *fbdev = to_omap_fbdev(helper);
> +	struct omap_drm_private *priv;
> +	struct omap_fbdev *fbdev;
>   
>   	if (!helper)
>   		goto fallback;
>   
> +	priv = helper->dev->dev_private;
> +	fbdev = priv->fbdev;
> +
>   	if (!fbdev->ywrap_enabled)
>   		goto fallback;
>   
> -	if (drm_can_sleep()) {
> +	if (drm_can_sleep())
>   		pan_worker(&fbdev->work);
> -	} else {
> -		struct omap_drm_private *priv = helper->dev->dev_private;
> +	else
>   		queue_work(priv->wq, &fbdev->work);
> -	}
>   
>   	return 0;
>   
> @@ -92,7 +92,6 @@ static void omap_fbdev_fb_destroy(struct fb_info *info)
>   	struct drm_fb_helper *helper = info->par;
>   	struct drm_framebuffer *fb = helper->fb;
>   	struct drm_gem_object *bo = drm_gem_fb_get_obj(fb, 0);
> -	struct omap_fbdev *fbdev = to_omap_fbdev(helper);
>   
>   	DBG();
>   
> @@ -104,7 +103,7 @@ static void omap_fbdev_fb_destroy(struct fb_info *info)
>   
>   	drm_client_release(&helper->client);
>   	drm_fb_helper_unprepare(helper);
> -	kfree(fbdev);
> +	kfree(helper);
>   }
>   
>   /*
> @@ -128,9 +127,9 @@ static const struct fb_ops omap_fb_ops = {
>   static int omap_fbdev_create(struct drm_fb_helper *helper,
>   		struct drm_fb_helper_surface_size *sizes)
>   {
> -	struct omap_fbdev *fbdev = to_omap_fbdev(helper);
>   	struct drm_device *dev = helper->dev;
>   	struct omap_drm_private *priv = dev->dev_private;
> +	struct omap_fbdev *fbdev = priv->fbdev;
>   	struct drm_framebuffer *fb = NULL;
>   	union omap_gem_size gsize;
>   	struct fb_info *fbi = NULL;
> @@ -338,6 +337,7 @@ static const struct drm_client_funcs omap_fbdev_client_funcs = {
>   
>   void omap_fbdev_setup(struct drm_device *dev)
>   {
> +	struct omap_drm_private *priv = dev->dev_private;
>   	struct omap_fbdev *fbdev;
>   	struct drm_fb_helper *helper;
>   	int ret;
> @@ -345,24 +345,28 @@ void omap_fbdev_setup(struct drm_device *dev)
>   	drm_WARN(dev, !dev->registered, "Device has not been registered.\n");
>   	drm_WARN(dev, dev->fb_helper, "fb_helper is already set!\n");
>   
> -	fbdev = kzalloc(sizeof(*fbdev), GFP_KERNEL);
> +	fbdev = drmm_kzalloc(dev, sizeof(*fbdev), GFP_KERNEL);
>   	if (!fbdev)
>   		return;
> -	helper = &fbdev->base;
> +	fbdev->dev = dev;
> +	INIT_WORK(&fbdev->work, pan_worker);
> +
> +	priv->fbdev = fbdev;
>   
> +	helper = kzalloc(sizeof(*helper), GFP_KERNEL);
> +	if (!helper)
> +		return;
>   	drm_fb_helper_prepare(dev, helper, 32, &omap_fb_helper_funcs);
>   
>   	ret = drm_client_init(dev, &helper->client, "fbdev", &omap_fbdev_client_funcs);
>   	if (ret)
>   		goto err_drm_client_init;
>   
> -	INIT_WORK(&fbdev->work, pan_worker);
> -
>   	drm_client_register(&helper->client);
>   
>   	return;
>   
>   err_drm_client_init:
>   	drm_fb_helper_unprepare(helper);
> -	kfree(fbdev);
> +	kfree(helper);
>   }

