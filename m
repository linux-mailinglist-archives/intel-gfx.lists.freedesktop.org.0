Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vseoBgd8JmrnXAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 10:23:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E120653FBC
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 10:23:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=bgU756Bp;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=redhat.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2B5C10EF16;
	Mon,  8 Jun 2026 08:23:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A64710EF17
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2026 08:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1780907007;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0Ht//T4WLMlXL2YJt/QFg8MwvL+wOhTJzqBAxW5QqpA=;
 b=bgU756BpiC4GH0XW5461m4KtuCvT5iiXiCzopf/Pofv0Bu9E4pcTlvK/1/fx9p9cQMAIzw
 etV+4Rwq4vnLNeVlWza3Phkp1E+9dXjC2hjBivHckuOUOF2P+r9a8OwNwHMrirb46SXFxF
 7aKUqBy1ch5ZN2iuWU4yHEZJxw9SCrk=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-172-5bU6nokCPvepDc4o9yPlKQ-1; Mon, 08 Jun 2026 04:23:23 -0400
X-MC-Unique: 5bU6nokCPvepDc4o9yPlKQ-1
X-Mimecast-MFC-AGG-ID: 5bU6nokCPvepDc4o9yPlKQ_1780907001
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-becd1c46294so387927266b.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Jun 2026 01:23:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780907000; x=1781511800;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=0Ht//T4WLMlXL2YJt/QFg8MwvL+wOhTJzqBAxW5QqpA=;
 b=fGdcCRyYR3eEcf+/smMksHnAX8BxZ2jzpizE4L17tx52R7uX1RetpOmaZRXlUG300e
 3QTcPs3BzZbfGbMDiC2zXTJHjdE1b2OuHcvc+2BxkyQ0xwb68ceKU6q/xQicXSTFA2hJ
 MH4bZOauWOyAdw1O3Sm6wsSU79wd9Ick78SSGUvBTpEOovYwuzSUrIXUs3F8ZhG3hmQF
 WKVym2xLh1XGsySqm8nppeJ7o6cdANEFtxjhuGmBOXzvealy353m5shJMdd5fsGJ5TqI
 tX+uqntURjZt+UfC9IIPCbqMoy2pspHeObtfQxU5iArgWnYLDOim2WmUlnzhlbd6X/mO
 s9jw==
X-Forwarded-Encrypted: i=1;
 AFNElJ/Va17o4D9lBi5AI4JY4Be484VWBEBXpdrWhTH5et5qob2r866dIP4k1BbufOHTWnxibWDAZ9SeW28=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz+XXzvMuCx9IKLsaTv1MSXC/Ad5nT+nEor9BksQa3O7nd27HwZ
 ifJbe6bWgJj4PSP4uBabS+RSNnQifEzAdwKXinUFdM/A2AewWLrmPfc5F2NQRj4WHwOUSVfjirW
 lgvQn5/AUfb2jaRgIQ/TnJsYuYz8Yugj7RSKJNdCAJsdNhpYF1tumanNNltndvzU83pFhmg==
X-Gm-Gg: Acq92OHJCB4xnTlm8kh+u8GzSq+4HU0HmqYErvvU6UYGHQ3eVlbwa0KxNBGj2Gk5j4F
 nZ1G5ZyLMUX0UoqFtmylsZvGghJq7pqvF4bLzx5uk0Ow7QouSBoY+nZjMPHXL241aBJpPTj1f+D
 sqpFx9Zk6BIv8LMs6wCXKZGCFJ78m0gMAMSs7TYQk2SP8ojZKvGMxuWbN8qmeiq89Lexp0gi8MW
 XWH0F8oo+V7/mTOdy5g+3NFacpQvXC1Fb3m8w9m8akVViP3r+L8OPoxAkzkAoPTgP8bQR971nar
 CG07r1UMOs0ON4MOUR+Uq81S2TGgrl7XYShMPdq5RtNMMEle6TrsjmULif2q6sw3K4SF3daWI2k
 GOrtL5G7AvehCIURRswkJXRHDpTaoh6N1O41Noh3v52Laev4Kzgc43X5SP/u5R0GGuCzHyf7Y
X-Received: by 2002:a17:907:3d93:b0:bd5:7c2:70ca with SMTP id
 a640c23a62f3a-bf37311474cmr759764166b.48.1780907000386; 
 Mon, 08 Jun 2026 01:23:20 -0700 (PDT)
X-Received: by 2002:a17:907:3d93:b0:bd5:7c2:70ca with SMTP id
 a640c23a62f3a-bf37311474cmr759762766b.48.1780906999693; 
 Mon, 08 Jun 2026 01:23:19 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:c:37e0:ec71:10ae:399e:d3c8?
 ([2a01:e0a:c:37e0:ec71:10ae:399e:d3c8])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-bf054e05199sm807602266b.29.2026.06.08.01.23.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jun 2026 01:23:19 -0700 (PDT)
Message-ID: <5a181a4b-9496-4c94-8f6d-257ea7cc69d3@redhat.com>
Date: Mon, 8 Jun 2026 10:23:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] drm/{i915,xe}/panic: drop dependency on struct
 intel_framebuffer
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
References: <cover.1780394867.git.jani.nikula@intel.com>
 <d97abae79db3437c617cd4cb6193ba017b3a8d78.1780394867.git.jani.nikula@intel.com>
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <d97abae79db3437c617cd4cb6193ba017b3a8d78.1780394867.git.jani.nikula@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: eTgS2Qv92OC1AGDatC4_NBUb17im10e5VOL9SkMbM6I_1780907001
X-Mimecast-Originator: redhat.com
Content-Language: en-US, fr
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@intel.com,m:intel-xe@lists.freedesktop.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[jfalempe@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6E120653FBC

On 02/06/2026 12:09, Jani Nikula wrote:
> Store tiling function pointer in struct intel_panic instead of struct
> intel_framebuffer, and store struct intel_panic pointer instead of
> struct intel_framebuffer pointer in struct drm_scanout_buffer private
> member.
> 
> To make this happen, pass the tiling function pointer to panic setup
> hook, and initialize sb->private in the hook for clarity.
> 
> This allows us to drop the dependency on struct intel_framebuffer from
> i915 and xe panic code.
> 
> Note: It would be less verbose to have a typedef for the tiling function
> pointer. However, there isn't a nice location for it that wouldn't also
> increase header interdependencies.

Thanks, it looks good to me.

Reviewed-by: Jocelyn Falempe <jfalempe@redhat.com>

> 
> Cc: Jocelyn Falempe <jfalempe@redhat.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   .../drm/i915/display/intel_display_types.h    |  1 -
>   drivers/gpu/drm/i915/display/intel_parent.c   |  5 ++--
>   drivers/gpu/drm/i915/display/intel_parent.h   |  3 ++-
>   drivers/gpu/drm/i915/display/intel_plane.c    |  8 +++---
>   drivers/gpu/drm/i915/gem/i915_gem_panic.c     | 26 +++++++++++--------
>   drivers/gpu/drm/xe/display/xe_panic.c         | 15 ++++++-----
>   include/drm/intel/display_parent_interface.h  |  3 ++-
>   7 files changed, 35 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index c21e0c0ef0b1..234fae44fb16 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -150,7 +150,6 @@ struct intel_framebuffer {
>   	unsigned int min_alignment;
>   	unsigned int vtd_guard;
>   
> -	unsigned int (*panic_tiling)(unsigned int x, unsigned int y, unsigned int width);
>   	struct intel_panic *panic;
>   };
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
> index 0b2bc2d38442..a5e41ea66921 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.c
> +++ b/drivers/gpu/drm/i915/display/intel_parent.c
> @@ -252,9 +252,10 @@ struct intel_panic *intel_parent_panic_alloc(struct intel_display *display)
>   }
>   
>   int intel_parent_panic_setup(struct intel_display *display, struct intel_panic *panic,
> -			     struct drm_scanout_buffer *sb, struct drm_gem_object *obj)
> +			     struct drm_scanout_buffer *sb, struct drm_gem_object *obj,
> +			     unsigned int (*tiling)(unsigned int x, unsigned int y, unsigned int width))
>   {
> -	return display->parent->panic->setup(panic, sb, obj);
> +	return display->parent->panic->setup(panic, sb, obj, tiling);
>   }
>   
>   void intel_parent_panic_finish(struct intel_display *display, struct intel_panic *panic)
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
> index 4197d1b1af61..595d4148b8eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.h
> +++ b/drivers/gpu/drm/i915/display/intel_parent.h
> @@ -106,7 +106,8 @@ void intel_parent_overlay_cleanup(struct intel_display *display);
>   /* panic */
>   struct intel_panic *intel_parent_panic_alloc(struct intel_display *display);
>   int intel_parent_panic_setup(struct intel_display *display, struct intel_panic *panic,
> -			     struct drm_scanout_buffer *sb, struct drm_gem_object *obj);
> +			     struct drm_scanout_buffer *sb, struct drm_gem_object *obj,
> +			     unsigned int (*tiling)(unsigned int x, unsigned int y, unsigned int width));
>   void intel_parent_panic_finish(struct intel_display *display, struct intel_panic *panic);
>   
>   /* pc8 */
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
> index 75eae994433d..e2745b3be105 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
> @@ -1580,17 +1580,17 @@ static int intel_get_scanout_buffer(struct drm_plane *plane,
>   	if (fb == intel_fbdev_framebuffer(display->fbdev.fbdev)) {
>   		intel_fbdev_get_map(display, &sb->map[0]);
>   	} else {
> +		unsigned int (*tiling)(unsigned int x, unsigned int y, unsigned int width) = NULL;
>   		int ret;
>   		/* Can't disable tiling if DPT is in use */
>   		if (intel_fb_uses_dpt(&fb->base)) {
>   			if (fb->base.format->cpp[0] != 4)
>   				return -EOPNOTSUPP;
> -			fb->panic_tiling = intel_get_tiling_func(fb->base.modifier);
> -			if (!fb->panic_tiling)
> +			tiling = intel_get_tiling_func(fb->base.modifier);
> +			if (!tiling)
>   				return -EOPNOTSUPP;
>   		}
> -		sb->private = fb;
> -		ret = intel_parent_panic_setup(display, fb->panic, sb, obj);
> +		ret = intel_parent_panic_setup(display, fb->panic, sb, obj, tiling);
>   		if (ret)
>   			return ret;
>   	}
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_panic.c b/drivers/gpu/drm/i915/gem/i915_gem_panic.c
> index 001ccfbf7ab7..91389d36f101 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_panic.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_panic.c
> @@ -5,7 +5,6 @@
>   #include <drm/drm_panic.h>
>   #include <drm/intel/display_parent_interface.h>
>   
> -#include "display/intel_display_types.h"
>   #include "i915_gem_object.h"
>   #include "i915_gem_panic.h"
>   
> @@ -13,6 +12,8 @@ struct intel_panic {
>   	struct page **pages;
>   	int page;
>   	void *vaddr;
> +
> +	unsigned int (*tiling)(unsigned int x, unsigned int y, unsigned int width);
>   };
>   
>   static void i915_panic_kunmap(struct intel_panic *panic)
> @@ -45,8 +46,8 @@ static struct page **i915_gem_object_panic_pages(struct drm_i915_gem_object *obj
>   static void i915_gem_object_panic_map_set_pixel(struct drm_scanout_buffer *sb, unsigned int x,
>   						unsigned int y, u32 color)
>   {
> -	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
> -	unsigned int offset = fb->panic_tiling(sb->width, x, y);
> +	struct intel_panic *panic = sb->private;
> +	unsigned int offset = panic->tiling(sb->width, x, y);
>   
>   	iosys_map_wr(&sb->map[0], offset, u32, color);
>   }
> @@ -59,13 +60,12 @@ static void i915_gem_object_panic_map_set_pixel(struct drm_scanout_buffer *sb, u
>   static void i915_gem_object_panic_page_set_pixel(struct drm_scanout_buffer *sb, unsigned int x,
>   						 unsigned int y, u32 color)
>   {
> +	struct intel_panic *panic = sb->private;
>   	unsigned int new_page;
>   	unsigned int offset;
> -	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
> -	struct intel_panic *panic = fb->panic;
>   
> -	if (fb->panic_tiling)
> -		offset = fb->panic_tiling(sb->width, x, y);
> +	if (panic->tiling)
> +		offset = panic->tiling(sb->width, x, y);
>   	else
>   		offset = y * sb->pitch[0] + x * sb->format->cpp[0];
>   
> @@ -98,14 +98,15 @@ static struct intel_panic *i915_gem_object_alloc_panic(void)
>    * pfn is not supported yet.
>    */
>   static int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
> -				       struct drm_gem_object *_obj)
> +				       struct drm_gem_object *_obj,
> +				       unsigned int (*tiling)(unsigned int x, unsigned int y, unsigned int width))
>   {
> -	struct intel_framebuffer *fb = sb->private;
> -	bool panic_tiling = fb->panic_tiling;
>   	enum i915_map_type has_type;
>   	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
>   	void *ptr;
>   
> +	sb->private = panic;
> +
>   	ptr = page_unpack_bits(obj->mm.mapping, &has_type);
>   	if (ptr) {
>   		if (i915_gem_object_has_iomem(obj))
> @@ -113,8 +114,10 @@ static int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_sca
>   		else
>   			iosys_map_set_vaddr(&sb->map[0], ptr);
>   
> -		if (panic_tiling)
> +		if (tiling) {
> +			panic->tiling = tiling;
>   			sb->set_pixel = i915_gem_object_panic_map_set_pixel;
> +		}
>   		return 0;
>   	}
>   	if (i915_gem_object_has_struct_page(obj)) {
> @@ -122,6 +125,7 @@ static int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_sca
>   		if (!panic->pages)
>   			return -ENOMEM;
>   		panic->page = -1;
> +		panic->tiling = tiling;
>   		sb->set_pixel = i915_gem_object_panic_page_set_pixel;
>   		return 0;
>   	}
> diff --git a/drivers/gpu/drm/xe/display/xe_panic.c b/drivers/gpu/drm/xe/display/xe_panic.c
> index 4b86760ec00a..12c6fb99015d 100644
> --- a/drivers/gpu/drm/xe/display/xe_panic.c
> +++ b/drivers/gpu/drm/xe/display/xe_panic.c
> @@ -5,7 +5,6 @@
>   #include <drm/drm_panic.h>
>   #include <drm/intel/display_parent_interface.h>
>   
> -#include "intel_display_types.h"
>   #include "xe_bo.h"
>   #include "xe_panic.h"
>   #include "xe_res_cursor.h"
> @@ -17,6 +16,7 @@ struct intel_panic {
>   	int page;
>   
>   	struct xe_bo *bo;
> +	unsigned int (*tiling)(unsigned int x, unsigned int y, unsigned int width);
>   };
>   
>   static void xe_panic_kunmap(struct intel_panic *panic)
> @@ -37,14 +37,13 @@ static void xe_panic_kunmap(struct intel_panic *panic)
>   static void xe_panic_page_set_pixel(struct drm_scanout_buffer *sb, unsigned int x,
>   				    unsigned int y, u32 color)
>   {
> -	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
> -	struct intel_panic *panic = fb->panic;
> +	struct intel_panic *panic = sb->private;
>   	struct xe_bo *bo = panic->bo;
>   	unsigned int new_page;
>   	unsigned int offset;
>   
> -	if (fb->panic_tiling)
> -		offset = fb->panic_tiling(sb->width, x, y);
> +	if (panic->tiling)
> +		offset = panic->tiling(sb->width, x, y);
>   	else
>   		offset = y * sb->pitch[0] + x * sb->format->cpp[0];
>   
> @@ -86,7 +85,8 @@ static struct intel_panic *xe_panic_alloc(void)
>   }
>   
>   static int xe_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
> -			  struct drm_gem_object *obj)
> +			  struct drm_gem_object *obj,
> +			  unsigned int (*tiling)(unsigned int x, unsigned int y, unsigned int width))
>   {
>   	struct xe_bo *bo = gem_to_xe_bo(obj);
>   
> @@ -95,8 +95,11 @@ static int xe_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *
>   
>   	panic->page = -1;
>   	panic->bo = bo;
> +	panic->tiling = tiling;
>   
> +	sb->private = panic;
>   	sb->set_pixel = xe_panic_page_set_pixel;
> +
>   	return 0;
>   }
>   
> diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
> index b0362e231d84..de395df9ca30 100644
> --- a/include/drm/intel/display_parent_interface.h
> +++ b/include/drm/intel/display_parent_interface.h
> @@ -168,7 +168,8 @@ struct intel_display_overlay_interface {
>   struct intel_display_panic_interface {
>   	struct intel_panic *(*alloc)(void);
>   	int (*setup)(struct intel_panic *panic, struct drm_scanout_buffer *sb,
> -		     struct drm_gem_object *obj);
> +		     struct drm_gem_object *obj,
> +		     unsigned int (*tiling)(unsigned int x, unsigned int y, unsigned int width));
>   	void (*finish)(struct intel_panic *panic);
>   };
>   

