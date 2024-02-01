Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A2F845ACA
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Feb 2024 16:03:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C04610EEF2;
	Thu,  1 Feb 2024 15:03:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lV8yY+IR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDDF610EEF2;
 Thu,  1 Feb 2024 15:03:02 +0000 (UTC)
Received: by mail-lf1-f42.google.com with SMTP id
 2adb3069b0e04-5112cb6d1e7so1213321e87.0; 
 Thu, 01 Feb 2024 07:03:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706799781; x=1707404581; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:references:cc:to:from
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=ISCvpdX8+rAYNgtGTr5bHxOW1G+VML81mMtcl86Pw98=;
 b=lV8yY+IRMf/oj+OJcoCITxJrewzApQGaWF/u5a5q++9drl1W8Yr0flI2Cpa9dDQ+yv
 XBiG3A2JN9RQzvNsr9/mio467rnI50Bu/7FGR7D5OR3qo/koMAZ1jTBhJzOqhbKkoR/p
 KVrsm+a78m6xnbybVoK+iU4YH0m3+tQneteUhKZJCAu+4pOLoq0oY2RF2M+18LsFcEts
 XIqHVdsYNGP7a3u2t+/Nz0ugdMY2jSVNKlD1zSAYr1EucUNJa9nu4ezQiSMgx1e3wMR+
 lEg8LOqWihNeZt+jrOOEkAlLdd7CntCyaIOjVKAHqUmm76x2V8gdzUzIepKC+4uZ1u9/
 BbcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706799781; x=1707404581;
 h=content-transfer-encoding:in-reply-to:references:cc:to:from
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ISCvpdX8+rAYNgtGTr5bHxOW1G+VML81mMtcl86Pw98=;
 b=m7OHJgsXQKq7u2BLCHF4hoUEu9fbVFZdG5v28EAGx3Mq4PdVGS8L98Pcg20eCNXR4G
 E+Yi1SXmxWinf8A935MUGBGmFrHlW0WeFLqZGBQTerizRs3gpEkuHDRXGAl1lS76a2pT
 2MNooRR5HZddQC64EnQo0T7zBOWZkLKUlEBVejQ0KGKg8bOSHk4PfWhlLepEy4B335Px
 oBIeyUKuA4Yq8bUkZFexCffaqQdGmI/PzlHwlEb99PUSySSH3U1HNFaq8js0Uc0gZEMU
 MkL8Oyxtpk6/B0FKOfji/hMHvAk1RUBeYBdOmL5bosk8EW/bPIZR06GLOVbYJkLTq/Mp
 5aow==
X-Gm-Message-State: AOJu0YzYlxSzxeEN0TiE8HV0pACpZdiZNB0QZB2arjEaHDQgBU00j7tn
 yxvcKwLrU7MqZTl2npFfGHaWB6EK2ALQujByQWau8RvCsabNlC1Z
X-Google-Smtp-Source: AGHT+IGuIhaK8hzQzLsg/yv52pmEL9EylcN6QJIyeoesmsmHB39QJP2gWncpC97gnS/GBm9XP9JCBg==
X-Received: by 2002:a05:6512:90c:b0:510:ee2c:e9c4 with SMTP id
 e12-20020a056512090c00b00510ee2ce9c4mr2184575lft.17.1706799780438; 
 Thu, 01 Feb 2024 07:03:00 -0800 (PST)
X-Forwarded-Encrypted: i=0;
 AJvYcCUIpTcNxSY/0J0s74ufuWhvG3MlbtDaUAQN8xvnOYT5pigNSUeV58fOF/Ulgg4VCpKp7KaHqeizNw4VzP6Eb8ybIOcU/KC5UfTvMK0fShOT
Received: from [0.0.0.0] ([134.134.137.85])
 by smtp.googlemail.com with ESMTPSA id
 t24-20020a1c7718000000b0040f0219c371sm4602357wmi.19.2024.02.01.07.02.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 01 Feb 2024 07:03:00 -0800 (PST)
Message-ID: <b05c5998-9146-4cf2-9c43-dbb5b55b5c2a@gmail.com>
Date: Thu, 1 Feb 2024 17:02:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] drm/xe: add bind time pat index to xe_bo structure
Content-Language: en-US
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
References: <20240130193652.374270-1-juhapekka.heikkila@gmail.com>
 <20240130193652.374270-3-juhapekka.heikkila@gmail.com>
 <20240131185637.GB5347@mdroper-desk1.amr.corp.intel.com>
 <b7982f98-ec1e-4a16-8955-0699f4976dcd@gmail.com>
In-Reply-To: <b7982f98-ec1e-4a16-8955-0699f4976dcd@gmail.com>
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

On 1.2.2024 16.17, Juha-Pekka Heikkila wrote:
> On 31.1.2024 20.56, Matt Roper wrote:
>> On Tue, Jan 30, 2024 at 09:36:50PM +0200, Juha-Pekka Heikkila wrote:
>>> Add BO bind time pat index member to xe_bo structure and store
>>> pat index from xe_vma to xe_bo.
>>>
>>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>>> ---
>>>   drivers/gpu/drm/xe/xe_bo_types.h | 12 ++++++++++++
>>>   drivers/gpu/drm/xe/xe_pt.c       | 22 ++++++++++++++++++----
>>>   2 files changed, 30 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/xe/xe_bo_types.h 
>>> b/drivers/gpu/drm/xe/xe_bo_types.h
>>> index 14ef13b7b421..6d599f1e846b 100644
>>> --- a/drivers/gpu/drm/xe/xe_bo_types.h
>>> +++ b/drivers/gpu/drm/xe/xe_bo_types.h
>>> @@ -91,6 +91,18 @@ struct xe_bo {
>>>       /** @vram_userfault_link: Link into 
>>> @mem_access.vram_userfault.list */
>>>           struct list_head vram_userfault_link;
>>> +
>>> +    /**
>>> +     * @pat_index: The pat index requested when bind this BO
>>> +     */
>>> +    u16 pat_index;
>>> +
>>> +    /**
>>> +     * @has_sealed_pat_index: The pat index is sealed because this 
>>> BO is
>>> +     * pinned as framebuffer. This is to prevent flipping compression
>>> +     * on/off from framebuffers while in use.
>>> +     */
>>> +    bool has_sealed_pat_index;
>>>   };
>>>   #define intel_bo_to_drm_bo(bo) (&(bo)->ttm.base)
>>> diff --git a/drivers/gpu/drm/xe/xe_pt.c b/drivers/gpu/drm/xe/xe_pt.c
>>> index de1030a47588..c72cb75d993c 100644
>>> --- a/drivers/gpu/drm/xe/xe_pt.c
>>> +++ b/drivers/gpu/drm/xe/xe_pt.c
>>> @@ -1208,10 +1208,11 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct 
>>> xe_vma *vma, struct xe_exec_queue
>>>       struct dma_fence *fence;
>>>       struct invalidation_fence *ifence = NULL;
>>>       struct xe_range_fence *rfence;
>>> +    struct xe_bo *bo = xe_vma_bo(vma);
>>>       int err;
>>>       bind_pt_update.locked = false;
>>> -    xe_bo_assert_held(xe_vma_bo(vma));
>>> +    xe_bo_assert_held(bo);
>>>       xe_vm_assert_held(vm);
>>>       vm_dbg(&xe_vma_vm(vma)->xe->drm,
>>> @@ -1252,8 +1253,21 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct 
>>> xe_vma *vma, struct xe_exec_queue
>>>           return ERR_PTR(-ENOMEM);
>>>       }
>>> +    /*
>>> +     * On Xe2 BO which was pinned as framebuffer before with different
>>> +     * PAT index cannot be bound with different PAT index. This is
>>> +     * to prevent switching CCS on/off from framebuffers on the fly
>>> +     * with Xe2.
>>> +     */
>>
>> I haven't been following all the discussion here, but why is switching
>> it on/off a problem?  On Xe2 can't we just always turn on decompression
>> (assuming they were 4-tile)?
>>
>> Even if a content producer puts data into the buffer using a
>> non-compression PAT index, my understanding is that the FlatCCS metadata
>> for that part of the buffer still gets updated appropriately (to 0000 or
>> whatever the code is for "uncompressed block").  If the decompression
>> bit in PLANE_CTL basically translates to "pay attention to FlatCCS" vs
>> "ignore FlatCCS" it shouldn't matter whether the data is truly
>> compressed or not, right?  Since the FlatCCS area that corresponds to a
>> buffer is still correct even when non-compressed PAT is used (I think),
>> is there a reason to turn off decompression for 4-tile?
>>
>> Am I overlooking something?
> 
> Hi Matt,
> 
> you got it correct for the case of tile4, on patch 4/4 of this set I put 
>   decompression on unconditionally for tile4 for display when on xe2.
> 
> Problems come when we're not on tile4 but linear/x-tile where display 
> engine doesn't support decompression for these. These PAT indexes for 
> BOs are set by user space so I will not be allowed to change it and can 
> only deny changing pat index for BO if it was already accepted as good 
> configuration for display. That has_sealed_pat_index is set when 
> framebuffer is pinned.
> 
> Decompression for linear and x-tile is marked as not supported and I 
> have sas document for xe2 compression where is said sw must disable 
> compression for linear/x-tile.
> 

I did just talk with Ville and we did agree we could just drop these 
checks. By default everything will be decompressed and user space will 
need explicitly to enable compression. Linear and x-tile will misrender 
if they're compressed and with patch 4/4 from this set tile4 will work 
in all cases.

>>
>>> +    if (bo) {
>>> +        if (bo->has_sealed_pat_index && bo->pat_index != 
>>> vma->pat_index)
>>> +            return ERR_PTR(-EINVAL);
>>> +
>>> +        bo->pat_index = vma->pat_index;
>>> +    }
>>> +
>>>       fence = xe_migrate_update_pgtables(tile->migrate,
>>> -                       vm, xe_vma_bo(vma), q,
>>> +                       vm, bo, q,
>>>                          entries, num_entries,
>>>                          syncs, num_syncs,
>>>                          &bind_pt_update.base);
>>> @@ -1287,8 +1301,8 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct 
>>> xe_vma *vma, struct xe_exec_queue
>>>                      DMA_RESV_USAGE_KERNEL :
>>>                      DMA_RESV_USAGE_BOOKKEEP);
>>> -        if (!xe_vma_has_no_bo(vma) && !xe_vma_bo(vma)->vm)
>>> -            dma_resv_add_fence(xe_vma_bo(vma)->ttm.base.resv, fence,
>>> +        if (!xe_vma_has_no_bo(vma) && !bo->vm)
>>> +            dma_resv_add_fence(bo->ttm.base.resv, fence,
>>>                          DMA_RESV_USAGE_BOOKKEEP);
>>>           xe_pt_commit_bind(vma, entries, num_entries, rebind,
>>>                     bind_pt_update.locked ? &deferred : NULL);
>>> -- 
>>> 2.25.1
>>>
>>
> 

