Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGrlKl8cDGpJWQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 10:16:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15304579CD0
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 10:16:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8781510E054;
	Tue, 19 May 2026 08:16:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin.net header.i=@ursulin.net header.b="BF8XNCO6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ECB610E054
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2026 08:16:28 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id
 5b1f17b1804b1-488ff90d6c7so23570505e9.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2026 01:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin.net; s=google; t=1779178587; x=1779783387; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=KOEE/PRccoAJYCTGLVRF3V8r6JJZoXF78TzvXmadEag=;
 b=BF8XNCO6pXT08Y5CYm6Ta84WgLrMpcIOFJurlVCfuFsyebBmMdjWJucswj5SmLo/fY
 Lgwfm1baonRm6/dW06jIKE3i2InQu8EyWdbUmROyok810tqP5/p6ZvDYRtyKhW60CQyM
 3TQLwRJBAmR0O2yU2MoHv0qH1ewFm8qliX2eoPkI19LzbUE5jGONp5Ob7uwSSxOJskBG
 e9Uh3/YjfeSrHQ6zEGFeixeeTCAfRb0QumDSLRLXq9hw5T/7E3dBwPBuqF7J2ha1bKbQ
 2bOt5T9LqS50TU+y1dZiW1F2pmfybDwh9K1LUhESBAnojwz7FfCBnMU6u9zOZhJofgjB
 FReA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779178587; x=1779783387;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=KOEE/PRccoAJYCTGLVRF3V8r6JJZoXF78TzvXmadEag=;
 b=YnEOVq7Ej3iK9Nnc/KXD+ylHWn856QK2rbB7D9ys4zazamYTzRUUSvBPrn1bdC160P
 A/ghPErxVVcuAEq/2agHQmRHvGaD2+hAIdefIJFZuJd7iX9kyGHkn7nMtHcPgWIjEsSk
 mm5/ZG8TE54cUtJ/jenQnLx0g5wWP9D0iGsfu67i9IrPdHLXbwLGyj1JXmjgLXzrK+Jz
 YJ4tkUZ3Z7BhsmgBr15quWRsq6pLW2QX+DzHWA+vUpVGaR/er6qv9isTjJPXPApOVcF3
 rpyAQmELw+aqYJPvIC1nBNkAZ04AW9IyikZVn/9TaxzhfO/Kn8+e/FO6f5ziAIU3ND88
 SYAw==
X-Forwarded-Encrypted: i=1;
 AFNElJ+ypYb5+CkjF69aMzR8J7U0NTibCrIrr5LV8OZ4YegfQKcEAnvtvR3pX5jfZr9qpEgMIZBMSRFSb9s=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyIQQKy5h9zklmVg3cT5sI0qxjNXhY7fOf0RyNpU8MidmmQgIf1
 raMPxqzQIvWTVchA/4kilMcpVggS5R0Qo7KNLrubIjN3EoDfUlf1CQ+ILl5HvYXbvxg=
X-Gm-Gg: Acq92OEqV9V249rJSNsb/8AaUEGMvng+Ys9jm70U3eRCaPigPkwkv+KR8W6vS/uLC07
 PUddbBmYrdzAcQkxr/JTNNaxwRQDexphJa+UZWWbZImxUaaipF4b/Pzxn1/e9pW2Y5r+rPBI4g/
 NWCPpml29Sq4lrYGYq0f1WQZbUpHtoRB/beS3qV8G+2KcHim/6yT1v1MIOTeYOuxt01w2n0R3dh
 sc0ZCLY2Z+y9rYwwSiVWOyp+KhB/eYQiijbieTJuUvZzdBaciyDYkMJ+ozIp7Dg+tBuSpxMd6Nj
 5gkl2hC8awQ2dN8ClMFoBel2T3TYmw5sC9T+jm/Hrafi1Jnh7KF1GUolJVQCrNs5eQQfNPJSd+W
 P1kbZGOkW5n+cgZ7UTVDYqLT749c9GBG04fbzFesjir2bwoKFdr3yPcWKTD1YTOZzeiwUlWCjYI
 hHSBMltJzyqvd0Xx0DwNzdZUJIMDquh5CW9LFIE89smDmtH59oUlx/2oI7IVRwId0=
X-Received: by 2002:a05:600c:4fc9:b0:48a:5821:5ffc with SMTP id
 5b1f17b1804b1-48fe60e473bmr254612155e9.2.1779178586441; 
 Tue, 19 May 2026 01:16:26 -0700 (PDT)
Received: from [192.168.0.5] ([90.240.106.137])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-48fe57944c1sm339529205e9.7.2026.05.19.01.16.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2026 01:16:26 -0700 (PDT)
Message-ID: <35bbd887-68ea-45c4-a7aa-19cd74c6aa5a@ursulin.net>
Date: Tue, 19 May 2026 09:16:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] Revert "i915: don't use a vma that didn't match the
 context VM"
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>
Cc: Direct Rendering Infrastructure - Development
 <dri-devel@lists.freedesktop.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20260518092941.47247-1-joonas.lahtinen@linux.intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20260518092941.47247-1-joonas.lahtinen@linux.intel.com>
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[ursulin.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:joonas.lahtinen@linux.intel.com,m:dri-devel@lists.freedesktop.org,m:torvalds@linux-foundation.org,m:ville.syrjala@linux.intel.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[ursulin.net];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[tursulin@ursulin.net,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ursulin.net:+];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linux-foundation.org:email,igalia.com:email,ursulin.net:email,ursulin.net:mid,ursulin.net:dkim]
X-Rspamd-Queue-Id: 15304579CD0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 18/05/2026 10:29, Joonas Lahtinen wrote:
> This reverts commit 5401b9adebc9e5f68df58226f51493ef0e6ceb4d.
> 
> Superseded by a13edf9b92fc ("drm/i915/gem: Drop check for changed
> VM in EXECBUF").

If I was able to follow this accurately, I would probably simplify the 
commit along the lines of:

"""
Drop the else block which was made a no-op in commit
a13edf9b92fc ("drm/i915/gem: Drop check for changed VM in EXECBUF").
"""

You can edit while pushing too:

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

Regards,

Tvrtko

> Link: https://lore.kernel.org/intel-gfx/CAHk-=whfUM8y3PoFfT21+guKWK-mJmAE=8uLzOT+7HGv5NtqSw@mail.gmail.com/
> Cc: Linus Torvalds <torvalds@linux-foundation.org>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Tvrtko Ursulin <tursulin@ursulin.net>
> Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 05997e8bbb29..1f303d4eaa4d 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -898,8 +898,6 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
>   		vma = radix_tree_lookup(&eb->gem_context->handles_vma, handle);
>   		if (likely(vma))
>   			vma = i915_vma_tryget(vma);
> -		else
> -			vma = NULL;
>   		rcu_read_unlock();
>   		if (likely(vma))
>   			return vma;

