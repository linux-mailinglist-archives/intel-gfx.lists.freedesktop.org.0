Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B563E0A4D
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 00:23:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56A9289A32;
	Wed,  4 Aug 2021 22:23:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BF18899A5
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Aug 2021 22:23:31 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 l8-20020a05600c1d08b02902b5acf7d8b5so1638208wms.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Aug 2021 15:23:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=jEthsYo5cmrwocLVz5njVZMxGrlW+toglpTtJsaIK7Q=;
 b=TMQCCF2AiqRqYKNVsJzmTaCv9ETLG5R6ez+x/GFOxzQEpuUj0eYZsU5tMsplR/wd1a
 Ihx54UjmrGlgp5lh2XOIDxNOqh9NxkJrCQD7EEIrwN9FqlUoDU51/L4PAJ/ROYIsJLhk
 fNNTdU7tkKIrkutkxblA1H6kRSqbxYpN8MQkk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jEthsYo5cmrwocLVz5njVZMxGrlW+toglpTtJsaIK7Q=;
 b=omnslrVwyA2KzONnJHOz16M9z50/4zVzlfaA3IZ7x2uPVvubHpd2ioYX+/YSQOBOT5
 IhpgO9joTovAzoDZst4iYE1fi4S8qJMMhk7mbW9oMKuSm6pqO95sKza1W7gA7R7pdf8/
 rkUn4cQ6LiJXID0gISYK8yVd6fQsQ+tHwciSUT526ubFiq5VAAOvOi89UWfbMlvQWRWE
 czkkSQnUidcnrI+x1elz6x6ML9QBRFenWUC6zG93ZpqeUlR1IyZujYYrk63/Mgr5ycKH
 n+HhUH/RGXMIe2r34w0qp1RJlBZdA2ePUMyqYqrKX5LLDwafpfOsFJy9EYJpSZNCpbCA
 EcnQ==
X-Gm-Message-State: AOAM5313Kn6Uqx1H0bA6o0rHr+sc9chf/h9X+FNh0qN2+v4HbHcwo/JY
 jpXhSdZ/gjfMnV6LHEvt7ZfkZQ==
X-Google-Smtp-Source: ABdhPJwYLFgpfdYepUN2MuHQqFPd1xW8bR0+VIKEYilePW9STlhRYu9TyL1aJNmvMCqqfXnMsSDNrw==
X-Received: by 2002:a1c:7409:: with SMTP id p9mr1568025wmc.3.1628115809498;
 Wed, 04 Aug 2021 15:23:29 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s14sm3434701wmc.25.2021.08.04.15.23.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Aug 2021 15:23:28 -0700 (PDT)
Date: Thu, 5 Aug 2021 00:23:21 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Imre Deak <imre.deak@intel.com>
Cc: linux-fbdev@vger.kernel.org, Kai-Heng Feng <kai.heng.feng@canonical.com>,
 dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>, intel-gfx@lists.freedesktop.org
Message-ID: <YQsTWSGIgY00XEU7@phenom.ffwll.local>
References: <20210802133551.1904964-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210802133551.1904964-1-imre.deak@intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH] fbdev/efifb: Release PCI device's runtime
 PM ref during FB destroy
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

On Mon, Aug 02, 2021 at 04:35:51PM +0300, Imre Deak wrote:
> Atm the EFI FB driver gets a runtime PM reference for the associated GFX
> PCI device during driver probing and releases it only when removing the
> driver.
> 
> When fbcon switches to the FB provided by the PCI device's driver (for
> instance i915/drmfb), the EFI FB will get only unregistered without the
> EFI FB driver getting unloaded, keeping the runtime PM reference
> acquired during driver probing. This reference will prevent the PCI
> driver from runtime suspending the device.
> 
> Fix this by releasing the RPM reference from the EFI FB's destroy hook,
> called when the FB gets unregistered.
> 
> Fixes: a6c0fd3d5a8b ("efifb: Ensure graphics device for efifb stays at PCI D0")
> Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Patch looks good:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

But I've found a bunch of ordering issues here:
- we should probably get the runtime pm reference _before_ we register the
  framebuffer. There's a race right now about there.
- the sysfs_remove_groups and framebuffer_release should also be moved
  into the destroy callback. This is more a leak type of situation.

Cheers, Daniel

> ---
>  drivers/video/fbdev/efifb.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/video/fbdev/efifb.c b/drivers/video/fbdev/efifb.c
> index 8ea8f079cde26..25cdea32b9633 100644
> --- a/drivers/video/fbdev/efifb.c
> +++ b/drivers/video/fbdev/efifb.c
> @@ -47,6 +47,8 @@ static bool use_bgrt = true;
>  static bool request_mem_succeeded = false;
>  static u64 mem_flags = EFI_MEMORY_WC | EFI_MEMORY_UC;
>  
> +static struct pci_dev *efifb_pci_dev;	/* dev with BAR covering the efifb */
> +
>  static struct fb_var_screeninfo efifb_defined = {
>  	.activate		= FB_ACTIVATE_NOW,
>  	.height			= -1,
> @@ -243,6 +245,9 @@ static inline void efifb_show_boot_graphics(struct fb_info *info) {}
>  
>  static void efifb_destroy(struct fb_info *info)
>  {
> +	if (efifb_pci_dev)
> +		pm_runtime_put(&efifb_pci_dev->dev);
> +
>  	if (info->screen_base) {
>  		if (mem_flags & (EFI_MEMORY_UC | EFI_MEMORY_WC))
>  			iounmap(info->screen_base);
> @@ -333,7 +338,6 @@ ATTRIBUTE_GROUPS(efifb);
>  
>  static bool pci_dev_disabled;	/* FB base matches BAR of a disabled device */
>  
> -static struct pci_dev *efifb_pci_dev;	/* dev with BAR covering the efifb */
>  static struct resource *bar_resource;
>  static u64 bar_offset;
>  
> @@ -603,8 +607,6 @@ static int efifb_remove(struct platform_device *pdev)
>  	unregister_framebuffer(info);
>  	sysfs_remove_groups(&pdev->dev.kobj, efifb_groups);
>  	framebuffer_release(info);
> -	if (efifb_pci_dev)
> -		pm_runtime_put(&efifb_pci_dev->dev);
>  
>  	return 0;
>  }
> -- 
> 2.27.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
