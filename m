Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2R7CIb97JmrVXAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 10:22:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA69A653F80
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 10:22:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=IN5q5ido;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=redhat.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 739B710EF02;
	Mon,  8 Jun 2026 08:22:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4108010EF0A
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2026 08:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1780906939;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4kAa63BRayb7XHjBTyXwMyVrN9cu/EVgcoq30zcjEV4=;
 b=IN5q5idorUz1Pg5W8hWOJUK0RNfAcNeYNdI+NeWPEBihf2kK5Rt6ql94jdqtSHtvEag4d+
 tpW5bZRlncBOAfVsRE89WGwUSJUNQvMpdrg44+ELHFcYzResbyY61rCV061pQdWaT27RAw
 OQ8A0LlwA00mLDU/HBy2e2FMxcVC5pY=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-132-ScXLgm0BMlaxqENCbHwpOQ-1; Mon, 08 Jun 2026 04:22:18 -0400
X-MC-Unique: ScXLgm0BMlaxqENCbHwpOQ-1
X-Mimecast-MFC-AGG-ID: ScXLgm0BMlaxqENCbHwpOQ_1780906937
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-45ef93c359fso3342390f8f.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Jun 2026 01:22:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780906937; x=1781511737;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=4kAa63BRayb7XHjBTyXwMyVrN9cu/EVgcoq30zcjEV4=;
 b=Yy+gx8Ui/SvPtCT9J8xgiv2iIjkOmuqXeuGWdFTrK7CVFEHWWzwpqJRrE96tSC4CvB
 HmkmhA7sQjhsVT8zMYZe6QbPppzNPszGz1OYj9+Faw9GfWnaPEWFTs0O0aaJgNUQVfrr
 04JUPcuTxxef6Qp0OshXZJvc0C6gyn8aaVnHzD8ND4yT5xkJiOnHCq0aSXo4x4ftgBdW
 rlQ39R5yyyAVf3QZJqthxfvBxTZudFoYU7I/FcFJG7tdtW6p1pQ6fqrOwuQu+fodraMK
 NKrQSHYFgbqHTOo/OshAeYEtqKT2+UA8v4hTREi4gfGBikp8p+CD8kp6sd1FhMQDxtyW
 z1Iw==
X-Forwarded-Encrypted: i=1;
 AFNElJ/XqKKCGN5Mn3kRWTb2AP4VyggjiqVmrN3mSYNEUaZi4ilIL2GGLjLuPWdUKePXtmnvsGmZ1QVSMPo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yztbh+Q7sgfV3p3sj7+EvxQkgvcttetWn2gImfDkWD8uFuSS2Sv
 fT4/Y9jsKVxYBzjtQ+oAdMJHTVL4JDTrPco6hCpDiDYiRIZm+kj3Fbfj2iBfRrTT5GU6sfPLDGE
 aN5R2QFzVtnXklD8gbtmI6lqef0fHFjgCSgHrYTV27k1Ke6/SctW0qA7qQ3MqYDlxdX5kEKo5Pn
 NPrg==
X-Gm-Gg: Acq92OGeq2HyA4O1w6CLEFuQsmElD0PCf6N3WOaw2giVYUeq3wQQDt5QPOAVTkELYcx
 /XgDO4KfmB+NRfyjfzxSflXjb+ibXjVbaad7Q5BIS1P7TRLLDNSX67IRLqCDV1BgDC6TvUIo+Cl
 DMnM3UGN2Q3Sg8cHwXQNEinrUYyHvtImpO4+5WEhblZfJcUkpbR3aivCoyMR4G2X3l3SSAbpLC9
 e5zog++aqH4BbepQf271TaXvMa96ulbqTKBaQARewgeilLIlUiwmbPPahSq+/geh+s3SI2hTYVG
 WMPw/zaxDynJ54Zbr1PjC9fzlWBJveg14djv/r0Sl6W1ObzdXM+FvN07oHtQFJYQ/RcLxJAvBPZ
 Ec/fIMAo2D2MMwvAWcV5qnR+BIEn/tF1JMrD3nAIGubNPsc8iZqzFv+YDPIpmViClQJV8+ubm
X-Received: by 2002:a05:6000:178e:b0:460:3234:293e with SMTP id
 ffacd0b85a97d-46032342a79mr22044812f8f.41.1780906936896; 
 Mon, 08 Jun 2026 01:22:16 -0700 (PDT)
X-Received: by 2002:a05:6000:178e:b0:460:3234:293e with SMTP id
 ffacd0b85a97d-46032342a79mr22044776f8f.41.1780906936480; 
 Mon, 08 Jun 2026 01:22:16 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:c:37e0:ec71:10ae:399e:d3c8?
 ([2a01:e0a:c:37e0:ec71:10ae:399e:d3c8])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-4601f351ac0sm90671301f8f.27.2026.06.08.01.22.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jun 2026 01:22:16 -0700 (PDT)
Message-ID: <2efdd3ae-5428-42e9-8a02-3a991bc3d58e@redhat.com>
Date: Mon, 8 Jun 2026 10:22:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] drm/{i915,xe}/panic: pass obj to panic setup
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
References: <cover.1780394867.git.jani.nikula@intel.com>
 <840c4ccaced5f1c82277285938287776c8cdf513.1780394867.git.jani.nikula@intel.com>
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <840c4ccaced5f1c82277285938287776c8cdf513.1780394867.git.jani.nikula@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: fv9gP262Df0su5FU19a88YZZkUxUBoD9MchdBjP7M-Q_1780906937
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
X-Rspamd-Queue-Id: EA69A653F80

On 02/06/2026 12:09, Jani Nikula wrote:
> Start reducing i915 and xe core dependency on struct intel_framebuffer
> by passing the fb obj from display.
> 

Thanks, it looks good to me.

Reviewed-by: Jocelyn Falempe <jfalempe@redhat.com>

> Cc: Jocelyn Falempe <jfalempe@redhat.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_parent.c  | 5 +++--
>   drivers/gpu/drm/i915/display/intel_parent.h  | 3 ++-
>   drivers/gpu/drm/i915/display/intel_plane.c   | 2 +-
>   drivers/gpu/drm/i915/gem/i915_gem_panic.c    | 5 ++---
>   drivers/gpu/drm/xe/display/xe_panic.c        | 6 +++---
>   include/drm/intel/display_parent_interface.h | 3 ++-
>   6 files changed, 13 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
> index a5816561be40..0b2bc2d38442 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.c
> +++ b/drivers/gpu/drm/i915/display/intel_parent.c
> @@ -251,9 +251,10 @@ struct intel_panic *intel_parent_panic_alloc(struct intel_display *display)
>   	return display->parent->panic->alloc();
>   }
>   
> -int intel_parent_panic_setup(struct intel_display *display, struct intel_panic *panic, struct drm_scanout_buffer *sb)
> +int intel_parent_panic_setup(struct intel_display *display, struct intel_panic *panic,
> +			     struct drm_scanout_buffer *sb, struct drm_gem_object *obj)
>   {
> -	return display->parent->panic->setup(panic, sb);
> +	return display->parent->panic->setup(panic, sb, obj);
>   }
>   
>   void intel_parent_panic_finish(struct intel_display *display, struct intel_panic *panic)
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
> index 27e35f891a6b..4197d1b1af61 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.h
> +++ b/drivers/gpu/drm/i915/display/intel_parent.h
> @@ -105,7 +105,8 @@ void intel_parent_overlay_cleanup(struct intel_display *display);
>   
>   /* panic */
>   struct intel_panic *intel_parent_panic_alloc(struct intel_display *display);
> -int intel_parent_panic_setup(struct intel_display *display, struct intel_panic *panic, struct drm_scanout_buffer *sb);
> +int intel_parent_panic_setup(struct intel_display *display, struct intel_panic *panic,
> +			     struct drm_scanout_buffer *sb, struct drm_gem_object *obj);
>   void intel_parent_panic_finish(struct intel_display *display, struct intel_panic *panic);
>   
>   /* pc8 */
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
> index f55a6a2f7dd1..75eae994433d 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
> @@ -1590,7 +1590,7 @@ static int intel_get_scanout_buffer(struct drm_plane *plane,
>   				return -EOPNOTSUPP;
>   		}
>   		sb->private = fb;
> -		ret = intel_parent_panic_setup(display, fb->panic, sb);
> +		ret = intel_parent_panic_setup(display, fb->panic, sb, obj);
>   		if (ret)
>   			return ret;
>   	}
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_panic.c b/drivers/gpu/drm/i915/gem/i915_gem_panic.c
> index bb26a0ece176..001ccfbf7ab7 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_panic.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_panic.c
> @@ -5,7 +5,6 @@
>   #include <drm/drm_panic.h>
>   #include <drm/intel/display_parent_interface.h>
>   
> -#include "display/intel_fb.h"
>   #include "display/intel_display_types.h"
>   #include "i915_gem_object.h"
>   #include "i915_gem_panic.h"
> @@ -98,10 +97,10 @@ static struct intel_panic *i915_gem_object_alloc_panic(void)
>    * Use current vaddr if it exists, or setup a list of pages.
>    * pfn is not supported yet.
>    */
> -static int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb)
> +static int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
> +				       struct drm_gem_object *_obj)
>   {
>   	struct intel_framebuffer *fb = sb->private;
> -	struct drm_gem_object *_obj = intel_fb_bo(&fb->base);
>   	bool panic_tiling = fb->panic_tiling;
>   	enum i915_map_type has_type;
>   	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
> diff --git a/drivers/gpu/drm/xe/display/xe_panic.c b/drivers/gpu/drm/xe/display/xe_panic.c
> index bebb21d617f0..d7f456eec597 100644
> --- a/drivers/gpu/drm/xe/display/xe_panic.c
> +++ b/drivers/gpu/drm/xe/display/xe_panic.c
> @@ -84,10 +84,10 @@ static struct intel_panic *xe_panic_alloc(void)
>   	return panic;
>   }
>   
> -static int xe_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb)
> +static int xe_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
> +			  struct drm_gem_object *obj)
>   {
> -	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
> -	struct xe_bo *bo = gem_to_xe_bo(intel_fb_bo(&fb->base));
> +	struct xe_bo *bo = gem_to_xe_bo(obj);
>   
>   	if (xe_bo_is_vram(bo) && !xe_bo_is_visible_vram(bo))
>   		return -ENODEV;
> diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
> index 39991afeb173..b0362e231d84 100644
> --- a/include/drm/intel/display_parent_interface.h
> +++ b/include/drm/intel/display_parent_interface.h
> @@ -167,7 +167,8 @@ struct intel_display_overlay_interface {
>   
>   struct intel_display_panic_interface {
>   	struct intel_panic *(*alloc)(void);
> -	int (*setup)(struct intel_panic *panic, struct drm_scanout_buffer *sb);
> +	int (*setup)(struct intel_panic *panic, struct drm_scanout_buffer *sb,
> +		     struct drm_gem_object *obj);
>   	void (*finish)(struct intel_panic *panic);
>   };
>   

