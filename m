Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F358852EAAC
	for <lists+intel-gfx@lfdr.de>; Fri, 20 May 2022 13:23:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 269A810E082;
	Fri, 20 May 2022 11:23:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE9F410E828
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 May 2022 11:23:37 +0000 (UTC)
Received: by mail-lj1-x232.google.com with SMTP id q130so9317342ljb.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 May 2022 04:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=HNPsp1+25DUzOOaxtfRTD3EcGsbbDJZFoG9BSZZ+bFk=;
 b=nWherW8h9AAc3s3JimQpsBVwmKBZ8nnw/JhAbuE/TpBMMpE5lHON1M3A/Mv8ZdLq7J
 3fjSz19DsKHwyoruicBKIQUVt4K3Guu5uuF0JB95/kZsc0usa5d2MILvwfkxc9xosP4a
 GE7xJSDwpytzTzgVHMG4+ga3RGlYhsK6gZTrS52Zq5mg3DzJaf3HvILqVrK3Lok30Mlt
 z3W10YZtyXSddD6ywNGusIRBgdTiyusQFkqTpiH51JN7gvarsgVWbtdlEU5SMTqFxVvH
 b0ltqSKLl77CYx+Hy1p9wHlE6HqLJbDP+Y1XLSF9vu80E3+LBnbr8y4RYamXY5Im5TSD
 rADQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=HNPsp1+25DUzOOaxtfRTD3EcGsbbDJZFoG9BSZZ+bFk=;
 b=PhlhiY7/DmEXstlJ70nGVj74bZF7/IpC6prrfk5498g6fAWUYk4GSiN8t3TZRa5Wuw
 0Qw0aJRU9BaC+HbGVOrSJc3aDCntHXWSd15Ql5cTSp/gvE8fgMnMHhRpEgE6OpPhpPeT
 dwfC/AwNKvCKps4ERLylBUYVzVMrU05oVWnbkWnAcEaUKLB+/36BCpm7eJ/P3KcloAf3
 NPABh9kwvxC8s50WjP0VyM2FODD2ROnIoVnoBNJFwyj6W9tCwu964Z6s1Wjr5mdWneEO
 DZ5VGDFo/Dd5fAH2MHDvPM712rz7x5N11nyoV7qPp07C/E76vRQ5d7LIIZLOoJ5Abf1J
 0urQ==
X-Gm-Message-State: AOAM5331KMgPWu80yjoC5n5UiqVQLt9AiaWl4JUklR8W1LyFgiqaZmSR
 ibLPLkWyt5dRL+WHDoqUbu990NDwqUMsEg==
X-Google-Smtp-Source: ABdhPJy0/xrV/+b/+hUOJ9Cxn/fbUWdE9CqJeY66C9J/tX5UhB7DFgdiZuHqTFlOJjIQb3D3cgRuQA==
X-Received: by 2002:a2e:a36f:0:b0:253:d948:731c with SMTP id
 i15-20020a2ea36f000000b00253d948731cmr3337677ljn.159.1653045815625; 
 Fri, 20 May 2022 04:23:35 -0700 (PDT)
Received: from nysse.local (82-203-167-172.bb.dnainternet.fi. [82.203.167.172])
 by smtp.gmail.com with ESMTPSA id
 bf16-20020a056512259000b00477cb9b8762sm470779lfb.50.2022.05.20.04.23.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 May 2022 04:23:35 -0700 (PDT)
To: Matthew Auld <matthew.william.auld@gmail.com>
References: <20220506131109.20942-1-juhapekka.heikkila@gmail.com>
 <CAM0jSHN4v2c7jFPbP25duzPDjj5hGZtSqBAGhs5caht5PwR5mA@mail.gmail.com>
From: =?UTF-8?Q?Juha-Pekka_Heikkil=c3=a4?= <juhapekka.heikkila@gmail.com>
Message-ID: <2a7e926b-eab7-c096-b4ae-b3d5c2d3bf85@gmail.com>
Date: Fri, 20 May 2022 14:23:31 +0300
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAM0jSHN4v2c7jFPbP25duzPDjj5hGZtSqBAGhs5caht5PwR5mA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Add smem fallback
 allocation for dpt
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



Matthew Auld kirjoitti 11.5.2022 klo 13.41:
> On Fri, 6 May 2022 at 14:11, Juha-Pekka Heikkila
> <juhapekka.heikkila@gmail.com> wrote:
>>
>> Add fallback smem allocation for dpt if stolen memory allocation failed.
>>
>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dpt.c | 16 ++++++++++++----
>>   1 file changed, 12 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
>> index fb0e7e79e0cd..10008699656e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
>> @@ -10,6 +10,7 @@
>>   #include "intel_display_types.h"
>>   #include "intel_dpt.h"
>>   #include "intel_fb.h"
>> +#include "gem/i915_gem_internal.h"
> 
> Nit: Keep these ordered.
> 
>>
>>   struct i915_dpt {
>>          struct i915_address_space vm;
>> @@ -128,6 +129,10 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
>>          void __iomem *iomem;
>>          struct i915_gem_ww_ctx ww;
>>          int err;
>> +       u64 pin_flags = 0;
> 
> Nit: Christmas tree-ish. Move this above the err.
> 
>> +
>> +       if (!i915_gem_object_is_lmem(dpt->obj))
>> +               pin_flags |= PIN_MAPPABLE;
> 
> If we do this then we don't need the second patch ;)
> 
> I guess the second patch was meant to make this is_stolen? Maybe just
> move the second patch to be the first in the series?
> 

Hi Matthew, thanks for the comments. I think I'm still missing some 
essential part. Without marking PIN_MAPPABLE when !lmem I was hitting 
WARN_ON() in gem code when doing this pinning. Weird thing with it was I 
got everything working with y-tile but x-tile was 100% fail. I'll need 
to repro those results and see why I got that. There was recently fixed 
regression on igt side which may have affected my results but I'll 
probably anyway need to have another round for these patches including 
fixes to those parts you pointed out.

/Juha-Pekka

>>
>>          wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>>          atomic_inc(&i915->gpu_error.pending_fb_pin);
>> @@ -138,7 +143,7 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
>>                          continue;
>>
>>                  vma = i915_gem_object_ggtt_pin_ww(dpt->obj, &ww, NULL, 0, 4096,
>> -                                                 HAS_LMEM(i915) ? 0 : PIN_MAPPABLE);
>> +                                                 pin_flags);
>>                  if (IS_ERR(vma)) {
>>                          err = PTR_ERR(vma);
>>                          continue;
>> @@ -248,10 +253,13 @@ intel_dpt_create(struct intel_framebuffer *fb)
>>
>>          size = round_up(size * sizeof(gen8_pte_t), I915_GTT_PAGE_SIZE);
>>
>> -       if (HAS_LMEM(i915))
>> -               dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
>> -       else
>> +       dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
>> +       if (IS_ERR(dpt_obj) && i915_ggtt_has_aperture(to_gt(i915)->ggtt))
>>                  dpt_obj = i915_gem_object_create_stolen(i915, size);
>> +       if (IS_ERR(dpt_obj) && !HAS_LMEM(i915)) {
>> +               drm_dbg_kms(&i915->drm, "Allocating dpt from smem\n");
> 
> Hopefully this is not too noisy?
> 
> With the s/is_lmem/is_stolen/, or however you want to deal with that,
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> 
>> +               dpt_obj = i915_gem_object_create_internal(i915, size);
>> +       }
>>          if (IS_ERR(dpt_obj))
>>                  return ERR_CAST(dpt_obj);
>>
>> --
>> 2.25.1
>>
