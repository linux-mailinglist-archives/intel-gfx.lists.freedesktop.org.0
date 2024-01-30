Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A52DC842C7F
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 20:18:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25CB411347E;
	Tue, 30 Jan 2024 19:17:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C375E113470;
 Tue, 30 Jan 2024 19:17:53 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id
 5b1f17b1804b1-40e5afc18f5so46167085e9.3; 
 Tue, 30 Jan 2024 11:17:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706642212; x=1707247012; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=KvqoSEQE8Eh7VLvWdIItQrdZEtkuXbvd12Ouz083gnI=;
 b=Jt50AfeYr2sgrq7JiHuWNqNeHAIEWRMuQr8UdNiKG3rUUcQAjKZh2Jm6bASgxC17xU
 fqzvpeTVYl+L8KpUmwFPQPFjEdeeqp4RGfnBiXC1OBi/9BdQs11lZC4RfXKJs/jvhOaT
 Q9buxdQqKaD80Qs9oeoj1QeIFU3e5FUyC8nz4KDW6b3wBo3eetwnnfMkrbz+YC68L22u
 RRBFyNeC2Qs6X5OfUMmqgBR3VjndsxajtaLEpB0okHyIqOGXEf/FG/mEsCEVMi3kE7D8
 fphKFlS0JO6RmWpJjCCum8BT4ST/p6A8r8ptYsT47QPqdbdTBco01OxzzyiFrfY60HzS
 YFKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706642212; x=1707247012;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=KvqoSEQE8Eh7VLvWdIItQrdZEtkuXbvd12Ouz083gnI=;
 b=Fw8NxhgF+37u27dHJKn6BW4fxSgzIu3Gj7s0DrC4+RMPgTtHw5rhHY4EVFovVl/2DB
 +IT+oqFSMfbXvJH3L2u5bw3qiC3pbYb11AwXRcCl3xMxA9+Ozm/GDphBA0pttu2zo5p7
 sp4JhBOkYxBtgf7Po8IKMYFqY749Xn7ZeNrr/3B23MBD5Q8U4IVt7NFcb4ZphcDp+HVa
 I1x7VesWztnH9Mv1KkCir0x+TM3/eu6xMfdPdPwtsfC2kMUaL4j6h3Y5joRzm+S6NyW9
 4lKd+l8MWJvEEsg5NKHnyvH8FEjv6fyqeCpEy3JYpcMp6Y/fxbEZ16D0xmZ9cmA3/vsO
 HIhw==
X-Gm-Message-State: AOJu0Yw+ELW4YmMUXjEhSOhtoShbnkgixEAkjFUjZuKUohMHpuM5njtI
 wURXiSRmquQJUelhXPcqNIDE+fMFMMx4IoM35z86W4YMx1QejErWoF8OwKCotlM=
X-Google-Smtp-Source: AGHT+IHwwSYKfzrG7J/6vWz82/46kFfpoMbEUN+kLSRGOirlfQJ/zFy/wzLvQmGSbeSWVngnckWnXA==
X-Received: by 2002:a05:600c:a46:b0:40e:68a9:ab56 with SMTP id
 c6-20020a05600c0a4600b0040e68a9ab56mr8567202wmq.36.1706642211952; 
 Tue, 30 Jan 2024 11:16:51 -0800 (PST)
Received: from [0.0.0.0] ([134.134.137.89])
 by smtp.googlemail.com with ESMTPSA id
 b6-20020a05600003c600b0033aed4e3b55sm6343326wrg.102.2024.01.30.11.16.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 30 Jan 2024 11:16:51 -0800 (PST)
Message-ID: <4cf6939e-f4b5-4515-ba1a-f6d6b505e903@gmail.com>
Date: Tue, 30 Jan 2024 21:16:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] drm/xe/xe2: Limit ccs framebuffers to tile4 only
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
References: <20240126210807.320671-1-juhapekka.heikkila@gmail.com>
 <20240126210807.320671-5-juhapekka.heikkila@gmail.com>
 <1b767441-0ee2-4619-9af0-dd979923b411@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <1b767441-0ee2-4619-9af0-dd979923b411@intel.com>
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
Reply-To: juhapekka.heikkila@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 29.1.2024 14.02, Matthew Auld wrote:
> On 26/01/2024 21:08, Juha-Pekka Heikkila wrote:
>> Display engine support ccs only with tile4, prevent other modifiers
>> from using compressed memory. Store pin time pat index to xe_bo.
>>
>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>> ---
>>   drivers/gpu/drm/xe/display/xe_fb_pin.c | 19 +++++++++++++++++++
>>   1 file changed, 19 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c 
>> b/drivers/gpu/drm/xe/display/xe_fb_pin.c
>> index 722c84a56607..b2930a226f54 100644
>> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
>> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
>> @@ -10,9 +10,18 @@
>>   #include "intel_fb_pin.h"
>>   #include "xe_ggtt.h"
>>   #include "xe_gt.h"
>> +#include "xe_pat.h"
>>   #include <drm/ttm/ttm_bo.h>
>> +static bool is_compressed(const struct drm_framebuffer *fb)
>> +{
>> +    struct xe_bo *bo = intel_fb_obj(fb);
>> +    struct xe_device *xe = 
>> to_xe_device(to_intel_framebuffer(fb)->base.dev);
>> +
>> +    return xe_pat_index_has_compression(xe, bo->pat_index);
>> +}
>> +
>>   static void
>>   write_dpt_rotated(struct xe_bo *bo, struct iosys_map *map, u32 
>> *dpt_ofs, u32 bo_ofs,
>>             u32 width, u32 height, u32 src_stride, u32 dst_stride)
>> @@ -349,12 +358,22 @@ void intel_unpin_fb_vma(struct i915_vma *vma, 
>> unsigned long flags)
>>   int intel_plane_pin_fb(struct intel_plane_state *plane_state)
>>   {
>>       struct drm_framebuffer *fb = plane_state->hw.fb;
>> +    struct xe_device *xe = 
>> to_xe_device(to_intel_framebuffer(fb)->base.dev);
>>       struct xe_bo *bo = intel_fb_obj(fb);
>>       struct i915_vma *vma;
>>       /* We reject creating !SCANOUT fb's, so this is weird.. */
>>       drm_WARN_ON(bo->ttm.base.dev, !(bo->flags & XE_BO_SCANOUT_BIT));
>> +    if (GRAPHICS_VER(xe) >= 20) {
>> +        if (fb->modifier != I915_FORMAT_MOD_4_TILED &&
>> +            is_compressed(fb)) {
>> +            drm_warn(&xe->drm, "Cannot create ccs framebuffer with 
>> other than tile4 mofifier\n");
>> +            return -EINVAL;
>> +        }
>> +        bo->pat_index_scanout = bo->pat_index;
>> +    }
> 
> I think this needs to be moved into __xe_pin_fb_vma() after acquiring 
> the object lock. Also not sure what prevents vm_bind appearing after we 
> drop the lock? Do we need to prevent modifications until the end of 
> _xe_unpin_fb_vma()?

I did now put in __xe_unpin_fb_vma()
..
vma->bo->has_sealed_pat_index = false;
..

as well as moved this above block to correct place.

> 
>> +
>>       vma = __xe_pin_fb_vma(to_intel_framebuffer(fb), 
>> &plane_state->view.gtt);
>>       if (IS_ERR(vma))
>>           return PTR_ERR(vma);

