Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 858ABC00273
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 11:13:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D63D10E39A;
	Thu, 23 Oct 2025 09:13:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="1fXlmugY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DC0E10E39A
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Oct 2025 09:13:53 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id
 5b1f17b1804b1-4710683a644so4413735e9.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Oct 2025 02:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1761210831; x=1761815631;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id:from
 :to:cc:subject:date:message-id:reply-to;
 bh=NfHHB0ltz1D0Az9Copzsn5AnaxkSmSF0s5EExJg5CHs=;
 b=1fXlmugY9OqGIk8VpWZpFO6InhlDavDQGkeTz/YL8IeDB268BR1+LAajwBl71WdIIx
 fgCahnAwO2Vxpgat9Q7OaussmiuYdJiNY1W0673pDDbe70r0XdEWaVkGI0HPYNOo4tq5
 lZK4QBFLnSzXks0ZXbu7MksvqdqDOVPtO+fsES9t0Qhq6705or/XDn8M7jbZD5DkgbPc
 90mp6mQaYTrVNAHk7RyeaLSAYrSkkaWp+Fa5mNC7r9DT37kKNaETK+XEiykomIYhoiPc
 821VUEG5bbqETPRoUXUsKWgKy7V9FuWrcUfVB+OC43cFABelrpzoFrCMCiDsNJ0S693N
 f7Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761210831; x=1761815631;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NfHHB0ltz1D0Az9Copzsn5AnaxkSmSF0s5EExJg5CHs=;
 b=ATkrYm56YaCzA6ce87snqgPeZvtRoqyRgiRedPP6a3Ihu0F+fm8xIMUqNIjlxbyQsC
 ZsKecZQ4D3X59ZLlpVMBev12A7lRH6exr2z2UrV/bkAh0+d92A6S0Y1/ZOwh1M0B+u1p
 UExz5MmuKMmo1HboBowIZ3xoBg5s6KIkzCPVmFM7VFuYSi9wxDZU7anHJYUPoBHqnQ+4
 jxj56Szky/IfeDzqxLzdFlao/lEik2uhpyHuDUIeIGYKbY00IUWpoKN5TBzYF5hrGy1a
 AF5jz5smpD6Hg7trCl79nHRDktMkzQcCfPze9s0WUASC0yju2gt57JSxHUkrKpSlZq1w
 WVww==
X-Forwarded-Encrypted: i=1;
 AJvYcCW3MU3KjyP7GOJmHjOGd5ofLnQG0OjiGLoj0N4viOGhSGzQzJW5kaxi1PDZtz6zM3WDU9wLVXGGxgw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw1WmNhbTZoeLSOv7MtlUF/4J1kbi1bRNB0qL4Qzy3dmFTjc+qj
 IPiV2llJEnYJTIjqXqY2El/Hh+PY864BqJv+RwXzfJq9a6/1MManOcpq6vBg0pv3Cm0=
X-Gm-Gg: ASbGnctTpeTmAuXzsQNczF3Erte+sO7jlDUXEUMtLZYL+m6h+emxHA1L6r0PCKvxjaD
 qyeiy/dVdft1J2GdcVEOs9ZdD+504wMluZoFXh9HZWM4JzNUOdUgkOi3XjNTEIMEdkFHMMfYx9/
 QYkm2EHS2HtZTS96Zm5E0sgWsb5Bjn7ggTcR9YGL/l9OFonyJIdF82hxUmNG4c9+7uQmth1VtH7
 YTFR84+nS6ycbUO2cSiPrUeBCRuB6W81jyYnEN34MUTEdgoiDqbIeYNqJKVnurRkCBERHtixwdI
 oGEDPwBPcBXmCa4tS1Ppi1aQ8+9nvjHw7N+xUsokV/CCRXY0RT8t36q0AgMLhPTweKrm3spZY1H
 zoN1dHxiuEeOqU2hosCgm5PjkakmBGZBQlL1GD13wn+Ct0HNRBTSKm61hveC/Wlf8kAdX62fkgV
 4VuX5babuEjMnkLN8bwwGRgq25WQ==
X-Google-Smtp-Source: AGHT+IErJdoKTHOCuq58vWuh1QuMYfh1jPVfVfuc2ywansAb1cEnjVuFELonId4J9rG7Ytx0xUXsBw==
X-Received: by 2002:a05:600c:4593:b0:45c:b6d3:a11d with SMTP id
 5b1f17b1804b1-475c3f96e87mr47945385e9.1.1761210831466; 
 Thu, 23 Oct 2025 02:13:51 -0700 (PDT)
Received: from [192.168.0.101] ([90.242.12.242])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-47494b365adsm55945625e9.6.2025.10.23.02.13.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Oct 2025 02:13:50 -0700 (PDT)
Message-ID: <8a821106-5e6c-4c52-813a-ff5cb6f46b00@ursulin.net>
Date: Thu, 23 Oct 2025 10:13:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/rps: convert rps interface to struct drm_device
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20251023074536.850332-1-jani.nikula@intel.com>
 <4b33f6ee-3e73-4b46-8638-811db6d8dfb8@ursulin.net>
 <6b663098ad7777fbb87cc954d11b68b4f911d44e@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <6b663098ad7777fbb87cc954d11b68b4f911d44e@intel.com>
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


On 23/10/2025 09:55, Jani Nikula wrote:
> On Thu, 23 Oct 2025, Tvrtko Ursulin <tursulin@ursulin.net> wrote:
>> On 23/10/2025 08:45, Jani Nikula wrote:
>>> Reduce the display dependency on struct drm_i915_private and i915_drv.h
>>> by converting the rps interface to struct drm_device.
>>>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>    .../gpu/drm/i915/display/intel_display_rps.c   | 12 +++++-------
>>>    drivers/gpu/drm/i915/gt/intel_rps.c            | 18 ++++++++++++++++--
>>>    drivers/gpu/drm/i915/gt/intel_rps.h            |  7 ++++---
>>>    3 files changed, 25 insertions(+), 12 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
>>> index 82ea1ec482e4..8bf0f8cb6574 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_rps.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
>>> @@ -3,12 +3,14 @@
>>>     * Copyright © 2023 Intel Corporation
>>>     */
>>>    
>>> +#include <linux/dma-fence.h>
>>> +
>>>    #include <drm/drm_crtc.h>
>>>    #include <drm/drm_vblank.h>
>>>    
>>>    #include "gt/intel_rps.h"
>>> -#include "i915_drv.h"
>>>    #include "i915_reg.h"
>>> +#include "i915_request.h"
>>>    #include "intel_display_core.h"
>>>    #include "intel_display_irq.h"
>>>    #include "intel_display_rps.h"
>>> @@ -77,12 +79,10 @@ void intel_display_rps_mark_interactive(struct intel_display *display,
>>>    					struct intel_atomic_state *state,
>>>    					bool interactive)
>>>    {
>>> -	struct drm_i915_private *i915 = to_i915(display->drm);
>>> -
>>>    	if (state->rps_interactive == interactive)
>>>    		return;
>>>    
>>> -	intel_rps_mark_interactive(&to_gt(i915)->rps, interactive);
>>> +	intel_rps_mark_interactive(display->drm, interactive);
>>>    	state->rps_interactive = interactive;
>>>    }
>>>    
>>> @@ -102,7 +102,5 @@ void ilk_display_rps_disable(struct intel_display *display)
>>>    
>>>    void ilk_display_rps_irq_handler(struct intel_display *display)
>>>    {
>>> -	struct drm_i915_private *i915 = to_i915(display->drm);
>>> -
>>> -	gen5_rps_irq_handler(&to_gt(i915)->rps);
>>> +	gen5_rps_irq_handler(display->drm);
>>>    }
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
>>> index b01c837ab646..a2c502609d96 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
>>> @@ -782,7 +782,7 @@ static void gen6_rps_set_thresholds(struct intel_rps *rps, u8 val)
>>>    	mutex_unlock(&rps->power.mutex);
>>>    }
>>>    
>>> -void intel_rps_mark_interactive(struct intel_rps *rps, bool interactive)
>>> +static void _intel_rps_mark_interactive(struct intel_rps *rps, bool interactive)
>>>    {
>>>    	GT_TRACE(rps_to_gt(rps), "mark interactive: %s\n",
>>>    		 str_yes_no(interactive));
>>> @@ -798,6 +798,13 @@ void intel_rps_mark_interactive(struct intel_rps *rps, bool interactive)
>>>    	mutex_unlock(&rps->power.mutex);
>>>    }
>>>    
>>> +void intel_rps_mark_interactive(struct drm_device *drm, bool interactive)
>>> +{
>>> +	struct drm_i915_private *i915 = to_i915(drm);
>>> +
>>> +	_intel_rps_mark_interactive(&to_gt(i915)->rps, interactive);
>>> +}
>>> +
>>>    static int gen6_rps_set(struct intel_rps *rps, u8 val)
>>>    {
>>>    	struct intel_uncore *uncore = rps_to_uncore(rps);
>>> @@ -1953,7 +1960,7 @@ void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
>>>    			"Command parser error, pm_iir 0x%08x\n", pm_iir);
>>>    }
>>>    
>>> -void gen5_rps_irq_handler(struct intel_rps *rps)
>>> +static void _gen5_rps_irq_handler(struct intel_rps *rps)
>>>    {
>>>    	struct intel_uncore *uncore = rps_to_uncore(rps);
>>>    	u32 busy_up, busy_down, max_avg, min_avg;
>>> @@ -1987,6 +1994,13 @@ void gen5_rps_irq_handler(struct intel_rps *rps)
>>>    	spin_unlock(&mchdev_lock);
>>>    }
>>>    
>>> +void gen5_rps_irq_handler(struct drm_device *drm)
>>> +{
>>> +	struct drm_i915_private *i915 = to_i915(drm);
>>> +
>>> +	_gen5_rps_irq_handler(&to_gt(i915)->rps);
>>> +}
>>> +
>>>    void intel_rps_init_early(struct intel_rps *rps)
>>>    {
>>>    	mutex_init(&rps->lock);
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
>>> index 92fb01f5a452..c817a70fb3aa 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_rps.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_rps.h
>>> @@ -9,8 +9,9 @@
>>>    #include "intel_rps_types.h"
>>>    #include "i915_reg_defs.h"
>>>    
>>> -struct i915_request;
>>> +struct drm_device;
>>>    struct drm_printer;
>>> +struct i915_request;
>>>    
>>>    #define GT_FREQUENCY_MULTIPLIER 50
>>>    #define GEN9_FREQ_SCALER 3
>>> @@ -33,7 +34,7 @@ u32 intel_rps_get_boost_frequency(struct intel_rps *rps);
>>>    int intel_rps_set_boost_frequency(struct intel_rps *rps, u32 freq);
>>>    
>>>    int intel_rps_set(struct intel_rps *rps, u8 val);
>>> -void intel_rps_mark_interactive(struct intel_rps *rps, bool interactive);
>>> +void intel_rps_mark_interactive(struct drm_device *drm, bool interactive);
>>
>> This one breaks the design a bit since RPS is supposed to be per GT. On
>> the other hand intel_display_rps_mark_interactive is the only caller so
>> if it only wants to care about the primary GT thats probably okay.
>>
>> Presumably you don't want a for_each_gt in the display code either.
>>
>> Would it work to put a helper which did it for you somewhere one level
>> up from per gt (gt/) components? Sounds like for the end goal of proper
>> abstraction that would be the way. Getting rid of the #ifdef from
>> intel_display_rps.h and each driver would then implement the required
>> hooks to do what they want.
> 
> See [1]. We might add display->parent->rps, and call the hooks via
> that. But even so, they'll need interfaces that are independent of gt,
> so something like the patch at hand will be needed. I don't particularly
> care if the functions on i915 core side are in gt/ or somewhere else.

Okay, but from my point of view intel_rps_mark_interactive() should 
remain taking rps. This is the design of all components under gt/ and I 
do not think we should break it for this case. So for me a new helper 
somewhere one level above gt/ sounds like the way to go. That one is 
then perfectly fine to operate on the device. Pull out existing 
intel_display_rps_mark_interactive() out from display and rename to 
something like intel_display_mark_interactive(). As a first step. Xe can 
stub it out in compat headers rather than #ifdefs in the display code.

Regards,

Tvrtko
> [1] https://lore.kernel.org/r/20251022085548.876150-2-jouni.hogander@intel.com
> 
>>
>> Regards,
>>
>> Tvrtko
>>>    int intel_gpu_freq(struct intel_rps *rps, int val);
>>>    int intel_freq_opcode(struct intel_rps *rps, int val);
>>> @@ -64,7 +65,7 @@ bool rps_read_mask_mmio(struct intel_rps *rps, i915_reg_t reg32, u32 mask);
>>>    
>>>    void gen6_rps_frequency_dump(struct intel_rps *rps, struct drm_printer *p);
>>>    
>>> -void gen5_rps_irq_handler(struct intel_rps *rps);
>>> +void gen5_rps_irq_handler(struct drm_device *drm);
>>>    void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir);
>>>    void gen11_rps_irq_handler(struct intel_rps *rps, u32 pm_iir);
>>>    
>>
> 

