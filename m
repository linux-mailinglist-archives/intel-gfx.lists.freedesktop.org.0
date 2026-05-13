Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEgJH7I6BGoqFgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 10:47:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF4E52FE71
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 10:47:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B2E010E2EB;
	Wed, 13 May 2026 08:47:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin.net header.i=@ursulin.net header.b="BSl/6E2U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 651A910E2EB
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2026 08:47:43 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id
 ffacd0b85a97d-453903ee4adso5613212f8f.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2026 01:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin.net; s=google; t=1778662062; x=1779266862; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=U7frl8/1ENt/jGWZXenOQFuGsG+tS5zouXeHogJzrfM=;
 b=BSl/6E2Uvsx5PmsW2xWngviEdVtfqtFtu1UKXaKDSEPknlmPFjtohjHu6lYajQWpTy
 EyezU69i1qhfjdGJ8YqeDzWWC3ixMl3zUyo0HBs8+QsLD8vbN0ByNphCN9VTIdNSUp36
 CxBcYdjYL48SlLYWX0oqivDZ69Y/LesnCbPrwdqaoKB0bGzABi3ijH8FPFC9iRuuNpPL
 p5purKgNY9dfvYfKaPE3h1q5hRYvdhqX91OEwxzPl2i+N0nSuqJs0Bk8qQqoFAI9L2Zh
 W5xTMPH+nhcKq4Do6XDfTgDJU6qvLncLnW/x1nX8N9xj+Uh8vF2Op+0J4Ee5CvAReyOu
 8zmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778662062; x=1779266862;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=U7frl8/1ENt/jGWZXenOQFuGsG+tS5zouXeHogJzrfM=;
 b=SGLwzAcNx0lki2Jz+AMFrzo5J5HCt7Sa+r7XWm7mDT0ZZaoHItrlrdZvKChJTYZMLX
 2lxJBgCqG4Rv71pA9rP4HDcNUgy/v79oIg12VAPIV9+lwfB08KTSpJa1hqmChXug18RU
 2u8X5Pf4IIKVMk0eR15EyYnH86xdpJzNPf5LOvnu/pL09GItzUFVps8f4F9c4Uy8g/JE
 ktouU35sYbWpTso8aE2S7Asd8r9B1JQcD8LZbab8+QjFSEsi7HBT1I6BXglZKu75AwYj
 +livgzTIObKhFgAjiC3M5460RCMN6QhtuKLy+ltnaRK3RWJCzvw8oyuaJs+xuXecl2+e
 lYBg==
X-Forwarded-Encrypted: i=1;
 AFNElJ9uiHGQVIb6Z3o3qwoY2vRmCFd0w/3yWjQlQATbeCv7IWgLBWF/msqnTCNWVkcF6YGU489OpI5qd3Q=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzxEHPchTnD0qgjgdvlE/d5LZet55E9G3gQagRDcnAg/Tp6DCqR
 603VU4IwCwoLObDGon8vd3RKN2rqkK5pmBLPBwihCLDANN+EtAUyNK6+X5zkFhqrpdk=
X-Gm-Gg: Acq92OFwgzsjQ+oU2d/unvGd3v8xBuOwjdTImTVD1zk5FQSoHxAvjhsab9IopmE+YPc
 e6Ae8RnaCDtCH02Ll/8QQPBKIHn1ARjj0TaRwP9DsSPhVVm2SEJxA2u7GAeV/qvIRm+QDJ9OIUZ
 7Io4E4fC69H+9F1NSrzmCpFCcDJ2G8IOGxGYOMZVPlBSAC/vXXz1i6CmodelXVXBeZXL3Lh+oQ2
 wnjpMoMSd6VWtjCTsqd/ok0vDlwRYv6Fb3T5HzTeGcZ8b8ohTbMrwNg3QEketgo827q3Q4Y7Vza
 DfVaGBFaN6bmo7mdWFuK5kvxFFUYAk2f9xIsxpwXvkZ99n/7ChuWpHqCcsprq4axh/83TxmIJtN
 V/Lu+a1QRtUAc8mRwA6a0ArLcIWPdWPo3GlLptPJaDdvI9W+2TA0c6M3B1GNPFqAteB0dYK6xVP
 D33Se6V7pU63ik0HMlJtAl8ERD83026sruLlIzT7Ip95oF
X-Received: by 2002:a05:6000:2485:b0:452:3677:3fb3 with SMTP id
 ffacd0b85a97d-45c57edf72fmr3310268f8f.1.1778662060859; 
 Wed, 13 May 2026 01:47:40 -0700 (PDT)
Received: from [192.168.0.101] ([90.240.106.137])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-4548bb51d40sm38047611f8f.0.2026.05.13.01.47.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2026 01:47:40 -0700 (PDT)
Message-ID: <c9c1270b-f724-45dd-a66d-f7b30f6c6087@ursulin.net>
Date: Wed, 13 May 2026 09:47:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: skip __i915_request_skip() for already signaled
 requests
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: andi.shyti@linux.intel.com, krzysztof.karas@intel.com,
 stable@vger.kernel.org
References: <fe76921d35b6ae85aa651822726d0d9815aa5362.1776339012.git.sebastian.brzezinka@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <fe76921d35b6ae85aa651822726d0d9815aa5362.1776339012.git.sebastian.brzezinka@intel.com>
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
X-Rspamd-Queue-Id: CFF4E52FE71
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[ursulin.net:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.brzezinka@intel.com,m:andi.shyti@linux.intel.com,m:krzysztof.karas@intel.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	DMARC_NA(0.00)[ursulin.net];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[tursulin@ursulin.net,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[ursulin.net:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url,ursulin.net:mid,ursulin.net:dkim]
X-Rspamd-Action: no action


On 16/04/2026 12:31, Sebastian Brzezinka wrote:
> After a GPU reset the HWSP is zeroed, so previously completed
> requests appear incomplete. If such a request is picked up during
> reset_rewind() and marked guilty, i915_request_set_error_once()
> returns early (fence already signaled), leaving fence.error without
> a fatal error code. The subsequent __i915_request_skip() then hits:
> ```
> GEM_BUG_ON(!fatal_error(rq->fence.error))
> ```
> 
> Fixes a kernel BUG observed on Sandy Bridge (Gen6) during
> heartbeat-triggered engine resets.
> ```
> kernel BUG at drivers/gpu/drm/i915/i915_request.c:556!
> RIP: __i915_request_skip+0x15e/0x1d0 [i915]
> ...
> __i915_request_reset+0x212/0xa70 [i915]
> reset_rewind+0xe4/0x280 [i915]
> intel_gt_reset+0x30d/0x5b0 [i915]
> heartbeat+0x516/0x530 [i915]
> ```
> 
> Guard __i915_request_skip() with i915_request_signaled(), if the
> fence is already signaled, the ring content is committed and there
> is nothing left to skip.
> 
> Cc: stable@vger.kernel.org
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/13729
> Fixes: 36e191f0644b ("drm/i915: Apply i915_request_skip() on submission")
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_reset.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 37272871b0f2..b728a5171e93 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -133,7 +133,8 @@ void __i915_request_reset(struct i915_request *rq, bool guilty)
>   	rcu_read_lock(); /* protect the GEM context */
>   	if (guilty) {
>   		i915_request_set_error_once(rq, -EIO);
> -		__i915_request_skip(rq);
> +		if (!i915_request_signaled(rq))
> +			__i915_request_skip(rq);

I spotted this patch in drm-intel-fixes today so some questions.

If the request is okay why is setting error and marking it guilty left?

1)
How confident are you of the Fixes: target? That patch is six years old 
but the Closes: issue is only from last year? Do internal Intel log have 
evidence bug was there in between those two dates? How sporadic was it? 
Were you able to verify the fix easily or with difficulty and how?

2)
Is the issue only that the order of setting the error code and the bug 
on got swapped?

Ie. before 36e191f0644b

__i915_request_reset
  -> i915_request_skip
        GEM_BUG_ON(!IS_ERR_VALUE((long)error));
        dma_fence_set_error(&rq->fence, error);

After:

__i915_request_reset
  i915_request_set_error_once
  -> i915_request_skip

If that is the case commit message should have been clearer on both 
questions.

I will hold off the drm-intel-fixes pull request until we can clarify 
the situation.

Regards,

Tvrtko

>   		banned = mark_guilty(rq);
>   	} else {
>   		i915_request_set_error_once(rq, -EAGAIN);

