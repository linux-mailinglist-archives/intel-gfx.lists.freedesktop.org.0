Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC133918729
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 18:18:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E40C089119;
	Wed, 26 Jun 2024 16:18:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NboHoMxz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E38D610E95D;
 Wed, 26 Jun 2024 16:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719418732; x=1750954732;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=uPtQUGPJaw1FLSxqm6Q16Tu+BqNRF3xf4EsqOC9/Y9I=;
 b=NboHoMxzIBrg2IBBtb+oGAGuuSPPsEUY6aYIdl3n8cghCjeNrMcPXfN5
 3N2dN7doEXjJKJDM4HAoymwGqJs3t8j+tsc87MEcWLQ0OQvm/ZjnG80mQ
 nvLxiK2MlxDh8DN/TwGGVFRU1jI3k3EEStpOdskp8x4eJUbpUaKVLvItc
 v6BUbvmDnH6fc4DEL3n0LeB4lfJwpv/u4cLOScX+IF8PuYsIYbldg6ED0
 aVXhvEcEXj0JjxU042j0dn+GUqFewU3XCzvzRGcXzJ68mnlmTNRjDjgUX
 XADdSirzcgUsNhLzmcYWcXf62fPaoS/eShKImn1l/XMxvIwMlCPPSF3ZT w==;
X-CSE-ConnectionGUID: OB7c2AH2QESQd1l84pBOuQ==
X-CSE-MsgGUID: dvhH/q0OTA2Dzdv28WcCHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="19390758"
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="19390758"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 09:18:51 -0700
X-CSE-ConnectionGUID: dpKHdIieRe+nYl3ruHAmPA==
X-CSE-MsgGUID: Psry58nlTdqBGFUuw6mA1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="44162240"
Received: from unknown (HELO [10.245.245.26]) ([10.245.245.26])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 09:18:50 -0700
Message-ID: <21f4864e-d93a-4f72-8be8-6ecf46a8c4c6@intel.com>
Date: Wed, 26 Jun 2024 17:18:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915: disable fbc due to Wa_16023588340
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-xe@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org, "Nikula, Jani" <jani.nikula@intel.com>
References: <20240619143127.110045-3-matthew.auld@intel.com>
 <20240619143127.110045-4-matthew.auld@intel.com>
 <53aa0e4e-96f9-4cc8-9d59-73309315808d@intel.com>
 <b36ab824-bed9-4568-bce6-02f8c1e5d08e@intel.com> <Znw5_WqRPnstGEit@intel.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <Znw5_WqRPnstGEit@intel.com>
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

On 26/06/2024 16:55, Rodrigo Vivi wrote:
> On Wed, Jun 26, 2024 at 04:14:02PM +0100, Matthew Auld wrote:
>> On 25/06/2024 09:09, Matthew Auld wrote:
>>> On 19/06/2024 15:31, Matthew Auld wrote:
>>>> On BMG-G21 we need to disable fbc due to complications around the WA.
>>>>
>>>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>>>> Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>>> Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
>>>> Cc: intel-gfx@lists.freedesktop.org
>>> Can this be merged via drm-xe-next? The first patch is the xe centric
>>> part of the WA, but here this is touching i915 display and xe.
>>
>> Ping? Can this be landed via drm-xe-next? Lucas, Jani?
> 
> I'm afraid this patch-2 only submission to intel-gfx didn't trigger
> the i915 CI. probably good to submit the entire series to both mailing
> lists so we get both CIs?

Yes, I missed that.

> 
>>
>>>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_display_wa.h |  8 ++++++++
>>>>    drivers/gpu/drm/i915/display/intel_fbc.c        |  6 ++++++
>>>>    drivers/gpu/drm/xe/Makefile                     |  4 +++-
>>>>    drivers/gpu/drm/xe/display/xe_display_wa.c      | 16 ++++++++++++++++
>>>>    4 files changed, 33 insertions(+), 1 deletion(-)
>>>>    create mode 100644 drivers/gpu/drm/xe/display/xe_display_wa.c
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
>>>> b/drivers/gpu/drm/i915/display/intel_display_wa.h
>>>> index 63201d09852c..be644ab6ae00 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>>>> @@ -6,8 +6,16 @@
>>>>    #ifndef __INTEL_DISPLAY_WA_H__
>>>>    #define __INTEL_DISPLAY_WA_H__
>>>> +#include <linux/types.h>
>>>> +
>>>>    struct drm_i915_private;
>>>>    void intel_display_wa_apply(struct drm_i915_private *i915);
>>>> +#ifdef I915
>>>> +static inline bool intel_display_needs_wa_16023588340(struct
>>>> drm_i915_private *i915) { return false; }
>>>> +#else
>>>> +bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915);
>>>> +#endif
>>>> +
>>>>    #endif
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
>>>> b/drivers/gpu/drm/i915/display/intel_fbc.c
>>>> index 67116c9f1464..8488f82143a4 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>>>> @@ -56,6 +56,7 @@
>>>>    #include "intel_display_device.h"
>>>>    #include "intel_display_trace.h"
>>>>    #include "intel_display_types.h"
>>>> +#include "intel_display_wa.h"
>>>>    #include "intel_fbc.h"
>>>>    #include "intel_fbc_regs.h"
>>>>    #include "intel_frontbuffer.h"
>>>> @@ -1237,6 +1238,11 @@ static int intel_fbc_check_plane(struct
>>>> intel_atomic_state *state,
>>>>            return 0;
>>>>        }
>>>> +    if (intel_display_needs_wa_16023588340(i915)) {
>>>> +        plane_state->no_fbc_reason = "Wa_16023588340";
>>>> +        return 0;
>>>> +    }
>>>> +
>>>>        /* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
>>>>        if (i915_vtd_active(i915) && (IS_SKYLAKE(i915) ||
>>>> IS_BROXTON(i915))) {
>>>>            plane_state->no_fbc_reason = "VT-d enabled";
>>>> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>>>> index 0e16e5029081..f7521fd5db4c 100644
>>>> --- a/drivers/gpu/drm/xe/Makefile
>>>> +++ b/drivers/gpu/drm/xe/Makefile
>>>> @@ -34,7 +34,8 @@ uses_generated_oob := \
>>>>        $(obj)/xe_ring_ops.o \
>>>>        $(obj)/xe_vm.o \
>>>>        $(obj)/xe_wa.o \
>>>> -    $(obj)/xe_ttm_stolen_mgr.o
>>>> +    $(obj)/xe_ttm_stolen_mgr.o \
>>>> +    $(obj)/display/xe_display_wa.o \
>>>>    $(uses_generated_oob): $(generated_oob)
>>>> @@ -192,6 +193,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>>>>        display/xe_display.o \
>>>>        display/xe_display_misc.o \
>>>>        display/xe_display_rps.o \
>>>> +    display/xe_display_wa.o \
>>>>        display/xe_dsb_buffer.o \
>>>>        display/xe_fb_pin.o \
>>>>        display/xe_hdcp_gsc.o \
>>>> diff --git a/drivers/gpu/drm/xe/display/xe_display_wa.c
>>>> b/drivers/gpu/drm/xe/display/xe_display_wa.c
>>>> new file mode 100644
>>>> index 000000000000..68e3d1959ad6
>>>> --- /dev/null
>>>> +++ b/drivers/gpu/drm/xe/display/xe_display_wa.c
>>>> @@ -0,0 +1,16 @@
>>>> +// SPDX-License-Identifier: MIT
>>>> +/*
>>>> + * Copyright © 2024 Intel Corporation
>>>> + */
>>>> +
>>>> +#include "intel_display_wa.h"
>>>> +
>>>> +#include "xe_device.h"
>>>> +#include "xe_wa.h"
>>>> +
>>>> +#include <generated/xe_wa_oob.h>
>>>> +
>>>> +bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915)
>>>> +{
>>>> +    return XE_WA(xe_root_mmio_gt(i915), 16023588340);
>>>> +}
