Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB51CAD02E8
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Jun 2025 15:14:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CD0010EA9C;
	Fri,  6 Jun 2025 13:14:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Tcy7IIp+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65CBE10E351
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Jun 2025 13:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1749215651;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OPcQkvm2yO9gaDxIY/WqB5o2C00Jo+psdQDe9Iafs6c=;
 b=Tcy7IIp+jU7oSLTOi7Gay3bdw0Boba6vRCnzvzbP+WG4mD4HM7Cg9Pb+cMTAr+88xCMSy8
 n3HqDHqv1WqmNDXsyHD9mSn+U0v+X6O98cBe7gqZjWmWWV63aElzy1JPbnoPr5TaLu1kDS
 ra/zc9ivFPGWA2QGCNgrLcj2SVxhKdE=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-117-A283BHx3N5qhgseORado6g-1; Fri, 06 Jun 2025 09:14:09 -0400
X-MC-Unique: A283BHx3N5qhgseORado6g-1
X-Mimecast-MFC-AGG-ID: A283BHx3N5qhgseORado6g_1749215648
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-450d9f96f61so14843685e9.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Jun 2025 06:14:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749215648; x=1749820448;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=OPcQkvm2yO9gaDxIY/WqB5o2C00Jo+psdQDe9Iafs6c=;
 b=m3A+EmbjPwo+QGgZ+3W1dLT2qqBpRVW8p4vjaWPGkTzbqdAXi/Up5woRPazjQOTyit
 mHu6B89zSNpVkjMTVE59/+tCQo6rwof1LIXLz3vZ5jzXHij/30EPwsIVdFsMTWfX5wqW
 5pgRe+nmDut9DHwxLPGm+8z1lYYVV55p9UE/33nlNJsB0ECW7n4L3gh2NpY5uoTR8onR
 VZ2KpVwjVsD3JvQqlOELitNF9ibWnFMET7cd1kKToJLa9Bue08harjUBTpK6xxoJkwLf
 ecHZdufZDpmDYYHOLUR1nged8AMs7ml+UYIwLl9+ROI60Jq0jmIBV82xJrPLKuDJs9Gm
 CBXQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXzteUlk+nXUNhf0yv7SFaj8p0xqxpM1ta3vb5qG90WIqMFyrrrVwjgJbXH1PhwK+G/6AFaRw9+zZg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyjKUGU7LpjmqJBoUsca9eeBY92fnyPWpeEISoRAnb4w2OB/GxR
 TLwI8tkkN2YD09jg3Wmfz76kobo0WCfc0KQXkiEgxwfkmPwPUP3Q84nSlbeChiqQiBM+eVYtDT8
 jXSRg0DlThHpFKVJ9VkjFzN1mbjTqjkhfWlcaYpqGQv6amDcPAibia85Zpk9HrJBlBiRTlg==
X-Gm-Gg: ASbGncuP5l4veRZ5pHwSYvIXbG8fh17KFCZyoLQNhou9EHJKJkf/Wl7Oio7EnonhR5/
 /37BtXXDTyksW5QGijmavDsb85l9K7wsjQVeXOdE5vK/pxnAfz69VSMTItDrrhlRH8VKkMoqEDI
 0GZdfv9Q3pmZ9zNK0oy9ppwc4KFv4ammDVtdAhr6MeAT9flrTxUc01i6ahl9pEl9oNs/Yi8ynoi
 T0kmiN6BQCHMvYeZVsWDSeyxUadIKqah17au4pdzVGPtzgle9MQe5IbO9Jo/7V+R72l3W9M5xNy
 GwIfEV05DMlebYH5vmFivFJnFMAu/BTXKrkCyu0+9wImo7NZyHY=
X-Received: by 2002:a05:600c:a08e:b0:43c:fa24:873e with SMTP id
 5b1f17b1804b1-45201391375mr37179125e9.13.1749215648360; 
 Fri, 06 Jun 2025 06:14:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEgw0C5j9K+kUpLKu17QtwP444HtAeVPH30PrMVtLgOGG/Lf58xq+FjEIaE8XuzPGYKNjMZEQ==
X-Received: by 2002:a05:600c:a08e:b0:43c:fa24:873e with SMTP id
 5b1f17b1804b1-45201391375mr37178795e9.13.1749215647873; 
 Fri, 06 Jun 2025 06:14:07 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:c:37e0:ced3:55bd:f454:e722?
 ([2a01:e0a:c:37e0:ced3:55bd:f454:e722])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-452137277basm24098065e9.32.2025.06.06.06.14.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Jun 2025 06:14:07 -0700 (PDT)
Message-ID: <8ed62378-269f-4385-bf05-eda28098fc1f@redhat.com>
Date: Fri, 6 Jun 2025 15:14:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 4/9] drm/ttm: Add ttm_bo_kmap_try_from_panic()
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Huang Rui <ray.huang@amd.com>, Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
References: <20250606120519.753928-1-jfalempe@redhat.com>
 <20250606120519.753928-5-jfalempe@redhat.com>
 <dd0532a2-4011-41ec-896d-ec066dc23cbc@amd.com>
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <dd0532a2-4011-41ec-896d-ec066dc23cbc@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: G8GghWvo3a5REachbu0GDNzUfDXdwdM6IFehIEP-AqY_1749215648
X-Mimecast-Originator: redhat.com
Content-Language: en-US, fr
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

On 06/06/2025 14:28, Christian König wrote:
> On 6/6/25 13:48, Jocelyn Falempe wrote:
>> If the ttm bo is backed by pages, then it's possible to safely kmap
>> one page at a time, using kmap_try_from_panic().
> 
> I strongly assume that we don't care about locking anything in this case, don't we?

Yes, normally it's called for the current framebuffer, so I assume it's 
properly allocated, and isn't growing/shrinking while being displayed.

> 
>> Unfortunately there is no way to do the same with ioremap, so it
>> only supports the kmap case.
> 
> Oh, there actually is on most modern systems.
> 
> At least on 64bit systems amdgpu maps the whole VRAM BAR into kernel address space on driver load.
> 
> So as long as you have a large BAR system you can trivially have access to the MMIO memory.

For amdgpu, I used the indirect MMIO access, so I didn't need to ioremap
https://elixir.bootlin.com/linux/v6.15/source/drivers/gpu/drm/amd/amdgpu/amdgpu_display.c#L1800

For the xe driver, I only tested on integrated GPU, using system RAM, so 
this first approach is good enough.
But I'm still interested to find a solution, is there a way to get the 
current io-mapping if it exists?


> 
>> This is needed for proper drm_panic support with xe driver.
>>
>> Signed-off-by: Jocelyn Falempe <jfalempe@redhat.com>
>> ---
>>
>> v8:
>>   * Added in v8
>>
>>   drivers/gpu/drm/ttm/ttm_bo_util.c | 27 +++++++++++++++++++++++++++
>>   include/drm/ttm/ttm_bo.h          |  1 +
>>   2 files changed, 28 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c b/drivers/gpu/drm/ttm/ttm_bo_util.c
>> index 15cab9bda17f..9c3f3b379c2a 100644
>> --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
>> +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
>> @@ -377,6 +377,33 @@ static int ttm_bo_kmap_ttm(struct ttm_buffer_object *bo,
>>   	return (!map->virtual) ? -ENOMEM : 0;
>>   }
>>   
>> +/**
>> + *
>> + * ttm_bo_kmap_try_from_panic
>> + *
>> + * @bo: The buffer object
>> + * @page: The page to map
>> + *
>> + * Sets up a kernel virtual mapping using kmap_local_page_try_from_panic().
>> + * This can safely be called from the panic handler, if you make sure the bo
> 
> "This can *only* be called from the panic handler..."

Yes, I will fix that, it shouldn't be called for normal operations.

> 
> Apart from those open questions, looks sane to me.
> 
> Regards,
> Christian.
> 
>> + * is the one being displayed, so is properly allocated, and won't be modified.
>> + *
>> + * Returns the vaddr, that you can use to write to the bo, and that you should
>> + * pass to kunmap_local() when you're done with this page, or NULL if the bo
>> + * is in iomem.
>> + */
>> +void *ttm_bo_kmap_try_from_panic(struct ttm_buffer_object *bo, unsigned long page)
>> +{
>> +	if (page + 1 > PFN_UP(bo->resource->size))
>> +		return NULL;
>> +
>> +	if (!bo->resource->bus.is_iomem && bo->ttm->pages && bo->ttm->pages[page])
>> +		return kmap_local_page_try_from_panic(bo->ttm->pages[page]);
>> +
>> +	return NULL;
>> +}
>> +EXPORT_SYMBOL(ttm_bo_kmap_try_from_panic);
>> +
>>   /**
>>    * ttm_bo_kmap
>>    *
>> diff --git a/include/drm/ttm/ttm_bo.h b/include/drm/ttm/ttm_bo.h
>> index cf027558b6db..8c0ce3fa077f 100644
>> --- a/include/drm/ttm/ttm_bo.h
>> +++ b/include/drm/ttm/ttm_bo.h
>> @@ -429,6 +429,7 @@ int ttm_bo_init_validate(struct ttm_device *bdev, struct ttm_buffer_object *bo,
>>   int ttm_bo_kmap(struct ttm_buffer_object *bo, unsigned long start_page,
>>   		unsigned long num_pages, struct ttm_bo_kmap_obj *map);
>>   void ttm_bo_kunmap(struct ttm_bo_kmap_obj *map);
>> +void *ttm_bo_kmap_try_from_panic(struct ttm_buffer_object *bo, unsigned long page);
>>   int ttm_bo_vmap(struct ttm_buffer_object *bo, struct iosys_map *map);
>>   void ttm_bo_vunmap(struct ttm_buffer_object *bo, struct iosys_map *map);
>>   int ttm_bo_mmap_obj(struct vm_area_struct *vma, struct ttm_buffer_object *bo);
> 

