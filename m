Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43348C1A0C0
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 12:33:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76EDC10E76B;
	Wed, 29 Oct 2025 11:33:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="DoNaI13q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 078A410E76B
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Oct 2025 11:33:24 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id
 5b1f17b1804b1-47112edf9f7so46803855e9.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Oct 2025 04:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1761737602; x=1762342402;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=P3BwMyFRrDoQuY67GIqd8U85YxOQh59i8+ZBPvA01xs=;
 b=DoNaI13qRyky+HIpxOWrjrB4WmfbJ8pZK73QmRZ5a5fJxBEGs8kxN7F0LXJI/INdvm
 /toP7OUjtqCqqZU3y1HbqxXN4NnNXg9ESjOhhRvInzwAm1zsZOdd3FT8bDOYvn6lo9xq
 LSBLkGq6N7tatqo0PF+r4dN07EjEpqpl2Q5Uy7n6/ptxdga3zyEBjk4koKK2uIjZ8x+q
 6+MNR1uCp6JXO1KulG7T+f0W65QpzIRm1YhBL8I2B/COJSC2sb+w6baqSyXUa4SdLUjd
 G0D27R5B4NcpCmopKn27sfl+MyS/IzFqYkxmCMTkUhc/n7wb+DnsaH6V/26QshdiAiMe
 oA9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761737602; x=1762342402;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=P3BwMyFRrDoQuY67GIqd8U85YxOQh59i8+ZBPvA01xs=;
 b=IUbRLeN6BcjlOzDCl4642MmJ8WS/uytQymxozkIZUuJ7OHtwDZ55MBTTGLI4bIq+b7
 EoVIL0tJ3rcr2MMm8gQCGgZA3zZvUQsNgqkLm7k5ZzolNHq9Ayh8VAMquSx7gtEieduO
 2nM0CCOvIh5dgNaABh5cNbApZMPlyVrrdJooX5KwZrl/gn81BOYrjjI3boj3AFSdl8r0
 0VT6W1YrudFZnPxMIHZgzpTS/WxtzBxIancQ1f0Dt3epbt6SqixB0288sjYTyWPhX4jk
 rv6YlnbAScKP2NwiqAu0PKKiJik3QQiQsqZVjVJo+nZpyuktC952wyApIvYtiTPzZkcN
 4c8w==
X-Forwarded-Encrypted: i=1;
 AJvYcCUMPC31wQbcGvP2Eg/Bc5eo7GkSoW9LQMEpItkWORGz9LXYQda/Hx9UYqtLK8pmaSvsoBpt7CEfBuM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwJNzQwu+hgldqeXgb2N8qZFUSwD3TWhSRGWBAjQVFbJRteJFdS
 GMh1WavoErz2DgprD6OzLafizlOj+io9/R0yYZCutaUGYgN/vaZGY+VIzpMCD5q1eB8=
X-Gm-Gg: ASbGncsaBp5ybn+tRejQs5SzzkHcA8HkcQCzMXm+O+SobmnOuJQ8kBVvB4vpyqrdkrn
 wCkcfNGDOe5haG2LcaSx+NXj+j0grhUCqj91prXcq5InljRhSQxUGXlyD/HCOUAdZj6hdTjL8oR
 cKF36vNMUWL/gYNgPLqKDKmVoefNb1gxt0zQbEuWg5hbUbNTptVFVQajagdOOm3KD6vhS+gcELs
 BS0yOInYvSPtFg0LtWvrfVFmrHsboBkHJILMCJhc9imCpa+2GSuBW59Kkl+YzOJu/WlUNDFXt18
 X6z2MycqT21hnGaaLDsUolUv/sV3sZLLjB7Wm+xVxIcXGMTwMYMYnC9QKhCFqnijFJUAQHfZoeQ
 eqYGh1B4/7Q98ondXs2NM69V8Uqv8+ld9A1/zXu87FOqQRMzoCnkA+fdjBf24WEz805cX3aulCS
 igHnVTznKnimg2vdI=
X-Google-Smtp-Source: AGHT+IH3bRjeykgeUR2mhaW2uW2joh5ceK9dL8tnXMY6z73ohXgFggCLePeWUImJ1Mb6PkVjpVlqwA==
X-Received: by 2002:a05:600c:4511:b0:46e:477a:f3dd with SMTP id
 5b1f17b1804b1-4771e1f1575mr27319225e9.36.1761737602088; 
 Wed, 29 Oct 2025 04:33:22 -0700 (PDT)
Received: from [192.168.0.101] ([90.242.12.242])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4771e235ae1sm52656425e9.17.2025.10.29.04.33.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Oct 2025 04:33:21 -0700 (PDT)
Message-ID: <bb365451-b451-41ef-82cd-eef8e21ead19@ursulin.net>
Date: Wed, 29 Oct 2025 11:33:20 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Fix conversion between clock ticks and
 nanoseconds
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>, andi.shyti@kernel.org
References: <20251016000350.1152382-2-umesh.nerlige.ramappa@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20251016000350.1152382-2-umesh.nerlige.ramappa@intel.com>
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


On 16/10/2025 01:03, Umesh Nerlige Ramappa wrote:
> When tick values are large, the multiplication by NSEC_PER_SEC is larger
> than 64 bits and results in bad conversions.
> 
> The issue is seen in PMU busyness counters that look like they have
> wrapped around due to bad conversion. i915 PMU implementation returns
> monotonically increasing counters. If a count is lesser than previous
> one, it will only return the larger value until the smaller value
> catches up. The user will see this as zero delta between two
> measurements even though the engines are busy.
> 
> Fix it by using mul_u64_u32_div()
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14955
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

There was no need for Fixes: or cc: stable?

Regards,

Tvrtko

> ---
> v2:
> - Fix divide by zero for Gen11 (Andi)
> - Update commit message
> 
> v3:
> - Drop GCD and use mul_u64_u32_div() instead (Ashutosh)
> ---
>   drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> index 88b147fa5cb1..c90b35881a26 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> @@ -205,7 +205,7 @@ static u64 div_u64_roundup(u64 nom, u32 den)
>   
>   u64 intel_gt_clock_interval_to_ns(const struct intel_gt *gt, u64 count)
>   {
> -	return div_u64_roundup(count * NSEC_PER_SEC, gt->clock_frequency);
> +	return mul_u64_u32_div(count, NSEC_PER_SEC, gt->clock_frequency);
>   }
>   
>   u64 intel_gt_pm_interval_to_ns(const struct intel_gt *gt, u64 count)
> @@ -215,7 +215,7 @@ u64 intel_gt_pm_interval_to_ns(const struct intel_gt *gt, u64 count)
>   
>   u64 intel_gt_ns_to_clock_interval(const struct intel_gt *gt, u64 ns)
>   {
> -	return div_u64_roundup(gt->clock_frequency * ns, NSEC_PER_SEC);
> +	return mul_u64_u32_div(ns, gt->clock_frequency, NSEC_PER_SEC);
>   }
>   
>   u64 intel_gt_ns_to_pm_interval(const struct intel_gt *gt, u64 ns)

