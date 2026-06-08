Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XD5HKjV7JmquXAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 10:20:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 007F0653F26
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 10:20:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=GAlDMk6m;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=redhat.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CD9E10EEF6;
	Mon,  8 Jun 2026 08:20:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4C2E10EEF6
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2026 08:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1780906800;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=odzki8KzKQsTgmm6V22LkznvI6NCDgiT0tOohYo98hw=;
 b=GAlDMk6mMhj7WsBMtXWlFutFZkQBnf8PLjpIjunbJQNVce0U+czCJZvPewG/RHdx7lL+YT
 eadSMOug3dYGPKiGIeW1Y6ZO5m7T38FKV80SI4HGEHYEBDJtkPwKO4sYW76qiSiECpvtJO
 ji6jP2g+HaTLSioVMxrg4pil4i/53BI=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-453-K_LMSnDzOtetN73z_Wv1OQ-1; Mon, 08 Jun 2026 04:19:57 -0400
X-MC-Unique: K_LMSnDzOtetN73z_Wv1OQ-1
X-Mimecast-MFC-AGG-ID: K_LMSnDzOtetN73z_Wv1OQ_1780906796
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-490c4f61a34so14165625e9.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Jun 2026 01:19:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780906796; x=1781511596;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=odzki8KzKQsTgmm6V22LkznvI6NCDgiT0tOohYo98hw=;
 b=Vf5xMdoaDhDISHWpAEsaqOJP7v2VZIthfqeBHeTkZ95CneY/d5k3g0r1lNQjs6jlST
 7/j17MzV8/7Cdk3GJN8Rtmz9L6wvXiRWhdZ0V1wTgcZuDzSEgNOf47W1WdX3b1XXXDRb
 flfjg9YvokmAWcH+ELgf6vAsPqKGVC0XUBV+ENRLiZAg7GAu2lHEVsizqzREt+jataC5
 h9+Z5ZK56PO18aQzsgvula3lQsatIaI/dhapaTEK/tp9hcgRwfTW+lW0Nwt9hVlX4SHp
 Lf7blrSxzeMGeRbH9LR6RxLi7QrCgGmyN0lpce6Gj3lVIfJqnWpDRoW9SbScpE8WDrux
 K87w==
X-Forwarded-Encrypted: i=1;
 AFNElJ9OBaf5vKOoGTxP0j1WRAstP/BKWjTOBBQWccKGvKXch0ejEKXMtf6B8N4oIqsVv360mhapTC9UEsU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxpqNsENk8NqtQI5IGdg3focMdxWV+Pk3j0z1nO/CSirAnL+akM
 KlK0+3DPxhKXAZixW44F5Rgj/v0EZzpJlUFa/vdOBszc59oy4eelZ/IbsZCe19U1GuiNNjpzPfz
 pU8BRO2JXZj7ciPFy0Q0WTEla8G0kIFdBKCA4PWFjH8hFM6kresHkFHE1ddlR8Y8692aAXQ==
X-Gm-Gg: Acq92OF8lOg7mRnXkbM/u4NX2Dh3VezpU29uZSbSqZlMrDVutAndZrxQ+YPk0VkL6Ip
 lvFHp9pK8tjtcNKmLuD4IDx/LbVaWqMLBAT6Yujnwb1N/6Wo7+xlB9vJczJQjVMDZmg0qFe1j4o
 jBk6/d1ibx9ddLX2ejx/eukSmJzlBWefWjWmVeU6B3Us0RLNNPpzH3FOEEde/qqfpD+ZRmsnyk6
 jIpU8R9xzBz8SnZiE1v30tetJuG08tP/wDRyPg8JSxKDrDLU+rxQQyAgbnP8QQMRpR2t0OQoVRZ
 +wh5edVnt9FeTT5MNy4PjZ+4Sm3i+B1wfWRlqs7GpQIXQQwOJ3fNe8CHf6Tz+zRVykX/a1N+b6v
 91xvrV5P8hVsRXueXCQwZoC8BQq2t4XH6blCBFgmIzDzeO381GsO7GdDj5ZPgfS1M99dnspcW
X-Received: by 2002:a05:600c:6096:b0:48f:e3e7:3d39 with SMTP id
 5b1f17b1804b1-490c25c70cfmr230366405e9.11.1780906795680; 
 Mon, 08 Jun 2026 01:19:55 -0700 (PDT)
X-Received: by 2002:a05:600c:6096:b0:48f:e3e7:3d39 with SMTP id
 5b1f17b1804b1-490c25c70cfmr230366105e9.11.1780906795208; 
 Mon, 08 Jun 2026 01:19:55 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:c:37e0:ec71:10ae:399e:d3c8?
 ([2a01:e0a:c:37e0:ec71:10ae:399e:d3c8])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-490bc413adbsm376120945e9.15.2026.06.08.01.19.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jun 2026 01:19:54 -0700 (PDT)
Message-ID: <6781487e-e2b5-4769-b626-4b8559735a42@redhat.com>
Date: Mon, 8 Jun 2026 10:19:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] drm/i915/panic: split out i915_gem_panic.[ch]
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
References: <cover.1780394867.git.jani.nikula@intel.com>
 <f2093946e723aa27e856987d13692eb0308a4d85.1780394867.git.jani.nikula@intel.com>
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <f2093946e723aa27e856987d13692eb0308a4d85.1780394867.git.jani.nikula@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: tWEFp7F3jP_Jt59FK_UuFdAygoh14RNOUCAhLCEMoK8_1780906796
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@intel.com,m:intel-xe@lists.freedesktop.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jfalempe@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfalempe@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 007F0653F26

On 02/06/2026 12:09, Jani Nikula wrote:
> The panic handling is a bit special and isolated part of
> i915_gem_pages.c. Split it out to i915_gem_panic.[ch].

Thanks, it looks good to me.

Reviewed-by: Jocelyn Falempe <jfalempe@redhat.com>
> 
> Cc: Jocelyn Falempe <jfalempe@redhat.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/Makefile              |   1 +
>   drivers/gpu/drm/i915/gem/i915_gem_object.h |   7 --
>   drivers/gpu/drm/i915/gem/i915_gem_pages.c  | 128 -------------------
>   drivers/gpu/drm/i915/gem/i915_gem_panic.c  | 135 +++++++++++++++++++++
>   drivers/gpu/drm/i915/gem/i915_gem_panic.h  |  18 +++
>   drivers/gpu/drm/i915/i915_panic.c          |   2 +-
>   6 files changed, 155 insertions(+), 136 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_panic.c
>   create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_panic.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 07802a7f4ce5..091b6647c383 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -167,6 +167,7 @@ gem-y += \
>   	gem/i915_gem_object.o \
>   	gem/i915_gem_object_frontbuffer.o \
>   	gem/i915_gem_pages.o \
> +	gem/i915_gem_panic.o \
>   	gem/i915_gem_phys.o \
>   	gem/i915_gem_pm.o \
>   	gem/i915_gem_region.o \
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index 8878539c10ed..2c5d20e4dbaf 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -17,8 +17,6 @@
>   #include "i915_vma_types.h"
>   
>   enum intel_region_id;
> -struct drm_scanout_buffer;
> -struct intel_panic;
>   
>   #define obj_to_i915(obj__) to_i915((obj__)->base.dev)
>   
> @@ -693,11 +691,6 @@ i915_gem_object_unpin_pages(struct drm_i915_gem_object *obj)
>   int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj);
>   int i915_gem_object_truncate(struct drm_i915_gem_object *obj);
>   
> -struct intel_panic *i915_gem_object_alloc_panic(void);
> -int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
> -				struct drm_gem_object *_obj, bool panic_tiling);
> -void i915_gem_object_panic_finish(struct intel_panic *panic);
> -
>   /**
>    * i915_gem_object_pin_map - return a contiguous mapping of the entire object
>    * @obj: the object to map into kernel address space
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> index df35bdb755e4..59e3d4de7d3c 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> @@ -6,11 +6,8 @@
>   #include <linux/vmalloc.h>
>   
>   #include <drm/drm_cache.h>
> -#include <drm/drm_panic.h>
>   #include <drm/drm_print.h>
>   
> -#include "display/intel_fb.h"
> -#include "display/intel_display_types.h"
>   #include "gt/intel_gt.h"
>   #include "gt/intel_tlb.h"
>   
> @@ -359,131 +356,6 @@ static void *i915_gem_object_map_pfn(struct drm_i915_gem_object *obj,
>   	return vaddr ?: ERR_PTR(-ENOMEM);
>   }
>   
> -struct intel_panic {
> -	struct page **pages;
> -	int page;
> -	void *vaddr;
> -};
> -
> -static void i915_panic_kunmap(struct intel_panic *panic)
> -{
> -	if (panic->vaddr) {
> -		drm_clflush_virt_range(panic->vaddr, PAGE_SIZE);
> -		kunmap_local(panic->vaddr);
> -		panic->vaddr = NULL;
> -	}
> -}
> -
> -static struct page **i915_gem_object_panic_pages(struct drm_i915_gem_object *obj)
> -{
> -	unsigned long n_pages = obj->base.size >> PAGE_SHIFT, i;
> -	struct page *page;
> -	struct page **pages;
> -	struct sgt_iter iter;
> -
> -	/* For a 3840x2160 32 bits Framebuffer, this should require ~64K */
> -	pages = kmalloc_objs(*pages, n_pages, GFP_ATOMIC);
> -	if (!pages)
> -		return NULL;
> -
> -	i = 0;
> -	for_each_sgt_page(page, iter, obj->mm.pages)
> -		pages[i++] = page;
> -	return pages;
> -}
> -
> -static void i915_gem_object_panic_map_set_pixel(struct drm_scanout_buffer *sb, unsigned int x,
> -						unsigned int y, u32 color)
> -{
> -	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
> -	unsigned int offset = fb->panic_tiling(sb->width, x, y);
> -
> -	iosys_map_wr(&sb->map[0], offset, u32, color);
> -}
> -
> -/*
> - * The scanout buffer pages are not mapped, so for each pixel,
> - * use kmap_local_page_try_from_panic() to map the page, and write the pixel.
> - * Try to keep the map from the previous pixel, to avoid too much map/unmap.
> - */
> -static void i915_gem_object_panic_page_set_pixel(struct drm_scanout_buffer *sb, unsigned int x,
> -						 unsigned int y, u32 color)
> -{
> -	unsigned int new_page;
> -	unsigned int offset;
> -	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
> -	struct intel_panic *panic = fb->panic;
> -
> -	if (fb->panic_tiling)
> -		offset = fb->panic_tiling(sb->width, x, y);
> -	else
> -		offset = y * sb->pitch[0] + x * sb->format->cpp[0];
> -
> -	new_page = offset >> PAGE_SHIFT;
> -	offset = offset % PAGE_SIZE;
> -	if (new_page != panic->page) {
> -		i915_panic_kunmap(panic);
> -		panic->page = new_page;
> -		panic->vaddr =
> -			kmap_local_page_try_from_panic(panic->pages[panic->page]);
> -	}
> -	if (panic->vaddr) {
> -		u32 *pix = panic->vaddr + offset;
> -		*pix = color;
> -	}
> -}
> -
> -struct intel_panic *i915_gem_object_alloc_panic(void)
> -{
> -	struct intel_panic *panic;
> -
> -	panic = kzalloc_obj(*panic);
> -
> -	return panic;
> -}
> -
> -/*
> - * Setup the gem framebuffer for drm_panic access.
> - * Use current vaddr if it exists, or setup a list of pages.
> - * pfn is not supported yet.
> - */
> -int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
> -				struct drm_gem_object *_obj, bool panic_tiling)
> -{
> -	enum i915_map_type has_type;
> -	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
> -	void *ptr;
> -
> -	ptr = page_unpack_bits(obj->mm.mapping, &has_type);
> -	if (ptr) {
> -		if (i915_gem_object_has_iomem(obj))
> -			iosys_map_set_vaddr_iomem(&sb->map[0], (void __iomem *)ptr);
> -		else
> -			iosys_map_set_vaddr(&sb->map[0], ptr);
> -
> -		if (panic_tiling)
> -			sb->set_pixel = i915_gem_object_panic_map_set_pixel;
> -		return 0;
> -	}
> -	if (i915_gem_object_has_struct_page(obj)) {
> -		panic->pages = i915_gem_object_panic_pages(obj);
> -		if (!panic->pages)
> -			return -ENOMEM;
> -		panic->page = -1;
> -		sb->set_pixel = i915_gem_object_panic_page_set_pixel;
> -		return 0;
> -	}
> -	return -EOPNOTSUPP;
> -}
> -
> -void i915_gem_object_panic_finish(struct intel_panic *panic)
> -{
> -	i915_panic_kunmap(panic);
> -	panic->page = -1;
> -	kfree(panic->pages);
> -	panic->pages = NULL;
> -}
> -
>   /* get, pin, and map the pages of the object into kernel space */
>   void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
>   			      enum i915_map_type type)
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_panic.c b/drivers/gpu/drm/i915/gem/i915_gem_panic.c
> new file mode 100644
> index 000000000000..7407c5668c71
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_panic.c
> @@ -0,0 +1,135 @@
> +// SPDX-License-Identifier: MIT
> +/* Copyright © 2026 Intel Corporation */
> +
> +#include <drm/drm_cache.h>
> +#include <drm/drm_panic.h>
> +
> +#include "display/intel_fb.h"
> +#include "display/intel_display_types.h"
> +#include "i915_gem_object.h"
> +#include "i915_gem_panic.h"
> +
> +struct intel_panic {
> +	struct page **pages;
> +	int page;
> +	void *vaddr;
> +};
> +
> +static void i915_panic_kunmap(struct intel_panic *panic)
> +{
> +	if (panic->vaddr) {
> +		drm_clflush_virt_range(panic->vaddr, PAGE_SIZE);
> +		kunmap_local(panic->vaddr);
> +		panic->vaddr = NULL;
> +	}
> +}
> +
> +static struct page **i915_gem_object_panic_pages(struct drm_i915_gem_object *obj)
> +{
> +	unsigned long n_pages = obj->base.size >> PAGE_SHIFT, i;
> +	struct page *page;
> +	struct page **pages;
> +	struct sgt_iter iter;
> +
> +	/* For a 3840x2160 32 bits Framebuffer, this should require ~64K */
> +	pages = kmalloc_objs(*pages, n_pages, GFP_ATOMIC);
> +	if (!pages)
> +		return NULL;
> +
> +	i = 0;
> +	for_each_sgt_page(page, iter, obj->mm.pages)
> +		pages[i++] = page;
> +	return pages;
> +}
> +
> +static void i915_gem_object_panic_map_set_pixel(struct drm_scanout_buffer *sb, unsigned int x,
> +						unsigned int y, u32 color)
> +{
> +	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
> +	unsigned int offset = fb->panic_tiling(sb->width, x, y);
> +
> +	iosys_map_wr(&sb->map[0], offset, u32, color);
> +}
> +
> +/*
> + * The scanout buffer pages are not mapped, so for each pixel,
> + * use kmap_local_page_try_from_panic() to map the page, and write the pixel.
> + * Try to keep the map from the previous pixel, to avoid too much map/unmap.
> + */
> +static void i915_gem_object_panic_page_set_pixel(struct drm_scanout_buffer *sb, unsigned int x,
> +						 unsigned int y, u32 color)
> +{
> +	unsigned int new_page;
> +	unsigned int offset;
> +	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
> +	struct intel_panic *panic = fb->panic;
> +
> +	if (fb->panic_tiling)
> +		offset = fb->panic_tiling(sb->width, x, y);
> +	else
> +		offset = y * sb->pitch[0] + x * sb->format->cpp[0];
> +
> +	new_page = offset >> PAGE_SHIFT;
> +	offset = offset % PAGE_SIZE;
> +	if (new_page != panic->page) {
> +		i915_panic_kunmap(panic);
> +		panic->page = new_page;
> +		panic->vaddr =
> +			kmap_local_page_try_from_panic(panic->pages[panic->page]);
> +	}
> +	if (panic->vaddr) {
> +		u32 *pix = panic->vaddr + offset;
> +		*pix = color;
> +	}
> +}
> +
> +struct intel_panic *i915_gem_object_alloc_panic(void)
> +{
> +	struct intel_panic *panic;
> +
> +	panic = kzalloc_obj(*panic);
> +
> +	return panic;
> +}
> +
> +/*
> + * Setup the gem framebuffer for drm_panic access.
> + * Use current vaddr if it exists, or setup a list of pages.
> + * pfn is not supported yet.
> + */
> +int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
> +				struct drm_gem_object *_obj, bool panic_tiling)
> +{
> +	enum i915_map_type has_type;
> +	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
> +	void *ptr;
> +
> +	ptr = page_unpack_bits(obj->mm.mapping, &has_type);
> +	if (ptr) {
> +		if (i915_gem_object_has_iomem(obj))
> +			iosys_map_set_vaddr_iomem(&sb->map[0], (void __iomem *)ptr);
> +		else
> +			iosys_map_set_vaddr(&sb->map[0], ptr);
> +
> +		if (panic_tiling)
> +			sb->set_pixel = i915_gem_object_panic_map_set_pixel;
> +		return 0;
> +	}
> +	if (i915_gem_object_has_struct_page(obj)) {
> +		panic->pages = i915_gem_object_panic_pages(obj);
> +		if (!panic->pages)
> +			return -ENOMEM;
> +		panic->page = -1;
> +		sb->set_pixel = i915_gem_object_panic_page_set_pixel;
> +		return 0;
> +	}
> +	return -EOPNOTSUPP;
> +}
> +
> +void i915_gem_object_panic_finish(struct intel_panic *panic)
> +{
> +	i915_panic_kunmap(panic);
> +	panic->page = -1;
> +	kfree(panic->pages);
> +	panic->pages = NULL;
> +}
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_panic.h b/drivers/gpu/drm/i915/gem/i915_gem_panic.h
> new file mode 100644
> index 000000000000..91ab6722d37c
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_panic.h
> @@ -0,0 +1,18 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright © 2026 Intel Corporation */
> +
> +#ifndef __I915_GEM_PANIC_H__
> +#define __I915_GEM_PANIC_H__
> +
> +#include <linux/types.h>
> +
> +struct drm_gem_object;
> +struct drm_scanout_buffer;
> +struct intel_panic;
> +
> +struct intel_panic *i915_gem_object_alloc_panic(void);
> +int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
> +				struct drm_gem_object *_obj, bool panic_tiling);
> +void i915_gem_object_panic_finish(struct intel_panic *panic);
> +
> +#endif /* __I915_GEM_PANIC_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_panic.c b/drivers/gpu/drm/i915/i915_panic.c
> index 728be077e8e8..412db72797d8 100644
> --- a/drivers/gpu/drm/i915/i915_panic.c
> +++ b/drivers/gpu/drm/i915/i915_panic.c
> @@ -6,7 +6,7 @@
>   
>   #include "display/intel_display_types.h"
>   #include "display/intel_fb.h"
> -#include "gem/i915_gem_object.h"
> +#include "gem/i915_gem_panic.h"
>   
>   #include "i915_panic.h"
>   

