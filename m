Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ga75A9l7JmrZXAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 10:22:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91176653F92
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 10:22:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=L6UKOkWb;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=redhat.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C64710EF06;
	Mon,  8 Jun 2026 08:22:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE0C510EF06
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2026 08:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1780906964;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9STVIInTtPaSxierXXSltgKQhrdbFwvIMh0XKlqV+RA=;
 b=L6UKOkWbEDHaxaw7349wsoNsXpwhl58ofdDhnN/6uB2lqW7W4VQqX45DEJ9y3VjKLHniGx
 XiiaEjJIabGWAOVyiImHSE6DBnzDMygHci9XSBPGIAkM8tUniUQT13gMV3JxbrrVrhtUHr
 UpKWcqPQIpZneCh1tZKOIhfg09S/sMA=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-151-CFRRUq9bM9CiT8z59qTeTQ-1; Mon, 08 Jun 2026 04:22:37 -0400
X-MC-Unique: CFRRUq9bM9CiT8z59qTeTQ-1
X-Mimecast-MFC-AGG-ID: CFRRUq9bM9CiT8z59qTeTQ_1780906957
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-490ab3f6e55so12245235e9.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Jun 2026 01:22:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780906956; x=1781511756;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=9STVIInTtPaSxierXXSltgKQhrdbFwvIMh0XKlqV+RA=;
 b=DWC4XezYaciR9MQvaGFqtpDY4pVM9VSWaHEcXR2J0qAFCEQsT9LPp9Kp03IDCuZQtI
 9tgyc/bk78G13VVKz0j+Bq/nQf//wqrzfyTleTctSJkxsAvIO47U+QAPKN8uWS9qLjzO
 xNHHYJJ4m7niBRDstc4JlG78cM+SQ36C4AVRa5hT71rIr1VvSEjYs5OHiIxVcs8PZ89w
 M0yM/7uxe+KSnhgN1TO5x32DWawUHrD6uHAzWlk8ykJvR/rejnWZ8f/L2LND2wHCmaxX
 R2UhDx1DZLAr97pnHF3MIYIJfW9kvvRnNkJ7F+6WkRolaVS+lB0cp96ZQNaXoNJGDyGs
 7Tmg==
X-Forwarded-Encrypted: i=1;
 AFNElJ+meCi2BXz8tXWeNijTvKiSBDTMitLLbbg2KWvFiTikvA1r3zu1HEE0q5kEtYudiAVdYZRgwuKMk7k=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxjSrfxPnUoC5yXfPykbjpFENK7cCM183WlkxTS8eRYpZv6RSFG
 4FmEIjJ7h4pPFXkqpCSfu3Gnq6VgzoNfzH+qUBIl+suigJQws3OU2wRnOKXE9kGM/SqjKJuXI59
 N+OlK9AkNIDnfzVqcvNcxeudLrXvzReW09vpzbXphVjanEH29xEwntDPnX9s9TABI3GgG19y7Ch
 svbA==
X-Gm-Gg: Acq92OHNYKSrETM8wA2hGX1VPB3pARIt8YQo0SDFd2DV0oOPAAwphbX1U4cntMrBY2g
 XTqHYwLt2ljtKluuUmKmT2im4Qf/wqqypCbb2qDURrwiR/o8gwdqEZ5C2QmYGVH87G9KU+A4b5X
 /shvYZ2Ut0xIdCUmaUFD2jisrLk7pPRJ83B1+kOIA/5lqPfd60Ibvnu45nKgZTfQeci9aawd1e8
 L0hJ3v4NvqWs6L6sq1PfcOOiq67uyfsGNkwnhlltUszlP+xKs6KHudFTtWi4A0K9gN6wW7D66Le
 1xbOz1/dwN8AMThaggz5fQ3mev5xVY+1d+flkkK2O8CspC4z4ihtrZcH+vR41OdHyct3DKhaP12
 vRmf+m0kTHOQ6xD5wapa/ftfZt/0/hvHkVm0TAcZ51dRt55BUwaF2gAzv7U6jzKXaXq2XJXtX
X-Received: by 2002:a05:600c:81ca:b0:490:484b:bf41 with SMTP id
 5b1f17b1804b1-490c2560445mr212703365e9.6.1780906956593; 
 Mon, 08 Jun 2026 01:22:36 -0700 (PDT)
X-Received: by 2002:a05:600c:81ca:b0:490:484b:bf41 with SMTP id
 5b1f17b1804b1-490c2560445mr212703095e9.6.1780906956287; 
 Mon, 08 Jun 2026 01:22:36 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:c:37e0:ec71:10ae:399e:d3c8?
 ([2a01:e0a:c:37e0:ec71:10ae:399e:d3c8])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-490bc3b5b82sm405595075e9.1.2026.06.08.01.22.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jun 2026 01:22:35 -0700 (PDT)
Message-ID: <77726619-47a8-4d3f-b8fd-14b885805be4@redhat.com>
Date: Mon, 8 Jun 2026 10:22:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] drm/xe/panic: store fb bo in struct intel_panic
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
References: <cover.1780394867.git.jani.nikula@intel.com>
 <735c3f18212207db63d71364d6a8569480c81b42.1780394867.git.jani.nikula@intel.com>
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <735c3f18212207db63d71364d6a8569480c81b42.1780394867.git.jani.nikula@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: OLcP-R3PJgaLkl1qcIklBM02jRmmaBu0Ao2rgGbTlVs_1780906957
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 91176653F92

On 02/06/2026 12:09, Jani Nikula wrote:
> Drop the dependency on intel_fb_bo() and intel_fb.h by storing the fb bo
> passed in the setup hook to struct intel_panic.

Thanks, it looks good to me.

Reviewed-by: Jocelyn Falempe <jfalempe@redhat.com>

> 
> Cc: Jocelyn Falempe <jfalempe@redhat.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/xe/display/xe_panic.c | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_panic.c b/drivers/gpu/drm/xe/display/xe_panic.c
> index d7f456eec597..4b86760ec00a 100644
> --- a/drivers/gpu/drm/xe/display/xe_panic.c
> +++ b/drivers/gpu/drm/xe/display/xe_panic.c
> @@ -6,7 +6,6 @@
>   #include <drm/intel/display_parent_interface.h>
>   
>   #include "intel_display_types.h"
> -#include "intel_fb.h"
>   #include "xe_bo.h"
>   #include "xe_panic.h"
>   #include "xe_res_cursor.h"
> @@ -16,6 +15,8 @@ struct intel_panic {
>   	struct iosys_map vmap;
>   
>   	int page;
> +
> +	struct xe_bo *bo;
>   };
>   
>   static void xe_panic_kunmap(struct intel_panic *panic)
> @@ -38,7 +39,7 @@ static void xe_panic_page_set_pixel(struct drm_scanout_buffer *sb, unsigned int
>   {
>   	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
>   	struct intel_panic *panic = fb->panic;
> -	struct xe_bo *bo = gem_to_xe_bo(intel_fb_bo(&fb->base));
> +	struct xe_bo *bo = panic->bo;
>   	unsigned int new_page;
>   	unsigned int offset;
>   
> @@ -93,6 +94,8 @@ static int xe_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *
>   		return -ENODEV;
>   
>   	panic->page = -1;
> +	panic->bo = bo;
> +
>   	sb->set_pixel = xe_panic_page_set_pixel;
>   	return 0;
>   }

