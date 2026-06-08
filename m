Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jQ51KqZ7JmrNXAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 10:21:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D271653F69
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 10:21:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=T7zYkdro;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=redhat.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 973A510EF01;
	Mon,  8 Jun 2026 08:21:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 684F710EF02
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2026 08:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1780906914;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TvKi7hHK4zU3ZCrYZZQvS5ylH8i61p4Oua/8vay2eF8=;
 b=T7zYkdro2Z9y93zgA+lPltGRM1xz43ViWvswKwDAPQL1fwl3dlY1E541jpjNoGsTKiBN1G
 Z3QGa68jq2SaO04ch148JVroru6RsK/qus/NdTK5r766c89Vvr6dbYsATU2GVGlHzBrPzc
 mz8kg7oYHCitq4rMI6ppa9R4T9I+CzI=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-113-f7FPsryPN0a7W6CkIRGAXw-1; Mon, 08 Jun 2026 04:21:53 -0400
X-MC-Unique: f7FPsryPN0a7W6CkIRGAXw-1
X-Mimecast-MFC-AGG-ID: f7FPsryPN0a7W6CkIRGAXw_1780906912
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-beddb45de58so349448866b.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Jun 2026 01:21:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780906912; x=1781511712;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=TvKi7hHK4zU3ZCrYZZQvS5ylH8i61p4Oua/8vay2eF8=;
 b=pk0aPjxT4O0HZPI7ezZwZ8tx06I0m1Z1dyMBFtUK5i8qHv15B9ZMGY1FykNMwTWOfn
 z/clT8agl8PijBSl6aBtl94r0fV8mpBbmaavO/3MbkANvZxfgpgtKrDL/g8V4tZ1M5cp
 8nDNNvDfdu+0ZbMi3bFBVNpVngjHLobcUm6Q3/uTv0ei+EUVmsE4weFDhTJqQ/ZqTMlr
 8qUN5R2biN5+76ScwxikQM7X8jUpMUtgPfyt5RAfE15+Vhpo6cLNZP8wNx/QiPUqo1Ql
 R/2q0vjf29J7gPuFvSVVWkqEh+HQb8twZS2rD7v5zowJI/ezXoBJMRWxjuFCHdekGvtl
 5VBQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ/Hz+jdMjZWLECHY6+cDHmBO1rNVyiNuTy4gDDRD5hspoGen59Pc7+mpKFAfKA+UY3Um9RBA9j8J0M=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yze3VyPETNmh6VKhQz3s7ZAMo4lkU88Dp3g3rBB4gOkve0b2VDo
 alKEIeZFOINNPxDslNNxgF8MwMczfk+zYG9hAu/mQL+c+pAEsD3lxIUOtReH4K0WgQ6FZIdMAUt
 rn1Uq+NRDzfs1szaRkSIlI2PqTrgrFu60Gy/AxSTpvUv5rAV6b2+OOCYBNaGgnIrHJgnzkpLa4O
 2BUw==
X-Gm-Gg: Acq92OFCZlm/yadCN0rzClpx1BqZrKte69s2pRPBsljhaAK6I0ck5SsAjHPXNiHDxPZ
 LVFfj2V0KPA5veomdNxv6xKtYkHTWXohZOH7sznpESlsZENL02kT0yXWlMWNUzfAHZjLREvOWbH
 TM50Z4zDgM7CffB7ehvyidGLThOTeUCEj/muIRwbnhQXjAJ6PLN57nWX0/BEA6Jd0wpu1w9cZng
 KRK9bH6vPtC9Rwl77pNBds1kNl1FojZ4TR0bAQvHPVecTn6vd1MPl3qRrumvb7OQCYy4YqiM+U8
 jymBNaHMFm1Li6jiw3itSIiVR5WB1sBzMaXm9UBWHy44B2pkYT/AAw+YQ2Vn1irsq2+F/T0acei
 qe/ImND8KrPLsPCXgmk8UdZaBu/4Z6vR9mcVHl71qBqM77ijiGtUJykHfOsuhOFtYfJ/9ai/v
X-Received: by 2002:a17:907:1ca9:b0:be9:45e8:1767 with SMTP id
 a640c23a62f3a-bf370c61226mr781630866b.19.1780906912034; 
 Mon, 08 Jun 2026 01:21:52 -0700 (PDT)
X-Received: by 2002:a17:907:1ca9:b0:be9:45e8:1767 with SMTP id
 a640c23a62f3a-bf370c61226mr781629966b.19.1780906911490; 
 Mon, 08 Jun 2026 01:21:51 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:c:37e0:ec71:10ae:399e:d3c8?
 ([2a01:e0a:c:37e0:ec71:10ae:399e:d3c8])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-bf2f2da4447sm549097466b.10.2026.06.08.01.21.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jun 2026 01:21:51 -0700 (PDT)
Message-ID: <2fcaa54c-7e80-4107-a38d-950c54f2b2cc@redhat.com>
Date: Mon, 8 Jun 2026 10:21:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] drm/i915/panic: remove the extra layer from panic
 hooks
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
References: <cover.1780394867.git.jani.nikula@intel.com>
 <69a776c2951b3d1f81d8eb3870cbc7fda4d1c6e0.1780394867.git.jani.nikula@intel.com>
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <69a776c2951b3d1f81d8eb3870cbc7fda4d1c6e0.1780394867.git.jani.nikula@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: LbtzXF0Ep9n3Hoix02rllUaB3Y_I-JYIePJeYNxjS70_1780906912
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
X-Rspamd-Queue-Id: 0D271653F69

On 02/06/2026 12:09, Jani Nikula wrote:
> The extra layer in the panic hooks is useless. Remove it.
> 

Thanks, it looks good to me.

Reviewed-by: Jocelyn Falempe <jfalempe@redhat.com>

> Cc: Jocelyn Falempe <jfalempe@redhat.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_panic.c | 30 ++++++-----------------
>   1 file changed, 7 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_panic.c b/drivers/gpu/drm/i915/gem/i915_gem_panic.c
> index 14ea45dcdd8f..bb26a0ece176 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_panic.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_panic.c
> @@ -98,9 +98,11 @@ static struct intel_panic *i915_gem_object_alloc_panic(void)
>    * Use current vaddr if it exists, or setup a list of pages.
>    * pfn is not supported yet.
>    */
> -static int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
> -				       struct drm_gem_object *_obj, bool panic_tiling)
> +static int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb)
>   {
> +	struct intel_framebuffer *fb = sb->private;
> +	struct drm_gem_object *_obj = intel_fb_bo(&fb->base);
> +	bool panic_tiling = fb->panic_tiling;
>   	enum i915_map_type has_type;
>   	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
>   	void *ptr;
> @@ -135,26 +137,8 @@ static void i915_gem_object_panic_finish(struct intel_panic *panic)
>   	panic->pages = NULL;
>   }
>   
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
>   const struct intel_display_panic_interface i915_display_panic_interface = {
> -	.alloc = intel_panic_alloc,
> -	.setup = intel_panic_setup,
> -	.finish = intel_panic_finish,
> +	.alloc = i915_gem_object_alloc_panic,
> +	.setup = i915_gem_object_panic_setup,
> +	.finish = i915_gem_object_panic_finish,
>   };

