Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 204F5ADF17D
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 17:38:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A75E10E8D4;
	Wed, 18 Jun 2025 15:38:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="gaO+qqXL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4D8D10E8D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jun 2025 15:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1750261123;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Wt0S9Wn9Dl5xj40Pf2ZHj9QLP9iw6mygzm/57GhRi3o=;
 b=gaO+qqXL5N07x4imfF4t4yxUhtkNKMwRqmNzGcEVD5BvbCTVj9B0c+fRYt9zSLGLa1EefI
 CqAQ9qv82pC0QtqpWIlhH0qOJi/Suk9imcwIaj2ZEJivSg3E4n3JnBaE0/0ujsFwbzSZw6
 WCXwjV/zGDGBLskvDOCPLxdtb6waBXU=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-361-WEcMuaGVOsC8o77ER7-qBg-1; Wed, 18 Jun 2025 11:38:41 -0400
X-MC-Unique: WEcMuaGVOsC8o77ER7-qBg-1
X-Mimecast-MFC-AGG-ID: WEcMuaGVOsC8o77ER7-qBg_1750261120
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-3a4e9252ba0so3605620f8f.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jun 2025 08:38:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750261120; x=1750865920;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Wt0S9Wn9Dl5xj40Pf2ZHj9QLP9iw6mygzm/57GhRi3o=;
 b=Carmv2rRCHe3DjYJmZ4FHJSlrhwF50HrK+BimlLed9oFXweElB3P8EJzT4v5CV5b4Y
 fHQ+dKfU8MhxqhoZG1yw8AQFqtyP1v9lyJjMTTKXchv4/I9pLsIzP2mxIcFt9gsbb8fG
 QDt3kgvT433X0ruIrc3NMzS5qUBgvopZNccFuyOaEDhi+BkmVlczgsndZzf2xlK1+wJP
 BCzvHUX52HVdD/T1QIVLIeA9wZp+sheeRNsKFVmzDxIIDKDESLwu3xEdDTlow6AjVsqA
 ArSZswgLewaOn5eKhPP2FOhQnTdmXZnqLRS1QMAgUZQv5msdBlNrtEMctwN53m3mOJ+z
 aPiA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWU+eg3uH+Wtsv1EzzBC4HkvxULIA0H9Y5jd9gtfV6fQWDbqQgfuyu710y31YZkwY0r6G/+Zp9HLqA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzgk5wiPSL3ecF+sAZUD9liFP5wnA7j5oM288fkpMCrgWirDb39
 ltCEr5mOLnN1+qlRn7nA/vLxXNt9YFxYXPo3GXdoVHtSjC4TNBq4aJxflxblGK018DJ0exnYzTj
 SRV6TfmD3Kuz6pILrml4e42SfwmGqX9Bib1YLtwxy8FadN3KfZL4cq0BvRqtTcGhIHYw25g==
X-Gm-Gg: ASbGncvrWikWftZN30VU+nAxONdGoH1q6Fl7GIyG8ieMhhYFuvozO44hdwNtWP3c6NW
 1hkXvyDu4EhKFeoYyR2OaK2NgpVmHAl1Co1SABB/yO1foUJ87D+OBq+VXB8tMs3wkKdFlY5r86t
 QIGIpoQjlxrJFT1wuZl54yOOLifNBOx8anstUH6uLzqhy1AJCVKmEHQRZqT7YiSKj4fCvWaMrYI
 3OM19nH1tSKZxZVR1j+EjVXYCEBLT9rsMf5Q7HWzUW4voKRmXuO5A4gOxb42+y2tLj/ZBd1jD+1
 rRy0EIrkcHycflkA6FzEB0wDeDX3xtjTZF6P1LQdz+cy1+DZdEaIIVNxtWQC7w==
X-Received: by 2002:a05:6000:144d:b0:3a4:dc32:6cbb with SMTP id
 ffacd0b85a97d-3a5723a2637mr15974389f8f.31.1750261120258; 
 Wed, 18 Jun 2025 08:38:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEi/PvSi28W64wEB4MqlKtyFp25jrX3SumPTWri+fBnNlbZYYas7D3NWBiwU0dt/UK1fnYB0w==
X-Received: by 2002:a05:6000:144d:b0:3a4:dc32:6cbb with SMTP id
 ffacd0b85a97d-3a5723a2637mr15974361f8f.31.1750261119745; 
 Wed, 18 Jun 2025 08:38:39 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:c:37e0:8998:e0cf:68cc:1b62?
 ([2a01:e0a:c:37e0:8998:e0cf:68cc:1b62])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4535e97ac4asm961405e9.3.2025.06.18.08.38.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Jun 2025 08:38:39 -0700 (PDT)
Message-ID: <ca3f14ec-554b-4ed8-9fe1-9561d59d7f5a@redhat.com>
Date: Wed, 18 Jun 2025 17:38:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 05/10] drm/ttm: Add ttm_bo_kmap_try_from_panic()
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
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
References: <20250618094011.238154-1-jfalempe@redhat.com>
 <20250618094011.238154-6-jfalempe@redhat.com>
 <c44f4194-69e5-41bf-bbc6-2e399be2b627@amd.com>
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <c44f4194-69e5-41bf-bbc6-2e399be2b627@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: VklyEH2720pPKIRP6-9J0S7rlDhjjbBViNekz3pIG1U_1750261120
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

On 18/06/2025 15:55, Christian König wrote:
> 
> 
> On 6/18/25 11:31, Jocelyn Falempe wrote:
>> If the ttm bo is backed by pages, then it's possible to safely kmap
>> one page at a time, using kmap_try_from_panic().
>> Unfortunately there is no way to do the same with ioremap, so it
>> only supports the kmap case.
>> This is needed for proper drm_panic support with xe driver.
>>
>> Signed-off-by: Jocelyn Falempe <jfalempe@redhat.com>
> 
> Reviewed-by: Christian König <christian.koenig@amd.com>
> 
> Preferred through drm-misc-next, but feel free to merge it through every branch you want if it makes thinks easier for you.

Thanks, I will see if I can get the whole series through drm-intel-next, 
or if I can merge #1 and #5 first in drm-misc-next.

Best regards,

-- 

Jocelyn


> 
> Regards,
> Christian.
> 
>> ---
>>
>> v8:
>>   * Added in v8
>>
>> v9:
>>   * Fix comment in ttm_bo_kmap_try_from_panic(), this can *only* be called
>>     from the panic handler (Christian König)
>>
>>   drivers/gpu/drm/ttm/ttm_bo_util.c | 27 +++++++++++++++++++++++++++
>>   include/drm/ttm/ttm_bo.h          |  1 +
>>   2 files changed, 28 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c b/drivers/gpu/drm/ttm/ttm_bo_util.c
>> index 15cab9bda17f..6912e6dfda25 100644
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
>> + * This should only be called from the panic handler, if you make sure the bo
>> + * is the one being displayed, so is properly allocated, and protected.
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

