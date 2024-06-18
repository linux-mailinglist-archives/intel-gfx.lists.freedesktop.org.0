Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 717DE90C51A
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 11:00:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F00C710E5CA;
	Tue, 18 Jun 2024 09:00:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="KKFq3HlA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 757DB10E5CA
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 09:00:12 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id
 5b1f17b1804b1-421bb51d81aso39439975e9.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 02:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1718701210; x=1719306010;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=QBPYHL5GvhUsB8y5ckGLKMnV4bkwUkDrfTmLnxjG5ws=;
 b=KKFq3HlAiWbWXsFW+WFd7QXC22jAbU7pQShFD8pBT8sZ5RsyjbfqHvtiUEBRwML8RM
 CKhNIZm39HLWLXErAOKscbOsG6ix2JXChOcNzLcOIZvk5iKb3N8GEKKcNbQlpOXAf1zv
 919TW9J47NpmHDAAXB/5lHEBtL+OPOduGhqG5KlNjNrtr8wlyfZQKkl5sP6EtPix2dSB
 f1TIYBYW6cToywvbONWKGL3faZxbXuBoNodsjCPlVKPToRTOArcfltiYXWgZa3PfbcJA
 xENLN95wJKl33hoyC0fy95fbDRTJTSUs45Q2T9ZCwNnMfWlhzCjaJkwkCfh9v4nZr8bm
 gRVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718701210; x=1719306010;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=QBPYHL5GvhUsB8y5ckGLKMnV4bkwUkDrfTmLnxjG5ws=;
 b=K/Q9S+na5JgAwhFpgsj1aUSpWHXh/glsf0lc85ojWB9lKmH4rIZkAcTacErVhYpsEa
 TMfzczd2lLWnpwOiGuNmgAp0hqhOhm46M39ZmK+kpaeInGsdqPcvzIPraCNfMWLm6Nwt
 YguKBK3JyiFK/J2FYi5HWXpzVsrArK7ixargJnTng1wPeedlPqLRGaf5nRdyDJSSGs9/
 a0kraw0d1aoSgBBpbnK68p6emsvvvYZwr7vNC4hNw5pyl/9tpDpjb8rpm6E5L7hR8Ayk
 edi9y8xdbIDYpND5gCs8//YFj8fKn2Uquelsv4sOPl0VfNFppAUljr2wKDnyHMnvXA2k
 3CFw==
X-Gm-Message-State: AOJu0Yw9L+ET+ARMYwh52BGfa2GE27rat+G/JAbaUvZ9gZ2hVS51BZpb
 BP9O1v6sV9ieDb/DWucH0SVc6QEW3ll9vv6xu8sAJ79BHFKJlM5u583LG7dWWJQ=
X-Google-Smtp-Source: AGHT+IE0SihJzaDVzsIGiNkBMvgPykdCPzAqB3veVcn9Rgv1BJOSXKv2hE2p2k5a0YsXpFUtJzvgOg==
X-Received: by 2002:a05:600c:2309:b0:421:5609:115d with SMTP id
 5b1f17b1804b1-42304861637mr88308375e9.41.1718701210355; 
 Tue, 18 Jun 2024 02:00:10 -0700 (PDT)
Received: from [192.168.0.101] ([84.69.19.168])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-422f602efc4sm183647865e9.15.2024.06.18.02.00.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Jun 2024 02:00:10 -0700 (PDT)
Message-ID: <b740d56d-a744-4d35-b3f2-1166b8df2aef@ursulin.net>
Date: Tue, 18 Jun 2024 10:00:09 +0100
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
 <fa38f377-a00a-4e0c-b416-54a1c3f15d4d@ursulin.net>
 <20240617100752.9XDTS0R5@linutronix.de>
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20240617100752.9XDTS0R5@linutronix.de>
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


On 17/06/2024 11:07, Sebastian Andrzej Siewior wrote:
> On 2024-06-14 13:19:25 [+0100], Tvrtko Ursulin wrote:
>>> So the question is why do you need to know if the context is atomic?
>>> The only impact is avoiding disabling preemption. Is it that important
>>> to avoid it?
>>> If so would cant_migrate() work? It requires CONFIG_DEBUG_ATOMIC_SLEEP=y
>>> to do the trick.
>>
>> ... catching misuse of atomic wait helpers step 2 - are you calling it from
>> a non-atomic context without the real need. So should use the non-atomic
>> helper instead.
>>
>> When i915 development was very active and with a lot of contributors it was
>> beneficial to catch these things which code review would easily miss.
>>
>> Now that the pace is much, much slower, it is probably not very important.
>> So this patch is acceptable for what I am concerned and:
>>
>> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
>>
>> Actually please also add the PREEMPT_RT angle to the comment above
>> _WAIT_FOR_ATOMIC_CHECK. Sometimes lines change and git blame makes it hard
>> to find the commit text.
> 
> Do you want me the repost the series? Are the bots happy enough?

I did a re-test but am not 100% certain yet. CI looks frustratingly 
noisy at the moment.

igt@debugfs_test@read_all_entries appears to be a fluke which is not new.

But igt@gem_exec_parallel@engines@basic from the latest run seem new.

So I queued another re-test.

> I have the following as far this patch:
> 
> ------->8--------------
> 
> The !in_atomic() check in _wait_for_atomic() triggers on PREEMPT_RT
> because the uncore::lock is a spinlock_t and does not disable
> preemption or interrupts.
> 
> Changing the uncore:lock to a raw_spinlock_t doubles the worst case
> latency on an otherwise idle testbox during testing.
> 
> Ignore _WAIT_FOR_ATOMIC_CHECK() on PREEMPT_RT.
> 
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
> Link: https://lore.kernel.org/all/20211006164628.s2mtsdd2jdbfyf7g@linutronix.de/
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> ---
>   drivers/gpu/drm/i915/i915_utils.h | 9 +++++++--
>   1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index 06ec6ceb61d57..f0d3c5cdc1b1b 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -273,8 +273,13 @@ wait_remaining_ms_from_jiffies(unsigned long timestamp_jiffies, int to_wait_ms)
>   						   (Wmax))
>   #define wait_for(COND, MS)		_wait_for((COND), (MS) * 1000, 10, 1000)
>   
> -/* If CONFIG_PREEMPT_COUNT is disabled, in_atomic() always reports false. */
> -#if defined(CONFIG_DRM_I915_DEBUG) && defined(CONFIG_PREEMPT_COUNT)
> +/*
> + * If CONFIG_PREEMPT_COUNT is disabled, in_atomic() always reports false.
> + * On PREEMPT_RT the context isn't becoming atomic because it is used in an
> + * interrupt handler or because a spinlock_t is acquired. This leads warnings
> + * which don't occur otherwise and is therefore disabled.

Ack, thanks!

Regards,

Tvrtko

> + */
> +#if defined(CONFIG_DRM_I915_DEBUG) && defined(CONFIG_PREEMPT_COUNT) && !defined(CONFIG_PREEMPT_RT)
>   # define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) WARN_ON_ONCE((ATOMIC) && !in_atomic())
>   #else
>   # define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) do { } while (0)
> 
>> Regards,
>>
>> Tvrtko
> 
> Sebastian
