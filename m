Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8D9296F3A
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 14:31:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12ED46F626;
	Fri, 23 Oct 2020 12:31:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F4F46F625
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 12:31:16 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id b8so1630331wrn.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 05:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0K9n5btUkQgHNc94+HXshcsD+XAtphIGD4JP/A2UdMg=;
 b=SkDJXPrszRCddtMWdyc8vs7YWfvuZJS6045icRmwg1vjA4ClWcVdxt98H1hN0YTzIU
 fr4U97TObH3GPMYdNg6VOYB+Kju/ZJwjEnqdU2L15GY8iFu/22eyoutQcRP89d11Gi5Y
 izxonozZIw4prJrO+cGJDH6204h4CyBDELjR8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0K9n5btUkQgHNc94+HXshcsD+XAtphIGD4JP/A2UdMg=;
 b=SVcP0WKeUHqJMAKmtosgj2kXEPslbC6y8Oh/dQ5lmr448RxsriY02FqCVDOeMcr+I+
 OvLZDN3mbA5ogXZU+b/sS3YFsdSTLDD3XM1+01gOlJL/GFx3ZoOuHMzk4TKvTknyxYDR
 5ek2m9vKeYP0fvWq+gICYqzTRR4ms2MUkeIp8uiL8hVVYWHrQVCs5F6VR5OjZzn5KOBT
 QrnS9BafeuLepLrTGTDGbzQ3mTCwmz+3f1pKkYUfoV+0tJxl8lvJug9U0U+Wp/WgAGSn
 qIo8qzbS+A3dNlcXw5u7s9FSk1C3jsNxKc3ThGAcwzs3QwT6ihzzhC47rS0rqwkG8k5d
 k5RA==
X-Gm-Message-State: AOAM530T264kOcwu3Rrgy4jslqdx2cqca4JOfnMNVz+v0zWBRkruV7Zm
 wVmg+t8TMdUuziHyIg06ZRtY4A==
X-Google-Smtp-Source: ABdhPJyiKDwA0QQqDjGokW5S1OqzmqdeRB6jBmVN5Xz18a+Kv1tR4wh3VVBde8D51WgpFFiDiPmgMg==
X-Received: by 2002:a5d:6a0d:: with SMTP id m13mr2322946wru.161.1603456274900; 
 Fri, 23 Oct 2020 05:31:14 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v17sm3684425wrc.23.2020.10.23.05.31.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 05:31:13 -0700 (PDT)
Date: Fri, 23 Oct 2020 14:31:11 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <20201023123111.GC401619@phenom.ffwll.local>
References: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
 <20200904143941.110665-11-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200904143941.110665-11-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 10/24] drm/arc: Switch to devm_drm_dev_alloc
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Alexey Brodkin <abrodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 04, 2020 at 04:39:27PM +0200, Daniel Vetter wrote:
> - Need to embedded the drm_device, but for now we keep the usual
>   pointer chasing.
> - No more devm_kzalloc, which fixes a lifetime issues on driver
>   remove.
> - No more drm_dev_put, that's done by devm_ now.
> 
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Alexey Brodkin <abrodkin@synopsys.com>

Ping for some testing/feedback/review on the arcpgu series here. I can
also resend that pile again.

Thanks, Daniel

> ---
>  drivers/gpu/drm/arc/arcpgu.h     |  1 +
>  drivers/gpu/drm/arc/arcpgu_drv.c | 33 +++++++++++++-------------------
>  2 files changed, 14 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/arc/arcpgu.h b/drivers/gpu/drm/arc/arcpgu.h
> index 6aac44b953ad..cd9e932f501e 100644
> --- a/drivers/gpu/drm/arc/arcpgu.h
> +++ b/drivers/gpu/drm/arc/arcpgu.h
> @@ -9,6 +9,7 @@
>  #define _ARCPGU_H_
>  
>  struct arcpgu_drm_private {
> +	struct drm_device	drm;
>  	void __iomem		*regs;
>  	struct clk		*clk;
>  	struct drm_framebuffer	*fb;
> diff --git a/drivers/gpu/drm/arc/arcpgu_drv.c b/drivers/gpu/drm/arc/arcpgu_drv.c
> index f164818ec477..68eb4a31c54b 100644
> --- a/drivers/gpu/drm/arc/arcpgu_drv.c
> +++ b/drivers/gpu/drm/arc/arcpgu_drv.c
> @@ -42,18 +42,14 @@ static void arcpgu_setup_mode_config(struct drm_device *drm)
>  
>  DEFINE_DRM_GEM_CMA_FOPS(arcpgu_drm_ops);
>  
> -static int arcpgu_load(struct drm_device *drm)
> +static int arcpgu_load(struct arcpgu_drm_private *arcpgu)
>  {
> -	struct platform_device *pdev = to_platform_device(drm->dev);
> -	struct arcpgu_drm_private *arcpgu;
> +	struct platform_device *pdev = to_platform_device(arcpgu->drm.dev);
>  	struct device_node *encoder_node = NULL, *endpoint_node = NULL;
> +	struct drm_device *drm = &arcpgu->drm;
>  	struct resource *res;
>  	int ret;
>  
> -	arcpgu = devm_kzalloc(&pdev->dev, sizeof(*arcpgu), GFP_KERNEL);
> -	if (arcpgu == NULL)
> -		return -ENOMEM;
> -
>  	drm->dev_private = arcpgu;
>  
>  	arcpgu->clk = devm_clk_get(drm->dev, "pxlclk");
> @@ -162,30 +158,28 @@ static struct drm_driver arcpgu_drm_driver = {
>  
>  static int arcpgu_probe(struct platform_device *pdev)
>  {
> -	struct drm_device *drm;
> +	struct arcpgu_drm_private *arcpgu;
>  	int ret;
>  
> -	drm = drm_dev_alloc(&arcpgu_drm_driver, &pdev->dev);
> -	if (IS_ERR(drm))
> -		return PTR_ERR(drm);
> +	arcpgu = devm_drm_dev_alloc(&pdev->dev, &arcpgu_drm_driver,
> +				    struct arcpgu_drm_private, drm);
> +	if (IS_ERR(arcpgu))
> +		return PTR_ERR(arcpgu);
>  
> -	ret = arcpgu_load(drm);
> +	ret = arcpgu_load(arcpgu);
>  	if (ret)
> -		goto err_unref;
> +		return ret;
>  
> -	ret = drm_dev_register(drm, 0);
> +	ret = drm_dev_register(&arcpgu->drm, 0);
>  	if (ret)
>  		goto err_unload;
>  
> -	drm_fbdev_generic_setup(drm, 16);
> +	drm_fbdev_generic_setup(&arcpgu->drm, 16);
>  
>  	return 0;
>  
>  err_unload:
> -	arcpgu_unload(drm);
> -
> -err_unref:
> -	drm_dev_put(drm);
> +	arcpgu_unload(&arcpgu->drm);
>  
>  	return ret;
>  }
> @@ -196,7 +190,6 @@ static int arcpgu_remove(struct platform_device *pdev)
>  
>  	drm_dev_unregister(drm);
>  	arcpgu_unload(drm);
> -	drm_dev_put(drm);
>  
>  	return 0;
>  }
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
