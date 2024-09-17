Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E7E97AF35
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 12:58:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1CA210E15D;
	Tue, 17 Sep 2024 10:58:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hyEEu/as";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E28F010E0BA;
 Tue, 17 Sep 2024 10:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726570705; x=1758106705;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2c7W4MA7crR+usWbrUN6tGpOQPk1ZULDldpxYD/f0MQ=;
 b=hyEEu/aslZXQWpsMK47n9/S/AxpZCf7KR9kLZo22sNNym08zcEsz4tfU
 jaaEwl/DSmsPJxhrXGalxu0eaV+wRgIg/wqnyxipviw3MuJ+brLD3xbe1
 Bf40eEQt2ZQ8ofnELWRnSFIc1kmshED9D7rS3Ul+KY/QPu1THdbewAbH6
 oBIAUx4lJWTs3Tm/FFE5eYcgOEfleq1m8ShV3g5cGhySWEKekSZs22/qo
 3dQ3DonG/AvxZHH5I5RIBbwaSe4mvgYgYvMofyBbgCbspkKfxsvi+TeWK
 iK7pL/nUTU6kav8QRnvWL/Cm+IXNP7ja6TGkv4CzaHousCq1opw+yrqaj w==;
X-CSE-ConnectionGUID: BCU155uPQgK/GhEZ/rxoUg==
X-CSE-MsgGUID: WF4gAtSfT5WLSmjFv2Fycg==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="42895140"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="42895140"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 03:58:25 -0700
X-CSE-ConnectionGUID: TM1nJLhtQpCmM+yUF5u9tQ==
X-CSE-MsgGUID: iedZbYgJTxyr8HE81gnzbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69371525"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 03:58:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tursulin@ursulin.net>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Ville Syrjala <ville.syrjala@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915/display: remove small micro-optimizations
 in irq handling
In-Reply-To: <52605aa7-7067-4ba2-aed8-feeb7aa67032@ursulin.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240408125445.3227678-1-jani.nikula@intel.com>
 <lh5rutbeu54tjlp2o477nb4xuqyblgjh7nemgecizqrceidabc@hcuihs4fxh6n>
 <875xwfxapf.fsf@intel.com>
 <52605aa7-7067-4ba2-aed8-feeb7aa67032@ursulin.net>
Date: Tue, 17 Sep 2024 13:58:19 +0300
Message-ID: <877cbaczsk.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 18 Apr 2024, Tvrtko Ursulin <tursulin@ursulin.net> wrote:
> On 18/04/2024 10:49, Jani Nikula wrote:
>> On Wed, 17 Apr 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>> On Mon, Apr 08, 2024 at 03:54:44PM GMT, Jani Nikula wrote:
>>>> The raw register reads/writes are there as micro-optimizations to avoid
>>>> multiple pointer indirections on uncore->regs. Presumably this is useful
>>>> when there are plenty of register reads/writes in the same
>>>> function. However, the display irq handling only has a few raw
>>>> reads/writes. Remove them for simplification.
>>>
>>> I think that comment didn't age well. Not to say there's something wrong
>>> with this commit, but just to make sure we are aware of the additional
>>> stuff going on and we if we are ok with that.
>>>
>>> using intel_de_read() in place of raw_reg_read() will do (for newer
>>> platforms):
>>>
>>> 	1) Read FPGA_DBG to detect unclaimed access before the actual read
>>> 	2) Find the relevant forcewake for that register, acquire and wait for ack
>>> 	3) readl(reg)
>>> 	4) Read FPGA_DBG to detect unclaimed access after the actual read
>>> 	5) Trace reg rw
>>>
>>> That's much more than a pointer indirection. Are we ok with that in the
>>> irq?  Also, I don't know why but we have variants to skip tracing (step
>>> 5 above), but on my books a disabled tracepoint is order of magnitudes
>>> less overhead than 1, 2 and 4.
>> 
>> Honestly, I don't really know.
>> 
>> The thing is, we have these ad hoc optimizations all over the place. Why
>> do we have the raw access in two places, but not everywhere in irq
>> handling? The pointer indirection thing really only makes sense if you
>> have a lot of access in a function, but that's not the case. You do have
>> a point about everything else.
>
> The "why only two" places is I think simply an artefact of refactoring 
> and code evolution. Initially all IRQ handling was in one function, then 
> later gen11 and display parts got split out as more platforms were 
> added. For example a3265d851e28 ("drm/i915/irq: Refactor gen11 display 
> interrupt handling").
>
> As for the original rationale, it was described in commits like:
>
> 2e4a5b25886c ("drm/i915: Prune gen8_gt_irq_handler")
> c48a798a7447 ("drm/i915: Trim the ironlake+ irq handler")
>
> Obviosuly, once a portion of a handler was/is extracted, pointer caching 
> to avoid uncore->regs reloads may not make full sense any more due 
> function calls potentially overshadowing that cost.
>
> As for unclaimed debug, I would say it is probably okay to not burden 
> the irq handlers with it, but if the display folks think a little bit of 
> extra cost in this sub-handlers is fine that would sound plausible to me 
> given the frequency of display related interrupts is low. So for me 
> patch is fine if it makes the display decoupling easier.
>
>> What would the interface be like if display were its own module? We
>> couldn't just wrap it all in a bunch of macros and static inlines. Is
>> the end result that display irq handling needs to call functions via
>> pointers in another module? Or do we need to move the register level irq
>> handling to xe and i915 cores, and handle the display parts at a higher
>> abstraction level?
>
> AFAIR no trace variants were not for performance but to avoid log spam 
> when debugging stuff. From things like busy/polling loops.

Bumping a forgotten topic.

Ville, Rodrigo, are we okay with the changes here?

BR,
Jani.

>
> Regards,
>
> Tvrtko
>>>
>>> btw, if we drop the raw accesses, then we can probably drop (1) above.
>>>
>>> Lucas De Marchi
>>>
>>>>
>>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>> ---
>>>> drivers/gpu/drm/i915/display/intel_display_irq.c | 15 +++++++--------
>>>> 1 file changed, 7 insertions(+), 8 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
>>>> index f846c5b108b5..d4ae9139be39 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>>>> @@ -1148,15 +1148,14 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>>>>
>>>> u32 gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32 master_ctl)
>>>> {
>>>> -	void __iomem * const regs = intel_uncore_regs(&i915->uncore);
>>>> 	u32 iir;
>>>>
>>>> 	if (!(master_ctl & GEN11_GU_MISC_IRQ))
>>>> 		return 0;
>>>>
>>>> -	iir = raw_reg_read(regs, GEN11_GU_MISC_IIR);
>>>> +	iir = intel_de_read(i915, GEN11_GU_MISC_IIR);
>>>> 	if (likely(iir))
>>>> -		raw_reg_write(regs, GEN11_GU_MISC_IIR, iir);
>>>> +		intel_de_write(i915, GEN11_GU_MISC_IIR, iir);
>>>>
>>>> 	return iir;
>>>> }
>>>> @@ -1169,18 +1168,18 @@ void gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 iir)
>>>>
>>>> void gen11_display_irq_handler(struct drm_i915_private *i915)
>>>> {
>>>> -	void __iomem * const regs = intel_uncore_regs(&i915->uncore);
>>>> -	const u32 disp_ctl = raw_reg_read(regs, GEN11_DISPLAY_INT_CTL);
>>>> +	u32 disp_ctl;
>>>>
>>>> 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
>>>> 	/*
>>>> 	 * GEN11_DISPLAY_INT_CTL has same format as GEN8_MASTER_IRQ
>>>> 	 * for the display related bits.
>>>> 	 */
>>>> -	raw_reg_write(regs, GEN11_DISPLAY_INT_CTL, 0x0);
>>>> +	disp_ctl = intel_de_read(i915, GEN11_DISPLAY_INT_CTL);
>>>> +
>>>> +	intel_de_write(i915, GEN11_DISPLAY_INT_CTL, 0);
>>>> 	gen8_de_irq_handler(i915, disp_ctl);
>>>> -	raw_reg_write(regs, GEN11_DISPLAY_INT_CTL,
>>>> -		      GEN11_DISPLAY_IRQ_ENABLE);
>>>> +	intel_de_write(i915, GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);
>>>>
>>>> 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>>>> }
>>>> -- 
>>>> 2.39.2
>>>>
>> 

-- 
Jani Nikula, Intel
