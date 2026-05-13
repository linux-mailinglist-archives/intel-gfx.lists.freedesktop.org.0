Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHG8L4yUBGqrLgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 17:11:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 240C9535D08
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 17:11:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9020410EF10;
	Wed, 13 May 2026 15:11:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin.net header.i=@ursulin.net header.b="U8Grwpqx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DAE310EF10
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2026 15:11:04 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id
 5b1f17b1804b1-488b0e1b870so116130595e9.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2026 08:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin.net; s=google; t=1778685063; x=1779289863; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=7xx7YpaJm7o+t/t0AKRTj9xeoYgQ9FQh5c3bwuIiEQc=;
 b=U8GrwpqxtEmRapuEh3i7hl1etcwrGLnmpraOEx7goEDWGirMxTNMUoL627gSta+TZD
 MILD9vZ9r5Zet2FpE/ToHUIU8BtXKdh1jPWuirV9IDX46SDeTO9/01pw7iSo42IS0DwC
 7EwCfbCBwrDSPJ85HFu78M3JkGB1LamH3an2sZ28K8rObqymXsbsQfBEbmA8XO247VPP
 MXS46Gl++wJ57p7X9gTE5lvKa/kq1a4r3PI+gR/mBgbMrgOkSjjYWXK2UhZl4gWwqvmM
 Y/KAsUEgeWvehqcFZcv+ql5fW+LW8HKHwe+aomnfzlM2MvmoFxX6USNP+bhlT0G1aWfo
 nY4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778685063; x=1779289863;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=7xx7YpaJm7o+t/t0AKRTj9xeoYgQ9FQh5c3bwuIiEQc=;
 b=S6p+/IsqwJmiBL+cqmjpq7oHnbMlgu65sHs59+Ptw6HHuKs6KISNY3pHC1cp6FXWoB
 ieurj66M6OKXDjlu/SgSKpti6vFUVIszvED5amkOCXfujRavvmlsp0WSEkpAmC9YVL38
 /d1r+Br6JDFnm3b7Xd7BOIanQNkhb1PZeSMPAwUhLNYg7cQvkigZvcO0My70n4kGvKvo
 +nPmqM1Cx/nMJuF0Z68p7xzj/GNhxU+UCFLA4LR9bufqLlUw7wxp6kDSXKzIU9AtJ7x8
 2E+Wmnfej2N/TKpForNBDjFLeopu90PBAe3NGRhIOkXnACf+wby3696NfJhNrrlg0Z5O
 pxMA==
X-Forwarded-Encrypted: i=1;
 AFNElJ/KGjbVKxVS717NULEj24485YWGBIs9UX2KM4B3IPxzhybxg/dnGSO3OwkMoOKRC7XqjgGZvJuCqtc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwV8ugThuIIJ91KvULTqTQBC1BXZHBEnX5JPX+ILNhe4STiQDaK
 nrfjFN0B50odu0EGRiM3PbNAbL/+s20xzgffnTclhCh3fVEZk1btJDzVvBHKr8eJaz4=
X-Gm-Gg: Acq92OEsC3cjW3UqGMXl/00PGkf6c4Hj+Ys1Q3fKjed9Ov+YkuDsVw/8Alr7zwbpc++
 mza+fmFDGDpW+BbTA6NVzd1bwbIdBOprNiO7lOGD1kGhUMnzAHkKZ1QGQt7L312+ea6h2b/0msn
 iiz9rQFVYuXL5ibRT2pFrYOnnCFE0nOwL+rUjgQILkMZyelcy0Qchdjid/S9ldGlDfkwyAuLzev
 GNbe6PTuIN8oV7IPLm5PKeyH3oKATmYJs8L6G5CnO+TcOX/pcXZA6Sv6vpZ+3aOc1bcpd/R4Uao
 /MkvkummHQOAMRtZcuMmZ32Q8r3SLnQ/+oTw2zyvxVzk+bRpZZhKdQFamDAe/VBy5esCgHGytr9
 6p1HtAg4McD7MV46XtXWj3ZdmfL6m+X5taZR/W8HuONpk/HKjys43qT34MpQgfNgMlbouRhsbKC
 CktHjDEy5BhXXkRhHGN1PuzL5+aiKd+4LubOYn1ynQMemI
X-Received: by 2002:a05:600c:a31b:b0:488:b187:3c with SMTP id
 5b1f17b1804b1-48fd5b4f6cbmr13108955e9.14.1778685062938; 
 Wed, 13 May 2026 08:11:02 -0700 (PDT)
Received: from [192.168.0.101] ([90.240.106.137])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-48fce05e45esm55186845e9.4.2026.05.13.08.11.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2026 08:11:02 -0700 (PDT)
Message-ID: <9186ca2b-86be-4000-8903-0e64a5245280@ursulin.net>
Date: Wed, 13 May 2026 16:11:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: skip __i915_request_skip() for already signaled
 requests
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: andi.shyti@linux.intel.com, krzysztof.karas@intel.com,
 stable@vger.kernel.org
References: <fe76921d35b6ae85aa651822726d0d9815aa5362.1776339012.git.sebastian.brzezinka@intel.com>
 <c9c1270b-f724-45dd-a66d-f7b30f6c6087@ursulin.net>
 <DIHIPV1FJITR.1FJEZMGRDSR7I@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <DIHIPV1FJITR.1FJEZMGRDSR7I@intel.com>
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
X-Rspamd-Queue-Id: 240C9535D08
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
	FORGED_SENDER(0.00)[tursulin@ursulin.net,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url]
X-Rspamd-Action: no action


On 13/05/2026 12:38, Sebastian Brzezinka wrote:
> Hi,
> 
> On Wed May 13, 2026 at 10:47 AM CEST, Tvrtko Ursulin wrote:
>>
>> On 16/04/2026 12:31, Sebastian Brzezinka wrote:
>>> After a GPU reset the HWSP is zeroed, so previously completed
>>> requests appear incomplete. If such a request is picked up during
>>> reset_rewind() and marked guilty, i915_request_set_error_once()
>>> returns early (fence already signaled), leaving fence.error without
>>> a fatal error code. The subsequent __i915_request_skip() then hits:
>>> ```
>>> GEM_BUG_ON(!fatal_error(rq->fence.error))
>>> ```
>>>
>>> Fixes a kernel BUG observed on Sandy Bridge (Gen6) during
>>> heartbeat-triggered engine resets.
>>> ```
>>> kernel BUG at drivers/gpu/drm/i915/i915_request.c:556!
>>> RIP: __i915_request_skip+0x15e/0x1d0 [i915]
>>> ...
>>> __i915_request_reset+0x212/0xa70 [i915]
>>> reset_rewind+0xe4/0x280 [i915]
>>> intel_gt_reset+0x30d/0x5b0 [i915]
>>> heartbeat+0x516/0x530 [i915]
>>> ```
>>>
>>> Guard __i915_request_skip() with i915_request_signaled(), if the
>>> fence is already signaled, the ring content is committed and there
>>> is nothing left to skip.
>>>
>>> Cc: stable@vger.kernel.org
>>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/13729
>>> Fixes: 36e191f0644b ("drm/i915: Apply i915_request_skip() on submission")
>>> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gt/intel_reset.c | 3 ++-
>>>    1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
>>> index 37272871b0f2..b728a5171e93 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
>>> @@ -133,7 +133,8 @@ void __i915_request_reset(struct i915_request *rq, bool guilty)
>>>    	rcu_read_lock(); /* protect the GEM context */
>>>    	if (guilty) {
>>>    		i915_request_set_error_once(rq, -EIO);
>>> -		__i915_request_skip(rq);
>>> +		if (!i915_request_signaled(rq))
>>> +			__i915_request_skip(rq);
>>
>> I spotted this patch in drm-intel-fixes today so some questions.
>>
>> If the request is okay why is setting error and marking it guilty left?
> The request can still be guilty even if it already looks signaled
> after reset. The important point is that i915_request_set_error_once()
> will return early once the request is already signaled, so it may not
> actually inject the error. That leaves __i915_request_skip() with no
> error to work with, which is why the guard is needed.
> 
>>
>> 1)
>> How confident are you of the Fixes: target? That patch is six years old
>> but the Closes: issue is only from last year? Do internal Intel log have
>> evidence bug was there in between those two dates? How sporadic was it?
> a
> I’m quite confident the fix is correct, and it should not break anything
> if it is missing some corner detail. This is an extremely rare issue,
> specific to Sandy Bridge, but we know it was present at least as far
> back as 2022 from work item 5774. The bug only shows up when the right
> reset timing lines up, which is why it is so sporadic.
> 
>> Were you able to verify the fix easily or with difficulty and how?
> I verified the fix mainly by code analysis. In the worst case, it should
> not break anything because the change only skips __i915_request_skip()
> when the request is already signaled, and  the ring content is already
> committed, so there is nothing left to skip.
> 
>>
>> 2)
>> Is the issue only that the order of setting the error code and the bug
>> on got swapped?
>>
>> Ie. before 36e191f0644b
>>
>> __i915_request_reset
>>    -> i915_request_skip
>>          GEM_BUG_ON(!IS_ERR_VALUE((long)error));
>>          dma_fence_set_error(&rq->fence, error);
>>
>> After:
>>
>> __i915_request_reset
>>    i915_request_set_error_once
>>    -> i915_request_skip
>>
> Yes, exactly. In the old code, i915_request_skip(rq, error) always set
> the fence error first, before doing anything else:
> ```
> GEM_BUG_ON(!IS_ERR_VALUE((long)error));
> dma_fence_set_error(&rq->fence, error);
> ```
> 
> So even if the request was already signaled, the error was still
> recorded. That is the important difference.  After 36e191f0644b, that
> logic was split into two steps:
> ```
> i915_request_set_error_once(rq, -EIO);
> __i915_request_skip(rq);
> ```
> 
> Now i915_request_set_error_once() can return early when the request is
> already signaled, which means the error may never get set at all. That
> is why the new guard is needed around __i915_request_skip(). The old
> code did not have this problem because the error was set unconditionally
> inside i915_request_skip().

Hmm right, I did not look into i915_request_set_error_once() so did not 
spot it already has the i915_request_signaled() check.

Would it then be nicer if the code was written as:

if (i915_request_set_error_once(rq, -EIO))
	__i915_request_skip(eq);

?

But the above is details. What worried me more is whether with the patch 
there is scope for regressions due not zapping request in a chain, 
depending on timing. TBH I don't remember exactly how the reset flow 
works, especially on Gen6 which was before my time.

Okay, lets have this as is for now and hope it is good.

Regards,

Tvrtko

> 
>> If that is the case commit message should have been clearer on both
>> questions.
> could you tell me how I should send the corrected commit message? Is it
> enough to send it here, or should I send a new version to the mailing
> list?
> 

