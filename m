Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E29AA6E00
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 11:24:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6519610E8E1;
	Fri,  2 May 2025 09:24:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="gvV9UNhD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E500B10E8E1
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 May 2025 09:24:11 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id
 5b1f17b1804b1-43690d4605dso12836625e9.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 02 May 2025 02:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1746177850; x=1746782650;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Hp3sj0b8Cy/pn2rJ5E5Umt5BUD2zwz59yuBElyndNI8=;
 b=gvV9UNhDBL1aXkYcHQd5zXiK85/4XjRRy1NJYxeneGALS/gFp/u2CwTRqlO6yCnMzb
 ACCVds9UAuz4GYSM6t8Z9J1SXbx+aKhmAiHhHP3cu92vyJui0uxOVUZYS1qkavWptdPh
 6cwOXIaFF+zcdeX75iMbyhoo7WEu0RWJ/oAeyz/RJsRp+1AWZWkPwJ5QkqEMVDPEsy94
 o8GbugzstNcqijdGIjiIPrtW+suwr4oAQ+Idarc2uTJpu/GtsjEUm47TVALrlUBgSOE2
 tUQts7GygjMKkWL/ej0nC7CQbu7R3C6BG1DAlOrk7OWcc4VLm5Wj2wjqqxI4HheT4rpf
 sS7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746177850; x=1746782650;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Hp3sj0b8Cy/pn2rJ5E5Umt5BUD2zwz59yuBElyndNI8=;
 b=ZACeB7zbgwF4fOZ1rGQ84HFvcxJ0TBhd9Y3/+3CcMgujxYJTVqUmX/Ufo/JbGLaqBT
 iNEzDC/TXwEAZvmZqj35OmxzHRe0pQc2V8FtbDv+qiH9MfJiK2OyzQRXVSJf6xpXZGY7
 cn5Q9k9ugLPp/LSFCtHCoYI9BWanRHoAXtzAcZCTL/ba+ZKDcJmwsGnv6mhnhcA6HxC9
 yVa7ureNtvvrbM5/dwAXChe8GeqHt44DrMnzy+WMPQsenlY6OvhOO2k79taRx3WgeZc+
 bSVe1xUN3GtFEod8CnN2vTMgDzNDAlPtA4YoMbnk4e+RHzLh0tDaklHQ1saPVrUKfgtK
 7Z5g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVrioMaaFQ65lx/OcpcCLzkhHSEghjBlVVfNtbJnEFdu7mi80s5ZVGjtHqkW8Xum400lm26U9puPFY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyupVbxUhfvszNGGzavT3TwuW9c/5LTLa8hyVy4nsZ/IZIoPoCF
 zYJz3VJoZvBU0rvRhtpoiE5f1k/poQLRSLyKTFEh3YAyFYLQ/yMAgt5D2dGCXFs=
X-Gm-Gg: ASbGnct5QxsTY1OV/coUusDwThMpN5y9GOwXSy7b7MVxL5VWM4ZSbqho7k2bW/sXvxP
 2Vgy7YzxNx7qvPibS56IvHEnwyjrN7GHV3xfvKKlQ+AMQKz9mxgJd4x5MgCe5W0zGACZD9sIbaC
 GCiPcM+Id2qOSF5dl+xRF6XMLdE/NOiMmg6cjC1hDHlLybKyt5ySkKoIrwN/DhwK+EYJJIL+kRe
 Qs0QTxFmoMrNqf7eGbdcHdHyfG9T08X/H8l4TcNSDtjQLlBI5qdW0+2kr3hQkOQ0JmkH6OEEpuA
 qp5OkwPJea6O2vuah1a5+A4eVEObayXefVslr6NXSr1E943pJGEtRfg=
X-Google-Smtp-Source: AGHT+IH8ASYqTlXTXDK0+KMI4mgW4T9i6IXXAmCq3eyAvwGDpL06RwxTDGadn72J+tfKUPzWlwpeng==
X-Received: by 2002:a05:600c:5025:b0:43c:e7a7:1e76 with SMTP id
 5b1f17b1804b1-441bbe90129mr15707305e9.1.1746177850040; 
 Fri, 02 May 2025 02:24:10 -0700 (PDT)
Received: from [192.168.0.101] ([81.79.92.254])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-441b8a31576sm37734165e9.37.2025.05.02.02.24.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 02 May 2025 02:24:09 -0700 (PDT)
Message-ID: <e34c0c3a-f8db-47c1-9763-0e3a1056afb6@ursulin.net>
Date: Fri, 2 May 2025 10:24:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/error: drop dmesg suggestion to file bugs on GPU
 hangs
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20250429115055.2133143-1-jani.nikula@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20250429115055.2133143-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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


On 29/04/2025 12:50, Jani Nikula wrote:
> We haven't updated the DRIVER_TIMESTAMP since commit 3570bd989acc
> ("drm/i915: Update DRIVER_DATE to 20230929") 1½ years ago. Before then,
> the previous update was commit 139caf7ca286 ("drm/i915: Update
> DRIVER_DATE to 20201103") 4+ years ago. The DRIVER_DATE has also been
> removed altogether.
> 
> We've used the DRIVER_TIMESTAMP to log suggestions to file bugs on GPU
> hangs when they happen on a driver less than six months old. Combined
> with the sporadic DRIVER_TIMESTAMP updates, we really haven't logged the
> suggestions for years.
> 
> Just stop logging the suggestion to file bugs altogether, and remove
> DRIVER_TIMESTAMP. This doesn't really change anything wrt to logging GPU
> errors or how we handle bugs. And effectively we already stopped logging
> the message a year ago when we stopped updating DRIVER_TIMESTAMP.
> 
> Instead, add an unconditional message about the GPU error state
> location.
> 
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Tvrtko Ursulin <tursulin@ursulin.net>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_driver.h    |  1 -
>   drivers/gpu/drm/i915/i915_gpu_error.c | 13 ++-----------
>   2 files changed, 2 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.h b/drivers/gpu/drm/i915/i915_driver.h
> index 4b67ad9a61cd..1e95ecb2a163 100644
> --- a/drivers/gpu/drm/i915/i915_driver.h
> +++ b/drivers/gpu/drm/i915/i915_driver.h
> @@ -15,7 +15,6 @@ struct drm_printer;
>   
>   #define DRIVER_NAME		"i915"
>   #define DRIVER_DESC		"Intel Graphics"
> -#define DRIVER_TIMESTAMP	1695980603
>   
>   extern const struct dev_pm_ops i915_pm_ops;
>   
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index aa2cad910902..4f785cdbd155 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -2133,7 +2133,6 @@ i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 dump
>   void i915_error_state_store(struct i915_gpu_coredump *error)
>   {
>   	struct drm_i915_private *i915;
> -	static bool warned;
>   
>   	if (IS_ERR_OR_NULL(error))
>   		return;
> @@ -2147,16 +2146,8 @@ void i915_error_state_store(struct i915_gpu_coredump *error)
>   
>   	i915_gpu_coredump_get(error);
>   
> -	if (!xchg(&warned, true) &&
> -	    ktime_get_real_seconds() - DRIVER_TIMESTAMP < DAY_AS_SECONDS(180)) {
> -		pr_info("GPU hangs can indicate a bug anywhere in the entire gfx stack, including userspace.\n");
> -		pr_info("Please file a _new_ bug report at https://gitlab.freedesktop.org/drm/intel/issues/new.\n");
> -		pr_info("Please see https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html for details.\n");
> -		pr_info("drm/i915 developers can then reassign to the right component if it's not a kernel issue.\n");
> -		pr_info("The GPU crash dump is required to analyze GPU hangs, so please always attach it.\n");
> -		pr_info("GPU crash dump saved to /sys/class/drm/card%d/error\n",
> -			i915->drm.primary->index);
> -	}
> +	drm_info(&i915->drm, "GPU error state saved to /sys/class/drm/card%d/error\n",
> +		 i915->drm.primary->index);
>   }
>   
>   /**

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

Regards,

Tvrtko

