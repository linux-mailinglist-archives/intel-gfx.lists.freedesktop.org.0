Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 546BE7DE27B
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 15:55:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B85D10E716;
	Wed,  1 Nov 2023 14:55:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D324710E716
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Nov 2023 14:55:36 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-9a58dbd5daeso1056187066b.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Nov 2023 07:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698850535; x=1699455335; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Z8sXJVePghakcScz8YHitS5qKjZAt76E8h4lNaXRBCk=;
 b=eB7gFyBFr/G/eLHaMesss27Hm5dmTX0KFKhEhuoTZWJKIL8q1AvplCERwDb7cEPQ8T
 96BX3CeEvwMNBwn8X9DzQ9oKqcPf2WdGw8z4EpA6rbW0nO3lpCJRbeNRASzi+JM3u91g
 znwBNj4QFrbS46bQ5BMHyUwZW3IKPvdGHd6zJ0dTfyl/t9+HGt756gS3yr19wkSEm4nQ
 HGzt7WlKikWYrpgLIwNIUlPs8oa/+TBpXfbQNf2ApfcLV4ZjY1zXY3yi4B2vzbEFwkyM
 71FsOGdxFAVl0x75SQZuMH4/EKMG69XXJdJFNHse74rYUCeNK827WK0x+FWn8XDaqkDl
 IbxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698850535; x=1699455335;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Z8sXJVePghakcScz8YHitS5qKjZAt76E8h4lNaXRBCk=;
 b=fvAC0dFuLovDz//CdqamutH96lZ78nZz9svvXYH2aiej5PPmUrfDk0VMSFwVHqRteM
 hMgtTEkVn1eR7Tvl5SPuzxwXVJ2lnRJtD4eiV31jXwUiwY8gaxe050Ivtgtoqmuw59MR
 YOZgKEeRrHFDNer/OnUBzJ9tGWIP2u7Iason7prymI6eUNVz8ht5CRylrJ9gquZG4xaU
 g4eKIaTIMP1nen5J5PzupqAdPgB3JiygwurSJsbjPE73mq5bMd2+vPuUM/nacSohMAQW
 7VY5VJvlASrlHn6bXrHRi2D3ZSjOeznt2QqUQap1ZR7Q+e08y7cDVx9/7zM4DrnXvSUn
 jevg==
X-Gm-Message-State: AOJu0YzuWlhz7J6uRmoLHqIcG2DE5iBK58lQlCFrzXQcZJHyKd2Rwgc1
 5OtbimdGfuQMePVJV3uIAw==
X-Google-Smtp-Source: AGHT+IG03ZRtlAgnid/Ql6SYW7Ij32pqEkZq4+FyW9aVyGeMULIEGXJ0S81mZZnRYYAGOZRgti+WCw==
X-Received: by 2002:a17:906:4fc8:b0:9a5:d972:af43 with SMTP id
 i8-20020a1709064fc800b009a5d972af43mr1892858ejw.65.1698850534865; 
 Wed, 01 Nov 2023 07:55:34 -0700 (PDT)
Received: from [192.168.78.129] ([105.163.156.68])
 by smtp.gmail.com with ESMTPSA id
 v9-20020a1709063bc900b009bd9ac83a9fsm17354ejf.152.2023.11.01.07.55.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 01 Nov 2023 07:55:34 -0700 (PDT)
Message-ID: <f2c8f6d6-879d-4622-ae69-bef1c4ebf823@gmail.com>
Date: Mon, 30 Oct 2023 23:13:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20231027174745.4058-1-anonolitunya@gmail.com>
 <ZT_5InkXDfIzzonu@ashyti-mobl2.lan>
Content-Language: en-US
From: Dorcas Anono Litunya <anonolitunya@gmail.com>
In-Reply-To: <ZT_5InkXDfIzzonu@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Remove prohibited space after
 opening parenthesis
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
Cc: intel-gfx@lists.freedesktop.org, karolinadrobnik@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 30/10/2023 21:42, Andi Shyti wrote:
> Hi Dorcas,
>
> On Fri, Oct 27, 2023 at 08:47:45PM +0300, Dorcas AnonoLitunya wrote:
>> Removes space after opening parenthesis.
>>
>> Fixes the checkpatch.pl error:
>> ERROR: space prohibited after that opening parenthesis '('
>>
>> Signed-off-by: Dorcas AnonoLitunya <anonolitunya@gmail.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_engine_cs.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> index 4a11219e560e..40687806d22a 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> @@ -47,7 +47,7 @@
>>   #define GEN9_LR_CONTEXT_RENDER_SIZE	(22 * PAGE_SIZE)
>>   #define GEN11_LR_CONTEXT_RENDER_SIZE	(14 * PAGE_SIZE)
>>   
>> -#define GEN8_LR_CONTEXT_OTHER_SIZE	( 2 * PAGE_SIZE)
>> +#define GEN8_LR_CONTEXT_OTHER_SIZE	(2 * PAGE_SIZE)
> I'm actually having second thoughts on this change. The space was
> left on purpose in order to be aligned with the defines above.
>
> On the other hand, this is a bit detached from the others and
> this change makes checkpatch happy.
>
> This is one of those patches that are not right and not wrong
> either.
>
> I'll give it a bit more time and merge if no complains arise.
>
> Andi

Hi Andi,

No problem. I'll wait to observe as I look for another contribution to 
the project.


Kind regards,

Dorcas

>>   #define MAX_MMIO_BASES 3
>>   struct engine_info {
>> -- 
>> 2.42.0.345.gaab89be2eb
