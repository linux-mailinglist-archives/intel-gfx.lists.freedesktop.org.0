Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XUrTNlx7Jmq5XAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 10:20:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F008653F40
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 10:20:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=C3OWavAd;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=redhat.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D626E10EEFA;
	Mon,  8 Jun 2026 08:20:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D41510EEFA
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2026 08:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1780906840;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PnAAdjcaAYJ8mdyllqYpgwzAqcrvtzDdSQeDNN5TUTs=;
 b=C3OWavAdmBcDEKwaGEU8NAVDdJgI8rMtwd+XeMLLigJWMZ5TCAkCoS60+McMFUaL9Xc86G
 IkUpJfXEAmhKICPEkgLlkqFQ4i3A9WqOjiEzzAu1yND3MGfHtG8KxgOkjAmjOufRVh2hzG
 /EJ21+eO3AsHbs2yAqXBq7DueEJFakY=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-282-1otk6hi_NtG7wp453VlJ7g-1; Mon, 08 Jun 2026 04:20:38 -0400
X-MC-Unique: 1otk6hi_NtG7wp453VlJ7g-1
X-Mimecast-MFC-AGG-ID: 1otk6hi_NtG7wp453VlJ7g_1780906837
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-bef1e83c990so358414466b.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Jun 2026 01:20:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780906837; x=1781511637;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=PnAAdjcaAYJ8mdyllqYpgwzAqcrvtzDdSQeDNN5TUTs=;
 b=VR9SAlyMiBmQzRzm++JxfB5LwiJ1Iu5SVnTndo2HVqIxSVT+wx5XmofoyvcQNp4R/x
 PC/6VWy5bNv84VvfoGqmxTfURs4qKHdYDPIupRqY6HvJ2g0HRwa7npwMwvqYHoNOdEqF
 W2PwGzW/gI6qrBhjFiaV1BRxPsbfOO0Hm5BliwlaguY3MoL5S7Ad3qfd+fu5BEp4VFfb
 41d7AG1+wTWm4yDvKA6DAJMu1cEpd5422KH/xXk/pcXEn2LEuPztain2XXJb1u+YltWr
 dQWh0x/LcggPx/HbGNkoT7+EOi94y4WvkhFxXdd5A/ew9rxyWzGP11T+ppRvkD9VhXm8
 jAQQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ8Gjbylkuld0jwCo+xcjo4LXieR6uwd7KIK/6pfR/DTc+i1Ln9FS2XNzSIqKhZHj760w/Un1MCR4Rs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YynACXflglK5Yv8AS5uDiQJCmhH9lkF0omoYZan5wXukrhSvUFI
 kqxjNsS6ktoZRlMsIDtK0jutNgiwus6qfHHqtRt6PnUTrOB9tav9tTZCbCOmM2RbErq4KcV1ZNX
 n/7Vn1XIY9eibxs1ybTr90gUwmt55FgjmhzWmLYsmy761nznMumpfNXkTT1NmSqfTGcCBcg==
X-Gm-Gg: Acq92OH0SvRNltSQdt7IQ6ua23KLnNVqMo8boirHKFyju9k4WcIbBUOw5PCFd4mPyMk
 YnvLKXCBA72WBBtduqqy5HyzLPrpbziCJNyGJYnT7E3XN2e1s6fECufDgdyUzbhPt4HYKUA5gPV
 cMNbMXF0eC2AwSAbRrs2CLejCVZ6CeRD7iDc6RPbgOE6u+PgVDdD7IP9qGmPIEv6NLnCT6NBcuh
 BRmvgcAnqhNA6UMbQWX/7nAbqWvxsBlmPpP1WQFB9DgJLBBLW8uYJSAAusuWZ9ZDS/nhigRF87r
 czjBRODrvWqMXsBP+XrKX0qE3J7vxFXVfdRAKGGUj/vIS6PTxL7AR//atDiawd7t2odMYkTOT44
 BY/81Kpsh1b9P09HY7JsKRPqjjHalhdCeKXFmWSEsAtBK0JGEkuEC/1LUDkjYe+krIncycUMm
X-Received: by 2002:a17:907:a315:b0:bed:83ee:922b with SMTP id
 a640c23a62f3a-bf36fd9c96dmr670551366b.7.1780906837266; 
 Mon, 08 Jun 2026 01:20:37 -0700 (PDT)
X-Received: by 2002:a17:907:a315:b0:bed:83ee:922b with SMTP id
 a640c23a62f3a-bf36fd9c96dmr670549666b.7.1780906836688; 
 Mon, 08 Jun 2026 01:20:36 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:c:37e0:ec71:10ae:399e:d3c8?
 ([2a01:e0a:c:37e0:ec71:10ae:399e:d3c8])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-bf054e051a5sm833263066b.35.2026.06.08.01.20.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jun 2026 01:20:36 -0700 (PDT)
Message-ID: <ab4f30a7-0a9b-4ea2-9541-37d403ff44aa@redhat.com>
Date: Mon, 8 Jun 2026 10:20:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] drm/i915/panic: squash i915_panic.c into
 i915_gem_panic.c
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
References: <cover.1780394867.git.jani.nikula@intel.com>
 <4c294d6402e003040b934d94a0b14bd42704e21f.1780394867.git.jani.nikula@intel.com>
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <4c294d6402e003040b934d94a0b14bd42704e21f.1780394867.git.jani.nikula@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Jmn1JvxHc9smDwSotKBD8MHJHLAPjdLvaAs88jWOec0_1780906837
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
	FORGED_SENDER(0.00)[jfalempe@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
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
X-Rspamd-Queue-Id: 4F008653F40

On 02/06/2026 12:09, Jani Nikula wrote:
> Having two small files for panic handling is a bit too much. Merge
> i915_panic.c into i915_gem_panic.c. This is just code movement, cleanups
> will follow.
> 

Thanks, it looks good to me.

Reviewed-by: Jocelyn Falempe <jfalempe@redhat.com>

> Cc: Jocelyn Falempe <jfalempe@redhat.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/Makefile             |  3 +-
>   drivers/gpu/drm/i915/gem/i915_gem_panic.c | 33 ++++++++++++++++++---
>   drivers/gpu/drm/i915/gem/i915_gem_panic.h |  9 +-----
>   drivers/gpu/drm/i915/i915_driver.c        |  2 +-
>   drivers/gpu/drm/i915/i915_panic.c         | 35 -----------------------
>   drivers/gpu/drm/i915/i915_panic.h         |  9 ------
>   6 files changed, 32 insertions(+), 59 deletions(-)
>   delete mode 100644 drivers/gpu/drm/i915/i915_panic.c
>   delete mode 100644 drivers/gpu/drm/i915/i915_panic.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 091b6647c383..1fd7a1a5f315 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -83,8 +83,7 @@ i915-y += \
>   	i915_fb_pin.o \
>   	i915_hdcp_gsc.o \
>   	i915_initial_plane.o \
> -	i915_overlay.o \
> -	i915_panic.o
> +	i915_overlay.o
>   
>   # "Graphics Technology" (aka we talk to the gpu)
>   gt-y += \
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_panic.c b/drivers/gpu/drm/i915/gem/i915_gem_panic.c
> index 7407c5668c71..14ea45dcdd8f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_panic.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_panic.c
> @@ -3,6 +3,7 @@
>   
>   #include <drm/drm_cache.h>
>   #include <drm/drm_panic.h>
> +#include <drm/intel/display_parent_interface.h>
>   
>   #include "display/intel_fb.h"
>   #include "display/intel_display_types.h"
> @@ -83,7 +84,7 @@ static void i915_gem_object_panic_page_set_pixel(struct drm_scanout_buffer *sb,
>   	}
>   }
>   
> -struct intel_panic *i915_gem_object_alloc_panic(void)
> +static struct intel_panic *i915_gem_object_alloc_panic(void)
>   {
>   	struct intel_panic *panic;
>   
> @@ -97,8 +98,8 @@ struct intel_panic *i915_gem_object_alloc_panic(void)
>    * Use current vaddr if it exists, or setup a list of pages.
>    * pfn is not supported yet.
>    */
> -int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
> -				struct drm_gem_object *_obj, bool panic_tiling)
> +static int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
> +				       struct drm_gem_object *_obj, bool panic_tiling)
>   {
>   	enum i915_map_type has_type;
>   	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
> @@ -126,10 +127,34 @@ int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_bu
>   	return -EOPNOTSUPP;
>   }
>   
> -void i915_gem_object_panic_finish(struct intel_panic *panic)
> +static void i915_gem_object_panic_finish(struct intel_panic *panic)
>   {
>   	i915_panic_kunmap(panic);
>   	panic->page = -1;
>   	kfree(panic->pages);
>   	panic->pages = NULL;
>   }
> +
> +static struct intel_panic *intel_panic_alloc(void)
> +{
> +	return i915_gem_object_alloc_panic();
> +}
> +
> +static int intel_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb)
> +{
> +	struct intel_framebuffer *fb = sb->private;
> +	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
> +
> +	return i915_gem_object_panic_setup(panic, sb, obj, fb->panic_tiling);
> +}
> +
> +static void intel_panic_finish(struct intel_panic *panic)
> +{
> +	return i915_gem_object_panic_finish(panic);
> +}
> +
> +const struct intel_display_panic_interface i915_display_panic_interface = {
> +	.alloc = intel_panic_alloc,
> +	.setup = intel_panic_setup,
> +	.finish = intel_panic_finish,
> +};
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_panic.h b/drivers/gpu/drm/i915/gem/i915_gem_panic.h
> index 91ab6722d37c..82c3aca6f1f3 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_panic.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_panic.h
> @@ -6,13 +6,6 @@
>   
>   #include <linux/types.h>
>   
> -struct drm_gem_object;
> -struct drm_scanout_buffer;
> -struct intel_panic;
> -
> -struct intel_panic *i915_gem_object_alloc_panic(void);
> -int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
> -				struct drm_gem_object *_obj, bool panic_tiling);
> -void i915_gem_object_panic_finish(struct intel_panic *panic);
> +extern const struct intel_display_panic_interface i915_display_panic_interface;
>   
>   #endif /* __I915_GEM_PANIC_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 60d5e06675ab..8294899a52d4 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -80,6 +80,7 @@
>   #include "gem/i915_gem_ioctls.h"
>   #include "gem/i915_gem_mman.h"
>   #include "gem/i915_gem_object_frontbuffer.h"
> +#include "gem/i915_gem_panic.h"
>   #include "gem/i915_gem_pm.h"
>   #include "gt/intel_gt.h"
>   #include "gt/intel_gt_pm.h"
> @@ -112,7 +113,6 @@
>   #include "i915_irq.h"
>   #include "i915_memcpy.h"
>   #include "i915_overlay.h"
> -#include "i915_panic.h"
>   #include "i915_perf.h"
>   #include "i915_query.h"
>   #include "i915_reg.h"
> diff --git a/drivers/gpu/drm/i915/i915_panic.c b/drivers/gpu/drm/i915/i915_panic.c
> deleted file mode 100644
> index 412db72797d8..000000000000
> --- a/drivers/gpu/drm/i915/i915_panic.c
> +++ /dev/null
> @@ -1,35 +0,0 @@
> -// SPDX-License-Identifier: MIT
> -/* Copyright © 2025 Intel Corporation */
> -
> -#include <drm/drm_panic.h>
> -#include <drm/intel/display_parent_interface.h>
> -
> -#include "display/intel_display_types.h"
> -#include "display/intel_fb.h"
> -#include "gem/i915_gem_panic.h"
> -
> -#include "i915_panic.h"
> -
> -static struct intel_panic *intel_panic_alloc(void)
> -{
> -	return i915_gem_object_alloc_panic();
> -}
> -
> -static int intel_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb)
> -{
> -	struct intel_framebuffer *fb = sb->private;
> -	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
> -
> -	return i915_gem_object_panic_setup(panic, sb, obj, fb->panic_tiling);
> -}
> -
> -static void intel_panic_finish(struct intel_panic *panic)
> -{
> -	return i915_gem_object_panic_finish(panic);
> -}
> -
> -const struct intel_display_panic_interface i915_display_panic_interface = {
> -	.alloc = intel_panic_alloc,
> -	.setup = intel_panic_setup,
> -	.finish = intel_panic_finish,
> -};
> diff --git a/drivers/gpu/drm/i915/i915_panic.h b/drivers/gpu/drm/i915/i915_panic.h
> deleted file mode 100644
> index 743d8c861c42..000000000000
> --- a/drivers/gpu/drm/i915/i915_panic.h
> +++ /dev/null
> @@ -1,9 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/* Copyright © 2025 Intel Corporation */
> -
> -#ifndef __I915_PANIC_H__
> -#define __I915_PANIC_H__
> -
> -extern const struct intel_display_panic_interface i915_display_panic_interface;
> -
> -#endif /* __I915_PANIC_H__ */

