Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34AFCB14E5A
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 15:27:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A49910E2AE;
	Tue, 29 Jul 2025 13:27:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KVSoglhQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B99E910E28E;
 Tue, 29 Jul 2025 13:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753795652; x=1785331652;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=hxNAAADhv9Y0BJrV20Da5AFyTVNvS7w5D74lpvB5g/s=;
 b=KVSoglhQsB5bK4z9/fgL2j7X6ck9b11alehgyVk9E5IFbiEFGIZYHNF8
 6gmhygsRm/tQXHgWS/px0Jzlv4JzIxzwjurOitWMuIfNJObBPPVOzsafO
 kMPXU9LLzFjNwjzFLk2wgSkLUyF6dbJ2eJSpe9JOQtzNw+CSVRBSn3neh
 XB6FmpSvTnnkNkugsYSqgxT31HR3ajZu7sycCF9AHjNIwEoFSmmHucFKX
 Zj4SXmYVtTd9ZD4KOwwqazBN8dHwkolFY1sahlxCc+BZap6bwLkbeigzh
 ffZ1bwdnq9gKIi5N5k1icTVKJ1g9GptX7XwQVGAeW0UKNRr1HCQHHF5iL Q==;
X-CSE-ConnectionGUID: BK7Wb4eeTsigcN0cL0N2vQ==
X-CSE-MsgGUID: K0BAVknPRHeA0cDTQuf6Dw==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="66768191"
X-IronPort-AV: E=Sophos;i="6.16,349,1744095600"; d="scan'208";a="66768191"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 06:27:31 -0700
X-CSE-ConnectionGUID: KwgsnUxwQ1uTQVmN8gFTJg==
X-CSE-MsgGUID: jwgFp+s6QqWXjIAQPm8a6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,349,1744095600"; d="scan'208";a="168104318"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.22])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 06:27:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, arun.r.murthy@intel.com
Subject: Re: [PATCH v4] drm/i915/display: Optimize panel power-on wait time
In-Reply-To: <22f5e747-a7d9-4c7e-a132-3a64cd52e6a4@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250728051237.2322256-1-dibin.moolakadan.subrahmanian@intel.com>
 <018afd66168bd9a55abe4e14c24e9b11a89ab15c@intel.com>
 <22f5e747-a7d9-4c7e-a132-3a64cd52e6a4@intel.com>
Date: Tue, 29 Jul 2025 16:27:26 +0300
Message-ID: <ca3b32f7b594383d07476efd84ac40dadfa34f08@intel.com>
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

On Tue, 29 Jul 2025, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
> On 29-07-2025 13:47, Jani Nikula wrote:
>> On Mon, 28 Jul 2025, Dibin Moolakadan Subrahmanian<dibin.moolakadan.subrahmanian@intel.com> wrote:
>>>   The current wait_panel_status() uses intel_de_wait() with a long timeout
>>>   (5000ms), which is suboptimal on Xe platforms where the underlying
>>>   xe_mmio_wait32() employs an exponential backoff strategy. This leads
>>>   to unnecessary delays during resume or power-on  when the panel becomes
>>>   ready earlier than the full timeout.
>> It's not about the timeout, it's about the exponentially increasing poll
>> delay.
>>
>>>   This patch replaces intel_de_wait() with read_poll_timeout() +
>>>   intel_de_read() to actively poll the register at given interval and exit
>>>   early when panel is ready, improving resume latency
>> Please do not say "this patch" in commit messages. Just use the
>> imperative "Replace ...".
>>
>> The commit messages is unnecessarily indented with a space.
>
> will correct this.
>
>>
>>> Changes in v2:
>>>   Replaced  two-phase intel_de_wait() with  read_poll_timeout()
>>>   + intel_de_read()
>>>
>>> Changes in v3:
>>>   - Add poll_interval_ms argument  'wait_panel_status' function.
>>>   - Modify 'wait_panel_status' callers with proper poll interval
>>>
>>> Changes in v4:
>>>   - Change 'wait_panel_off' poll interval to 10ms
>>>
>>> Signed-off-by: Dibin Moolakadan Subrahmanian<dibin.moolakadan.subrahmanian@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_pps.c | 41 +++++++++++++++++-------
>>>   1 file changed, 30 insertions(+), 11 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
>>> index b64d0b30f5b1..56ef835fc2eb 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>>> @@ -22,6 +22,7 @@
>>>   #include "intel_pps.h"
>>>   #include "intel_pps_regs.h"
>>>   #include "intel_quirks.h"
>>> +#include <linux/iopoll.h>
>> Please look at how includes are ordered in every single file in i915.
>
> will correct this.
>
>>
>>>   static void vlv_steal_power_sequencer(struct intel_display *display,
>>>   				      enum pipe pipe);
>>> @@ -600,14 +601,18 @@ void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
>>>   #define IDLE_CYCLE_MASK		(PP_ON | PP_SEQUENCE_MASK | PP_CYCLE_DELAY_ACTIVE | PP_SEQUENCE_STATE_MASK)
>>>   #define IDLE_CYCLE_VALUE	(0     | PP_SEQUENCE_NONE | 0                     | PP_SEQUENCE_STATE_OFF_IDLE)
>>>   
>>> +#define PANEL_MAXIMUM_ON_TIME_MS		(5000)
>> The name of the macro is misleading. For single-use things, maybe better
>> to just keep the value inline as it were.
>>
>> Side note, the parenthesis are superfluous here.
>
> will correct this.
>
>>> +
>>>   static void intel_pps_verify_state(struct intel_dp *intel_dp);
>>>   
>>>   static void wait_panel_status(struct intel_dp *intel_dp,
>>> -			      u32 mask, u32 value)
>>> +			      u32 mask, u32 value, int poll_interval_ms)
>> Can we not add the extra parameter please? Can we have a meaningful
>> default instead? 10 ms? Is the 1 ms poll interval really required?
>
> Motive behind adding new parameter is to adjust the poll time based on case.
> Currently each call is taking different time to complete as below
> for panel power off time   - 82 ms
> for panel power cycle      - 0.074 ms
> for panel power on         -  327 ms
>
> Making default poll interval 10ms will  increase panel power cycle time  to 10ms

It's still opening a can of worms. The 5 second timeout is relevant for
all cases either, so you'd have to pass *both*. And it's not so simple
anymore.

BR,
Jani.

>
>
>>
>>>   {
>>>   	struct intel_display *display = to_intel_display(intel_dp);
>>>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>>   	i915_reg_t pp_stat_reg, pp_ctrl_reg;
>>> +	int ret;
>>> +	u32 reg_val;
>> Nitpick, usually just "val".
> will correct this.
>>
>>>   	lockdep_assert_held(&display->pps.mutex);
>>>   
>>> @@ -624,14 +629,27 @@ static void wait_panel_status(struct intel_dp *intel_dp,
>>>   		    intel_de_read(display, pp_stat_reg),
>>>   		    intel_de_read(display, pp_ctrl_reg));
>>>   
>>> -	if (intel_de_wait(display, pp_stat_reg, mask, value, 5000))
>>> -		drm_err(display->drm,
>>> -			"[ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
>>> -			dig_port->base.base.base.id, dig_port->base.base.name,
>>> -			pps_name(intel_dp),
>>> -			intel_de_read(display, pp_stat_reg),
>>> -			intel_de_read(display, pp_ctrl_reg));
>>> +	if (poll_interval_ms <= 0)
>>> +		poll_interval_ms = 1; //if <0 is passed go with 1ms
>> Without the parameter, we could get rid of checks like this.
>>
>> The comment just duplicates what the code already says.
>>
>> Also, we don't use // comments.
> will correct this.
>>
>>> +
>>> +	ret = read_poll_timeout(intel_de_read, reg_val,
>>> +				((reg_val & mask) == value),
>>> +				(poll_interval_ms * 1000),  // poll intervell
>>> +				(PANEL_MAXIMUM_ON_TIME_MS * 1000),  // total timeout (us)
>>> +				true,
>>> +				display, pp_stat_reg);
>> The outer parenthesis in the parameters are superfluous.
>>
>> The comments are useless (and have a typo too).
>>
>>> +
>>> +	if (ret == 0)
>>> +		goto panel_wait_complete;
>> We do use goto in kernel, but primarily for error handling. Please use
>>
>> 	if (ret)
>>
>> here, and the whole drm_err() thing remains unchanged, and doesn't
>> become part of the patch...
>>
> will correct this.
>
>>>   
>>> +	drm_err(display->drm,
>>> +		"dibin [ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
>> ...and it'll be easier to notice you've left your name in the debug
>> logs. Oops.
>>> +		dig_port->base.base.base.id, dig_port->base.base.name,
>>> +		pps_name(intel_dp),
>>> +		intel_de_read(display, pp_stat_reg),
>>> +		intel_de_read(display, pp_ctrl_reg));
>>> +
>>> +panel_wait_complete:
>>>   	drm_dbg_kms(display->drm, "Wait complete\n");
>>>   }
>>>   
>>> @@ -644,7 +662,8 @@ static void wait_panel_on(struct intel_dp *intel_dp)
>>>   		    "[ENCODER:%d:%s] %s wait for panel power on\n",
>>>   		    dig_port->base.base.base.id, dig_port->base.base.name,
>>>   		    pps_name(intel_dp));
>>> -	wait_panel_status(intel_dp, IDLE_ON_MASK, IDLE_ON_VALUE);
>>> +
>>> +	wait_panel_status(intel_dp, IDLE_ON_MASK, IDLE_ON_VALUE, 20);
>>>   }
>>>   
>>>   static void wait_panel_off(struct intel_dp *intel_dp)
>>> @@ -656,7 +675,7 @@ static void wait_panel_off(struct intel_dp *intel_dp)
>>>   		    "[ENCODER:%d:%s] %s wait for panel power off time\n",
>>>   		    dig_port->base.base.base.id, dig_port->base.base.name,
>>>   		    pps_name(intel_dp));
>>> -	wait_panel_status(intel_dp, IDLE_OFF_MASK, IDLE_OFF_VALUE);
>>> +	wait_panel_status(intel_dp, IDLE_OFF_MASK, IDLE_OFF_VALUE, 10);
>>>   }
>>>   
>>>   static void wait_panel_power_cycle(struct intel_dp *intel_dp)
>>> @@ -683,7 +702,7 @@ static void wait_panel_power_cycle(struct intel_dp *intel_dp)
>>>   	if (remaining)
>>>   		wait_remaining_ms_from_jiffies(jiffies, remaining);
>>>   
>>> -	wait_panel_status(intel_dp, IDLE_CYCLE_MASK, IDLE_CYCLE_VALUE);
>>> +	wait_panel_status(intel_dp, IDLE_CYCLE_MASK, IDLE_CYCLE_VALUE, 1);
>>>   }
>>>   
>>>   void intel_pps_wait_power_cycle(struct intel_dp *intel_dp)

-- 
Jani Nikula, Intel
