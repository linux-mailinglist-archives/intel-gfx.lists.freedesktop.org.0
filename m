Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DB48459DA
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Feb 2024 15:17:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D44410EE4E;
	Thu,  1 Feb 2024 14:17:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UN7kS41z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B15B110EE46;
 Thu,  1 Feb 2024 14:17:29 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id
 5b1f17b1804b1-40ef6bbb61fso8697285e9.1; 
 Thu, 01 Feb 2024 06:17:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706797048; x=1707401848; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=7lVkWQFq3vNaWvlas47tEddLHNBAjdxZNMUI8eOXX2c=;
 b=UN7kS41zZjskFVqG6xShq2j5M08y1Betbtacm2INauIaKCyTUBSQ2Axi/kZ32i288T
 YIr6fU+OwuDLuqTECY7MqZ8hw6SYlRAvPR/SMnq47SdWMdjPJni6hxCsTVytgx5zH6BA
 cpmw0iA+Yx1NjSfleU6b19gGKtoHL847I5NSoCOAMTwHv4C8IhcKorGaPFI8tzIhipZK
 3NYxbiHTrh7qCM3oFIDM6esLQKNMDNyNKPhCsEyeDTVoq73qpf1omD7L2pKDzLDEMjtF
 h3iwF0B4O9wACHruxNECZE8ZAs1/rCD5E/56wDO1wK95vkbWyz4roEob5WSfx576D2ao
 mPdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706797048; x=1707401848;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=7lVkWQFq3vNaWvlas47tEddLHNBAjdxZNMUI8eOXX2c=;
 b=Y87geZi6YbnVx4DVPUmvHlsyKuApp2V9FdeYOyig8iICM/hS9LTaiagfMZ4Ohuar0X
 0P5SLd67J0rIfv/ruSVFSn7DnJG7W4rA65cZ38AhR4HVE89J4jQIAmYwIkMThRfCOizv
 s4BAnwnQwWW5POJBD25t9g1K2GOI0IDLzvUXQgWQA3jDQu/vGB4jVbjTybWKZV06suL1
 fkdrlFQQ7fwBAuCAj8i8sRZtCcfA41yuNDcI1EHQtEvgR9tMu6vdEtJYrt1jzWOoM1Xi
 pMWHSa2LJmrxuiGn90QqVY6bvRx92af3YJjdlRQBdU6Q7cxmdM3M/Cs3znzCqGmjr08m
 Z8VA==
X-Gm-Message-State: AOJu0YxdgCwmP0qxkteZTlf3+T+gN9RQXWORcyLFvJkzU6A9gsuoB5o1
 OWx2tBzQyaUghuIxd8dW1gGr5/QvQBkPyaWZl0ueYvGnj0iWB7yJUivJnFe137mcPQ==
X-Google-Smtp-Source: AGHT+IGM3otjfqs6bkusMv5/wa40Eh+3osnCGvUVSuaPDenVFe0QiUhaNMI4R9x+y2IZBfwBaNkapQ==
X-Received: by 2002:a05:600c:1912:b0:40e:b4a0:277b with SMTP id
 j18-20020a05600c191200b0040eb4a0277bmr3685838wmq.39.1706797047807; 
 Thu, 01 Feb 2024 06:17:27 -0800 (PST)
X-Forwarded-Encrypted: i=0;
 AJvYcCVKYwUqpePLQT0KgSvdREkokf5U70R2Y35EAPFPqCDQZanuiHC6s8gjCa0GJG2fWbedn6F+OTQg1KP/9YfkzZSOPp34atzQwXuWPo7vCcAV
Received: from [0.0.0.0] ([134.134.137.85])
 by smtp.googlemail.com with ESMTPSA id
 e1-20020a05600c4e4100b0040ee4f38968sm4642205wmq.2.2024.02.01.06.17.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 01 Feb 2024 06:17:27 -0800 (PST)
Message-ID: <b7982f98-ec1e-4a16-8955-0699f4976dcd@gmail.com>
Date: Thu, 1 Feb 2024 16:17:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] drm/xe: add bind time pat index to xe_bo structure
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
References: <20240130193652.374270-1-juhapekka.heikkila@gmail.com>
 <20240130193652.374270-3-juhapekka.heikkila@gmail.com>
 <20240131185637.GB5347@mdroper-desk1.amr.corp.intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20240131185637.GB5347@mdroper-desk1.amr.corp.intel.com>
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
Reply-To: juhapekka.heikkila@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 31.1.2024 20.56, Matt Roper wrote:
> On Tue, Jan 30, 2024 at 09:36:50PM +0200, Juha-Pekka Heikkila wrote:
>> Add BO bind time pat index member to xe_bo structure and store
>> pat index from xe_vma to xe_bo.
>>
>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>> ---
>>   drivers/gpu/drm/xe/xe_bo_types.h | 12 ++++++++++++
>>   drivers/gpu/drm/xe/xe_pt.c       | 22 ++++++++++++++++++----
>>   2 files changed, 30 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/xe/xe_bo_types.h b/drivers/gpu/drm/xe/xe_bo_types.h
>> index 14ef13b7b421..6d599f1e846b 100644
>> --- a/drivers/gpu/drm/xe/xe_bo_types.h
>> +++ b/drivers/gpu/drm/xe/xe_bo_types.h
>> @@ -91,6 +91,18 @@ struct xe_bo {
>>   
>>   	/** @vram_userfault_link: Link into @mem_access.vram_userfault.list */
>>   		struct list_head vram_userfault_link;
>> +
>> +	/**
>> +	 * @pat_index: The pat index requested when bind this BO
>> +	 */
>> +	u16 pat_index;
>> +
>> +	/**
>> +	 * @has_sealed_pat_index: The pat index is sealed because this BO is
>> +	 * pinned as framebuffer. This is to prevent flipping compression
>> +	 * on/off from framebuffers while in use.
>> +	 */
>> +	bool has_sealed_pat_index;
>>   };
>>   
>>   #define intel_bo_to_drm_bo(bo) (&(bo)->ttm.base)
>> diff --git a/drivers/gpu/drm/xe/xe_pt.c b/drivers/gpu/drm/xe/xe_pt.c
>> index de1030a47588..c72cb75d993c 100644
>> --- a/drivers/gpu/drm/xe/xe_pt.c
>> +++ b/drivers/gpu/drm/xe/xe_pt.c
>> @@ -1208,10 +1208,11 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct xe_vma *vma, struct xe_exec_queue
>>   	struct dma_fence *fence;
>>   	struct invalidation_fence *ifence = NULL;
>>   	struct xe_range_fence *rfence;
>> +	struct xe_bo *bo = xe_vma_bo(vma);
>>   	int err;
>>   
>>   	bind_pt_update.locked = false;
>> -	xe_bo_assert_held(xe_vma_bo(vma));
>> +	xe_bo_assert_held(bo);
>>   	xe_vm_assert_held(vm);
>>   
>>   	vm_dbg(&xe_vma_vm(vma)->xe->drm,
>> @@ -1252,8 +1253,21 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct xe_vma *vma, struct xe_exec_queue
>>   		return ERR_PTR(-ENOMEM);
>>   	}
>>   
>> +	/*
>> +	 * On Xe2 BO which was pinned as framebuffer before with different
>> +	 * PAT index cannot be bound with different PAT index. This is
>> +	 * to prevent switching CCS on/off from framebuffers on the fly
>> +	 * with Xe2.
>> +	 */
> 
> I haven't been following all the discussion here, but why is switching
> it on/off a problem?  On Xe2 can't we just always turn on decompression
> (assuming they were 4-tile)?
> 
> Even if a content producer puts data into the buffer using a
> non-compression PAT index, my understanding is that the FlatCCS metadata
> for that part of the buffer still gets updated appropriately (to 0000 or
> whatever the code is for "uncompressed block").  If the decompression
> bit in PLANE_CTL basically translates to "pay attention to FlatCCS" vs
> "ignore FlatCCS" it shouldn't matter whether the data is truly
> compressed or not, right?  Since the FlatCCS area that corresponds to a
> buffer is still correct even when non-compressed PAT is used (I think),
> is there a reason to turn off decompression for 4-tile?
> 
> Am I overlooking something?

Hi Matt,

you got it correct for the case of tile4, on patch 4/4 of this set I put 
  decompression on unconditionally for tile4 for display when on xe2.

Problems come when we're not on tile4 but linear/x-tile where display 
engine doesn't support decompression for these. These PAT indexes for 
BOs are set by user space so I will not be allowed to change it and can 
only deny changing pat index for BO if it was already accepted as good 
configuration for display. That has_sealed_pat_index is set when 
framebuffer is pinned.

Decompression for linear and x-tile is marked as not supported and I 
have sas document for xe2 compression where is said sw must disable 
compression for linear/x-tile.

/Juha-Pekka

> 
>> +	if (bo) {
>> +		if (bo->has_sealed_pat_index && bo->pat_index != vma->pat_index)
>> +			return ERR_PTR(-EINVAL);
>> +
>> +		bo->pat_index = vma->pat_index;
>> +	}
>> +
>>   	fence = xe_migrate_update_pgtables(tile->migrate,
>> -					   vm, xe_vma_bo(vma), q,
>> +					   vm, bo, q,
>>   					   entries, num_entries,
>>   					   syncs, num_syncs,
>>   					   &bind_pt_update.base);
>> @@ -1287,8 +1301,8 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct xe_vma *vma, struct xe_exec_queue
>>   				   DMA_RESV_USAGE_KERNEL :
>>   				   DMA_RESV_USAGE_BOOKKEEP);
>>   
>> -		if (!xe_vma_has_no_bo(vma) && !xe_vma_bo(vma)->vm)
>> -			dma_resv_add_fence(xe_vma_bo(vma)->ttm.base.resv, fence,
>> +		if (!xe_vma_has_no_bo(vma) && !bo->vm)
>> +			dma_resv_add_fence(bo->ttm.base.resv, fence,
>>   					   DMA_RESV_USAGE_BOOKKEEP);
>>   		xe_pt_commit_bind(vma, entries, num_entries, rebind,
>>   				  bind_pt_update.locked ? &deferred : NULL);
>> -- 
>> 2.25.1
>>
> 

