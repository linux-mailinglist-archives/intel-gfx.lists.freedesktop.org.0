Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D6990E84F
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 12:27:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC75010EC1B;
	Wed, 19 Jun 2024 10:27:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="RrO5nW6m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28FCB10EC1B
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 10:27:35 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id
 5b1f17b1804b1-421b9068274so57658355e9.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 03:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1718792853; x=1719397653;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Mv6hTqDSR4GlhI2tL0JZjMBqw/kg6/83wxC7YG6ceYc=;
 b=RrO5nW6m0jfcX9voHs480hAg6kj1ciGA5qdJy9tH13LeMRSIh9JSBuRWO9BmXpzUdn
 BC+Gc/GjzvMWu1YrpD5hYyfkBGKBy8oJlhKtVanNT/01W5Wx2mG/X7OcTZHeAApFPaUG
 dUB9+ixYxREZnxc+fmeY4na0H52MnZP5x0aat2CmZk+hbvP8VsKGSO2Iaq/gAARdtVgs
 i0jds6vCEqdYVBq8MD2uorTy/yuBAgPDAoXSmtKNJwia5o1Drk4JDWxCP764XhEMFYmS
 BBnc6bJIpaHSSXc5yid/ye0JO51vv+cLv5U8YMg0hG0uJOoxH1It8O4tCzFnTJm9n/ZJ
 2HDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718792853; x=1719397653;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Mv6hTqDSR4GlhI2tL0JZjMBqw/kg6/83wxC7YG6ceYc=;
 b=M0tPZvdK/j1bYfm4nb4EWy0yZLDxwCoc9047sZl5yxCvVhpcBMSSXPO5lrWa07e0Ai
 M5GNHL39rdiA3I8W1SKYpMNP2JQs87IXBDjf6NQ2gVcUMI+VEVQYdRcHLOIp5iAK/KhQ
 xxIlCOqACehHENTosXelDQTtOCURNOewKlGx3GNOhtQFRAEzetLH71r0H6rD+VDyw+w9
 k1nV3l66OQHrUtWVnH86GazLh8ptEpPqeqjkiNam/gg6PhupXl3S8RvWxifhYg7+F48I
 VMSstJ8YrQHTOyekdu4AWJ9+Dc6g0rcZmuG43lY1dBK4DClMGcu+3k+IfPq5P4LCVbqx
 qMJQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX42gwCY9P8B3IJMxC3uAfMjK2HKww3zhlWzl944bx7CSYMplBRTteBYIglxYy5Lqa5rMdU8dARt13PEFrZIGZB/vNEb/47z3j/tgGJJqk5
X-Gm-Message-State: AOJu0YwEQ5cGRimyOUlcgFh0g/tFXkYbMFrMgXIwF24EsM7m6mGEM/6N
 fl5p+t45f149ajjMUX2845SjZS6/NcgOZL2RC1Ub/A0JxbMsBRxPX/JbrJKCNN4=
X-Google-Smtp-Source: AGHT+IHuWfxQ4Gvep462D2lvIRKHE6+f2j74HAZHUy1JquYx3R3qOeJ5cSt6hhzsDubzXs4raSsGkw==
X-Received: by 2002:a05:600c:15cc:b0:421:8445:4f8d with SMTP id
 5b1f17b1804b1-4247529e08amr12377755e9.38.1718792853257; 
 Wed, 19 Jun 2024 03:27:33 -0700 (PDT)
Received: from [192.168.0.101] ([84.69.19.168])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-422f641f522sm220574375e9.48.2024.06.19.03.27.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Jun 2024 03:27:32 -0700 (PDT)
Message-ID: <0a483838-0a7a-47f0-a816-41ccfff4f560@ursulin.net>
Date: Wed, 19 Jun 2024 11:27:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/8] drm/i915: Disable tracing points on PREEMPT_RT
Content-Language: en-GB
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Luca Abeni <lucabe72@gmail.com>, Steven Rostedt <rostedt@goodmis.org>
References: <20240613102818.4056866-1-bigeasy@linutronix.de>
 <20240613102818.4056866-5-bigeasy@linutronix.de>
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20240613102818.4056866-5-bigeasy@linutronix.de>
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
> Luca Abeni reported this:
> | BUG: scheduling while atomic: kworker/u8:2/15203/0x00000003
> | CPU: 1 PID: 15203 Comm: kworker/u8:2 Not tainted 4.19.1-rt3 #10
> | Call Trace:
> |  rt_spin_lock+0x3f/0x50
> |  gen6_read32+0x45/0x1d0 [i915]
> |  g4x_get_vblank_counter+0x36/0x40 [i915]
> |  trace_event_raw_event_i915_pipe_update_start+0x7d/0xf0 [i915]
> 
> The tracing events use trace_intel_pipe_update_start() among other events
> use functions acquire spinlock_t locks which are transformed into
> sleeping locks on PREEMPT_RT. A few trace points use
> intel_get_crtc_scanline(), others use ->get_vblank_counter() wich also
> might acquire a sleeping locks on PREEMPT_RT.
> At the time the arguments are evaluated within trace point, preemption
> is disabled and so the locks must not be acquired on PREEMPT_RT.
> 
> Based on this I don't see any other way than disable trace points on
> PREMPT_RT.
> 
> Reported-by: Luca Abeni <lucabe72@gmail.com>
> Cc: Steven Rostedt <rostedt@goodmis.org>
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> ---
>   drivers/gpu/drm/i915/display/intel_display_trace.h | 4 ++++
>   drivers/gpu/drm/i915/i915_trace.h                  | 4 ++++
>   2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
> index 49a5e6d9dc0d7..b15c999d91e68 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_trace.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
> @@ -9,6 +9,10 @@
>   #if !defined(__INTEL_DISPLAY_TRACE_H__) || defined(TRACE_HEADER_MULTI_READ)
>   #define __INTEL_DISPLAY_TRACE_H__
>   
> +#if defined(CONFIG_PREEMPT_RT) && !defined(NOTRACE)
> +#define NOTRACE
> +#endif
> +
>   #include <linux/string_helpers.h>
>   #include <linux/types.h>
>   #include <linux/tracepoint.h>
> diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
> index ce1cbee1b39dd..247e7d9448d70 100644
> --- a/drivers/gpu/drm/i915/i915_trace.h
> +++ b/drivers/gpu/drm/i915/i915_trace.h
> @@ -6,6 +6,10 @@
>   #if !defined(_I915_TRACE_H_) || defined(TRACE_HEADER_MULTI_READ)
>   #define _I915_TRACE_H_
>   
> +#if defined(CONFIG_PREEMPT_RT) && !defined(NOTRACE)
> +#define NOTRACE
> +#endif
> +
>   #include <linux/stringify.h>
>   #include <linux/types.h>
>   #include <linux/tracepoint.h>

If tracing experts said this is the way then it is fine by me.

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

Regards,

Tvrtko
