Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E07B48FA4
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 15:32:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AF7310E520;
	Mon,  8 Sep 2025 13:32:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="Pak0qejm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9138010E51E
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 13:32:32 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id
 ffacd0b85a97d-3e4aeaa57b9so2019200f8f.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Sep 2025 06:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1757338351; x=1757943151;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ORECks0Qtl+Ike+y4Ki9+p/2CcwOZp/wrelzq/MN7dQ=;
 b=Pak0qejmKNM8DO3s3awWylhe8y9+Ga7K8sOqiRfO57wmE+7thDfu+PX2bh/Q09wEar
 edgVo7o8Vc+n9yeC09E9QyqawHk86MPhZ0VUkLOAIUUl+/iyb9j2D12ZxFKx2obbpNuY
 tM0GA9gRkBRFjO4SFd5A7MilWtD94Ht20ucjBC74+HN68h+n5Mg8i7BHe+ydV2OqK4Ri
 xk+tKuUiU4o4Jj1VsGfdBwKIs5wyv7hCyinz01AyOTWAXBJxFoKnXuKj3K5fZ6HXdiNQ
 +yz6iKKqXoIJrNyWHUn3jK497QRx3i1zuHwmnBK52aRq3THMBCwAOli3qM4PFKlGgnQz
 t/rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757338351; x=1757943151;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ORECks0Qtl+Ike+y4Ki9+p/2CcwOZp/wrelzq/MN7dQ=;
 b=JQMjCkgLpyoEAaHXQAwZrmB6l5+EIy56OpYO3InuDCEzgF/+Dd4ig5MHaO3eQc7ln/
 AYjRfuIg/yKfmbfb+R49KX7pG6yDysKnDTr6fHcUswHMxt07Wo2LrpUY2Prfclivtep0
 OpapBriQ+7E0IUBIDdewhNOmoHCNyk2esIzd/3WegutT7nS8AfKV9Su6zM15qeisVoEK
 GdfNfz1ai8Y2m0OxwP89PkdltW7VlhpmiAlZiJqnOXPaVrkR2+3oDfP6ux1iIWPpC5TR
 G+rmJqVwDOBB6fEJYsXmpsJxmEDTbWEDoEATlqeBzwnPlkPVL3XsegXZ3WeYiK34kBau
 i+/g==
X-Gm-Message-State: AOJu0Yx3WW3DG9rCN8FZt+XC4eGclW4vCwBrygNTyGSb4gLZ1DmQAcub
 +Gwj6cl8e2jHbt7RJtDDtvJSJB+pNY7Lhjq0D8TOzFGRtdOzp9Ae6WwuWNP0VmSFMOg=
X-Gm-Gg: ASbGnctfbFtevS4+cc20rW4kY/GCqMGiy9xRyJazHapdvVJm3CncIyo/r0g5NPTuEcO
 mEw0TJobHRAZ7ql2+RCyZWey65GPwyeQT1L/P49t6wHIyXylJIIE67yHjsdJE0DCK/LJkEyIMLD
 scMi2Z8W0CXEUvR30WD9q5qt1gkQSEb04bSG+jMNuVe7WYq3W6Rlmh0CI5wJb09aJBYA5/ccF39
 31oHD5CREZheKYjJ4iN9lC1Ba6Fo/qGHDhpse0B4mAG6c63oKvvreSDSqXeoK/K+cMAQ/71qtga
 Ck6cOh9UxNw5N6by8WZeVwdDzgCF7dzSVTncY4+qiUW3EKYWYxFb6oVVPwkQ4ED6COuFUHzbmDn
 w87cdOLV1JVt2QifJgZuiEbJ+aa+xxyCw+9M=
X-Google-Smtp-Source: AGHT+IFxmLdFb3sOPrQAc8CR0c/ubneMMp9wQjrdBuQeiGUF1qyX+f+r+IOpGhGDpSwg6tteWSTCcQ==
X-Received: by 2002:a05:6000:1acf:b0:3e4:24a1:808f with SMTP id
 ffacd0b85a97d-3e643ff6971mr7221372f8f.36.1757338350559; 
 Mon, 08 Sep 2025 06:32:30 -0700 (PDT)
Received: from [192.168.0.101] ([84.66.36.92])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3cf33fba9fbsm41649166f8f.50.2025.09.08.06.32.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Sep 2025 06:32:29 -0700 (PDT)
Message-ID: <b6c5dc00-ecbc-4654-9d0e-efe8d2ae36e4@ursulin.net>
Date: Mon, 8 Sep 2025 14:32:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/9 v4] drm/i915: Move struct_mutex to drm_i915_private
To: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>,
 rodrigo.vivi@intel.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, simona@ffwll.ch, airlied@gmail.com
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net
References: <20250908131518.36625-1-luiz.mello@estudante.ufscar.br>
 <20250908131518.36625-2-luiz.mello@estudante.ufscar.br>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20250908131518.36625-2-luiz.mello@estudante.ufscar.br>
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


On 08/09/2025 14:15, Luiz Otavio Mello wrote:
> Move legacy BKL struct_mutex from drm_device to drm_i915_private, which
> is the last remaining user.
> 
> Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>   drivers/gpu/drm/drm_drv.c                  |  2 --
>   drivers/gpu/drm/i915/gt/uc/intel_guc_log.c |  4 ++--
>   drivers/gpu/drm/i915/i915_driver.c         |  2 ++
>   drivers/gpu/drm/i915/i915_drv.h            | 11 +++++++++++
>   drivers/gpu/drm/i915/i915_irq.c            |  4 ++--
>   include/drm/drm_device.h                   | 10 ----------
>   6 files changed, 17 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
> index cdd591b11488..ad3aee354ba3 100644
> --- a/drivers/gpu/drm/drm_drv.c
> +++ b/drivers/gpu/drm/drm_drv.c
> @@ -694,7 +694,6 @@ static void drm_dev_init_release(struct drm_device *dev, void *res)
>   	mutex_destroy(&dev->master_mutex);
>   	mutex_destroy(&dev->clientlist_mutex);
>   	mutex_destroy(&dev->filelist_mutex);
> -	mutex_destroy(&dev->struct_mutex);
>   }
>   
>   static int drm_dev_init(struct drm_device *dev,
> @@ -735,7 +734,6 @@ static int drm_dev_init(struct drm_device *dev,
>   	INIT_LIST_HEAD(&dev->vblank_event_list);
>   
>   	spin_lock_init(&dev->event_lock);
> -	mutex_init(&dev->struct_mutex);
>   	mutex_init(&dev->filelist_mutex);
>   	mutex_init(&dev->clientlist_mutex);
>   	mutex_init(&dev->master_mutex);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> index 09a64f224c49..65ffcaeee4b9 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> @@ -677,7 +677,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
>   	if (level < GUC_LOG_LEVEL_DISABLED || level > GUC_LOG_LEVEL_MAX)
>   		return -EINVAL;
>   
> -	mutex_lock(&i915->drm.struct_mutex);
> +	mutex_lock(&i915->struct_mutex);
>   
>   	if (log->level == level)
>   		goto out_unlock;
> @@ -695,7 +695,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
>   	log->level = level;
>   
>   out_unlock:
> -	mutex_unlock(&i915->drm.struct_mutex);
> +	mutex_unlock(&i915->struct_mutex);
>   
>   	return ret;
>   }
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index c6263c6d3384..d1559fd8ad3d 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -233,6 +233,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
>   
>   	intel_sbi_init(display);
>   	vlv_iosf_sb_init(dev_priv);
> +	mutex_init(&dev_priv->struct_mutex);
>   	mutex_init(&dev_priv->sb_lock);
>   
>   	i915_memcpy_init_early(dev_priv);
> @@ -291,6 +292,7 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
>   	i915_workqueues_cleanup(dev_priv);
>   
>   	mutex_destroy(&dev_priv->sb_lock);
> +	mutex_destroy(&dev_priv->struct_mutex);
>   	vlv_iosf_sb_fini(dev_priv);
>   	intel_sbi_fini(display);
>   
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 4e4e89746aa6..15f66a7d496d 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -222,6 +222,17 @@ struct drm_i915_private {
>   
>   	bool irqs_enabled;
>   
> +	/*
> +	 * Currently, struct_mutex is only used by the i915 driver as a replacement
> +	 * for BKL.

It's not a replacement for the BKL (i915 does not use the "good old" BKL 
since who knows when), but just a mutex (ab)used by the GuC logging and 
IVB parity interrupt work.

At least the comment should be improved, or even better, if not too much 
work, consider splitting into two separate mutexes. One could probably 
live in the i915->l3_parity and other in struct intel_guc_log.

[comes back later]

Never mind, I see that by the end of the series you get exactly there. 
I'd say series is a bit churny and typically you wouldn't be adding and 
changing so much just to remove it, but I can live with it in this instance.

Regards,

Tvrtko

> +	 *
> +	 * For this reason, it is no longer part of struct drm_device.
> +	 */
> +	struct mutex struct_mutex;
> +
> +	/* LPT/WPT IOSF sideband protection */
> +	struct mutex sbi_lock;
> +
>   	/* VLV/CHV IOSF sideband */
>   	struct {
>   		struct mutex lock; /* protect sideband access */
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 191ed8bb1d9c..cdfb09464134 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -167,7 +167,7 @@ static void ivb_parity_work(struct work_struct *work)
>   	 * In order to prevent a get/put style interface, acquire struct mutex
>   	 * any time we access those registers.
>   	 */
> -	mutex_lock(&dev_priv->drm.struct_mutex);
> +	mutex_lock(&dev_priv->struct_mutex);
>   
>   	/* If we've screwed up tracking, just let the interrupt fire again */
>   	if (drm_WARN_ON(&dev_priv->drm, !dev_priv->l3_parity.which_slice))
> @@ -225,7 +225,7 @@ static void ivb_parity_work(struct work_struct *work)
>   	gen5_gt_enable_irq(gt, GT_PARITY_ERROR(dev_priv));
>   	spin_unlock_irq(gt->irq_lock);
>   
> -	mutex_unlock(&dev_priv->drm.struct_mutex);
> +	mutex_unlock(&dev_priv->struct_mutex);
>   }
>   
>   static irqreturn_t valleyview_irq_handler(int irq, void *arg)
> diff --git a/include/drm/drm_device.h b/include/drm/drm_device.h
> index a33aedd5e9ec..016df5529d46 100644
> --- a/include/drm/drm_device.h
> +++ b/include/drm/drm_device.h
> @@ -188,16 +188,6 @@ struct drm_device {
>   	/** @unique: Unique name of the device */
>   	char *unique;
>   
> -	/**
> -	 * @struct_mutex:
> -	 *
> -	 * Lock for others (not &drm_minor.master and &drm_file.is_master)
> -	 *
> -	 * TODO: This lock used to be the BKL of the DRM subsystem. Move the
> -	 *       lock into i915, which is the only remaining user.
> -	 */
> -	struct mutex struct_mutex;
> -
>   	/**
>   	 * @master_mutex:
>   	 *

