Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D5EB41B80
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 12:16:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D755510E1FE;
	Wed,  3 Sep 2025 10:16:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Md1Ehytj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A27410E1FE;
 Wed,  3 Sep 2025 10:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756894594; x=1788430594;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=/6S1nhdV8azkLReslbA0u3axrJyQdnZ8URpO+cj/xB0=;
 b=Md1EhytjvLhgr+S4r6j9c+tLoc5/ZIn5wHm/oVcYckluEqOYC2vqVmjN
 xxVyITH9jhaqKvbzVBZMo2AK3Xc+3T1jUkBU1Oe9x0Y69zNxHdP1KfLI0
 OTupBZFKw3rOJUO0qfPUJb37cDgIjIZC2flEq4Ymig60Hqi67ibqpwUzp
 /juFZejD0sBA/AFS3QeihG/DvHKnfvVtADpCpTh1Q2AD4WeCqMC3z7Bko
 bUow/S0HLmzP6bwRSk4BDZND33npfGs/ojatFwjY0i9VOUpI/8LjULjH9
 orwl+TzxDpQL6fOwPB2TqE45+lW1G4i69azhNXXD4dp4uBBDEIylCi+jx Q==;
X-CSE-ConnectionGUID: CaFp75HOSAS44cIXaY8A8g==
X-CSE-MsgGUID: bK04TwvZT2GPtRA0XPjBnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="59138891"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="59138891"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 03:16:33 -0700
X-CSE-ConnectionGUID: qk+zuZJZSvGH6E/sUEHvJQ==
X-CSE-MsgGUID: 9J0UZuqFQPq/5AXalo5CnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="175906451"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.246])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 03:16:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/hdmi: Fix potential overflow while using
 intel_encoder_to_tc
In-Reply-To: <bdeae305-c155-4a6e-9d6f-32f44d425ebf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250903035022.3654997-1-ankit.k.nautiyal@intel.com>
 <29e10fcd0e9bf9e995739cf53ae8f49544ebb06a@intel.com>
 <bdeae305-c155-4a6e-9d6f-32f44d425ebf@intel.com>
Date: Wed, 03 Sep 2025 13:16:27 +0300
Message-ID: <f39482b5b85dfe3e89328ce32ada5f931ed34519@intel.com>
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

On Wed, 03 Sep 2025, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 9/3/2025 1:07 PM, Jani Nikula wrote:
>> On Wed, 03 Sep 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>> The helper intel_encoder_to_tc() can potentially return TC_PORT_NONE
>>> (-1) and cause overflow while computing ddc pins in
>>> icl_encoder_to_ddc_pin().
>>>
>>> Check for TC_PORT_NONE before deriving the ddc pins for TC port.
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_hdmi.c | 12 +++++++++---
>>>   1 file changed, 9 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>>> index cbee628eb26b..85f70cedc40c 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>>> @@ -2791,10 +2791,16 @@ static u8 icl_encoder_to_ddc_pin(struct intel_encoder *encoder)
>>>   	struct intel_display *display = to_intel_display(encoder);
>>>   	enum port port = encoder->port;
>>>   
>>> -	if (intel_encoder_is_combo(encoder))
>>> +	if (intel_encoder_is_combo(encoder)) {
>>>   		return GMBUS_PIN_1_BXT + port;
>>> -	else if (intel_encoder_is_tc(encoder))
>>> -		return GMBUS_PIN_9_TC1_ICP + intel_encoder_to_tc(encoder);
>>> +	} else if (intel_encoder_is_tc(encoder)) {
>>> +		enum tc_port tc_port = intel_encoder_to_tc(encoder);
>> intel_encoder_to_tc() can only return TC_PORT_NONE if intel_phy_is_tc()
>> == false. But intel_encoder_is_tc() just above means intel_phy_is_tc()
>> == true.
>>
>> This case can't happen, it's a static analyzer being overzealous.
>
> Agreed, in this case tc_port is valid, I can see that now.
>
>
>>
>> Adding checks like this to please a static analyzer leads to misery,
>> because it adds unnecessary code to maintain, and it will never be run.
>>
>> I think it would be more interesting to make intel_port_to_tc() WARN on
>> !intel_phy_is_tc(), return a bogus >= 0 port, and ensure all callers
>> only call it on TC ports.
>
> Hmm.. I can try this out. Can change intel_port_to_tc() as suggested and 
> ensure the callers call intel_phy_is_tc(),
>
> before calling intel_port_to_tc()/intel_encoder_to_tc().
>
> There are few places where the callers of intel_port_to_tc() and 
> intel_encoder_to_tc() specifically check for TC_PORT_NONE,
>
> so those places need to be changed as well.
>
>
> Thanks for the suggestions and comments. I will drop this patch, and 
> will prepare for the suggested changes.

I think with those changes you can eradicate TC_PORT_NONE altogether,
and get rid of a whole class of static analyzer warnings. And the code
becomes cleaner all around.

I've had this patch [1] for more than a year, maybe finally time to
merge it as prep work. You'll need to add tc checks in there, so it's
cleaner to lift it from intel_ddi_init(). And you can have separate code
paths for tc and non-tc, making the whole thing much cleaner I think.

BR,
Jani.


[1] https://lore.kernel.org/r/20250903101050.3671305-1-jani.nikula@intel.com


>
> Regards,
>
> Ankit
>
>>
>> This obviously leads to issues if it happens, but hey, it shouldn't
>> happen, and intel_encoder_to_tc() returning TC_PORT_NONE is *already*
>> such a case. Just move it to lower levels.
>>
>> If we start checking for every impossible situation, and propagating
>> errors for them, our codebase will be 90% error handling.
>>
>>
>> BR,
>> Jani.
>>
>>
>>> +
>>> +		if (tc_port != TC_PORT_NONE)
>>> +			return GMBUS_PIN_9_TC1_ICP + tc_port;
>>> +
>>> +		drm_WARN(display->drm, 1, "Invalid TC port\n");
>>> +	}
>>>   
>>>   	drm_WARN(display->drm, 1, "Unknown port:%c\n", port_name(port));
>>>   	return GMBUS_PIN_2_BXT;

-- 
Jani Nikula, Intel
