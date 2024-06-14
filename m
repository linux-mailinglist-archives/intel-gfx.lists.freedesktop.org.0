Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14572908BA0
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 14:26:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8A8A10E116;
	Fri, 14 Jun 2024 12:19:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="HlH8RRq8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 139AA10E116
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 12:19:28 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id
 5b1f17b1804b1-421cd1e5f93so15420785e9.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 05:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1718367567; x=1718972367;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=BtOVFjE7gxlKH3/WSl8BYOZN/5omBfi6w3Mm7iSj0co=;
 b=HlH8RRq8Z8Zf6jNI//D5YCrLvWGtQZP6i9uZHNVZlIOGjUjdQ+qCGdunDi+YRchVJB
 hyGs/TjFBuPED67z8vt+m0MEv6Bout9UVn54IfxVyaahnvVoZ7c/0I1SRvTza6KaVoq9
 2oJWcKElQTFEoJauXN83T1335tlevJFRK5Nlm6juWm8PSLlyNoV8MV+P/n2bkHc5/Vtm
 iVESiTFSon1ksUnjv98T0Lj5/R2C6QDcmhTGziaJO9Zroq5EeAAYJzNkoSolUrEjwJRf
 duSrOXiKabuBYiLRzwyRiicf97vees+ZYeLy0AR1FNpxuSyfrJJGh9LFWdoRpfKRX7qo
 wAPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718367567; x=1718972367;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=BtOVFjE7gxlKH3/WSl8BYOZN/5omBfi6w3Mm7iSj0co=;
 b=WvnGmhNs8C5aBBpbbO58WLNCDOfzdmB49v+Etp5Ck799mS3ST6wLVMplCLrGB2tDyH
 qj5CnZ9wznDK0dJbRIqqUGuuQxgkLnsvClOb9j+6vi1w28TtP/StNyVQe5mzCCfSMs2E
 Iy9pw5oR8UaHx1IK/1tebY7wYiejknnmdzcVvDCO+FAfTvRsj/7N+YdQa/LzNr533g66
 GdjwbiQvTcaEKesEGJnVjAJNKMq+XAaN8yv0SdvXBxmCr1viY+zpx8uLSVgSuta3l+vn
 o27+pzM6SXk6oKeI91+wu21jgnmUhp8gBCVGfCP7cU4ta478RKJmdMLU9aPiiIxqsnC/
 R3Nw==
X-Gm-Message-State: AOJu0Yz787ZYFrKIOsToxgqZpCNQykfWrOzodtfSWz1jNfbAUM9p8ebe
 JdlbSEDOgnqSX8fXi2SQmMHTgSYVUyAFYPQCF8HSw06cjHDAVk8dxCBQLIQbwX0=
X-Google-Smtp-Source: AGHT+IG/ob9iNNkFn0jYXrWVHLMfYh6pM9Z1fdorhs68L3rYxCHUSr8OyvPvv3bb/r59bWIE6wNE7g==
X-Received: by 2002:adf:f148:0:b0:360:86e3:4cd2 with SMTP id
 ffacd0b85a97d-36086e34da0mr13262f8f.58.1718367567001; 
 Fri, 14 Jun 2024 05:19:27 -0700 (PDT)
Received: from [192.168.0.101] ([84.69.19.168])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-36075093531sm4253590f8f.15.2024.06.14.05.19.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Jun 2024 05:19:26 -0700 (PDT)
Message-ID: <fa38f377-a00a-4e0c-b416-54a1c3f15d4d@ursulin.net>
Date: Fri, 14 Jun 2024 13:19:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/8] drm/i915: Don't check for atomic context on
 PREEMPT_RT
Content-Language: en-GB
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Gleixner <tglx@linutronix.de>
References: <20240613102818.4056866-1-bigeasy@linutronix.de>
 <20240613102818.4056866-4-bigeasy@linutronix.de>
 <94423591-adba-46d4-a9ba-f377dfab369f@ursulin.net>
 <20240614110548.m3lloBjv@linutronix.de>
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20240614110548.m3lloBjv@linutronix.de>
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


On 14/06/2024 12:05, Sebastian Andrzej Siewior wrote:
> On 2024-06-14 09:32:07 [+0100], Tvrtko Ursulin wrote:
>> I think this could be okay-ish in principle, but the commit text is not
>> entirely accurate because there is no direct coupling between the wait
>> helpers and the uncore lock. They can be used from any atomic context.
>>
>> Okay-ish in principle because there is sufficient testing in Intel's CI on
>> non-PREEMPT_RT kernels to catch any conceptual misuses.
> 
> You just avoid disabling preemption if you expect to be in atomic
> context to save a few cycles. It wouldn't hurt to disable it anyway. The
> only reason you need it is to remain on the same CPU while reading the
> clock because it is not guaranteed otherwise.

Ah no, that is not why. Reason for conditional disabling of preemption 
is to have an implementation for very short delays which does not run 
with preemption permanently disabled. So it is disabled only around time 
tracking.

> Delays > 50ms are detected at build time.

Right, point of that is to ask the contributor if they are sure this is 
what they want. Catching misuse of the short delay wait helper step one..

>> But see also the caller in skl_pcode_request. It is a bit harder to hit
>> since it is the fallback path. Or gen5_rps_enable which nests under a
>> different lock.
>>
>> Hmm would there be a different helper, or combination of helpers, which
>> could replace in_atomic() which would do the right thing on both kernels?
>> Something to tell us we are neither under a spin_lock, nor preempt_disable,
>> nor interrupts disabled, nor bottom-half. On either stock or PREEMPT_RT.
> 
> There is nothing that you can use to deduct that you are under a
> spin-lock. preemptible() works only if you have a preemption counter
> which is not mandatory. It can affect RCU but not in all configurations.
> 
>> WARN_ON_ONCE((ATOMIC) && !(!preemptible() || in_hardirq() ||
>> in_serving_softirq())
>>
>> Would this work?
> 
> Nope. None of this triggers if you acquire a spinlock_t. And I can't
> think of something that would always be true.

Bummer.

> So the question is why do you need to know if the context is atomic?
> The only impact is avoiding disabling preemption. Is it that important
> to avoid it?
> If so would cant_migrate() work? It requires CONFIG_DEBUG_ATOMIC_SLEEP=y
> to do the trick.

... catching misuse of atomic wait helpers step 2 - are you calling it 
from a non-atomic context without the real need. So should use the 
non-atomic helper instead.

When i915 development was very active and with a lot of contributors it 
was beneficial to catch these things which code review would easily miss.

Now that the pace is much, much slower, it is probably not very 
important. So this patch is acceptable for what I am concerned and:

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

Actually please also add the PREEMPT_RT angle to the comment above 
_WAIT_FOR_ATOMIC_CHECK. Sometimes lines change and git blame makes it 
hard to find the commit text.

Regards,

Tvrtko

> 
>> Regards,
>>
>> Tvrtko
> 
> Sebastian
