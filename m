Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E019DAA6E05
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 11:24:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F65910E8E3;
	Fri,  2 May 2025 09:24:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="wnooVVF8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7613810E8E3
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 May 2025 09:24:47 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id
 ffacd0b85a97d-391342fc0b5so934210f8f.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 02 May 2025 02:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1746177886; x=1746782686;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id:from
 :to:cc:subject:date:message-id:reply-to;
 bh=w/9NydMVPL5obI8U+2CN6g1J0L5hJ6HpoWggI4Qrjlo=;
 b=wnooVVF8qWldhggn/5iFgXgk39FcocHeXH/0gABX5JPVMY/MTRlEJEsuV/Us350U9Q
 6Yh67lz26fya8KLizimoV0Kp7xI4Zu7nEHvKHIW1XIlBzdjiMz5t3ilePHd5Z6H5QI14
 FPYY/S9Azs+RqrGYH2JBIA20BE8M0n7PoYGcT2q8YjN5sdxcGg30so2cpWJi8+cM09JW
 PeL/+vlWJ7c6Ct0VB8pug93K81P/IEiEApJ8Yz8ij5mcoWRa0M44qWGpn1KCiJpC3E+y
 cUouFyMJPKXoO6mSzV+o0ca3jaay143aP47Y3Ijd0oKPKS58d4ewXfp4zbIFPnMnnpx6
 d7Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746177886; x=1746782686;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=w/9NydMVPL5obI8U+2CN6g1J0L5hJ6HpoWggI4Qrjlo=;
 b=Yc6tEuHIGDu6LULcAcaSUg69LIFKE7uS3k2YiP1n72X5dj3FJnCMuAD4haIU8pH+jQ
 VOOnKW6PZBCOBPfmeQEZd4L1aEGXl4xBESDnz9/7w7jkDFZEdVX1ZC74p620oQSEOAZ0
 YUaPjmbUe/mXk4+/Xpf5O4gqIdCtqcsVaIkhVsFMl1cbIRfr5eEofMg9P2cOSIKVKzq8
 vRM8uk+IfjF/zX80Tcp3eeVH6ha8AWYe4g/g1TkBrR/u1evd4/EU999qesoIkZg44sTl
 AwGcMfEeawDplAxCq831FR+y/O12FN4Mkla6p5V6gStbX0FyiXB0AcUPATl9AneSavEq
 AIRA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWTqXwX0wjHQm36oW5hzH/CNPEGOVPclOlv94mbMLEpGyOID8LxOmcXvQYW6QN9LS0igoNLrjAowbQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwF5I7zYIUyaMfuXf+LFJao3iSVzkT0u9Q9h5x/obffWQgzzP0+
 6hdOlWBEHfRZI2AIW755qM+TauI9Kudv8Bpxa+hXQERpyhq9EsKXp23cq8bCf1k=
X-Gm-Gg: ASbGncupnghMPwl0h0618Uhtjz0Dh4zWpLtvY2FLZqr80ixZgfftGIwagrCr5uh/foQ
 VSjrs7LVNkoLfULBCEqhAnLS+8qj+0P0CFJfnbfHWlqYLeJOfjM5wJmYzAbql0+5WYpNawhFDBz
 PmS3D+hAl3J5ipHlTFpzwlDtF9YPqTr7nzZFwEOy0uPTeYoRtzdFAvPkjxie0E8RBA7KbByfO/K
 wnFTi/CuDz8DsOgj1CeKzd++VhVh0eUkD7oTWSUFMg8e4zygGRyfrjBu/qCcRZOkT7v7nNsUNd4
 vffP7S8tHeePdTWX8cGi4vkhsTzYCkCNPojI2dwCA9FuREnha9kR9tKC6UO6N0xCUg==
X-Google-Smtp-Source: AGHT+IHMqVW9tymHBRisxIe720x28lWrvlOreai7EE+EDDsKVl7vnxbBwnRwUrNUYLgt4A+ULM1AVA==
X-Received: by 2002:a05:6000:2410:b0:39e:e438:8e32 with SMTP id
 ffacd0b85a97d-3a099af1b9amr1557878f8f.55.1746177885748; 
 Fri, 02 May 2025 02:24:45 -0700 (PDT)
Received: from [192.168.0.101] ([81.79.92.254])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3a099b0efbfsm1632103f8f.69.2025.05.02.02.24.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 02 May 2025 02:24:45 -0700 (PDT)
Message-ID: <b66c8972-bd33-4e66-81a7-7e6b2d6e34ba@ursulin.net>
Date: Fri, 2 May 2025 10:24:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/backlight: drop dmesg suggestion to file bugs
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
References: <20250429112534.2121656-1-jani.nikula@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20250429112534.2121656-1-jani.nikula@intel.com>
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


On 29/04/2025 12:25, Jani Nikula wrote:
> Drop the FDO_BUG_URL from the source, and stop suggesting to file bugs
> on DPCD backlight issues. We don't do this anywhere else in display,
> this isn't a special snowflake.
> 
> As a consequence, also drop the dependency on i915_utils.h from
> intel_dp_aux_backlight.c.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 3 +--
>   drivers/gpu/drm/i915/i915_utils.h                     | 2 --
>   2 files changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 20ab90acb351..271b27c9de51 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -36,7 +36,6 @@
>   
>   #include <drm/drm_print.h>
>   
> -#include "i915_utils.h"
>   #include "intel_backlight.h"
>   #include "intel_display_core.h"
>   #include "intel_display_types.h"
> @@ -149,7 +148,7 @@ intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
>   	    !(connector->base.hdr_sink_metadata.hdmi_type1.metadata_type &
>   	      BIT(HDMI_STATIC_METADATA_TYPE1))) {
>   		drm_info(display->drm,
> -			 "[CONNECTOR:%d:%s] Panel is missing HDR static metadata. Possible support for Intel HDR backlight interface is not used. If your backlight controls don't work try booting with i915.enable_dpcd_backlight=%d. needs this, please file a _new_ bug report on drm/i915, see " FDO_BUG_URL " for details.\n",
> +			 "[CONNECTOR:%d:%s] Panel is missing HDR static metadata. Possible support for Intel HDR backlight interface is not used. If your backlight controls don't work try booting with i915.enable_dpcd_backlight=%d.\n",
>   			 connector->base.base.id, connector->base.name,
>   			 INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL);
>   		return false;
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index 609214231ffc..f7fb40cfdb70 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -40,8 +40,6 @@
>   struct drm_i915_private;
>   struct timer_list;
>   
> -#define FDO_BUG_URL "https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html"
> -
>   #define MISSING_CASE(x) WARN(1, "Missing case (%s == %ld)\n", \
>   			     __stringify(x), (long)(x))
>   

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

Regards,

Tvrtko

