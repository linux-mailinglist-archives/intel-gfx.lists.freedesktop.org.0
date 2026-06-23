Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7vNtJHUuOmoE3gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 08:57:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E91E66B4AB7
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 08:57:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ursulin.net header.s=google header.b=DuktT0+k;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=none
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88B5310E32E;
	Tue, 23 Jun 2026 06:57:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F21E810E32E
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2026 06:57:54 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id
 5b1f17b1804b1-490c0c92cffso35941695e9.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2026 23:57:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin.net; s=google; t=1782197873; x=1782802673; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=feZjfcFBvum8D+2bun6oXD7GnA4F24j3P1Ry0Q6vvMo=;
 b=DuktT0+kYGQxcArdvdzmfyjdhHp1YGY8oVysaUzeiC32PFqawuITpNprYpO8mpxJmo
 lhdlSCOFgGvPfuWfvOdfdQbh8d35nsLQzzUD6f5DZ0aCaYPTfGutZLZMQ5e1STyF3ukv
 l9P32bTsjPtxYPxkT7Wub3jNCWspMRJnPG24dyUuzNhtf7HZ1DQHsBOlk2fSgE9UUCqF
 xzN2/4TEIiwMuFOgP6XGEW7r5aLD5KsEiOefMUl/J3PbIeOYpynlQVfdR2yuhfC+HgPn
 n9uNHiNlKurOtuJPcfXcXXXCoWyz1y/NNSP1kb8AMNnP9uEXuhf2xNeRmUDBbZplASJN
 /aig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782197873; x=1782802673;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=feZjfcFBvum8D+2bun6oXD7GnA4F24j3P1Ry0Q6vvMo=;
 b=K0QtPnctg7JUFFNqKSF2jpVOZWK9BYy0Pn+R+GxKyvidP8tPzpZc4Y61+dpFIZjzPc
 2acLVDASpfmyVnjIh6YTJq8adLQqGCmhIkDPkwwBFHJN8ugLOx5FLtSMguu5T98neFex
 GWFxl7SGdALd5e1nR4UIyTrOW7Gm7ApLKzel09eM6lOft4zgQxIKG3HBYvewRzWnSTvr
 eoY5BCB/RWWVkq7Dmg7VY8Xe17PDcN6/qp6xempMoToVfuwdr6XilOjzXgmuJfPandcN
 hRi+/T5RGrIWWHxr2u20rJZBKA3DLYq1v9marc38K1MosQMRiRNZmxYtrbe/uzWOBCdD
 HN4w==
X-Forwarded-Encrypted: i=1;
 AFNElJ/fxa+6rxwsBPWGCg5+cVlwOAc6r7dD7gfcDWJCfaejlhLtSqc03DAJLMnBU2vzEWyZAaBe4vBEtkc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzhU64EidYyavimG86NkO+hODaCroZwnNeiUqznyR5IxPjvkD20
 Nnap36YCUZppLtXNoqvMs4GsbIA82Upr+ak+T7AKhMJWHUJFJ18A6wJqtGATndRWhQs=
X-Gm-Gg: AfdE7cmnq+pM4AbHPe8klS0nXXyxEyeIcXKc3B1y+79jZHwlCtkWb9AzDfYQBKOMyV3
 BGqZHKhZAB9LNQiHCP6sMTtvQIiFKlxd6+lnaJMWn/P6zDDeyAOLU76bWjJubiQusdc9vS5+EEG
 NbqWs7QvgWOYIgFKsZO2ivFF3925tZ6d1jEJiCWriQBkRy7zn1SdSJGgwR8ZrTssBxkLrehLill
 3Fz5h2K8K+QyWJ9EEUVGJixNqABydetjhDneP0MKzENV7D88OX9aIEWzDsnwfONkRWKpXDjOme6
 OXTxNqn/3y8wa3aHSvCpbZWH7ueAhRVcGC0YYna/dDg+oDIwVVkf1bgfU4JM7ge24nCY3pXaRLt
 KhWjVnaLsKcX67wrImsnzCQhwfx+bW1mAqyzLJGyNt1jmce9g0OpSEIxMzn2hlzx+5zynHkG06a
 TnCiLaL9mUETHQDdXiildvd5Gl3j59vL1Y5A==
X-Received: by 2002:a05:600c:c059:10b0:490:bb45:79da with SMTP id
 5b1f17b1804b1-49240e427f0mr214853585e9.13.1782197873034; 
 Mon, 22 Jun 2026 23:57:53 -0700 (PDT)
Received: from [192.168.0.116] ([90.240.106.137])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4924923392dsm517161215e9.2.2026.06.22.23.57.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 22 Jun 2026 23:57:52 -0700 (PDT)
Message-ID: <a6866cba-db02-47b2-a31e-8828179d470d@ursulin.net>
Date: Tue, 23 Jun 2026 07:57:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/gem: Add missing nospec on parallel submit slot
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>
Cc: Martin Hodo <martin.hodo@intel.com>,
 Matthew Brost <matthew.brost@intel.com>
References: <20260622132539.165558-1-joonas.lahtinen@linux.intel.com>
 <178213767858.188877.6438226827707234635@jlahtine-mobl>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <178213767858.188877.6438226827707234635@jlahtine-mobl>
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_DKIM_ALLOW(-0.20)[ursulin.net:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:joonas.lahtinen@linux.intel.com,m:martin.hodo@intel.com,m:matthew.brost@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[ursulin.net];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[tursulin@ursulin.net,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[ursulin.net:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E91E66B4AB7


On 22/06/2026 15:14, Joonas Lahtinen wrote:
> (Correct mail for Tvrtko, dim fixes not handling .mailmap?)
> 
> Quoting Joonas Lahtinen (2026-06-22 16:25:39)
>> Add missing Spectre mitigation for userspace controlled parallel
>> submission slot.
>>
>> Discovered using AI-assisted static analysis confirmed by Intel
>> Product Security.
>>
>> Reported-by: Martin Hodo <martin.hodo@intel.com>
>> Fixes: e5e32171a2cf ("drm/i915/guc: Connect UAPI to GuC multi-lrc interface")
>> Cc: Matthew Brost <matthew.brost@intel.com>
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_context.c | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> index 6ac0f23570f3..aeafe1742d30 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> @@ -613,6 +613,7 @@ set_proto_ctx_engines_parallel_submit(struct i915_user_extension __user *base,
>>                  return -EINVAL;
>>          }
>>   
>> +       slot = array_index_nospec(slot, set->num_engines);
>>          if (set->engines[slot].type != I915_GEM_ENGINE_TYPE_INVALID) {
>>                  drm_dbg(&i915->drm,
>>                          "Invalid placement[%d], already occupied\n", slot);
>> -- 
>> 2.54.0
>>

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

Regards,

Tvrtko

