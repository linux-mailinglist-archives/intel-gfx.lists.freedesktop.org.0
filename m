Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 662CF8B3C4C
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 18:03:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 963F310F143;
	Fri, 26 Apr 2024 16:02:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="unMSbzdn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53E1510F10E
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Apr 2024 16:02:57 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id
 5b1f17b1804b1-41ba1ba55e9so4289305e9.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Apr 2024 09:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1714147375; x=1714752175;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=noFvmcljj0OuZQzbU6OvkyTtLgVDe82Z+aYXxhzP6XA=;
 b=unMSbzdnnzHyK1b02eQD9TwcxuOwGviBPRojRQ/Z4jldKteP7EqcYIxgR263vzLHNJ
 4zvWQwm0lYxCd25/MBAVK7HFOrGwJO67zMKamem/ZxlojktEXAvoI5sIdHhZC7Sn9R2f
 H7Rn4lD21lMIiYapzyN0zl54SPcr6WGB2Z2Td8gGBlCBPWl0JeTq/HfqPdeYJVwIGAku
 X3TulsrKDLaj67ugmpnIoHRRg4qDaNKqXi8znWHyxjW0/yqsOcKIWe//LaqCX41PIdFg
 kgd2eou/ZcKO1hTXV7VmR3msjvHExPSMGMjTKak+8d8UuR+tkd6SiLTid15gaRjCafLn
 2YTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714147375; x=1714752175;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=noFvmcljj0OuZQzbU6OvkyTtLgVDe82Z+aYXxhzP6XA=;
 b=gN/sqDpqx4ghB3gylWztwLrU1FIrTGry5UHL7g44Mm6jDbqKtElmhbNM0+7QhOLe+4
 Vmn6WJn3mTg1ANPik9x0O+m4X+icz45OLM78O6tsIEGNGUrJVjISnAsr/obw4nCqpqG3
 tQAFtfLGwkXRkIY1WYvKq0h4L9Oz5jeUMj35QIKvx8sXB4RlajnEXyUb57NCED03+DB7
 Cy0PjfG3FpcnGG30OQz4NP5TjwhDZ7YXR9oOpBJa0GQY/xFdPFAFSdSir14TiwadxnjY
 UsVBUEkQc/4Q35pmzVv1glKhjq2hhMAjQCc4xfokhCcSUgBhHBdGHn2I0SK0YnLeGT6Z
 QsIA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVdLLWpsSsmqAmUAheRhNeZVqZ9XA5PQ8oavDi7BFxAZChX49hUPPm8zCPzFfwaKPGW42Z+3MCsDWg7xK5VrzAwv1kyaPg/gHVBNjP9tiLU
X-Gm-Message-State: AOJu0YzkYzinPneQe9252hxooFI8aUR0liBPx0E6oLDQ6TPK+n+Hemmh
 HMXP7OJUycjm2OrbJFfReWI8mlzRKcYLQ8Y4CdkPJ1D8pJi33ric2sDFM1oPn1o=
X-Google-Smtp-Source: AGHT+IGzAb76p+bVJud3sgdl3B7jT6s0zqzvw2JiPKiULYqlBDMGSeSy/97X/XgzQStOOWz/jwUIHg==
X-Received: by 2002:a05:600c:19d3:b0:417:fbc2:caf8 with SMTP id
 u19-20020a05600c19d300b00417fbc2caf8mr2235789wmq.23.1714147375482; 
 Fri, 26 Apr 2024 09:02:55 -0700 (PDT)
Received: from [192.168.0.101] ([84.65.0.132])
 by smtp.gmail.com with ESMTPSA id
 ay28-20020a05600c1e1c00b0041b4f563a17sm5972375wmb.39.2024.04.26.09.02.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 26 Apr 2024 09:02:55 -0700 (PDT)
Message-ID: <f45e7438-ee34-4f45-b537-aca2fa63e40b@ursulin.net>
Date: Fri, 26 Apr 2024 17:02:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] MAINTAINERS: Move the drm-intel repo location to fd.o
 GitLab
Content-Language: en-GB
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 Ryszard Knop <ryszard.knop@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20240424114159.38719-1-ryszard.knop@intel.com>
 <bq7u2v4mtkxyjnjeu2ijgh2jzw5iorkrlagva7eazir4i6kbes@2vvesiqaujpi>
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <bq7u2v4mtkxyjnjeu2ijgh2jzw5iorkrlagva7eazir4i6kbes@2vvesiqaujpi>
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



On 26/04/2024 16:47, Lucas De Marchi wrote:
> On Wed, Apr 24, 2024 at 01:41:59PM GMT, Ryszard Knop wrote:
>> The drm-intel repo is moving from the classic fd.o git host to GitLab.
>> Update its location with a URL matching other fd.o GitLab kernel trees.
>>
>> Signed-off-by: Ryszard Knop <ryszard.knop@intel.com>
> 
> Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>
> 
> Also Cc'ing maintainers

Thanks,

Acked-by: Tvrtko Ursulin <tursulin@ursulin.net>

Regards,

Tvrtko

>> ---
>> MAINTAINERS | 2 +-
>> 1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index d6327dc12cb1..fbf7371a0bb0 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -10854,7 +10854,7 @@ W:    
>> https://drm.pages.freedesktop.org/intel-docs/
>> Q:    http://patchwork.freedesktop.org/project/intel-gfx/
>> B:    
>> https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html
>> C:    irc://irc.oftc.net/intel-gfx
>> -T:    git git://anongit.freedesktop.org/drm-intel
>> +T:    git https://gitlab.freedesktop.org/drm/i915/kernel.git
>> F:    Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
>> F:    Documentation/gpu/i915.rst
>> F:    drivers/gpu/drm/ci/xfails/i915*
>> -- 
>> 2.44.0
>>
