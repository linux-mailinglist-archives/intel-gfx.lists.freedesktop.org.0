Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C16B194A56A
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 12:27:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67C7510E486;
	Wed,  7 Aug 2024 10:27:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="VV4E1mjb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
 [209.85.208.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CA5B10E486
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2024 10:27:25 +0000 (UTC)
Received: by mail-lj1-f170.google.com with SMTP id
 38308e7fff4ca-2f1798eaee6so16753881fa.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 Aug 2024 03:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1723026443; x=1723631243;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Z/2rKDMb2i//5Hi6/VqzST+M5EiTQzU6MroZh02D+iQ=;
 b=VV4E1mjblO/krfVnTl86Aermhvta9EhF2OgqITrq/bogyo0JgwroUGvPfhDexA2005
 h8GX9W2cOPxmWSB0cx3oRJbKL7TztKdzloLpZCietu5K6yF7IBBt+SFP4vK2Wt/aZUsa
 MyPJbqqaRv4H/fQJ8PzOijoRBOZEQ9neVM1+CeOPBfh/BVP5VZgAgzJFtgfrmW4N9eEm
 csSIRFdx1dEwU+9gxOgFGGnD/G6/HbZIMU0G23OyBwB65cVHVKzwj58zDTeY9+lrVhym
 I/4iOLT9Nb3e3jADaUEobzdGYNZIpi+0FPmyOWIFSDf5fz1PxZzsE6gBMDgdq2YJMaSN
 RRvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723026443; x=1723631243;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Z/2rKDMb2i//5Hi6/VqzST+M5EiTQzU6MroZh02D+iQ=;
 b=sO27wm220MlUaQnmF50xNyQcxEXlweeuZRUMTSpLVrLmDvSdJVQaCSPjkKBI4hoove
 caP85uBRBNfzmt9Qb6reKwQoY2G7/jtYR4JG1A8SiGitsS6tENBl5rpxwxKP6Bs/W9kL
 anZNedUxmkxsS2QmDkm5x6mbx9NMDS6/xI7gzuLtzvMRcwKBlffzDHUX0jL9sB89UkBI
 Xqfb0RoQv24dmvt9nCDuWkvZz94fzXjYQw21S2yfKWKUwp+LpGkkjE8lfKgf62JYYyBg
 2MKUu/FPmXfOzIYbUy+cBor9idV9xrJp3vEKdFpUvFcJ+yg4knABL+T4dNwRlFK1I6Fe
 i6fw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWar2Mbr8a02fFfSVJmuB56vV9sYUEglCReWM0fWcBtPKjLvXG/5QfkjRULWUsz0XjU1FY5P1WIxhIgsvsRWei5vGC2AFCZ+ei4KBWugPo2
X-Gm-Message-State: AOJu0YxaVwR/yglSp3eJCxASSyodw7zpZLQnSZevz8SH5LEMdGIbKnSP
 eu6f3SinI/YtBskCF7Rxm99g+ZDgrA2Z1u8Fm576Ty/JQsb1jIIQQ8bzbr1ubZw=
X-Google-Smtp-Source: AGHT+IFOPRVyMEkPMfHMgZYN/kB4LW5Xx6TaELqsjenMAqc8o9noLqKoBQ/kxEby0UgmKhj3J3z71w==
X-Received: by 2002:a2e:9a81:0:b0:2f0:2e18:e7d0 with SMTP id
 38308e7fff4ca-2f15aab0ad1mr120175251fa.28.1723026443131; 
 Wed, 07 Aug 2024 03:27:23 -0700 (PDT)
Received: from [192.168.0.101] ([84.69.19.168])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42905961e9dsm22197605e9.8.2024.08.07.03.27.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 07 Aug 2024 03:27:22 -0700 (PDT)
Message-ID: <fef2188f-fd25-4f21-a2cf-6d7931b7bc8b@ursulin.net>
Date: Wed, 7 Aug 2024 11:27:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] drm/i915: remove a few __i915_printk() uses
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1722951405.git.jani.nikula@intel.com>
 <82857a0c04d3c11ca6758f05c13a3cec4f1a2f01.1722951405.git.jani.nikula@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <82857a0c04d3c11ca6758f05c13a3cec4f1a2f01.1722951405.git.jani.nikula@intel.com>
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
> __i915_printk() does nothing for notice/info levels. Just use the
> regular drm_notice() and drm_info() calls.

"does nothing"? You mean does nothing _special_?

The patch itself looks okay.

Regards,

Tvrtko

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_utils.c | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_utils.c b/drivers/gpu/drm/i915/i915_utils.c
> index 6f9e7b354b54..bee32222f0fd 100644
> --- a/drivers/gpu/drm/i915/i915_utils.c
> +++ b/drivers/gpu/drm/i915/i915_utils.c
> @@ -54,8 +54,8 @@ __i915_printk(struct drm_i915_private *dev_priv, const char *level,
>   
>   void add_taint_for_CI(struct drm_i915_private *i915, unsigned int taint)
>   {
> -	__i915_printk(i915, KERN_NOTICE, "CI tainted:%#x by %pS\n",
> -		      taint, (void *)_RET_IP_);
> +	drm_notice(&i915->drm, "CI tainted: %#x by %pS\n",
> +		   taint, __builtin_return_address(0));
>   
>   	/* Failures that occur during fault injection testing are expected */
>   	if (!i915_error_injected())
> @@ -74,9 +74,9 @@ int __i915_inject_probe_error(struct drm_i915_private *i915, int err,
>   	if (++i915_probe_fail_count < i915_modparams.inject_probe_failure)
>   		return 0;
>   
> -	__i915_printk(i915, KERN_INFO,
> -		      "Injecting failure %d at checkpoint %u [%s:%d]\n",
> -		      err, i915_modparams.inject_probe_failure, func, line);
> +	drm_info(&i915->drm, "Injecting failure %d at checkpoint %u [%s:%d]\n",
> +		 err, i915_modparams.inject_probe_failure, func, line);
> +
>   	i915_modparams.inject_probe_failure = 0;
>   	return err;
>   }
