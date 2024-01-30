Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADBC842C7D
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 20:18:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FAC010E2E1;
	Tue, 30 Jan 2024 19:17:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C438810E2E1;
 Tue, 30 Jan 2024 19:17:29 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id
 5b1f17b1804b1-40eebe7767cso34922125e9.1; 
 Tue, 30 Jan 2024 11:17:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706642188; x=1707246988; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=ExRDT7/oR0J/rvv0ANX+Lo9wQs3XVo3wEzukFRbiWzA=;
 b=WBPtplJzrab1/mQT3jzSmEQhyxPX62Db6vciQEq+vTincAh9fYTb1k+vhtlyFvo1Kq
 2/BF8WUYC1tHS0XCZdxxvqAZE+SHFRbsvC2Tnb8derCab8TThE7IRmNbMhYIqdaCMCiD
 KJgGzPzyLADsGtGkVmU4JurXdyQ6+wsbGMmePP25ebCD8h9tZQn34b677r5fWU+FRySf
 /qrQyss/OlwR9p8cLNMmpgdhLGIAolqQVRgSF4Urbs4XufEGhhIiojEvwODM/wPpYIyL
 CIqGalKBWay6KfYAgzbJvipTfs+u7D8tuyiUc0nrjK3/YNVo+QWdI/QSGTCAnhm7t5ak
 uE+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706642188; x=1707246988;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ExRDT7/oR0J/rvv0ANX+Lo9wQs3XVo3wEzukFRbiWzA=;
 b=jdZ+V94IBlQV3S4iyOTWENoQVJUb3AVMR4pQK8C6iKNpiX4ucqWRNscz6OmtuEe/+n
 fpAUgabCWTeC8AHcHsIvPp8WraNcoJ9eoTMDqQPn9ANS5AM4gK3YcrqXrX3h8j66RnK5
 c8AizsZarAFWcWUsFIwRN+UQAPVhqxCM6sRfTOQ39NuVgBMStNZQ8UOaZchQt5HQGw3g
 Rdv5QOl3Gr6CZg8W+ri4ZQ8zZyx0jGXbdtAUqKvMZjc1xm9Jk1c1uYFhlAdNBfzoOnzo
 +N9no3jMzVBasZTkNK80lCb23jaxKfe1UwPRiLJ0HU+oThyJK5IPGTlSHLIZr2N/6Q0g
 Slsw==
X-Gm-Message-State: AOJu0Yyo0qOlk21rhfntAAjcPJK/KtHReipAq+cxUgB/1ifoXpVw0ohw
 bUNxQav31iJCaNuGCdpftIXtb8jxreOW+xBQCiOxG3DNHFjulIwO
X-Google-Smtp-Source: AGHT+IGPkzTLaZe+PbljW4CIQKoagC0ZtgGak/vFUKSmBtdepqHaSvELylSr4tZ9f/4h/IEdQrG/Sg==
X-Received: by 2002:a05:600c:310b:b0:40e:fa04:92fc with SMTP id
 g11-20020a05600c310b00b0040efa0492fcmr4464945wmo.32.1706642187786; 
 Tue, 30 Jan 2024 11:16:27 -0800 (PST)
Received: from [0.0.0.0] ([134.134.137.89])
 by smtp.googlemail.com with ESMTPSA id
 b6-20020a05600003c600b0033aed4e3b55sm6343326wrg.102.2024.01.30.11.16.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 30 Jan 2024 11:16:27 -0800 (PST)
Message-ID: <1c8cce00-8f43-4a19-97a7-760f0525a197@gmail.com>
Date: Tue, 30 Jan 2024 21:16:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] drm/xe: store bind time pat index to xe_bo
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
References: <20240126210807.320671-1-juhapekka.heikkila@gmail.com>
 <20240126210807.320671-4-juhapekka.heikkila@gmail.com>
 <87f6ed0b-0fe2-4cbb-ae77-bdcfdd687ccc@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <87f6ed0b-0fe2-4cbb-ae77-bdcfdd687ccc@intel.com>
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

On 29.1.2024 13.33, Matthew Auld wrote:
> On 26/01/2024 21:08, Juha-Pekka Heikkila wrote:
>> Store pat index from xe_vma to xe_bo and check if bo was pinned
>> as framebuffer and verify pat index is not changing for pinned
>> framebuffers.
>>
>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>> ---
>>   drivers/gpu/drm/xe/xe_pt.c | 23 +++++++++++++++++++----
>>   1 file changed, 19 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/xe/xe_pt.c b/drivers/gpu/drm/xe/xe_pt.c
>> index de1030a47588..0a5d7c7543b1 100644
>> --- a/drivers/gpu/drm/xe/xe_pt.c
>> +++ b/drivers/gpu/drm/xe/xe_pt.c
>> @@ -1208,10 +1208,11 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct 
>> xe_vma *vma, struct xe_exec_queue
>>       struct dma_fence *fence;
>>       struct invalidation_fence *ifence = NULL;
>>       struct xe_range_fence *rfence;
>> +    struct xe_bo *bo = xe_vma_bo(vma);
>>       int err;
>>       bind_pt_update.locked = false;
>> -    xe_bo_assert_held(xe_vma_bo(vma));
>> +    xe_bo_assert_held(bo);
>>       xe_vm_assert_held(vm);
>>       vm_dbg(&xe_vma_vm(vma)->xe->drm,
>> @@ -1252,8 +1253,22 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct 
>> xe_vma *vma, struct xe_exec_queue
>>           return ERR_PTR(-ENOMEM);
>>       }
>> +    /*
>> +     * BO which has XE_BO_SCANOUT_BIT set and was pinned as framebuffer
>> +     * before with different PAT index cannot be bound with different 
>> PAT
>> +     * index. This is to prevent switching CCS on/off from framebuffers
>> +     * on the fly.
>> +     */
>> +    if (bo) {
>> +        if (bo->flags & XE_BO_SCANOUT_BIT && bo->pat_index_scanout &&
> 
> Note that pat_index = 0 is usually a valid index...
> 
>> +            bo->pat_index_scanout != vma->pat_index)
>> +            return ERR_PTR(-EINVAL);
>> +
>> +        bo->pat_index = vma->pat_index;
>> +    }
> 
> ...what about something like:
> 
> if (bo.has_sealed_pat_index && bo.sealed_pat_index != vma->pat_index)
>      return ERR_PTR();
> else if (SCANOUT) {
>      bo.has_sealed_pat_index = true;
>      bo.sealed_pat_index = vma->pat_index;
> }
> 
> Also, this and the previous patch should probably be squashed together? 
> Other question is if we should only apply this on xe2?

Hi Matthew, thanks for the comments. I went ahead with making 
has_sealed_pat_index and it did make things much more clean. It's good 
idea, thanks. I'll soon send new version. Here I didn't go limit this to 
xe2 as the limit is coming from framebuffer code, if there come other 
use for this pat index sealing it doesn't need to be about xe2 on this part.

> 
>> +
>>       fence = xe_migrate_update_pgtables(tile->migrate,
>> -                       vm, xe_vma_bo(vma), q,
>> +                       vm, bo, q,
>>                          entries, num_entries,
>>                          syncs, num_syncs,
>>                          &bind_pt_update.base);
>> @@ -1287,8 +1302,8 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct 
>> xe_vma *vma, struct xe_exec_queue
>>                      DMA_RESV_USAGE_KERNEL :
>>                      DMA_RESV_USAGE_BOOKKEEP);
>> -        if (!xe_vma_has_no_bo(vma) && !xe_vma_bo(vma)->vm)
>> -            dma_resv_add_fence(xe_vma_bo(vma)->ttm.base.resv, fence,
>> +        if (!xe_vma_has_no_bo(vma) && !bo->vm)
>> +            dma_resv_add_fence(bo->ttm.base.resv, fence,
>>                          DMA_RESV_USAGE_BOOKKEEP);
>>           xe_pt_commit_bind(vma, entries, num_entries, rebind,
>>                     bind_pt_update.locked ? &deferred : NULL);

