Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A19894A606
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 12:45:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6B6F10E49A;
	Wed,  7 Aug 2024 10:45:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="J6TUlHXY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 903C310E49A
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2024 10:45:05 +0000 (UTC)
Received: by mail-lj1-f179.google.com with SMTP id
 38308e7fff4ca-2ef2c56d9dcso17797731fa.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 Aug 2024 03:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1723027503; x=1723632303;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id:from
 :to:cc:subject:date:message-id:reply-to;
 bh=EvVhgq53bR3M+N8i57Yl7Ieyboa4nJazglDIPygrrwU=;
 b=J6TUlHXYsGksr25uBKm/arsSM1laACWAWjULm8K4vlKr7MsbH/fbHSVgRcXUutts+0
 YknUYXXBGAGIYTKuLBaX/kdjmHCMTCONNeKfVDpLcNe0q1zv3vFH3msWznRZoRv2FuRy
 JYEQ7zNW+3uy1HrLxbsj+fYAKxsVgMEjxhK6vDaxFy0bRx/ZAqngMvfq14JnfDN/rD6r
 86QxFCoF7eWgsl5DSwP8wZmQnzPkVyIGMvyr9y43t68xXa7Cur8wISzkW4l6SklKF4j6
 1/L5/9lemsBuMBtGGUtgORvN7NTNDejkfv2gR8x1bs+dIDEV1b2qdE0dx/vGSbhgSb5Z
 Hh0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723027503; x=1723632303;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=EvVhgq53bR3M+N8i57Yl7Ieyboa4nJazglDIPygrrwU=;
 b=J8AwD571WABhvUrplHlOv+4haXz8vu0FV1+52gU1PxpwkfbpUASRf1XHRU4tRO15Id
 5mIDT1tqn9+tNvSupfMu2W3l8/Z+MoWFczI8i/qz56LnMzNStlhghwg6wZXQcPWeD5Q8
 qG+EqrQoaOoHIZJCWLwkYbOkcSh1066UCk4uvTYLav5QUBgiy7o4z/vThCaLUOA7RP+I
 8X0ud52uaREX1CrBf2GqI5TbiYwVko/1NwU+JD+A+ky/LuuFLo9hyEVCLIoMMrq9oU9p
 90OquU7S6PtqU2zjQCPovS8kMwUMz9xFDu5J9PKSi4PZTjSFloKpf24cB/3GKoPTCVFF
 +oXQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWQxNKqS/yY4brapuXPdY6z45u8w0ZUnJjGKxS958kIQ3jwwztSbICzTLcbyx2YDoTyqEg1AQiPjA+f6zHG0towMdjJyDp2/TeARR5Jdw6j
X-Gm-Message-State: AOJu0YxX8FFhUjIn7l5GgSdIUZIapFpLffP+cJ/cMVefLVAEAwZe1h94
 nh6rXWrgFXyo1UOKiM6xxYjpNPtxzA2CKh96In4bcJ4wjiqL1z5MXvFYbSGge75QrKBfpclchnT
 k
X-Google-Smtp-Source: AGHT+IEGnP4twcGfnfqqYUjj+ITJFBNdajyEaxwNc0HP8ayxtciqlLUI5D1tOl6RXgS5Rv2/w+aXSA==
X-Received: by 2002:a2e:9cd7:0:b0:2ee:87e9:319d with SMTP id
 38308e7fff4ca-2f15ab419bdmr136038751fa.48.1723027503262; 
 Wed, 07 Aug 2024 03:45:03 -0700 (PDT)
Received: from [192.168.0.101] ([84.69.19.168])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4290598e049sm22941195e9.23.2024.08.07.03.45.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 07 Aug 2024 03:45:02 -0700 (PDT)
Message-ID: <f159371c-d0e5-4d83-b7d5-4d418eecca44@ursulin.net>
Date: Wed, 7 Aug 2024 11:45:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] drm/i915: remove __i915_printk()
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1722951405.git.jani.nikula@intel.com>
 <be9baeab281f75999e96cc7ad1c06c6680494bc1.1722951405.git.jani.nikula@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <be9baeab281f75999e96cc7ad1c06c6680494bc1.1722951405.git.jani.nikula@intel.com>
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
> With the previous cleanups, the last remaining user of __i915_printk()
> is i915_probe_error(). Switch that to use drm_dbg() and drm_err()
> instead, dropping the request to report bugs in the few remaining
> specific cases.

Aren't those few cases legitimate probe failures, including anything 
unexpected which results in non-operational GPU (any -EIO from 
intel_gt_init())?

So it is effectively completely(*) removing the request to file bugs, or 
I miss something remained? Or the unmentioned goal is to encourage fewer 
i915 bug reports on top of the code base cleanup?

Regards,

Tvrtko

*) Apart from display/intel_dp_aux_backlight.c !? :)

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_utils.c | 41 -------------------------------
>   drivers/gpu/drm/i915/i915_utils.h | 13 +++++-----
>   2 files changed, 6 insertions(+), 48 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_utils.c b/drivers/gpu/drm/i915/i915_utils.c
> index bee32222f0fd..b34a2d3d331d 100644
> --- a/drivers/gpu/drm/i915/i915_utils.c
> +++ b/drivers/gpu/drm/i915/i915_utils.c
> @@ -11,47 +11,6 @@
>   #include "i915_reg.h"
>   #include "i915_utils.h"
>   
> -#define FDO_BUG_MSG "Please file a bug on drm/i915; see " FDO_BUG_URL " for details."
> -
> -void
> -__i915_printk(struct drm_i915_private *dev_priv, const char *level,
> -	      const char *fmt, ...)
> -{
> -	static bool shown_bug_once;
> -	struct device *kdev = dev_priv->drm.dev;
> -	bool is_error = level[1] <= KERN_ERR[1];
> -	bool is_debug = level[1] == KERN_DEBUG[1];
> -	struct va_format vaf;
> -	va_list args;
> -
> -	if (is_debug && !drm_debug_enabled(DRM_UT_DRIVER))
> -		return;
> -
> -	va_start(args, fmt);
> -
> -	vaf.fmt = fmt;
> -	vaf.va = &args;
> -
> -	if (is_error)
> -		dev_printk(level, kdev, "%pV", &vaf);
> -	else
> -		dev_printk(level, kdev, "[" DRM_NAME ":%ps] %pV",
> -			   __builtin_return_address(0), &vaf);
> -
> -	va_end(args);
> -
> -	if (is_error && !shown_bug_once) {
> -		/*
> -		 * Ask the user to file a bug report for the error, except
> -		 * if they may have caused the bug by fiddling with unsafe
> -		 * module parameters.
> -		 */
> -		if (!test_taint(TAINT_USER))
> -			dev_notice(kdev, "%s", FDO_BUG_MSG);
> -		shown_bug_once = true;
> -	}
> -}
> -
>   void add_taint_for_CI(struct drm_i915_private *i915, unsigned int taint)
>   {
>   	drm_notice(&i915->drm, "CI tainted: %#x by %pS\n",
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index feb078ae246f..71bdc89bd621 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -45,10 +45,6 @@ struct timer_list;
>   #define MISSING_CASE(x) WARN(1, "Missing case (%s == %ld)\n", \
>   			     __stringify(x), (long)(x))
>   
> -void __printf(3, 4)
> -__i915_printk(struct drm_i915_private *dev_priv, const char *level,
> -	      const char *fmt, ...);
> -
>   #if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
>   
>   int __i915_inject_probe_error(struct drm_i915_private *i915, int err,
> @@ -66,9 +62,12 @@ bool i915_error_injected(void);
>   
>   #define i915_inject_probe_failure(i915) i915_inject_probe_error((i915), -ENODEV)
>   
> -#define i915_probe_error(i915, fmt, ...)				   \
> -	__i915_printk(i915, i915_error_injected() ? KERN_DEBUG : KERN_ERR, \
> -		      fmt, ##__VA_ARGS__)
> +#define i915_probe_error(i915, fmt, ...) ({ \
> +	if (i915_error_injected()) \
> +		drm_dbg(&(i915)->drm, fmt, ##__VA_ARGS__); \
> +	else \
> +		drm_err(&(i915)->drm, fmt, ##__VA_ARGS__); \
> +})
>   
>   #define range_overflows(start, size, max) ({ \
>   	typeof(start) start__ = (start); \
