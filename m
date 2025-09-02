Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C07D2B3F949
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 10:58:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A80CE10E327;
	Tue,  2 Sep 2025 08:58:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="XolOUA2K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D999510E600
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Sep 2025 08:58:45 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id
 ffacd0b85a97d-3d1bf79d6afso2035042f8f.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Sep 2025 01:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1756803524; x=1757408324;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fdTnKkYv89qYmuDrHKQiKv7a5BMqopZQ28l888CmXYk=;
 b=XolOUA2KuNlk3C0YZPrhbqFbmTI3a/Ulb5VnywkanLvDPkVrChto3xh9aPp+EA5jn8
 JXkblbvJPUfZzT02I5UoZpo5Wx/jJMDZPkKgOsdiWmm/gIKAPChco9z4/mVDjo8RBsz8
 7yoyfMe+Ren0Pfkpbli/G/0/xFKsEBp2nTCVFNkVHwvD5pSr4m31wd0yAugqXTOyZzAp
 nzSVnppRwTyELTvGzdFcMSWRe61D9zwjerHnUz4sG+cVkG3XNAW13g4lv9rm/Sb8MCeQ
 c/PacM5c3be5lHtFk2j3bexRPIND0+tmtwIZK3HGWenZ2hTJX7xezFc+tQ16yVoqugUo
 DLRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756803524; x=1757408324;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=fdTnKkYv89qYmuDrHKQiKv7a5BMqopZQ28l888CmXYk=;
 b=EGpLdjfEM1T3DpOmqmM+9HOZVfJBKb2iu43UUCs+HSZzcGgmLZICBciDRUrlByVVfI
 zkgKyj35xwHgKr3hlyronrNSVYjDfKEXj1L0xxiSccVmXo2nDjdoYI/dAGoi4LFOv9Ny
 jLJzNYck/nSIT07YRTA7lR3REE18+r/KRJIAIy7pF1Et2qO+es5NB67Kjo6krhXyYl8z
 Nguf4+URmZ7HwiP9ijh2fXfwgW1pJHkP03nAGOoKpxcFgRlK2cJm9v3PQpd0/BKuUCAQ
 yUuTqCNzC6TCzs4tx0JTL8p8pSRd92GP/5G4xT/wUajc5htAN6o76/7CQF0sS44rVt+8
 VkAg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWQQ0jT6K7SWlDfL8au6g5gRqKeVC4PjYJqWJ3P4U1dg0jAsMt/avWjP3/dfz9wmvjmOI0WFq7stO8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzMGK/VZSmutSEkgZFIi2ciQlukBITAqLLU0eKWdOVTm46zc6wY
 bUg0Xx3WO+o+evgSX74rNcZos2GmjzORwZIHy8Q5SysGnVVdMes9LLGz2ah77O1bl44=
X-Gm-Gg: ASbGncv1a5TwOKyKDGv/TDha4dtd7stJRJmoWxuOIkzUiNBL6QdBnwJ0Q/RbP/ioe8L
 5B7R4opy/7t+ZeyDTCN27R2FVLilO8mWaHbmciy25MWcoV4VOE6Ms0k86LilP7tCkuACBWTpSO9
 XCiKnxrKoVXSvihFwB0G63EiLMZsxq2sUwADPwYqu1xxu0I64s0SaVtrKXxlg5UNLBe5Vz3Ajn1
 2bxWJkHlO7GUt8sB0K2GPTqNDmeSr9VnMKfeTPb4czvCFSxRQN6dVRdGGr1UTIlPs0jhqNRPd7k
 Pq0hKCxTC5iG2vz9bmAL996O0lTcjNM+KN7T+cZIN2oYgs/nhJZ/5nC2EMvRbS7yTUPOiZGdhLP
 wI6ISYlFuiQwEuF+2WpR2zgUua37DrVdGfxc=
X-Google-Smtp-Source: AGHT+IHcFsAfK5WIhq+S9Y1CY3ZPTu/1Q3IzKtJHTb6xFETccQcxq0O80x8z8t2LLzPK76tz+CxMCA==
X-Received: by 2002:a5d:5d8a:0:b0:3ce:a06e:f248 with SMTP id
 ffacd0b85a97d-3d1dddf374dmr6988087f8f.17.1756803523951; 
 Tue, 02 Sep 2025 01:58:43 -0700 (PDT)
Received: from [192.168.0.101] ([84.66.36.92])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3d3a7492001sm13361996f8f.42.2025.09.02.01.58.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 Sep 2025 01:58:43 -0700 (PDT)
Message-ID: <5f6c7541-93ca-4b67-b4e4-33ff60e99c7d@ursulin.net>
Date: Tue, 2 Sep 2025 09:58:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Replace kmalloc() + copy_from_user() with
 memdup_user()
To: Thorsten Blum <thorsten.blum@linux.dev>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Nitin Gote <nitin.r.gote@intel.com>,
 =?UTF-8?Q?Miko=C5=82aj_Wasiak?= <mikolaj.wasiak@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
References: <20250902081046.35463-2-thorsten.blum@linux.dev>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20250902081046.35463-2-thorsten.blum@linux.dev>
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


On 02/09/2025 09:10, Thorsten Blum wrote:
> Replace kmalloc() followed by copy_from_user() with memdup_user() to
> improve and simplify set_context_image(), and to silence the following
> Coccinelle/coccicheck warning reported by memdup_user.cocci:
> 
>    WARNING opportunity for memdup_user
> 
> No functional changes intended.
> 
> Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
> ---
> Resending this (with updated patch subject and description) because the
> CI logs [1] from my first submission [2] about a year ago are no longer
> available.
> 
> [1] https://patchwork.freedesktop.org/series/139319/
> [2] https://lore.kernel.org/lkml/20240925141750.51198-1-thorsten.blum@linux.dev/
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c | 12 +++---------
>   1 file changed, 3 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 15835952352e..ed6599694835 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -2158,18 +2158,12 @@ static int set_context_image(struct i915_gem_context *ctx,
>   		goto out_ce;
>   	}
>   
> -	state = kmalloc(ce->engine->context_size, GFP_KERNEL);
> -	if (!state) {
> -		ret = -ENOMEM;
> +	state = memdup_user(u64_to_user_ptr(user.image), ce->engine->context_size);
> +	if (IS_ERR(state)) {
> +		ret = PTR_ERR(state);
>   		goto out_ce;
>   	}
>   
> -	if (copy_from_user(state, u64_to_user_ptr(user.image),
> -			   ce->engine->context_size)) {
> -		ret = -EFAULT;
> -		goto out_state;
> -	}
> -
>   	shmem_state = shmem_create_from_data(ce->engine->name,
>   					     state, ce->engine->context_size);
>   	if (IS_ERR(shmem_state)) {

LGTM.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

Note however that CI is not picking up external patches these days, so I 
will need to re-send it for you. Once it passes I will merge it but if I 
forget feel free to ping.

Regards,

Tvrtko

