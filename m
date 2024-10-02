Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F04098D75A
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2024 15:48:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EA0F10E739;
	Wed,  2 Oct 2024 13:48:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by gabe.freedesktop.org (Postfix) with ESMTP id 83A5410E735
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2024 13:48:44 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B6870339
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2024 06:49:13 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id F027B3F64C
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2024 06:48:43 -0700 (PDT)
Date: Wed, 2 Oct 2024 14:48:34 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: javierm@redhat.com, airlied@gmail.com, simona@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 02/28] drm/arm/hdlcd: Use video aperture helpers
Message-ID: <Zv1PMoDuDCfUp9vy@e110455-lin.cambridge.arm.com>
References: <20240930130921.689876-1-tzimmermann@suse.de>
 <20240930130921.689876-3-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240930130921.689876-3-tzimmermann@suse.de>
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

On Mon, Sep 30, 2024 at 03:03:00PM +0200, Thomas Zimmermann wrote:
> DRM's aperture functions have long been implemented as helpers
> under drivers/video/ for use with fbdev. Avoid the DRM wrappers by
> calling the video functions directly.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Liviu Dudau <liviu.dudau@arm.com>

Acked-by: Liviu Dudau <liviu.dudau@arm.com>

Best regards,
Liviu

> ---
>  drivers/gpu/drm/arm/hdlcd_drv.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/arm/hdlcd_drv.c b/drivers/gpu/drm/arm/hdlcd_drv.c
> index f5d358f3893b..cd4389809d42 100644
> --- a/drivers/gpu/drm/arm/hdlcd_drv.c
> +++ b/drivers/gpu/drm/arm/hdlcd_drv.c
> @@ -9,6 +9,7 @@
>   *  ARM HDLCD Driver
>   */
>  
> +#include <linux/aperture.h>
>  #include <linux/module.h>
>  #include <linux/spinlock.h>
>  #include <linux/clk.h>
> @@ -21,7 +22,6 @@
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
>  
> -#include <drm/drm_aperture.h>
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_client_setup.h>
>  #include <drm/drm_crtc.h>
> @@ -287,7 +287,7 @@ static int hdlcd_drm_bind(struct device *dev)
>  	 */
>  	if (hdlcd_read(hdlcd, HDLCD_REG_COMMAND)) {
>  		hdlcd_write(hdlcd, HDLCD_REG_COMMAND, 0);
> -		drm_aperture_remove_framebuffers(&hdlcd_driver);
> +		aperture_remove_all_conflicting_devices(hdlcd_driver.name);
>  	}
>  
>  	drm_mode_config_reset(drm);
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
