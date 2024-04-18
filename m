Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCC28A97FD
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 12:57:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0ABD113B82;
	Thu, 18 Apr 2024 10:57:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="ySRCcE15";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
 [209.85.208.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12D5B113B86
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Apr 2024 10:57:31 +0000 (UTC)
Received: by mail-lj1-f170.google.com with SMTP id
 38308e7fff4ca-2da84f93c99so10999981fa.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Apr 2024 03:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1713437849; x=1714042649;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=j1ldUmc6RXKhG4+WUAmYoQ7CpY9rItAMgVpywgWWHcc=;
 b=ySRCcE156W0wO08H6aqSj2K6V/9AKg+agqf9L/DCEtnDnvHY1NqW/rGg+MAXSj8zD+
 NVlMPp/FDi4BNfVsTGSccErsf23VmwSocdAa83cL6JXntnpyrM07qvMlMc9Nrzsqfaoc
 JgxYcJLNagdHQcORb2EOPO1zvfWZi2pbWMWoo8he6oY5/7uf278dbADs9Delntcqshud
 owOIwghPq/mFasvD480OHfVFcDE4yXzymwn6Hos20qH1V/EeD8jxvK00CrqNNyDPtNVL
 fYWL4XUOUxm8gfLEmp69MoWfMmZeseFyoDXVeW6xQB53QVGfYZr66eov2HfKJbq9V6IK
 woEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713437849; x=1714042649;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=j1ldUmc6RXKhG4+WUAmYoQ7CpY9rItAMgVpywgWWHcc=;
 b=ngbTVUTByYjEQ8qfZDnupUmAoYYI7gBLAZKxsfmLvjLSNRnCR1NxCE7SgHJLwhEoce
 7yoZdhIW14op/aeoBrpt/Ov1bsqeK0cIqlObkQQ+rUsPeJ1ObbTgS14igUBjd86U0NYY
 QpFW7/1XSZKsBN9Rz/IwULD1cTVW0PYdTbJoX80UgJ/CyiH32yBkyTy45mjMPC2bdgTB
 o0TaGa94kfzWncfnWOx7na+1Adh5LuMDBYKz76db9Bq2gVb7jO54ENmgcB9bi/AMZbEX
 oDyTuRNzC59pm6+wdj9gjC3eYgRpwPl5yG8lCuDiB6jJo4iKqQYr4N8LKu1aT5bTGuI8
 wWNA==
X-Gm-Message-State: AOJu0Yw2H5BKMoJkay7oRxhUtL1vXf7IQ5kECjrUzN36c8KTKJyhJtwj
 0xzVyTNdiQpaB8NQvT6aa2U/4+9bRfiarjGCOE8SjLvtkfBaG3f3fbO0X5RhkHQ=
X-Google-Smtp-Source: AGHT+IFozR9Y4WOEN6FIk7wRLRxOQOJ3KeUemIKmj14vXoHUyFAKE8qDbhxFnQAsEdK51WaBsl/mDQ==
X-Received: by 2002:a2e:9789:0:b0:2da:5f41:10c8 with SMTP id
 y9-20020a2e9789000000b002da5f4110c8mr1757618lji.3.1713437848798; 
 Thu, 18 Apr 2024 03:57:28 -0700 (PDT)
Received: from [192.168.0.101] ([84.65.0.132])
 by smtp.gmail.com with ESMTPSA id
 e15-20020a05600c218f00b004146e58cc35sm5923751wme.46.2024.04.18.03.57.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Apr 2024 03:57:28 -0700 (PDT)
Message-ID: <52605aa7-7067-4ba2-aed8-feeb7aa67032@ursulin.net>
Date: Thu, 18 Apr 2024 11:57:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/display: remove small micro-optimizations in
 irq handling
Content-Language: en-GB
To: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
References: <20240408125445.3227678-1-jani.nikula@intel.com>
 <lh5rutbeu54tjlp2o477nb4xuqyblgjh7nemgecizqrceidabc@hcuihs4fxh6n>
 <875xwfxapf.fsf@intel.com>
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <875xwfxapf.fsf@intel.com>
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


On 18/04/2024 10:49, Jani Nikula wrote:
> On Wed, 17 Apr 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Mon, Apr 08, 2024 at 03:54:44PM GMT, Jani Nikula wrote:
>>> The raw register reads/writes are there as micro-optimizations to avoid
>>> multiple pointer indirections on uncore->regs. Presumably this is useful
>>> when there are plenty of register reads/writes in the same
>>> function. However, the display irq handling only has a few raw
>>> reads/writes. Remove them for simplification.
>>
>> I think that comment didn't age well. Not to say there's something wrong
>> with this commit, but just to make sure we are aware of the additional
>> stuff going on and we if we are ok with that.
>>
>> using intel_de_read() in place of raw_reg_read() will do (for newer
>> platforms):
>>
>> 	1) Read FPGA_DBG to detect unclaimed access before the actual read
>> 	2) Find the relevant forcewake for that register, acquire and wait for ack
>> 	3) readl(reg)
>> 	4) Read FPGA_DBG to detect unclaimed access after the actual read
>> 	5) Trace reg rw
>>
>> That's much more than a pointer indirection. Are we ok with that in the
>> irq?  Also, I don't know why but we have variants to skip tracing (step
>> 5 above), but on my books a disabled tracepoint is order of magnitudes
>> less overhead than 1, 2 and 4.
> 
> Honestly, I don't really know.
> 
> The thing is, we have these ad hoc optimizations all over the place. Why
> do we have the raw access in two places, but not everywhere in irq
> handling? The pointer indirection thing really only makes sense if you
> have a lot of access in a function, but that's not the case. You do have
> a point about everything else.

The "why only two" places is I think simply an artefact of refactoring 
and code evolution. Initially all IRQ handling was in one function, then 
later gen11 and display parts got split out as more platforms were 
added. For example a3265d851e28 ("drm/i915/irq: Refactor gen11 display 
interrupt handling").

As for the original rationale, it was described in commits like:

2e4a5b25886c ("drm/i915: Prune gen8_gt_irq_handler")
c48a798a7447 ("drm/i915: Trim the ironlake+ irq handler")

Obviosuly, once a portion of a handler was/is extracted, pointer caching 
to avoid uncore->regs reloads may not make full sense any more due 
function calls potentially overshadowing that cost.

As for unclaimed debug, I would say it is probably okay to not burden 
the irq handlers with it, but if the display folks think a little bit of 
extra cost in this sub-handlers is fine that would sound plausible to me 
given the frequency of display related interrupts is low. So for me 
patch is fine if it makes the display decoupling easier.

> What would the interface be like if display were its own module? We
> couldn't just wrap it all in a bunch of macros and static inlines. Is
> the end result that display irq handling needs to call functions via
> pointers in another module? Or do we need to move the register level irq
> handling to xe and i915 cores, and handle the display parts at a higher
> abstraction level?

AFAIR no trace variants were not for performance but to avoid log spam 
when debugging stuff. From things like busy/polling loops.

Regards,

Tvrtko
>>
>> btw, if we drop the raw accesses, then we can probably drop (1) above.
>>
>> Lucas De Marchi
>>
>>>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>> drivers/gpu/drm/i915/display/intel_display_irq.c | 15 +++++++--------
>>> 1 file changed, 7 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
>>> index f846c5b108b5..d4ae9139be39 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>>> @@ -1148,15 +1148,14 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>>>
>>> u32 gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32 master_ctl)
>>> {
>>> -	void __iomem * const regs = intel_uncore_regs(&i915->uncore);
>>> 	u32 iir;
>>>
>>> 	if (!(master_ctl & GEN11_GU_MISC_IRQ))
>>> 		return 0;
>>>
>>> -	iir = raw_reg_read(regs, GEN11_GU_MISC_IIR);
>>> +	iir = intel_de_read(i915, GEN11_GU_MISC_IIR);
>>> 	if (likely(iir))
>>> -		raw_reg_write(regs, GEN11_GU_MISC_IIR, iir);
>>> +		intel_de_write(i915, GEN11_GU_MISC_IIR, iir);
>>>
>>> 	return iir;
>>> }
>>> @@ -1169,18 +1168,18 @@ void gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 iir)
>>>
>>> void gen11_display_irq_handler(struct drm_i915_private *i915)
>>> {
>>> -	void __iomem * const regs = intel_uncore_regs(&i915->uncore);
>>> -	const u32 disp_ctl = raw_reg_read(regs, GEN11_DISPLAY_INT_CTL);
>>> +	u32 disp_ctl;
>>>
>>> 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
>>> 	/*
>>> 	 * GEN11_DISPLAY_INT_CTL has same format as GEN8_MASTER_IRQ
>>> 	 * for the display related bits.
>>> 	 */
>>> -	raw_reg_write(regs, GEN11_DISPLAY_INT_CTL, 0x0);
>>> +	disp_ctl = intel_de_read(i915, GEN11_DISPLAY_INT_CTL);
>>> +
>>> +	intel_de_write(i915, GEN11_DISPLAY_INT_CTL, 0);
>>> 	gen8_de_irq_handler(i915, disp_ctl);
>>> -	raw_reg_write(regs, GEN11_DISPLAY_INT_CTL,
>>> -		      GEN11_DISPLAY_IRQ_ENABLE);
>>> +	intel_de_write(i915, GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);
>>>
>>> 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>>> }
>>> -- 
>>> 2.39.2
>>>
> 
