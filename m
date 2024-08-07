Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D2894A594
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 12:33:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5785F10E492;
	Wed,  7 Aug 2024 10:33:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="DYzq8Vuy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B988610E492
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2024 10:33:42 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id
 5b1f17b1804b1-428243f928fso15579935e9.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 Aug 2024 03:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1723026821; x=1723631621;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id:from
 :to:cc:subject:date:message-id:reply-to;
 bh=F4/jDVgTYyo4zZ526dHJtpMC6btRzYL7FVxdeDKeY4E=;
 b=DYzq8Vuy1OcUQVyrm9bEmC1WQyNceV9jJvI3dkUA9PSa70ZVENeTjCDruxxPA+WPsb
 D69cjgKGaIjqbKz1v0TDewEt4eugBptoHXZLybWgv83b8WRLsnW/i1jGhean3MEZu1lL
 DN7U16GYcussmg7111qdj/R/qa97QzWtCjwyMpFOTxsmSEGJqMU/Hs78nGLAo74x9CHO
 IXwy0LiV7WMlMuBMnwrW+6FkLUw3BtWtMIEyGQu8osD1wmFl/Jt7MN8FmGfqRnsXD61o
 f2WWhQdybP69abAsomwm8o5ufZZS+o175xYfnH9DqMRz8I8yQ7Bfd4pLikEmgDnfW1t/
 lxxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723026821; x=1723631621;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=F4/jDVgTYyo4zZ526dHJtpMC6btRzYL7FVxdeDKeY4E=;
 b=Uo8U5LXL5zSDGobKRlTC5cPIi2UfvwyJ36G7AWIyp72KOBKBcAylSyARFGAKEcCMAL
 8lysTvhXZ6AkJNWK+XR1/XzmRhyEzs8xwUtfXaG8iCO+t+ZhS7R/Sl+6KOectEzo70Cv
 uMT4cnCjUC67VPiTBRU1QEY6SIYC6yVhwM4nFyep+ou6WVFnUIY8I2s4/GcTTjM8NF94
 UjoD9fj7k+w0pgCe8617vO/kGfIoIVvlLym4y3j5tzyeAzq7EoTCseIEUQ+KJZVJhlAl
 Hl3j0zypUkaqLVe2ihftjD/0bk9AUhUEmaMIFh86c6uCDQViGYpH8crdfZdx0w8OfVho
 xmYQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUPLP+4bAJDYCln8gjaue3sMgEBd/uNDsqCZsZduuarsWQMOma//c/SdkETOtjlgpGM9fgMhcXbDIFTV4tHHenHYsczavTEeKnLWI6K8F7C
X-Gm-Message-State: AOJu0Yz3Q7+vAlNcG+9GvK3Qmd3iB8xZSHYjf0ZdgYkGPNDXo1nTcZO6
 j90/HG2nzuT2YPBWC3X3iRB3Il3aKhm/Xl6cResQtnkHKdZtDKMWZBZerUJBVoZ47o8lBRBXa0W
 k
X-Google-Smtp-Source: AGHT+IGfTiVrietAUJIM8tpBcdVGGC6NqvlyRBPma8JQaejOpZkGdpUwDQdlBxp0PQ4WmGxmK05mWA==
X-Received: by 2002:a05:600c:4f07:b0:426:6714:5415 with SMTP id
 5b1f17b1804b1-428e6b7e993mr147645945e9.30.1723026820735; 
 Wed, 07 Aug 2024 03:33:40 -0700 (PDT)
Received: from [192.168.0.101] ([84.69.19.168])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42905801d08sm22376445e9.30.2024.08.07.03.33.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 07 Aug 2024 03:33:40 -0700 (PDT)
Message-ID: <7af4d090-008d-4919-aeea-d85104080cff@ursulin.net>
Date: Wed, 7 Aug 2024 11:33:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] drm/i915: remove i915_report_error()
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1722951405.git.jani.nikula@intel.com>
 <19eab020c57c0fa45acacf4e4a8077e57cd4d561.1722951405.git.jani.nikula@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <19eab020c57c0fa45acacf4e4a8077e57cd4d561.1722951405.git.jani.nikula@intel.com>
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


On 06/08/2024 14:38, Jani Nikula wrote:
> i915_report_error() has only two users, both in driver probe. I doubt
> these cases are worth having a dedicated wrapper to also print bug
> reporting info. Just switch them to regular drm_err() and remove the
> wrapper.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_driver.c | 8 ++++----
>   drivers/gpu/drm/i915/i915_utils.h  | 3 ---
>   2 files changed, 4 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index fb8e9c2fcea5..94dca1d8bb15 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -451,8 +451,8 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>   	if (HAS_PPGTT(dev_priv)) {
>   		if (intel_vgpu_active(dev_priv) &&
>   		    !intel_vgpu_has_full_ppgtt(dev_priv)) {
> -			i915_report_error(dev_priv,
> -					  "incompatible vGPU found, support for isolated ppGTT required\n");
> +			drm_err(&dev_priv->drm,
> +				"incompatible vGPU found, support for isolated ppGTT required\n");
>   			return -ENXIO;
>   		}
>   	}
> @@ -465,8 +465,8 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>   		 */
>   		if (intel_vgpu_active(dev_priv) &&
>   		    !intel_vgpu_has_hwsp_emulation(dev_priv)) {
> -			i915_report_error(dev_priv,
> -					  "old vGPU host found, support for HWSP emulation required\n");
> +			drm_err(&dev_priv->drm,
> +				"old vGPU host found, support for HWSP emulation required\n");
>   			return -ENXIO;
>   		}
>   	}
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index 06ec6ceb61d5..feb078ae246f 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -49,9 +49,6 @@ void __printf(3, 4)
>   __i915_printk(struct drm_i915_private *dev_priv, const char *level,
>   	      const char *fmt, ...);
>   
> -#define i915_report_error(dev_priv, fmt, ...)				   \
> -	__i915_printk(dev_priv, KERN_ERR, fmt, ##__VA_ARGS__)
> -
>   #if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
>   
>   int __i915_inject_probe_error(struct drm_i915_private *i915, int err,

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

Regards,

Tvrtko
