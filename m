Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A86CB31B2
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 15:08:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91CC210E739;
	Wed, 10 Dec 2025 14:08:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin.net header.i=@ursulin.net header.b="JZZd5JsV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com
 [209.85.218.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5F7010E735
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Dec 2025 14:08:07 +0000 (UTC)
Received: by mail-ej1-f44.google.com with SMTP id
 a640c23a62f3a-b735b89501fso839325266b.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Dec 2025 06:08:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin.net; s=google; t=1765375686; x=1765980486; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=6qbLwM8j/Dp2wxJ0nCOaKXGlVqK4PTIUeJRBwEf/i0c=;
 b=JZZd5JsVaNvzK4sH9w2dxduvs9dNwyTz5dJ4Yh4UD4HcGukVbzKZ3abNOaQsI4ZBY4
 ifMfNNXkPHvoqdqOZc95kFsZ3U/wLH9CdsV0PHFEu/RQFcIO2MsP10H88tfTZiLjyNS6
 oOiTyJT/jmkcWIG+6JKPOrvJvE9qupqr2rPm/Wt0htb1ksN/6kro2Z2mDJR3R5ph14cE
 zb0eQgqYW+aGnwA5sWtu+QWVoYzpFBnGODS8CP11HDOe+Y1ivDhWbjCQuVR7BUuyDFDY
 alSiyBk3sxx4OL+di90BkjBy/MnbQmfOTgViMbcGW960awAQZAdJ7TH23Ylx3tGbZLz7
 MQlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765375686; x=1765980486;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=6qbLwM8j/Dp2wxJ0nCOaKXGlVqK4PTIUeJRBwEf/i0c=;
 b=R954YlfB/1oGEHCOPfihx5Ocd6X4Jpd0qpZcgOem+LJksv4op3MknOGtQUAfWAYW4X
 zHJ2c4NnmNa9je6z6/7iPbpvBeKgrQibthm0GFwQRcRO+Zr9g6q3CK/V0XKVBi9GlUvZ
 rM5l/yhMtzWvSDlaBPCysd+MGyv00UZrJRRarw6grg8NMlsqM76DjZhnLPyPPZXvIq9p
 h9BfWKgZwUmoBi0S14Y+VIWTdi4wck6/mCc8HBSVFwd0n5GzgkItvyUm7bbNxsEGNCcK
 ibPqS1RO9MAdlG8gy8m+IubMmT2niF4J+cgGjW5gzGeGwX4n8+QcVIWK0JHYlxTMz6IN
 6v/A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXt+5BdBGk2Q3EgQZdDwjXpAtaSgDtXHF/AAkdOLywlzRkGHbUt8HouSZvflPC1812pZvkSboinOyU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxVvGLKTVwm1YNNbnTwon0+1d6Xu8atCwrZXORUL3zLQmDmQcuk
 5AnXoqF0b2LFKJcHzpo5kJXDgj9EoCqdypPad9LmRzTp1fRRWsDrKFshxQi5ju3QcK8=
X-Gm-Gg: ASbGncvVCP6scycBAZxhwr2S/QFUKxHbcP+vYfklX+h+tlh8MQchTRE2Xm40UYH97+o
 3HLdmvr/I8u2y5DbVTdFYxSO6pSfuRFZltWer4N6iyDuwHhRR4xGyHEJTecyGk9tvFGkUZzmqnY
 ow/+6Y2p5OCn4i8fG31ZCwiMQvXf2p9YoLaKYul8iGVuqJ4OZJG0DvgSyBbCJm/JzLDODUWFT1H
 k6QSPZt3b2O9372a9/895kmJa3h2NGA6fodKfijqUGErujQWBSvb+j4NSq6YG/EKkwjKh0hnRdz
 pMFPINoOvPwTc9bz3Cjnx5DY718VKRiwHe0MO+WY8y4uKp+e2OPVkc3dgn/qo+IRfp4dgt4CjVQ
 0maRfhOvO9GxmkQiXpNUOjyt5QzwqAdWOBXHE1k9wxqbFvEdqDu1HdzL9C4xCiqafnk+DqSXGhO
 644IxLpfUPSl5nzMU6FMgOACGnYLlm
X-Google-Smtp-Source: AGHT+IHWTYS/KWvzDjVFuOADEcyGTh4hEuGU6HfoOi1vw95aIAPW/e3jMvFNIkGOnIlpnosFn6AeVw==
X-Received: by 2002:a17:907:86a6:b0:b73:59b0:34d6 with SMTP id
 a640c23a62f3a-b7ce846eba8mr268666666b.33.1765375685778; 
 Wed, 10 Dec 2025 06:08:05 -0800 (PST)
Received: from [192.168.1.83] ([86.33.28.86]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-647b2edf71fsm18473274a12.14.2025.12.10.06.08.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Dec 2025 06:08:04 -0800 (PST)
Message-ID: <ad82a9af-eb79-47ef-a5d3-662cff3c0ee2@ursulin.net>
Date: Wed, 10 Dec 2025 15:08:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Fix BO alloc flags
To: =?UTF-8?Q?Lo=C3=AFc_Molinari?= <loic.molinari@collabora.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 =?UTF-8?Q?Miko=C5=82aj_Wasiak?= <mikolaj.wasiak@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Christopher Healy <healych@amazon.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, kernel@collabora.com,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
References: <20251210110952.691446-1-loic.molinari@collabora.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20251210110952.691446-1-loic.molinari@collabora.com>
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


On 10/12/2025 12:09, Loïc Molinari wrote:
> I915_BO_ALLOC_NOTHP must be added to the I915_BO_ALLOC_FLAGS mask in
> order to pass GEM_BUG_ON() valid flags checks.
>
> Reported-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Closes: https://lore.kernel.org/intel-gfx/d73adfa8-d61b-46b3-9385-dde53d8db8ad@intel.com/
> Fixes: a8a9a590221c ("drm/i915: Use huge tmpfs mountpoint helpers")
> Suggested-by: Tvrtko Ursulin <tursulin@ursulin.net>
> Signed-off-by: Loïc Molinari <loic.molinari@collabora.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_object_types.h | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index f94409e8ec4c..35d4c7d0c579 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -363,6 +363,7 @@ struct drm_i915_gem_object {
>   			     I915_BO_ALLOC_PM_EARLY | \
>   			     I915_BO_ALLOC_GPU_ONLY | \
>   			     I915_BO_ALLOC_CCS_AUX | \
> +			     I915_BO_ALLOC_NOTHP | \
>   			     I915_BO_PREALLOC)
>   #define I915_BO_READONLY          BIT(10)
>   #define I915_TILING_QUIRK_BIT     11 /* unknown swizzling; do not release! */

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

It is passing BAT so I think it is fine to go ahead and merge it. Of 
course via the same branch where the breakage is ie. drm-misc.

Regards,

Tvrtko
