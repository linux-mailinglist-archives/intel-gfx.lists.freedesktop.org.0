Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C05561BCAB3
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 20:52:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0C096E895;
	Tue, 28 Apr 2020 18:52:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D34F6E895
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 18:52:21 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id h4so4030209wmb.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 11:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1fk1P+rnDe0umjeDIvp+vfpU9E3PVpmXBSETDQT9r8o=;
 b=Mbt0ltVAd+1nkTOL8h26e7uBY6VF6ArVCculxTkvpFnX1U4uEm+HYlzCOYyITYsiWx
 y7L0toiucza0Ht4FuD1NwixLenmGCpavI/EB7q3ZItHy/micvYyWP+/EJcebbdbNkLnX
 Ki+ITuma4rMuxtqnwmoeF6aTeyCenJpE61BAA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1fk1P+rnDe0umjeDIvp+vfpU9E3PVpmXBSETDQT9r8o=;
 b=RF/ybn18K/0A0Lg80m2/nc/0GuPNlLtvcGlL/qRkaLCD+z15zYPvPtqoSnJTPiZsZP
 5+vTNzEQsQXDzAHlzgCNsCAQv7L8pncCt6b8wfCqmphQZKpDs+7lIHypvbN7Xwr/pTQH
 BsGQg83IkwngHI/Heii76MzQv3oddYhdUNtz7eC9McuYptkhao4xN6iGw2JTtjbhpKDu
 FwYV5UPBjzDOHj0PPf7cnbpGPk01AeIKubSL9CSF1/n9u/cE98ehe5B6kn06QfDOb7w1
 PeRoUT105yEYnJ00Gxr6Xe4vxfO/qh3z5QSJAzWUeB640lxA8QURFTVMuOSxR+F1ACXf
 WXtw==
X-Gm-Message-State: AGi0PuZUIMdpgpRF3Fd9GVVvTIAnNsPNqlnWU5SC/HbSsvjLbOqCmjKS
 EwrkYXVMlUPBak5XyYeOkiutSv1Ou7A=
X-Google-Smtp-Source: APiQypJ8DnecuOacY+hmzcazm2b23nwzZL/SMbD2Yz3EV/dnz6F+8jFEupuYznsiAQbC4uqi19QV9g==
X-Received: by 2002:a1c:ba09:: with SMTP id k9mr5941540wmf.176.1588099939861; 
 Tue, 28 Apr 2020 11:52:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id e2sm26543954wrv.89.2020.04.28.11.52.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 11:52:18 -0700 (PDT)
Date: Tue, 28 Apr 2020 20:52:17 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Message-ID: <20200428185217.GA3456981@phenom.ffwll.local>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
 <20200415074034.175360-39-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415074034.175360-39-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 38/59] drm/i915: Use devm_drm_dev_alloc
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
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 15, 2020 at 09:40:13AM +0200, Daniel Vetter wrote:
> Luckily we're already well set up in the main driver, with
> drm_dev_put() being the last thing in both the unload error case and
> the pci remove function.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>

Pushed to drm-misc-next with Jani's irc-ack.
-Daniel

> ---
>  drivers/gpu/drm/i915/i915_drv.c | 17 ++++-------------
>  drivers/gpu/drm/i915/i915_pci.c |  2 --
>  2 files changed, 4 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index 641f5e03b661..ff9a5b1b4c6d 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -877,19 +877,11 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
>  		(struct intel_device_info *)ent->driver_data;
>  	struct intel_device_info *device_info;
>  	struct drm_i915_private *i915;
> -	int err;
>  
> -	i915 = kzalloc(sizeof(*i915), GFP_KERNEL);
> -	if (!i915)
> -		return ERR_PTR(-ENOMEM);
> -
> -	err = drm_dev_init(&i915->drm, &driver, &pdev->dev);
> -	if (err) {
> -		kfree(i915);
> -		return ERR_PTR(err);
> -	}
> -
> -	drmm_add_final_kfree(&i915->drm, i915);
> +	i915 = devm_drm_dev_alloc(&pdev->dev, &driver,
> +				  struct drm_i915_private, drm);
> +	if (IS_ERR(i915))
> +		return i915;
>  
>  	i915->drm.pdev = pdev;
>  	pci_set_drvdata(pdev, i915);
> @@ -1006,7 +998,6 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	pci_disable_device(pdev);
>  out_fini:
>  	i915_probe_error(i915, "Device initialization failed (%d)\n", ret);
> -	drm_dev_put(&i915->drm);
>  	return ret;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 66738f2c4f28..2741fb3e30cb 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -941,8 +941,6 @@ static void i915_pci_remove(struct pci_dev *pdev)
>  
>  	i915_driver_remove(i915);
>  	pci_set_drvdata(pdev, NULL);
> -
> -	drm_dev_put(&i915->drm);
>  }
>  
>  /* is device_id present in comma separated list of ids */
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
