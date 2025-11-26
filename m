Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B2EC88F5F
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 10:31:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECBCA10E544;
	Wed, 26 Nov 2025 09:31:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QANnJ1mq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ADDE10E544
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Nov 2025 09:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764149469; x=1795685469;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=HkWxsce16xHcq/FM1vphc8m4RIMXX1KuXiAs+aoZoBQ=;
 b=QANnJ1mqkkkUWnO2ygW9I7e2oN7Zh3tPeVy2Wnz0XkrkG3RRzykBgc6H
 YL+hXiH6wc71aQXJARuzaeF2HjIw4rhnjiG1qh0gj6R5Q2Dlfkvk7yFHw
 mPFYOPYtzwqHjQ7RF19KdhXvnPWrILMvWCPqzLGY40L4kwkAxs1qlZcuj
 wUUoKypIjCdI9PwHMDeyswQmFL+tIqpLayubUAmgJkAd6LTZeu9UJ/0FB
 Xkluvr98qDaOolRRpxKAJFdAbssCTDF38r0R8nuG614eVkgfCZScn5eyW
 iopDuBIT0DDnLWIRSXJPUExtXDCVSP2ZIol0eJMr8XufcSxSddLzt2K9j A==;
X-CSE-ConnectionGUID: kRt7U8+6TZCrG2m2wIHmrA==
X-CSE-MsgGUID: 6IdcuomsTWGvNenQmYfbuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="66139344"
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="66139344"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 01:31:09 -0800
X-CSE-ConnectionGUID: dWIXGulpQd2VY4rX8MZxAg==
X-CSE-MsgGUID: 6rsyBSL8TpaVyPyJs62wfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="192978506"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.1])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 01:31:05 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: gregkh@linuxfoundation.org, Valentine Burley
 <valentine.burley@collabora.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>, Alan Previn
 <alan.previn.teres.alexis@intel.com>
Subject: Re: [PATCH v3 2/2] drm/i915/pxp: Do not support PXP if CSME is not
 available
In-Reply-To: <37ad3dff-8383-4c40-b27d-2ed77dd788ec@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251114201431.1135031-4-daniele.ceraolospurio@intel.com>
 <20251114201431.1135031-6-daniele.ceraolospurio@intel.com>
 <aae6c3f4466e0f52e4f1f482c14dba68d8d04c0e@intel.com>
 <37ad3dff-8383-4c40-b27d-2ed77dd788ec@intel.com>
Date: Wed, 26 Nov 2025 11:31:02 +0200
Message-ID: <bf58050d245ef0b4d8efe16594dc1364e426ed6a@intel.com>
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

On Tue, 25 Nov 2025, Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com> wrote:
> On 11/25/2025 2:28 AM, Jani Nikula wrote:
>> On Fri, 14 Nov 2025, Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com> wrote:
>>> The PXP flow requires us to communicate with CSME, which we do via a
>>> mei component. Since the mei component binding is async and can take
>>> a bit to complete, we don't wait for it during i915 load. If userspace
>>> queries the state before the async binding is complete, we return an
>>> "init in progress" state, with the expectation that it will eventually
>>> transition to "init complete" if the CSME device is functional.
>>>
>>> Mesa CI is flashing a custom coreboot on their Chromebooks that hides
>>> the CSME device, which means that we never transition to the "init
>>> complete" state. While from an interface POV it is not incorrect to not
>>> end up in "init complete" if the CSME is missing, we can mitigate the
>>> impact of this by simply checking if the CSME device is available at
>>> all before attempting to initialize PXP.
>>>
>>> v2: rebase on updated mei patch.
>>> v3: rebase on exported pci id list.
>>>
>>> Reported-by: Valentine Burley <valentine.burley@collabora.com>
>>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14516
>>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>> Cc: Alexander Usyskin <alexander.usyskin@intel.com>
>>> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/pxp/intel_pxp.c | 25 +++++++++++++++++++++++++
>>>   1 file changed, 25 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
>>> index 2860474ad2d0..26e7c5c26bac 100644
>>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
>>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
>>> @@ -3,6 +3,7 @@
>>>    * Copyright(c) 2020 Intel Corporation.
>>>    */
>>>   
>>> +#include <linux/mei_me.h>
>>>   #include <linux/workqueue.h>
>>>   
>>>   #include <drm/drm_print.h>
>>> @@ -197,6 +198,15 @@ static struct intel_gt *find_gt_for_required_protected_content(struct drm_i915_p
>>>   	return NULL;
>>>   }
>>>   
>>> +static bool mei_device_available(void)
>>> +{
>>> +#if IS_ENABLED(CONFIG_INTEL_MEI_ME)
>>> +	return pci_dev_present(mei_me_pci_tbl);
>>> +#else
>>> +	return false;
>>> +#endif
>>> +}
>>> +
>> I think it's just ugly to have this in i915. IMO the function belongs in
>> mei.
>
> That is what I had in v1 [1], but there were concerns from Greg about 
> the state changing after we check it and the relevant required locking 
> to avoid that. In i915 we don't care if the state changes after we check 
> it and therefore we don't need locking, so I moved the actual check to 
> i915 with an explanation (see comment in the code below).

I'm not sure how it makes a difference where the check is.

I just think the whole mei_device_available() function above is a bunch
of mei implementation details that i915 should not have to know. i915
shouldn't have to do any CONFIG_INTEL_MEI_ME stuff, i915 shouldn't have
to know mei_me_pci_tbl or what it means.


BR,
Jani.

>
> [1]
> https://patchwork.freedesktop.org/patch/664208/?series=151677&rev=1

>
> Daniele
>
>>
>> BR,
>> Jani.
>>
>>>   int intel_pxp_init(struct drm_i915_private *i915)
>>>   {
>>>   	struct intel_gt *gt;
>>> @@ -205,6 +215,21 @@ int intel_pxp_init(struct drm_i915_private *i915)
>>>   	if (intel_gt_is_wedged(to_gt(i915)))
>>>   		return -ENOTCONN;
>>>   
>>> +	/*
>>> +	 * iGPUs require CSME to be available to use PXP. Note that the
>>> +	 * availability of CSME might change after we check, but we only support
>>> +	 * PXP in the case where the CSME device is available from boot and
>>> +	 * stays that way. If CSME was not initially available and appears later
>>> +	 * we'll just continue without PXP, while if it was available and is
>>> +	 * then removed we'll catch it via the component unbind callback and
>>> +	 * handle it gracefully. Therefore, we don't require any locking around
>>> +	 * the state checking.
>>> +	 */
>>> +	if (!IS_DGFX(i915) && !mei_device_available()) {
>>> +		drm_dbg(&i915->drm, "skipping PXP init due to missing ME device\n");
>>> +		return -ENODEV;
>>> +	}
>>> +
>>>   	/*
>>>   	 * NOTE: Get the ctrl_gt before checking intel_pxp_is_supported since
>>>   	 * we still need it if PXP's backend tee transport is needed.
>

-- 
Jani Nikula, Intel
