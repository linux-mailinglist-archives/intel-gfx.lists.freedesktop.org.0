Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4G3gDXWxoWmMvgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 16:00:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCBA1B95BF
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 16:00:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5744E10EBB1;
	Fri, 27 Feb 2026 15:00:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin.net header.i=@ursulin.net header.b="M/07ikKU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15AEA10EBB0
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Feb 2026 15:00:01 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id
 5b1f17b1804b1-4806f3fc50bso22851555e9.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Feb 2026 07:00:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin.net; s=google; t=1772204399; x=1772809199; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=HAmv6EGtRBIN5u4N3NxjDy0rtiuM6fjhaKN1+dz6lJ4=;
 b=M/07ikKUDei/0Yw9c2Cg2ntN68Uli9RtRX0pNceSSDofjKkpvn5knXbrZfuxPtWKfB
 +H7OV7/j+/VOsA5+izhgQd6Iw0Js++vfLysSu1JEtTGlvdOZERAbIAkh/8DUwIm6G9d5
 IPU6iObf7L7eVpTCS3ISoUnQsykmixaqvQW8cINAMBRr62gbHua8Ew/+IcFHUqJ9s5ZO
 7x0y6BFc99idHIwkdANCz6cfbg/0RpcXP+IuCq0W1eaIr/6tv+8DMXpds/URXBNd96BD
 CrDgv0/jC8UyHwM9XAu1362NoYNVUNjb+gObznlHRGPFIWsEL322lJKgarx/ooeMixOn
 S94w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772204399; x=1772809199;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=HAmv6EGtRBIN5u4N3NxjDy0rtiuM6fjhaKN1+dz6lJ4=;
 b=VmupvSV1c+AzEK1Z3T3aRNQ9Uv3GAPxX6jvu8brEGGI6em+trbsNEOHGvBuhTGl2Ax
 ay6mhHtTnMq61h00hab+oBTapYkD2FkqCHt3weXpMMDZjNwPvNvvJgeLYR5MfteDttYR
 LkX+lMS/n2SeT2WXwKy/9iByFh+PLK925T++dgMXai2me2uUnfFoKeDFrvm+czDDHHLO
 2X77duiR5I7LDYTbQkHmJz+oj3GMjdbkbZsGVx5uEkjf7/z584R4SXlyudZiJhI25NgS
 9+099UCVDevwIT0iKpt2tp45RIZlvIeNP99fwvnAroYv7pCYqGLIt5JQulJenVdMDGq8
 8qgQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCW3i2TMn1l36WVZksYO5RLGXnMODrsWJ2oYxKtOOY3yBybLZQUQq4DDpRxhCwQSRnSUh+WHmbLdzZ0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxQEBkAELKkxeg+HNV/VvuoTA3J1wVop59VSSCMJZNzbmFfRhkU
 kFIU7P6McK6pp6yyxRzqiKRMx8hNmIIpuJd1WDASYQhpE8PQG1kSWFgqu600XLRU430=
X-Gm-Gg: ATEYQzxkh/TNsi+rSPBYCiQVgIU6mD1K8unrMhy+5icuaOxv1qHuXk7tUuK3uzN3kTt
 PlOi1dKPWpOT9JvoEYFVXuaeMXQrj7du52rztUIi4mkEA516boSVhOQTRCl0yeUDxkB9LSdJk3d
 m0aMK3Rg+4r3XXXX+Unigc822KKH9Z/U71QuqQumlzVO+rR2zvvA9MFcB051+oa2O+EPGfGXqQx
 7Nv8hIVVD5Xa23k71C/S23l20pVt+F+23IpEeTf3FC9EZu4/Ww6h0AnV9Jo+jpQboxhP7ixM/KU
 x1AQoRwaaTo6hYf6iA0ywWzXQ6hsCOJYcmjDfKz8Ta853aFmN/b2cbcKFDAztLVDalu7LQZGxuy
 hRleicZKjyp3fEyPYT7PX3iAPTLIeKrZmj9ZdA/FiQzlxKGII/v8aoxOYNTBujo01vLgASwd70g
 MPMJ52//M5Uz4u121Ehher4RG6NEFvgLKlgUgVk5MyQ1J/
X-Received: by 2002:a05:600c:5306:b0:483:6d42:25c6 with SMTP id
 5b1f17b1804b1-483c9bc4210mr47850935e9.23.1772204399086; 
 Fri, 27 Feb 2026 06:59:59 -0800 (PST)
Received: from [192.168.0.101] ([90.240.106.137])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-483bd70e692sm228702895e9.7.2026.02.27.06.59.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 27 Feb 2026 06:59:58 -0800 (PST)
Message-ID: <c85eb64d-e4c2-41a2-9135-b52b3e8d7e12@ursulin.net>
Date: Fri, 27 Feb 2026 14:59:58 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Test for imported buffers with
 drm_gem_is_imported()
To: Thomas Zimmermann <tzimmermann@suse.de>,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@gmail.com,
 simona@ffwll.ch
Cc: dri-devel@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20260227133113.235940-5-tzimmermann@suse.de>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20260227133113.235940-5-tzimmermann@suse.de>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[ursulin.net:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[ursulin.net];
	FORGED_RECIPIENTS(0.00)[m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:dri-devel@lists.freedesktop.org,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[tursulin@ursulin.net,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[suse.de,linux.intel.com,kernel.org,gmail.com,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[ursulin.net:+];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email,intel.com:email,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ursulin.net:mid,ursulin.net:dkim,ursulin.net:email]
X-Rspamd-Queue-Id: 3DCBA1B95BF
X-Rspamd-Action: no action


On 27/02/2026 13:31, Thomas Zimmermann wrote:
> Instead of testing import_attach for imported GEM buffers, invoke
> drm_gem_is_imported() to do the test. The test itself does not change.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Tvrtko Ursulin <tursulin@ursulin.net>
> Cc: intel-gfx@lists.freedesktop.org
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_object.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index 3f6f040c359d..798c920160cf 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -372,12 +372,12 @@ void __i915_gem_object_pages_fini(struct drm_i915_gem_object *obj)
>   	 * and ttm_bo_cleanup_memtype_use() shouldn't be invoked for
>   	 * dma-buf, so it's safe to take the lock.
>   	 */
> -	if (obj->base.import_attach)
> +	if (drm_gem_is_imported(&obj->base))
>   		i915_gem_object_lock(obj, NULL);
>   
>   	__i915_gem_object_put_pages(obj);
>   
> -	if (obj->base.import_attach)
> +	if (drm_gem_is_imported(&obj->base))
>   		i915_gem_object_unlock(obj);
>   
>   	GEM_BUG_ON(i915_gem_object_has_pages(obj));
> @@ -391,7 +391,7 @@ void __i915_gem_free_object(struct drm_i915_gem_object *obj)
>   
>   	bitmap_free(obj->bit_17);
>   
> -	if (obj->base.import_attach)
> +	if (drm_gem_is_imported(&obj->base))
>   		drm_prime_gem_destroy(&obj->base, NULL);
>   
>   	drm_gem_free_mmap_offset(&obj->base);

LGTM. Want us to merge it via i915 or you want to take the group via 
drm-misc?

What is the end goal btw, just cleanup or you plan to remove/rename the 
member? If latter there are some other places which access it directly.

Regards,

Tvrtko

