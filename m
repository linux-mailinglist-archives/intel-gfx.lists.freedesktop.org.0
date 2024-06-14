Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BCA908657
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 10:32:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2587010EC96;
	Fri, 14 Jun 2024 08:32:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="QnKItHGt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 384B710EC96
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 08:32:10 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id
 ffacd0b85a97d-35f14af40c2so1668900f8f.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 01:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1718353928; x=1718958728;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=/R3uimmJ8Ge+YnVp0jd24v/vSI1DUC0jueywZeIAZTE=;
 b=QnKItHGtoGuaJmFiQ80MdpEepXztxn/AMNpyvV6IYw41pSe/MlFY/mpi356HpiJ6bC
 apuvKAyd9Q8odW6LSocb1h1cgj7uJG1w/zH69SsPOqGPuR3tD0V4NG9sBfseBaBXjiFb
 TnRclC2NLM5Pk6YUlJsDiqt+1CGAaVnjw4ZW/BIOrEPGA7NLj7M9pshwMKBjBHP93sP+
 +tgWZ6/4a8ASPab4eWkq7p9D9+Cvnr0wUHyJ0FiySrnyeEM7W0e9wNBVQFZl+AlDb88t
 x6CYm3l7h2wIURIsRJ+BN+Y9LeKzpqBxsxwGt9fJU2Wd1lwZ3DCDk4OC6tK+L+cGrJdq
 5wvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718353928; x=1718958728;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/R3uimmJ8Ge+YnVp0jd24v/vSI1DUC0jueywZeIAZTE=;
 b=UkH+870APqo1M6SSm5p9jMMH9qgv525AbzvZt+XB3M1KR0YqKpiyDNF9HSHslNp+Aw
 SEDiftwcyhmgQi9UrvKp+rHhOGlEA4jsdodSjl4LOUls5a/+2qD4nxHSzRkq7Q02lspg
 9RIR80bwgiFGWvlOoYLi7YUL257zNLYyge/Y2mTzhvD4c0DH4LYcGBRadpThvYVqW/Cc
 4nqU4sjbC6sCLPnGJlwkFQzUtTZUHtjo/Yu3edayiwNj+s5rwrBiD8jEoZmk3vVKBjJs
 aX5sZfoS73TT/xyJbJuVWcfxYmUOc299PGm7xTqRetFE2Dg46Uv1gsQjUQ2CcAFDvb6k
 I2kA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWY2aoeJoVEtspw5BcVB9pyRIOHlPclEpQCJHwNmhbPHygo3sPhR84F+dKXucUHpbBYKehUJRrOAH4F61wfV4QsgMK9zH+8UUwLPD7cRvNd
X-Gm-Message-State: AOJu0YxEHzcUGq7yEWNMMGzsbDLWyxTdwsXiGlkmQUshlJosQeuVAiuf
 ldp+v7Qan2muUZa91mbVBaQ6SJoxQSNL/E+Lz2/q3wkS68/GuLAvvGwefx/abU0=
X-Google-Smtp-Source: AGHT+IG3Ki4GOqjDddTP41Swv9m2WGepaR6JSM+UN6a8UPjl7YbgjLZ7d30wfPQaSDKBJ3nPjp0Wkw==
X-Received: by 2002:a5d:61cf:0:b0:35f:23c6:7bdb with SMTP id
 ffacd0b85a97d-3607a739a34mr1419331f8f.21.1718353928239; 
 Fri, 14 Jun 2024 01:32:08 -0700 (PDT)
Received: from [192.168.0.101] ([84.69.19.168])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-360750f228asm3690644f8f.73.2024.06.14.01.32.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Jun 2024 01:32:07 -0700 (PDT)
Message-ID: <94423591-adba-46d4-a9ba-f377dfab369f@ursulin.net>
Date: Fri, 14 Jun 2024 09:32:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/8] drm/i915: Don't check for atomic context on
 PREEMPT_RT
Content-Language: en-GB
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Gleixner <tglx@linutronix.de>
References: <20240613102818.4056866-1-bigeasy@linutronix.de>
 <20240613102818.4056866-4-bigeasy@linutronix.de>
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20240613102818.4056866-4-bigeasy@linutronix.de>
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


On 13/06/2024 11:20, Sebastian Andrzej Siewior wrote:
> The !in_atomic() check in _wait_for_atomic() triggers on PREEMPT_RT
> because the uncore::lock is a spinlock_t and does not disable
> preemption or interrupts.
> 
> Changing the uncore:lock to a raw_spinlock_t doubles the worst case
> latency on an otherwise idle testbox during testing. Therefore I'm
> currently unsure about changing this.
> 
> Link: https://lore.kernel.org/all/20211006164628.s2mtsdd2jdbfyf7g@linutronix.de/
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> ---
>   drivers/gpu/drm/i915/i915_utils.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index 06ec6ceb61d57..2ca54bc235925 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -274,7 +274,7 @@ wait_remaining_ms_from_jiffies(unsigned long timestamp_jiffies, int to_wait_ms)
>   #define wait_for(COND, MS)		_wait_for((COND), (MS) * 1000, 10, 1000)
>   
>   /* If CONFIG_PREEMPT_COUNT is disabled, in_atomic() always reports false. */
> -#if defined(CONFIG_DRM_I915_DEBUG) && defined(CONFIG_PREEMPT_COUNT)
> +#if defined(CONFIG_DRM_I915_DEBUG) && defined(CONFIG_PREEMPT_COUNT) && !defined(CONFIG_PREEMPT_RT)
>   # define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) WARN_ON_ONCE((ATOMIC) && !in_atomic())
>   #else
>   # define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) do { } while (0)

I think this could be okay-ish in principle, but the commit text is not 
entirely accurate because there is no direct coupling between the wait 
helpers and the uncore lock. They can be used from any atomic context.

Okay-ish in principle because there is sufficient testing in Intel's CI 
on non-PREEMPT_RT kernels to catch any conceptual misuses.

But see also the caller in skl_pcode_request. It is a bit harder to hit 
since it is the fallback path. Or gen5_rps_enable which nests under a 
different lock.

Hmm would there be a different helper, or combination of helpers, which 
could replace in_atomic() which would do the right thing on both 
kernels? Something to tell us we are neither under a spin_lock, nor 
preempt_disable, nor interrupts disabled, nor bottom-half. On either 
stock or PREEMPT_RT.

WARN_ON_ONCE((ATOMIC) && !(!preemptible() || in_hardirq() || 
in_serving_softirq())

Would this work?

Regards,

Tvrtko
