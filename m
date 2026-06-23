Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MyYRIaJPOmpF5wcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 11:19:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA71A6B5B97
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 11:19:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=PQp3W1sY;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86CC510EA35;
	Tue, 23 Jun 2026 09:19:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4EF410EA35;
 Tue, 23 Jun 2026 09:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782206367; x=1813742367;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=yP6OCnE7B8oP+uMV9JIb3QPzrMYcQJCV4ZB/3JaLLqs=;
 b=PQp3W1sYBW1NfaXzf7lKZvj7oYyLUPPbURuqfZAZxLkxVoYV6/qTyj1m
 0CVm/lchDbtxMtoebtnmBIaZ7dfkRrRWOaFWHOPQo4po/jRI2Tv2w+2U5
 aUkwcZTTOtuLAohBuGmy3ToTyM8lkD9yNR/LaNlacdFvTJOGQdX3ArKhA
 5OxKC/qrWMGXQ/zK31OHv6JOlHPTJw2BcllYMmnEZ5A8gHnUH9SZt2cvq
 rquIorj/WlqHJwRPlPZknkcuHQ7/86NHL20m1fsaKHquRtQnjbpLTMRIX
 dl/DHP7/Lc+JcFxQMtcHxtpKtzKUfCtUVpsPXGVIFOfR5TlEHX54j30qj A==;
X-CSE-ConnectionGUID: Q5XIZEMwQ5CwVN63cHqfIg==
X-CSE-MsgGUID: 52TfEi1vRly5Tj17QpBIBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="100494084"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="100494084"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 02:19:26 -0700
X-CSE-ConnectionGUID: ZbMWEw3rQX+AzXgKvWvXJw==
X-CSE-MsgGUID: QFqJr9wnQGmUIFDnGGu8Lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="251402492"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.35])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 02:19:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jocelyn Falempe <jfalempe@redhat.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/6] drm/i915/panic: split out i915_gem_panic.[ch]
In-Reply-To: <6781487e-e2b5-4769-b626-4b8559735a42@redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1780394867.git.jani.nikula@intel.com>
 <f2093946e723aa27e856987d13692eb0308a4d85.1780394867.git.jani.nikula@intel.com>
 <6781487e-e2b5-4769-b626-4b8559735a42@redhat.com>
Date: Tue, 23 Jun 2026 12:19:23 +0300
Message-ID: <6d48b920ee14c0b024caba49cca47f1a4e6d8e59@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EA71A6B5B97

On Mon, 08 Jun 2026, Jocelyn Falempe <jfalempe@redhat.com> wrote:
> On 02/06/2026 12:09, Jani Nikula wrote:
>> The panic handling is a bit special and isolated part of
>> i915_gem_pages.c. Split it out to i915_gem_panic.[ch].
>
> Thanks, it looks good to me.
>
> Reviewed-by: Jocelyn Falempe <jfalempe@redhat.com>

Thanks for the reviews, pushed to drm-intel-next.

BR,
Jani.

>>=20
>> Cc: Jocelyn Falempe <jfalempe@redhat.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/i915/Makefile              |   1 +
>>   drivers/gpu/drm/i915/gem/i915_gem_object.h |   7 --
>>   drivers/gpu/drm/i915/gem/i915_gem_pages.c  | 128 -------------------
>>   drivers/gpu/drm/i915/gem/i915_gem_panic.c  | 135 +++++++++++++++++++++
>>   drivers/gpu/drm/i915/gem/i915_gem_panic.h  |  18 +++
>>   drivers/gpu/drm/i915/i915_panic.c          |   2 +-
>>   6 files changed, 155 insertions(+), 136 deletions(-)
>>   create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_panic.c
>>   create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_panic.h
>>=20
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefi=
le
>> index 07802a7f4ce5..091b6647c383 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -167,6 +167,7 @@ gem-y +=3D \
>>   	gem/i915_gem_object.o \
>>   	gem/i915_gem_object_frontbuffer.o \
>>   	gem/i915_gem_pages.o \
>> +	gem/i915_gem_panic.o \
>>   	gem/i915_gem_phys.o \
>>   	gem/i915_gem_pm.o \
>>   	gem/i915_gem_region.o \
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/dr=
m/i915/gem/i915_gem_object.h
>> index 8878539c10ed..2c5d20e4dbaf 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> @@ -17,8 +17,6 @@
>>   #include "i915_vma_types.h"
>>=20=20=20
>>   enum intel_region_id;
>> -struct drm_scanout_buffer;
>> -struct intel_panic;
>>=20=20=20
>>   #define obj_to_i915(obj__) to_i915((obj__)->base.dev)
>>=20=20=20
>> @@ -693,11 +691,6 @@ i915_gem_object_unpin_pages(struct drm_i915_gem_obj=
ect *obj)
>>   int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj);
>>   int i915_gem_object_truncate(struct drm_i915_gem_object *obj);
>>=20=20=20
>> -struct intel_panic *i915_gem_object_alloc_panic(void);
>> -int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_s=
canout_buffer *sb,
>> -				struct drm_gem_object *_obj, bool panic_tiling);
>> -void i915_gem_object_panic_finish(struct intel_panic *panic);
>> -
>>   /**
>>    * i915_gem_object_pin_map - return a contiguous mapping of the entire=
 object
>>    * @obj: the object to map into kernel address space
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm=
/i915/gem/i915_gem_pages.c
>> index df35bdb755e4..59e3d4de7d3c 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>> @@ -6,11 +6,8 @@
>>   #include <linux/vmalloc.h>
>>=20=20=20
>>   #include <drm/drm_cache.h>
>> -#include <drm/drm_panic.h>
>>   #include <drm/drm_print.h>
>>=20=20=20
>> -#include "display/intel_fb.h"
>> -#include "display/intel_display_types.h"
>>   #include "gt/intel_gt.h"
>>   #include "gt/intel_tlb.h"
>>=20=20=20
>> @@ -359,131 +356,6 @@ static void *i915_gem_object_map_pfn(struct drm_i9=
15_gem_object *obj,
>>   	return vaddr ?: ERR_PTR(-ENOMEM);
>>   }
>>=20=20=20
>> -struct intel_panic {
>> -	struct page **pages;
>> -	int page;
>> -	void *vaddr;
>> -};
>> -
>> -static void i915_panic_kunmap(struct intel_panic *panic)
>> -{
>> -	if (panic->vaddr) {
>> -		drm_clflush_virt_range(panic->vaddr, PAGE_SIZE);
>> -		kunmap_local(panic->vaddr);
>> -		panic->vaddr =3D NULL;
>> -	}
>> -}
>> -
>> -static struct page **i915_gem_object_panic_pages(struct drm_i915_gem_ob=
ject *obj)
>> -{
>> -	unsigned long n_pages =3D obj->base.size >> PAGE_SHIFT, i;
>> -	struct page *page;
>> -	struct page **pages;
>> -	struct sgt_iter iter;
>> -
>> -	/* For a 3840x2160 32 bits Framebuffer, this should require ~64K */
>> -	pages =3D kmalloc_objs(*pages, n_pages, GFP_ATOMIC);
>> -	if (!pages)
>> -		return NULL;
>> -
>> -	i =3D 0;
>> -	for_each_sgt_page(page, iter, obj->mm.pages)
>> -		pages[i++] =3D page;
>> -	return pages;
>> -}
>> -
>> -static void i915_gem_object_panic_map_set_pixel(struct drm_scanout_buff=
er *sb, unsigned int x,
>> -						unsigned int y, u32 color)
>> -{
>> -	struct intel_framebuffer *fb =3D (struct intel_framebuffer *)sb->priva=
te;
>> -	unsigned int offset =3D fb->panic_tiling(sb->width, x, y);
>> -
>> -	iosys_map_wr(&sb->map[0], offset, u32, color);
>> -}
>> -
>> -/*
>> - * The scanout buffer pages are not mapped, so for each pixel,
>> - * use kmap_local_page_try_from_panic() to map the page, and write the =
pixel.
>> - * Try to keep the map from the previous pixel, to avoid too much map/u=
nmap.
>> - */
>> -static void i915_gem_object_panic_page_set_pixel(struct drm_scanout_buf=
fer *sb, unsigned int x,
>> -						 unsigned int y, u32 color)
>> -{
>> -	unsigned int new_page;
>> -	unsigned int offset;
>> -	struct intel_framebuffer *fb =3D (struct intel_framebuffer *)sb->priva=
te;
>> -	struct intel_panic *panic =3D fb->panic;
>> -
>> -	if (fb->panic_tiling)
>> -		offset =3D fb->panic_tiling(sb->width, x, y);
>> -	else
>> -		offset =3D y * sb->pitch[0] + x * sb->format->cpp[0];
>> -
>> -	new_page =3D offset >> PAGE_SHIFT;
>> -	offset =3D offset % PAGE_SIZE;
>> -	if (new_page !=3D panic->page) {
>> -		i915_panic_kunmap(panic);
>> -		panic->page =3D new_page;
>> -		panic->vaddr =3D
>> -			kmap_local_page_try_from_panic(panic->pages[panic->page]);
>> -	}
>> -	if (panic->vaddr) {
>> -		u32 *pix =3D panic->vaddr + offset;
>> -		*pix =3D color;
>> -	}
>> -}
>> -
>> -struct intel_panic *i915_gem_object_alloc_panic(void)
>> -{
>> -	struct intel_panic *panic;
>> -
>> -	panic =3D kzalloc_obj(*panic);
>> -
>> -	return panic;
>> -}
>> -
>> -/*
>> - * Setup the gem framebuffer for drm_panic access.
>> - * Use current vaddr if it exists, or setup a list of pages.
>> - * pfn is not supported yet.
>> - */
>> -int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_s=
canout_buffer *sb,
>> -				struct drm_gem_object *_obj, bool panic_tiling)
>> -{
>> -	enum i915_map_type has_type;
>> -	struct drm_i915_gem_object *obj =3D to_intel_bo(_obj);
>> -	void *ptr;
>> -
>> -	ptr =3D page_unpack_bits(obj->mm.mapping, &has_type);
>> -	if (ptr) {
>> -		if (i915_gem_object_has_iomem(obj))
>> -			iosys_map_set_vaddr_iomem(&sb->map[0], (void __iomem *)ptr);
>> -		else
>> -			iosys_map_set_vaddr(&sb->map[0], ptr);
>> -
>> -		if (panic_tiling)
>> -			sb->set_pixel =3D i915_gem_object_panic_map_set_pixel;
>> -		return 0;
>> -	}
>> -	if (i915_gem_object_has_struct_page(obj)) {
>> -		panic->pages =3D i915_gem_object_panic_pages(obj);
>> -		if (!panic->pages)
>> -			return -ENOMEM;
>> -		panic->page =3D -1;
>> -		sb->set_pixel =3D i915_gem_object_panic_page_set_pixel;
>> -		return 0;
>> -	}
>> -	return -EOPNOTSUPP;
>> -}
>> -
>> -void i915_gem_object_panic_finish(struct intel_panic *panic)
>> -{
>> -	i915_panic_kunmap(panic);
>> -	panic->page =3D -1;
>> -	kfree(panic->pages);
>> -	panic->pages =3D NULL;
>> -}
>> -
>>   /* get, pin, and map the pages of the object into kernel space */
>>   void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
>>   			      enum i915_map_type type)
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_panic.c b/drivers/gpu/drm=
/i915/gem/i915_gem_panic.c
>> new file mode 100644
>> index 000000000000..7407c5668c71
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_panic.c
>> @@ -0,0 +1,135 @@
>> +// SPDX-License-Identifier: MIT
>> +/* Copyright =C2=A9 2026 Intel Corporation */
>> +
>> +#include <drm/drm_cache.h>
>> +#include <drm/drm_panic.h>
>> +
>> +#include "display/intel_fb.h"
>> +#include "display/intel_display_types.h"
>> +#include "i915_gem_object.h"
>> +#include "i915_gem_panic.h"
>> +
>> +struct intel_panic {
>> +	struct page **pages;
>> +	int page;
>> +	void *vaddr;
>> +};
>> +
>> +static void i915_panic_kunmap(struct intel_panic *panic)
>> +{
>> +	if (panic->vaddr) {
>> +		drm_clflush_virt_range(panic->vaddr, PAGE_SIZE);
>> +		kunmap_local(panic->vaddr);
>> +		panic->vaddr =3D NULL;
>> +	}
>> +}
>> +
>> +static struct page **i915_gem_object_panic_pages(struct drm_i915_gem_ob=
ject *obj)
>> +{
>> +	unsigned long n_pages =3D obj->base.size >> PAGE_SHIFT, i;
>> +	struct page *page;
>> +	struct page **pages;
>> +	struct sgt_iter iter;
>> +
>> +	/* For a 3840x2160 32 bits Framebuffer, this should require ~64K */
>> +	pages =3D kmalloc_objs(*pages, n_pages, GFP_ATOMIC);
>> +	if (!pages)
>> +		return NULL;
>> +
>> +	i =3D 0;
>> +	for_each_sgt_page(page, iter, obj->mm.pages)
>> +		pages[i++] =3D page;
>> +	return pages;
>> +}
>> +
>> +static void i915_gem_object_panic_map_set_pixel(struct drm_scanout_buff=
er *sb, unsigned int x,
>> +						unsigned int y, u32 color)
>> +{
>> +	struct intel_framebuffer *fb =3D (struct intel_framebuffer *)sb->priva=
te;
>> +	unsigned int offset =3D fb->panic_tiling(sb->width, x, y);
>> +
>> +	iosys_map_wr(&sb->map[0], offset, u32, color);
>> +}
>> +
>> +/*
>> + * The scanout buffer pages are not mapped, so for each pixel,
>> + * use kmap_local_page_try_from_panic() to map the page, and write the =
pixel.
>> + * Try to keep the map from the previous pixel, to avoid too much map/u=
nmap.
>> + */
>> +static void i915_gem_object_panic_page_set_pixel(struct drm_scanout_buf=
fer *sb, unsigned int x,
>> +						 unsigned int y, u32 color)
>> +{
>> +	unsigned int new_page;
>> +	unsigned int offset;
>> +	struct intel_framebuffer *fb =3D (struct intel_framebuffer *)sb->priva=
te;
>> +	struct intel_panic *panic =3D fb->panic;
>> +
>> +	if (fb->panic_tiling)
>> +		offset =3D fb->panic_tiling(sb->width, x, y);
>> +	else
>> +		offset =3D y * sb->pitch[0] + x * sb->format->cpp[0];
>> +
>> +	new_page =3D offset >> PAGE_SHIFT;
>> +	offset =3D offset % PAGE_SIZE;
>> +	if (new_page !=3D panic->page) {
>> +		i915_panic_kunmap(panic);
>> +		panic->page =3D new_page;
>> +		panic->vaddr =3D
>> +			kmap_local_page_try_from_panic(panic->pages[panic->page]);
>> +	}
>> +	if (panic->vaddr) {
>> +		u32 *pix =3D panic->vaddr + offset;
>> +		*pix =3D color;
>> +	}
>> +}
>> +
>> +struct intel_panic *i915_gem_object_alloc_panic(void)
>> +{
>> +	struct intel_panic *panic;
>> +
>> +	panic =3D kzalloc_obj(*panic);
>> +
>> +	return panic;
>> +}
>> +
>> +/*
>> + * Setup the gem framebuffer for drm_panic access.
>> + * Use current vaddr if it exists, or setup a list of pages.
>> + * pfn is not supported yet.
>> + */
>> +int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_s=
canout_buffer *sb,
>> +				struct drm_gem_object *_obj, bool panic_tiling)
>> +{
>> +	enum i915_map_type has_type;
>> +	struct drm_i915_gem_object *obj =3D to_intel_bo(_obj);
>> +	void *ptr;
>> +
>> +	ptr =3D page_unpack_bits(obj->mm.mapping, &has_type);
>> +	if (ptr) {
>> +		if (i915_gem_object_has_iomem(obj))
>> +			iosys_map_set_vaddr_iomem(&sb->map[0], (void __iomem *)ptr);
>> +		else
>> +			iosys_map_set_vaddr(&sb->map[0], ptr);
>> +
>> +		if (panic_tiling)
>> +			sb->set_pixel =3D i915_gem_object_panic_map_set_pixel;
>> +		return 0;
>> +	}
>> +	if (i915_gem_object_has_struct_page(obj)) {
>> +		panic->pages =3D i915_gem_object_panic_pages(obj);
>> +		if (!panic->pages)
>> +			return -ENOMEM;
>> +		panic->page =3D -1;
>> +		sb->set_pixel =3D i915_gem_object_panic_page_set_pixel;
>> +		return 0;
>> +	}
>> +	return -EOPNOTSUPP;
>> +}
>> +
>> +void i915_gem_object_panic_finish(struct intel_panic *panic)
>> +{
>> +	i915_panic_kunmap(panic);
>> +	panic->page =3D -1;
>> +	kfree(panic->pages);
>> +	panic->pages =3D NULL;
>> +}
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_panic.h b/drivers/gpu/drm=
/i915/gem/i915_gem_panic.h
>> new file mode 100644
>> index 000000000000..91ab6722d37c
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_panic.h
>> @@ -0,0 +1,18 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/* Copyright =C2=A9 2026 Intel Corporation */
>> +
>> +#ifndef __I915_GEM_PANIC_H__
>> +#define __I915_GEM_PANIC_H__
>> +
>> +#include <linux/types.h>
>> +
>> +struct drm_gem_object;
>> +struct drm_scanout_buffer;
>> +struct intel_panic;
>> +
>> +struct intel_panic *i915_gem_object_alloc_panic(void);
>> +int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_s=
canout_buffer *sb,
>> +				struct drm_gem_object *_obj, bool panic_tiling);
>> +void i915_gem_object_panic_finish(struct intel_panic *panic);
>> +
>> +#endif /* __I915_GEM_PANIC_H__ */
>> diff --git a/drivers/gpu/drm/i915/i915_panic.c b/drivers/gpu/drm/i915/i9=
15_panic.c
>> index 728be077e8e8..412db72797d8 100644
>> --- a/drivers/gpu/drm/i915/i915_panic.c
>> +++ b/drivers/gpu/drm/i915/i915_panic.c
>> @@ -6,7 +6,7 @@
>>=20=20=20
>>   #include "display/intel_display_types.h"
>>   #include "display/intel_fb.h"
>> -#include "gem/i915_gem_object.h"
>> +#include "gem/i915_gem_panic.h"
>>=20=20=20
>>   #include "i915_panic.h"
>>=20=20=20
>

--=20
Jani Nikula, Intel
