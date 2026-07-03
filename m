Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id D3K3GzvwR2p7hwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F857049FF
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=nOtprTXW;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6889510F881;
	Fri,  3 Jul 2026 17:24:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
 [209.85.222.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8911510F48B
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2026 00:35:36 +0000 (UTC)
Received: by mail-qk1-f180.google.com with SMTP id
 af79cd13be357-92e6c4a867cso1326585a.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Jul 2026 17:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1783038935; x=1783643735; darn=lists.freedesktop.org;
 h=content-transfer-encoding:content-type:in-reply-to:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:from:to:cc:subject:date:message-id:reply-to
 :content-type; bh=IhuPZo9By9WeOKbnJZiXCMtpI4vqAR0qLJD+1E3bLpo=;
 b=nOtprTXW4ewmf0vYJ6/cSZ9NoAr/FadyUwMmNvzf4pfshiM61P6ZCfl1lk8jeZXvnn
 71Jl65vjgSVdND+TNQsJ4Ftnv9HXWgLffbK4IXykUuFn/2uzDrZWjgCQPcBdDRstNPNY
 3IYVSRQltMp4/Kuyu5vFfMtLz2f7NUsveyS6sjB4PlVoFf9DgufKxR2UFRq0j6HjqO7i
 MeMlBfSg3Bi8AJR0TWXqyewuZSi3IEGJkUDeNt/sIpj2sZrKOs/jF95ib9PQCF29l4zD
 wQr1EcfAAkZU6EKOzGyeuSSTF1JdbBXCvZRVtEX+aTuA4ih8+zxo83eit62P9cn9lyvd
 tQsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783038935; x=1783643735;
 h=content-transfer-encoding:content-type:in-reply-to:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to:content-type;
 bh=IhuPZo9By9WeOKbnJZiXCMtpI4vqAR0qLJD+1E3bLpo=;
 b=OwjEjlLCzYPPvk4fTObzYOyWlH2gvWSLZibH6rBgP/AKyHwePzlKbeb8/4SI8hB3iz
 +fFkPisrsWTwwLCf8xyRPnuI3Cc4m9AiZJuTHisenlDM5uNEi7wXgB7lYoUQpRXGuDEc
 v8aZkFgjoLNKiyHxevXHvHJt5Rp5yBida4+jHtiEKyQlJHKHJ0B+D+OaMOcj+cEpq5pl
 3GWeofQySC8D7G8ObRxHCagjfWTlhJ+dYvhhqay/0emTicsw2YpZ7U07rdUFa2CDVs0s
 q+8ye6zeyKRQgNL/1++LwCUs3qwMY9UeyZr1pk9Adn8+Zyf+alBL4Ee+9pABg1d/5CZa
 Eipw==
X-Forwarded-Encrypted: i=1;
 AFNElJ9nZx5IQ5cclxAYNkuSJNSPMYY//577web96bP0g3w2AdiVjt4P+OX7iS3GSXQk1co4po9R5brZY30=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yze4dW8MpjpPRFj2tnfMCDlbogV5LBTq9kZDaTahIF3DkaQx6Bk
 1vrlwOMHdMe98si9rAtwbuob3VJpvqi3tslvUt62qPprI/JCpmYAApcO
X-Gm-Gg: AfdE7ck5VP6NfI8RuvPJKe+Iixxn8uEbbfkXBuflRtfP9bpHf97pjK55CKAk3vFUfLs
 Ylvh98UJ8S6l29jjSy8vu9Fx+EApjFAHykQlK4uCCjaxKV5oUWonRz47Apk7NKP1I+sYK+IDr4/
 Zflvodmbp1N/wTib2nUnavC1kL2bP6Qkx1oHPDw/ibqf8l/0tJoQSEa2o+IHEjiJZ5bYLwp//R4
 OxkhOgwVsuk+62eRc/HZgbMWu9qojs29403Sld1pCWCbdYtE2F49p26X63XsXueyWUm4gZATRu5
 o1AzLbQiLgq+/ViHsYy819IJOPATeenHRoWRmWAX1Bovp14ceoBNfWyMB5md2ZxfiBPuLOu/txp
 ftB+2ekxMaG2Wq8S2aXvndzsbokok6DartphCCSsVzBIWS3MnHIyNBGyRNZNu/PiKwQ7j/wh8Xr
 JOQ6OBzVzYgWLpg+RdcA==
X-Received: by 2002:a05:620a:269b:b0:92e:675e:8ef0 with SMTP id
 af79cd13be357-92e7b473cfbmr986657085a.68.1783038935434; 
 Thu, 02 Jul 2026 17:35:35 -0700 (PDT)
Received: from [192.168.1.100] ([32.220.73.95])
 by smtp.googlemail.com with ESMTPSA id
 af79cd13be357-92e9095e780sm23952485a.0.2026.07.02.17.35.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Jul 2026 17:35:34 -0700 (PDT)
Message-ID: <edcfd337-2cba-49da-a77e-3a2f8aa67e4c@gmail.com>
Date: Thu, 2 Jul 2026 20:35:33 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] gpu/buddy: bail out of try_harder when alignment
 cannot be honoured
To: Matthew Auld <matthew.auld@intel.com>,
 Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>,
 christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Cc: alexander.deucher@amd.com, =?UTF-8?Q?Timur_Krist=C3=B3f?=
 <timur.kristof@gmail.com>, stable@vger.kernel.org
References: <20260629074311.68836-1-Arunpravin.PaneerSelvam@amd.com>
 <a4657daa-c58e-4441-ad81-c3e770bc5a94@intel.com>
Content-Language: en-US
From: John Olender <john.olender@gmail.com>
In-Reply-To: <a4657daa-c58e-4441-ad81-c3e770bc5a94@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 03 Jul 2026 17:24:06 +0000
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
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:matthew.auld@intel.com,m:Arunpravin.PaneerSelvam@amd.com,m:christian.koenig@amd.com,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:alexander.deucher@amd.com,m:timur.kristof@gmail.com,m:stable@vger.kernel.org,m:timurkristof@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[johnolender@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[johnolender@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 98F857049FF

On 7/2/26 6:48 AM, Matthew Auld wrote:
> On 29/06/2026 08:43, Arunpravin Paneer Selvam wrote:
>> The try_harder contiguous fallback could return a range whose start
>> offset did not match the caller's min_block_size. When a candidate's
>> start is misaligned, realign it: free the misaligned run and reallocate
>> exactly @size at the next lower min_block_size boundary. This keeps the
>> returned size unchanged with no surplus to trim, and rejects the request
>> only when no aligned candidate fits.
>>
>> v2: align misaligned candidates down to min_block_size instead of
>>      bailing out, for both the RHS and LHS paths (Matthew).
>>
>> Suggested-by: Christian König <christian.koenig@amd.com>
>> Fixes: 0a1844bf0b53 ("drm/buddy: Improve contiguous memory allocation")
>> Cc: Matthew Auld <matthew.auld@intel.com>
>> Cc: Christian König <christian.koenig@amd.com>
>> Cc: Timur Kristóf <timur.kristof@gmail.com>
>> Cc: John Olender <john.olender@gmail.com>
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
> 
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> 

I haven't hit any issues with this revision during testing.

Thanks,
John

>> ---
>>   drivers/gpu/buddy.c | 63 +++++++++++++++++++++++++++++++--------------
>>   1 file changed, 44 insertions(+), 19 deletions(-)
>>
>> diff --git a/drivers/gpu/buddy.c b/drivers/gpu/buddy.c
>> index dc81fe0301ce..3c73ae87f3c5 100644
>> --- a/drivers/gpu/buddy.c
>> +++ b/drivers/gpu/buddy.c
>> @@ -1118,22 +1118,30 @@ static int __gpu_buddy_alloc_range(struct gpu_buddy *mm,
>>                    blocks, total_allocated_on_err);
>>   }
>>   +static int __alloc_contig_aligned_retry(struct gpu_buddy *mm,
>> +                    u64 unaligned_offset,
>> +                    u64 size,
>> +                    u64 min_block_size,
>> +                    struct list_head *blocks)
>> +{
>> +    u64 aligned_offset = round_down(unaligned_offset, min_block_size);
>> +
>> +    return __gpu_buddy_alloc_range(mm, aligned_offset, size, NULL, blocks);
>> +}
>> +
>>   static int __alloc_contig_try_harder(struct gpu_buddy *mm,
>>                        u64 size,
>>                        u64 min_block_size,
>>                        struct list_head *blocks)
>>   {
>> -    u64 rhs_offset, lhs_offset, lhs_size, filled;
>> +    u64 rhs_offset, lhs_offset, filled;
>>       struct gpu_buddy_block *block;
>>       unsigned int tree, order;
>> -    LIST_HEAD(blocks_lhs);
>> -    unsigned long pages;
>>       u64 modify_size;
>>       int err;
>>         modify_size = rounddown_pow_of_two(size);
>> -    pages = modify_size >> ilog2(mm->chunk_size);
>> -    order = fls(pages) - 1;
>> +    order = ilog2(modify_size) - ilog2(mm->chunk_size);
>>       if (order == 0)
>>           return -ENOSPC;
>>   @@ -1149,31 +1157,48 @@ static int __alloc_contig_try_harder(struct gpu_buddy *mm,
>>           while (iter) {
>>               block = rbtree_get_free_block(iter);
>>   -            /* Allocate blocks traversing RHS */
>>               rhs_offset = gpu_buddy_block_offset(block);
>> +
>> +            /* Allocate blocks traversing RHS */
>>               err =  __gpu_buddy_alloc_range(mm, rhs_offset, size,
>>                                  &filled, blocks);
>> -            if (!err || err != -ENOSPC)
>> +            if (err && err != -ENOSPC)
>>                   return err;
>> +            if (!err && IS_ALIGNED(rhs_offset, min_block_size))
>> +                return 0;
>> +            if (!err) {
>> +                /* Allocate the unaligned RHS offset using round_down */
>> +                gpu_buddy_free_list_internal(mm, blocks);
>> +                err = __alloc_contig_aligned_retry(mm, rhs_offset,
>> +                                   size,
>> +                                   min_block_size,
>> +                                   blocks);
>> +                if (!err)
>> +                    return 0;
>> +                if (err != -ENOSPC) {
>> +                    gpu_buddy_free_list_internal(mm, blocks);
>> +                    return err;
>> +                }
>> +                goto next;
>> +            }
>>   -            lhs_size = max((size - filled), min_block_size);
>> -            if (!IS_ALIGNED(lhs_size, min_block_size))
>> -                lhs_size = round_up(lhs_size, min_block_size);
>> +            if (size - filled > rhs_offset)
>> +                goto next;
>>   -            /* Allocate blocks traversing LHS */
>> -            lhs_offset = gpu_buddy_block_offset(block) - lhs_size;
>> -            err =  __gpu_buddy_alloc_range(mm, lhs_offset, lhs_size,
>> -                               NULL, &blocks_lhs);
>> -            if (!err) {
>> -                list_splice(&blocks_lhs, blocks);
>> +            lhs_offset = rhs_offset - (size - filled);
>> +
>> +            /* Allocate the unaligned LHS offset using round_down */
>> +            gpu_buddy_free_list_internal(mm, blocks);
>> +            err = __alloc_contig_aligned_retry(mm, lhs_offset, size,
>> +                               min_block_size, blocks);
>> +            if (!err)
>>                   return 0;
>> -            } else if (err != -ENOSPC) {
>> +            if (err != -ENOSPC) {
>>                   gpu_buddy_free_list_internal(mm, blocks);
>>                   return err;
>>               }
>> -            /* Free blocks for the next iteration */
>> +next:
>>               gpu_buddy_free_list_internal(mm, blocks);
>> -
>>               iter = rb_prev(iter);
>>           }
>>       }
>>
>> base-commit: 6648301c5bb2ef23f0fb15bcb01d21ff66f36799
> 

