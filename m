Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B019A9FD3E3
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2024 12:42:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B34310E3B5;
	Fri, 27 Dec 2024 11:42:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="CmTol0YM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1D1D10E3B2
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2024 11:41:58 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id
 ffacd0b85a97d-38634c35129so5416119f8f.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2024 03:41:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1735299657; x=1735904457;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=VIaep5T6NY0/n739vSbFSbNZrH0/PX3pv3s3aQMDhrg=;
 b=CmTol0YMWuJiVS/PJrn0UzA4fExYhEC2GtSy7gPXg15VuNESJ6SRm964bHGIRtVDLK
 kdodI5Bv+DDicV58RlSd8/BbcD017kSYBNsrjeVTX0CqaDVc4Opsr0OEZVUqsiEL7+TZ
 7C1fNFBCRJiCHCwkGFMhha2YXv0cdTqsw2Rc/Xpdkm9XnDz9sfJI77up9SHsAWMw2MRI
 DYZJ5ywPqV6656BarBEE8pqlCL2MsmE4SOPUuBFuW2XWfrtWBFSJN0HR3wnEKKA6vwOC
 NeLpoLDqzE+tdt0jyv7x6Sly6hNRWXXC9NRn3X3PH/YA2ghbpPN6ycbOJEMOrPODHdhL
 ugow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735299657; x=1735904457;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=VIaep5T6NY0/n739vSbFSbNZrH0/PX3pv3s3aQMDhrg=;
 b=OMcbHBaE1fBaW0zhNIhTBYu9zGOyX3XM+Krco9YMCkJWE4lEvkY3JZgENlOZqF6X55
 WCLvxjpP+LDuHKon0UksQ6HwpVLSTQp02ZNm91uPeLNtS5dkFrmpy/FTTkRvJiRzuwQ/
 ck+R7qjgzcd6CNHZbwvis6WUXwD5v+cvdDDM5lh/XyIKF1Yg+RVjQGaH8WzKMB1Qn+gk
 DTpnYKX/3LyhC1axnYfV0A6r5aSW+UMAp7Egqiv5u8bmzSyX/YnqVkWSgT50Cqm/WwJY
 qd8EbaBPwtdr9DwkI1jKP9VbPjPYizPC4jeWBoCEvvVZcaSaGOrSKtzygYGbKMsM0PPQ
 16vg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVsGFONB7HxW0FYcOqGCys0HNzQk2Wq8uGxHNFad1vrEYx22trF7yhCU5Yz9oIYWYtiu3Np2GdtfzA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxjmTp+nx08rfEkHUYJEr2fSUUmY6f8rqP3BR2OpmmT3bsOJhFI
 zRFG4bhxGMm+JFOPk1nyVc7NsW5+vigsd3zBUiZmTR9DMmzckgUuam5NIW5CZ2c=
X-Gm-Gg: ASbGnctDOBvUuoTwiZlOpYLwjAIebymHb/72oSiT1qdgBLnphDOw5zvRUN7t4eYbQXB
 Bb+aatS7olaepfTfuVnvSx3VXM1H+PLO4CsVb0fuovLrhvj64Py0p4ewDM4sPxhBJ4o9Uasrabf
 iESGS9Z+/rQrGjrGYtwNH9iKAv2pgeTJOFyCLYUdoYQ+D2Y9n3G6QzrjK50mJ9WkvlKKMU/XwQP
 6d66EE5qdYmI42Md+GW69lJMF4q3PDv7D5KBZP97Fl3RZUX8g+ot6i6jhG1QUiGGy66z9z1
X-Google-Smtp-Source: AGHT+IFf9GNUkc9MTznSwG6dDejiwNWG3QzfVu5TaVwHwy7s5MZGB7ZkWntkV4PytcaeIFoLNdsfUA==
X-Received: by 2002:a5d:6d8b:0:b0:386:3356:f3ac with SMTP id
 ffacd0b85a97d-38a221f2dedmr24035382f8f.26.1735299657278; 
 Fri, 27 Dec 2024 03:40:57 -0800 (PST)
Received: from [192.168.0.101] ([90.241.98.187])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38a2432e587sm18713521f8f.95.2024.12.27.03.40.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 27 Dec 2024 03:40:56 -0800 (PST)
Message-ID: <add92c9e-a5d1-4dc7-91fb-0eacd93b5a49@ursulin.net>
Date: Fri, 27 Dec 2024 11:40:56 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Remove deadcode
To: linux@treblig.org, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 intel-gfx@lists.freedesktop.org
Cc: airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
References: <20241222174751.222975-1-linux@treblig.org>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20241222174751.222975-1-linux@treblig.org>
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


Hi,

On 22/12/2024 17:47, linux@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> i915_active_acquire_for_context() was added in 2020 by
> commit 5d9341370f57 ("drm/i915: Export a preallocate variant of
> i915_active_acquire()") but has never been used.
> 
> The last use of __i915_gem_object_is_lmem() was removed in 2021 by
> commit ff20afc4cee7 ("drm/i915: Update error capture code to avoid using
> the current vma state")
> 
> Remove them.

I plan to apply this and your other two dead code removal patches. I 
needed to re-send to the mailing list first so they get picked up by the 
CI before I can do that (I guess you are not subscribed to intel-gfx). 
It should happen in a day or two. Thanks for the cleanup!

Regards,

Tvrtko
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_lmem.c | 23 -----------------------
>   drivers/gpu/drm/i915/gem/i915_gem_lmem.h |  2 --
>   drivers/gpu/drm/i915/i915_active.c       | 18 ------------------
>   drivers/gpu/drm/i915/i915_active.h       |  1 -
>   4 files changed, 44 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
> index 3198b64ad7db..388f90784d8a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
> @@ -52,29 +52,6 @@ bool i915_gem_object_is_lmem(struct drm_i915_gem_object *obj)
>   		      mr->type == INTEL_MEMORY_STOLEN_LOCAL);
>   }
>   
> -/**
> - * __i915_gem_object_is_lmem - Whether the object is resident in
> - * lmem while in the fence signaling critical path.
> - * @obj: The object to check.
> - *
> - * This function is intended to be called from within the fence signaling
> - * path where the fence, or a pin, keeps the object from being migrated. For
> - * example during gpu reset or similar.
> - *
> - * Return: Whether the object is resident in lmem.
> - */
> -bool __i915_gem_object_is_lmem(struct drm_i915_gem_object *obj)
> -{
> -	struct intel_memory_region *mr = READ_ONCE(obj->mm.region);
> -
> -#ifdef CONFIG_LOCKDEP
> -	GEM_WARN_ON(dma_resv_test_signaled(obj->base.resv, DMA_RESV_USAGE_BOOKKEEP) &&
> -		    i915_gem_object_evictable(obj));
> -#endif
> -	return mr && (mr->type == INTEL_MEMORY_LOCAL ||
> -		      mr->type == INTEL_MEMORY_STOLEN_LOCAL);
> -}
> -
>   /**
>    * __i915_gem_object_create_lmem_with_ps - Create lmem object and force the
>    * minimum page size for the backing pages.
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
> index 5a7a14e85c3f..ecd8f1a633a1 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
> @@ -19,8 +19,6 @@ i915_gem_object_lmem_io_map(struct drm_i915_gem_object *obj,
>   
>   bool i915_gem_object_is_lmem(struct drm_i915_gem_object *obj);
>   
> -bool __i915_gem_object_is_lmem(struct drm_i915_gem_object *obj);
> -
>   struct drm_i915_gem_object *
>   i915_gem_object_create_lmem_from_data(struct drm_i915_private *i915,
>   				      const void *data, size_t size);
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> index 35319228bc51..0dbc4e289300 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -527,24 +527,6 @@ int i915_active_acquire(struct i915_active *ref)
>   	return err;
>   }
>   
> -int i915_active_acquire_for_context(struct i915_active *ref, u64 idx)
> -{
> -	struct i915_active_fence *active;
> -	int err;
> -
> -	err = i915_active_acquire(ref);
> -	if (err)
> -		return err;
> -
> -	active = active_instance(ref, idx);
> -	if (!active) {
> -		i915_active_release(ref);
> -		return -ENOMEM;
> -	}
> -
> -	return 0; /* return with active ref */
> -}
> -
>   void i915_active_release(struct i915_active *ref)
>   {
>   	debug_active_assert(ref);
> diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
> index 77c676ecc263..821f7c21ea9b 100644
> --- a/drivers/gpu/drm/i915/i915_active.h
> +++ b/drivers/gpu/drm/i915/i915_active.h
> @@ -186,7 +186,6 @@ int i915_request_await_active(struct i915_request *rq,
>   #define I915_ACTIVE_AWAIT_BARRIER BIT(2)
>   
>   int i915_active_acquire(struct i915_active *ref);
> -int i915_active_acquire_for_context(struct i915_active *ref, u64 idx);
>   bool i915_active_acquire_if_busy(struct i915_active *ref);
>   
>   void i915_active_release(struct i915_active *ref);
