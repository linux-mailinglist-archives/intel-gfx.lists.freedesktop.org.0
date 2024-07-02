Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD7B9239E9
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2024 11:26:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24EA510E16E;
	Tue,  2 Jul 2024 09:26:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="POW7ssqz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93D8A10E126;
 Tue,  2 Jul 2024 09:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719912404; x=1751448404;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Q7fNjyDZMQsknbHbWSghixZ3yVkTpUp4IpnaCx228CQ=;
 b=POW7ssqz31iBixspZrF8ZZ3k9B1nTu+6eU0+g4grk9yNHXhbG4aGJ4KT
 twe8uFt0h1zTkAeWMjNCZ+DUuliij0WKLK/8KcHTZDzp2e8C7YOJYRDLM
 /8yBkOKWtgPD34BisV5m+zBoDB6KeG9ed6TNaSFvsvveqFMKcnnnfYuZy
 yyuizk5GbnvGZU7HH1lk1QI4iKWUB66L/fnev8b9LDW2CX0FbIPNMJi/S
 NuWIef2w2JKway6X4tjoMXJabmu3nZ7m+wBBx0HKjv9XnLIkFpGKDYcLc
 ouYHclAdD7lm3RHdirSbERk6Wnjp6Q6jVnFaAUNz3wB5fLjQjkkJlCO/Z g==;
X-CSE-ConnectionGUID: EuPRx+nqRLarxQnK/uMs3A==
X-CSE-MsgGUID: v/proNYdSWmqYiF2ukbu9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="20945132"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="20945132"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 02:26:43 -0700
X-CSE-ConnectionGUID: gVG3nROtSJa22Hyc0+oZWQ==
X-CSE-MsgGUID: vwEj6ollQgCiEPk9jKrSYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="77010655"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.179])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 02:26:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Jonathan Cavitt
 <jonathan.cavitt@intel.com>, Matt Roper <matthew.d.roper@intel.com>, Lucas
 De Marchi <lucas.demarchi@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2 2/2] drm/i915: disable fbc due to Wa_16023588340
In-Reply-To: <fe0f61ad-b006-47b4-aee4-2b9408379e7f@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240701132754.101832-3-matthew.auld@intel.com>
 <20240701132754.101832-4-matthew.auld@intel.com>
 <87ikxo9pi1.fsf@intel.com>
 <fe0f61ad-b006-47b4-aee4-2b9408379e7f@intel.com>
Date: Tue, 02 Jul 2024 12:26:37 +0300
Message-ID: <87a5j09mb6.fsf@intel.com>
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

On Tue, 02 Jul 2024, Matthew Auld <matthew.auld@intel.com> wrote:
> Hi,
>
> On 02/07/2024 09:17, Jani Nikula wrote:
>> On Mon, 01 Jul 2024, Matthew Auld <matthew.auld@intel.com> wrote:
>>> On BMG-G21 we need to disable fbc due to complications around the WA.
>>>
>>> v2:
>>>   - Try to handle with i915_drv.h and compat layer. (Rodrigo)
>>>
>>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>>> Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>> Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>> Cc: intel-gfx@lists.freedesktop.org
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_fbc.c          | 5 +++++
>>>   drivers/gpu/drm/i915/i915_drv.h                   | 2 ++
>>>   drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 5 +++++
>>>   3 files changed, 12 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
>>> index 67116c9f1464..60131de77b4c 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>>> @@ -1237,6 +1237,11 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>>>   		return 0;
>>>   	}
>>>   
>>> +	if (DISPLAY_NEEDS_WA_16023588340(i915)) {
>>> +		plane_state->no_fbc_reason = "Wa_16023588340";
>>> +		return 0;
>>> +	}
>>> +
>>>   	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
>>>   	if (i915_vtd_active(i915) && (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
>>>   		plane_state->no_fbc_reason = "VT-d enabled";
>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>>> index d7723dd11c80..816a01fda3fe 100644
>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>> @@ -762,4 +762,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>>   #define HAS_LMEMBAR_SMEM_STOLEN(i915) (!HAS_LMEM(i915) && \
>>>   				       GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>>>   
>>> +#define DISPLAY_NEEDS_WA_16023588340(i915)	false
>>> +
>> 
>> Display feature macros don't belong in i915_drv.h.
>
> There is also the v1 here:
> https://patchwork.freedesktop.org/patch/599900/?series=135061&rev=1
>
> Where feedback was to handle it in i915_drv.h. Is the v1 method 
> acceptable here? Do you have an alternative suggestion?

Based on Lucas' reply, looks like it needs to be a function in a .c file
anyway.

One of my goals lately has been to avoid including i915_drv.h from
display code altogether. We're obviously not even close yet, but
anything you put there is just another problem for me to solve. So I'd
like you to solve it, not me. ;)

BR,
Jani.

>
>> 
>> BR,
>> Jani.
>> 
>>>   #endif
>>> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>>> index 2feedddf1e40..a4256144dff7 100644
>>> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>>> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>>> @@ -15,6 +15,9 @@
>>>   #include "i915_utils.h"
>>>   #include "intel_runtime_pm.h"
>>>   #include "xe_device_types.h"
>>> +#include "xe_wa.h"
>>> +
>>> +#include <generated/xe_wa_oob.h>
>>>   
>>>   static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
>>>   {
>>> @@ -120,6 +123,8 @@ struct i915_sched_attr {
>>>   
>>>   #define FORCEWAKE_ALL XE_FORCEWAKE_ALL
>>>   
>>> +#define DISPLAY_NEEDS_WA_16023588340(xe)	XE_WA(xe_root_mmio_gt(xe), 16023588340)
>>> +
>>>   #ifdef CONFIG_ARM64
>>>   /*
>>>    * arm64 indirectly includes linux/rtc.h,
>> 

-- 
Jani Nikula, Intel
