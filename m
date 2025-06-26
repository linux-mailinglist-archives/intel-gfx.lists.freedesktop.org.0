Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5111AE9BBB
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 12:46:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A046510E894;
	Thu, 26 Jun 2025 10:46:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eATw926p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7A3D10E031;
 Thu, 26 Jun 2025 10:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750934804; x=1782470804;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=h+bNHNaQuxPjix43ySHDI9RgDW1++St/0DJGlbI7VL0=;
 b=eATw926pY5/tMBgaO7avt99kFkmb8Uhw9HkmhQCe5GcRsZtshrIQPQKK
 Ym9wrRJcRjB4gEfXkKi9yP9ITkqEPDCPEJrbbRUGsB7Nah1rrtpSnxtol
 p8CVniCGzCbY5JZ/NqpI2ooepVeO8PCXb62x0E4iu8mZN++A4TMkFfSrt
 sbY2xeS1FtAxFSqIaAXNa57xXeSicyQiEZ+dsJxF5DuPyz+TBxnAoNHVH
 +TkYTaIMMbmsBTmC/83dhG1s8K9fdJiuPlVkIotmiMZ98uJUjug4uVTjP
 0ifZb8ppB7/r7CqSTTfXltldYiRnGFHqa+llsS5tmAwfn/vbBSPZ7O/NV w==;
X-CSE-ConnectionGUID: +yR3Ci2UTjWzL9ClnIx0/Q==
X-CSE-MsgGUID: Tg+FdFcVRLiATvzcLszGgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="64287331"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="64287331"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 03:46:32 -0700
X-CSE-ConnectionGUID: zb6OATTFT+2muF5DXNwQng==
X-CSE-MsgGUID: o6vOERFRSSmYYQjHSOg8eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152245902"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.120])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 03:46:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Imre
 Deak <imre.deak@gmail.com>
Subject: Re: [PATCH 11/20] drm/i915/dp: Reprobe connector if getting/acking
 device IRQs fails
In-Reply-To: <aF0kbmZ34PeclKW_@ideak-desk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-12-imre.deak@intel.com>
 <625ce1c9c46ba93027fecadae4803fc86450ad50@intel.com>
 <aF0UbRD7DLIwZRYe@ideak-desk>
 <9ef664aa1e833ee6c3f97533da4a0d828a03f9f2@intel.com>
 <aF0kbmZ34PeclKW_@ideak-desk>
Date: Thu, 26 Jun 2025 13:46:27 +0300
Message-ID: <9cef5bf7a30fca73313e9b178bf65f1ac2842141@intel.com>
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

On Thu, 26 Jun 2025, Imre Deak <imre.deak@intel.com> wrote:
> On Thu, Jun 26, 2025 at 01:23:12PM +0300, Jani Nikula wrote:
>> On Thu, 26 Jun 2025, Imre Deak <imre.deak@intel.com> wrote:
>> > On Thu, Jun 26, 2025 at 12:12:11PM +0300, Jani Nikula wrote:
>> >> On Thu, 26 Jun 2025, Imre Deak <imre.deak@intel.com> wrote:
>> >> > From: Imre Deak <imre.deak@gmail.com>
>> >> >
>> >> > An AUX access failure during HPD IRQ handling should be handled by
>> >> > falling back to a full connector detection, ensure that if the failure
>> >> > happens while reading/acking a device service IRQ.
>> >> >
>> >> > Signed-off-by: Imre Deak <imre.deak@gmail.com>
>> >> > ---
>> >> >  drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++++++------
>> >> >  1 file changed, 15 insertions(+), 6 deletions(-)
>> >> >
>> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> >> > index 7793a72983abd..7eb208d2c321b 100644
>> >> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> >> > @@ -5393,16 +5393,20 @@ void intel_dp_check_link_state(struct intel_dp *intel_dp)
>> >> >  	intel_encoder_link_check_queue_work(encoder, 0);
>> >> >  }
>> >> >  
>> >> > -static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
>> >> > +static bool intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
>> >> 
>> >> I don't think "check" is very intuitive in function names. Check
>> >> something, but then what? Is it like an assert or does it do something
>> >> active or what?
>> >> 
>> >> What does a boolean return from a check function mean?
>> >> 
>> >> It's not obvious to the reader at all.
>> >
>> > I agree, but in this patch I didn't want to change the function name.
>> 
>> Arguably adding a return value changes the meaning already...
>> 
>> >
>> >> 
>> >> >  {
>> >> >  	struct intel_display *display = to_intel_display(intel_dp);
>> >> >  	u8 val;
>> >> >  
>> >> >  	if (drm_dp_dpcd_readb(&intel_dp->aux,
>> >> > -			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1 || !val)
>> >> > -		return;
>> >> > +			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1)
>> >> > +		return true;
>> >> 
>> >> Looks like true means the check failed... while usually true for boolean
>> >> functions means success.
>> >
>> > The function returns true as before if a full connector detection is needed.
>> 
>> But it didn't return anything before! And that meaning is not conveyed
>> to the reader in *any* reasonable way!
>
> This function is the counterpart of intel_dp_check_link_service_irq()
> both functions having the same purpose, reading and handling HPD IRQs.
> The latter one's return value is true if a reprobe is needed and this
> patch doesn't change that, it keeps the two functions behave the same
> way.
>
>> The absolute minimum is to add a comment (mind you, kernel-doc is
>> overkill) stating what the return value means.
>
> The function name will change in a follow-up patch and I think that
> doesn't require a comment on the return value.
>
>> >> 
>> >> >  
>> >> > -	drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val);
>> >> > +	if (!val)
>> >> > +		return false;
>> >> > +
>> >> > +	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val) != 1)
>> >> > +		return true;
>> >> >  
>> >> >  	if (val & DP_AUTOMATED_TEST_REQUEST)
>> >> >  		intel_dp_test_request(intel_dp);
>> >> 
>> >> Whoa, it's not a *check* function at all?! It actually *handles* the
>> >> service irqs.
>> >> 
>> >> Can we rephrase the function name?
>> >
>> > I want to keep the function name in this patch. In the following patches
>> > I will separate this part and rename it to
>> > intel_dp_get_and_ack_device_service_irq(). 
>> 
>> Right, saw that now. But even for that function name the meaning of the
>> return value is ambiguous.
>
> All the get/ack IRQ functions in intel_dp.c return true for success.

Argh. You just said it doesn't mean success/failure, it means if full
connector detection is needed?!

BR,
Jani


>
>> 
>> BR,
>> Jani.
>> 
>> >
>> >
>> >> int intel_dp_handle_device_service_irq() and int returns maybe?
>> >> BR,
>> >> Jani.
>> >> 
>> >> > @@ -5412,6 +5416,8 @@ static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
>> >> >  
>> >> >  	if (val & DP_SINK_SPECIFIC_IRQ)
>> >> >  		drm_dbg_kms(display->drm, "Sink specific irq unhandled\n");
>> >> > +
>> >> > +	return false;
>> >> >  }
>> >> >  
>> >> >  static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
>> >> > @@ -5476,8 +5482,11 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
>> >> >  		/* No need to proceed if we are going to do full detect */
>> >> >  		return false;
>> >> >  
>> >> > -	intel_dp_check_device_service_irq(intel_dp);
>> >> > -	reprobe_needed = intel_dp_check_link_service_irq(intel_dp);
>> >> > +	if (intel_dp_check_device_service_irq(intel_dp))
>> >> > +		reprobe_needed = true;
>> >> > +
>> >> > +	if (intel_dp_check_link_service_irq(intel_dp))
>> >> > +		reprobe_needed = true;
>> >> >  
>> >> >  	/* Handle CEC interrupts, if any */
>> >> >  	drm_dp_cec_irq(&intel_dp->aux);
>> >> 
>> >> -- 
>> >> Jani Nikula, Intel
>> 
>> -- 
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
