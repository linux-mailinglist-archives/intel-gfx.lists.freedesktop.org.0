Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3273AA784B3
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 00:27:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8506810E672;
	Tue,  1 Apr 2025 22:27:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="HlsTTLyc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A692310E672
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Apr 2025 22:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1743546431;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rEfaUporEJdMtOjtaAta+61j+hvqxkmfjY7Q+CDNSWY=;
 b=HlsTTLycFzquwKAzJvwIF5iPDjuWb5oROo+pu7DQzAYI4wYIPklYlmd6nW96/mnbYE3UH6
 VzOLjAB0wGfU1KEAUHubBxEjt8znJl5CxEUBINE2Dz+dCR8m2aiQ4hfugoheSZY0I/0fDt
 c7piXkoBulqLyjY7D0u5BM3CMCTCWHc=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-299-fETDwduPPRmbhFDAnZi8HA-1; Tue, 01 Apr 2025 18:27:10 -0400
X-MC-Unique: fETDwduPPRmbhFDAnZi8HA-1
X-Mimecast-MFC-AGG-ID: fETDwduPPRmbhFDAnZi8HA_1743546429
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-43bc97e6360so34177295e9.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 01 Apr 2025 15:27:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743546429; x=1744151229;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=rEfaUporEJdMtOjtaAta+61j+hvqxkmfjY7Q+CDNSWY=;
 b=dbRZe9LM6KAjZhPY7+1q+3Rw6aG4P5fr0zglhuKg1kDHEXgspZciNKsLASgEj73nUu
 svY9M19vyDOvhZDuImTNpA+nyjAJVEV/3+RajXBY2aGfDhGwvTFPYWFnHMgkkbY2la97
 7NxiyO7Zlp2F/CB8PZKoAyM8cjW9kbhFacBdNjOMQ/2FX8ytXw7EcQs52zyFRv2xQHI3
 wEP1pD0xJkcu4+ZzAnD5mgDlH+deS9BXSyFf8JXv8fRDOWYP/A3oTGXW2uAR+ttKt+lb
 W22C4rRgMzoWqkDcUihBSAPs1WUllwFoW1LlHVkzDzR3gK5c1W693MkPRrBIz7qy6eXX
 yKhA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVmw4SCWbtDj7454nUTQr7rAZkAJ2oSwZMS42/xmqDqVWamqWbszaXbCbXADSB3BEhbXD87XYgx9Ew=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwjkUwmMhrlnhzwNpuTfO9grEtm/ysYoYmB/V9ZzPPMh+xsPaQw
 j3Zt1CAOImAXcVZbaBGVgY9TIfEwCv9D7QkPxjdBySAVVKionGc+dOZQJlXgs021DE5c5drJZrh
 doQeFdIoy0cYQtNcrt8INC0cgUW2LGp0LK6cPXuv58Yz+vad5wmnVfFevVPZf5SGcSA==
X-Gm-Gg: ASbGncuhM/15eqsFQchTGnKINPqVPAe6TZy3jlFG9zZn3+TreZmlxxx950IHo2+rw/X
 sCYs2gc8kxucbyrH7cy4QvzH47nVCEUaAYBiKbUJ5cj/KxArZ9o1gY3c+PfQ9cbhmWp1ieHzdsD
 Ro6SO3elCyLX9KTexwrqgCFeQIsWgbWsuEtzy63CmvYrlycimUSWjP1BBdWAhnA4C9KAj9LtZt9
 cb7pudxhCjSc2KdmLIragjyAF2Z4eUgaJjWz2MljwsX9gRYhaf699WzFxV9cyvw6X0CloMpem6t
 dluoqIn1LW9S1l0Lm6a89L+umFMJ6BM5+cEOHj2UyM0/U09Bucaot50=
X-Received: by 2002:a05:600c:1c97:b0:43c:eeee:b706 with SMTP id
 5b1f17b1804b1-43ea9d8dc29mr38348055e9.24.1743546429318; 
 Tue, 01 Apr 2025 15:27:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEmNO0N3qfaT9LYTWddsRxRxiZUgNapeHyB1i0Kb5nmUn/nYEF/e2sPAkDX5eBfLm1QHONpgw==
X-Received: by 2002:a05:600c:1c97:b0:43c:eeee:b706 with SMTP id
 5b1f17b1804b1-43ea9d8dc29mr38347855e9.24.1743546428877; 
 Tue, 01 Apr 2025 15:27:08 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:c:37e0:ced3:55bd:f454:e722?
 ([2a01:e0a:c:37e0:ced3:55bd:f454:e722])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-43eb5fcd3d7sm1973685e9.12.2025.04.01.15.27.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Apr 2025 15:27:08 -0700 (PDT)
Message-ID: <ed68d414-ddbc-4472-9663-e6728a1f1eef@redhat.com>
Date: Wed, 2 Apr 2025 00:27:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/8] drm/i915/gem: Add i915_gem_object_panic_map()
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
References: <20250401125818.333033-1-jfalempe@redhat.com>
 <20250401125818.333033-5-jfalempe@redhat.com> <Z-wmxijRKQiZFyup@intel.com>
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <Z-wmxijRKQiZFyup@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 6Lv5WQBX0KqUXl3NpVs_OswJonAvewwb5v8ppMU-fXM_1743546429
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

On 01/04/2025 19:47, Ville Syrjälä wrote:
> On Tue, Apr 01, 2025 at 02:51:10PM +0200, Jocelyn Falempe wrote:
>> Prepare the work for drm_panic support. This is used to map the
>> current framebuffer, so the CPU can overwrite it with the panic
>> message.
>>
>> Signed-off-by: Jocelyn Falempe <jfalempe@redhat.com>
>> ---
>>
>> v5:
>>   * Use iosys_map for intel_bo_panic_map().
>>
>>   drivers/gpu/drm/i915/display/intel_bo.c    |  5 ++++
>>   drivers/gpu/drm/i915/display/intel_bo.h    |  1 +
>>   drivers/gpu/drm/i915/gem/i915_gem_object.h |  2 ++
>>   drivers/gpu/drm/i915/gem/i915_gem_pages.c  | 29 ++++++++++++++++++++++
>>   drivers/gpu/drm/xe/display/intel_bo.c      | 10 ++++++++
>>   5 files changed, 47 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i915/display/intel_bo.c
>> index fbd16d7b58d9..ac904e9ec7d5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bo.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bo.c
>> @@ -57,3 +57,8 @@ void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj)
>>   {
>>   	i915_debugfs_describe_obj(m, to_intel_bo(obj));
>>   }
>> +
>> +void intel_bo_panic_map(struct drm_gem_object *obj, struct iosys_map *map)
>> +{
>> +	i915_gem_object_panic_map(to_intel_bo(obj), map);
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_bo.h b/drivers/gpu/drm/i915/display/intel_bo.h
>> index ea7a2253aaa5..5b6c63d99786 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bo.h
>> +++ b/drivers/gpu/drm/i915/display/intel_bo.h
>> @@ -23,5 +23,6 @@ struct intel_frontbuffer *intel_bo_set_frontbuffer(struct drm_gem_object *obj,
>>   						   struct intel_frontbuffer *front);
>>   
>>   void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj);
>> +void intel_bo_panic_map(struct drm_gem_object *obj, struct iosys_map *map);
>>   
>>   #endif /* __INTEL_BO__ */
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> index a5f34542135c..b16092707ea5 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> @@ -692,6 +692,8 @@ i915_gem_object_unpin_pages(struct drm_i915_gem_object *obj)
>>   int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj);
>>   int i915_gem_object_truncate(struct drm_i915_gem_object *obj);
>>   
>> +void i915_gem_object_panic_map(struct drm_i915_gem_object *obj, struct iosys_map *map);
>> +
>>   /**
>>    * i915_gem_object_pin_map - return a contiguous mapping of the entire object
>>    * @obj: the object to map into kernel address space
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>> index 8780aa243105..718bea6474d7 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>> @@ -355,6 +355,35 @@ static void *i915_gem_object_map_pfn(struct drm_i915_gem_object *obj,
>>   	return vaddr ?: ERR_PTR(-ENOMEM);
>>   }
>>   
>> +/* Map the current framebuffer for CPU access. Called from panic handler, so no
>> + * need to pin or cleanup.
>> + */
>> +void i915_gem_object_panic_map(struct drm_i915_gem_object *obj, struct iosys_map *map)
>> +{
>> +	enum i915_map_type has_type;
>> +	void *ptr;
>> +
>> +	ptr = page_unpack_bits(obj->mm.mapping, &has_type);
>> +
>> +
>> +	if (!ptr) {
>> +		if (i915_gem_object_has_struct_page(obj))
>> +			ptr = i915_gem_object_map_page(obj, I915_MAP_WB);
>> +		else
>> +			ptr = i915_gem_object_map_pfn(obj, I915_MAP_WB);
> 
> WB mapping would require clflushing to make it to the display.
> Is that being done somewhere?

Yes, it's done in intel_panic_flush() in patch 5, otherwise the panic 
screen is not displayed.

> 
>> +
>> +		if (IS_ERR(ptr))
>> +			return;
> 
> What happens when the mapping fails?

In intel_get_scanout_buffer(), the iosys_map is cleared before calling 
this function. Then it checks iosys_map_is_null(), and returns an error 
if it is.
I can add a comment, or I can change the function type to return an int, 
  that would probably be cleaner.

> 
>> +
>> +		obj->mm.mapping = page_pack_bits(ptr, I915_MAP_WB);
>> +	}
>> +
>> +	if (i915_gem_object_has_iomem(obj))
>> +		iosys_map_set_vaddr_iomem(map, (void __iomem *) ptr);
>> +	else
>> +		iosys_map_set_vaddr(map, ptr);
>> +}
>> +
>>   /* get, pin, and map the pages of the object into kernel space */
>>   void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
>>   			      enum i915_map_type type)
>> diff --git a/drivers/gpu/drm/xe/display/intel_bo.c b/drivers/gpu/drm/xe/display/intel_bo.c
>> index 27437c22bd70..c68166a64336 100644
>> --- a/drivers/gpu/drm/xe/display/intel_bo.c
>> +++ b/drivers/gpu/drm/xe/display/intel_bo.c
>> @@ -59,3 +59,13 @@ void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj)
>>   {
>>   	/* FIXME */
>>   }
>> +
>> +void intel_bo_panic_map(struct drm_gem_object *obj, struct iosys_map *map)
>> +{
>> +	struct xe_bo *bo = gem_to_xe_bo(obj);
>> +	int ret;
>> +
>> +	ret = ttm_bo_vmap(&bo->ttm, map);
>> +	if (ret)
>> +		iosys_map_clear(map);
>> +}
>> -- 
>> 2.49.0
> 

