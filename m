Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D1F91857A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 17:14:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1108110E910;
	Wed, 26 Jun 2024 15:14:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CJpCO3vV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DA1610E90D;
 Wed, 26 Jun 2024 15:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719414847; x=1750950847;
 h=message-id:date:mime-version:subject:from:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=MgH+MtfWzczrK8bhAe7kUCWjxnERShTbwZ6CiBhrEPs=;
 b=CJpCO3vVj6Pdh/AP3a4TuvyV3YxRsr3rSvy0TgS6cFJx35IWue10qVA8
 PDWZph1lWUIvHPFDI2r5sDBuTtB/CnECdTdf64EWaFOWNHXMlYBmUCmup
 vYvNNL3kqCjhwqV2as1UZUtVc/CMOSdW1AFZMpyhwCbiC+wGQo3JYitME
 zOw4W/RH+SGVmvQGsSlSzyHfOnl8Sn9G64VbI6/ONVLMz0DPAnlQdnxB0
 384dzJOeAfKGbm/nlITI6/J2Nup6pMqbA1loHWNB4PPkp/VosZHD5f6Rb
 L5RjoHoS4t1v0rVtkHsKrg6l0I2uMyXj794LaGwUoNbIrTeCmvbQp01iY w==;
X-CSE-ConnectionGUID: aHoktrtITHC2eU6tv0m6pA==
X-CSE-MsgGUID: A2BlS9qSS+uXcagUzeCq3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="33948902"
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="33948902"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 08:14:07 -0700
X-CSE-ConnectionGUID: wV2kwt10TSud/4TF4CjvMw==
X-CSE-MsgGUID: WpFcssHGSLyZThw6CQaiTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="44755309"
Received: from unknown (HELO [10.245.245.26]) ([10.245.245.26])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 08:14:05 -0700
Message-ID: <b36ab824-bed9-4568-bce6-02f8c1e5d08e@intel.com>
Date: Wed, 26 Jun 2024 16:14:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915: disable fbc due to Wa_16023588340
From: Matthew Auld <matthew.auld@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org, "Nikula, Jani" <jani.nikula@intel.com>
References: <20240619143127.110045-3-matthew.auld@intel.com>
 <20240619143127.110045-4-matthew.auld@intel.com>
 <53aa0e4e-96f9-4cc8-9d59-73309315808d@intel.com>
Content-Language: en-GB
In-Reply-To: <53aa0e4e-96f9-4cc8-9d59-73309315808d@intel.com>
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

On 25/06/2024 09:09, Matthew Auld wrote:
> On 19/06/2024 15:31, Matthew Auld wrote:
>> On BMG-G21 we need to disable fbc due to complications around the WA.
>>
>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> Cc: intel-gfx@lists.freedesktop.org
> Can this be merged via drm-xe-next? The first patch is the xe centric 
> part of the WA, but here this is touching i915 display and xe.

Ping? Can this be landed via drm-xe-next? Lucas, Jani?

> 
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_wa.h |  8 ++++++++
>>   drivers/gpu/drm/i915/display/intel_fbc.c        |  6 ++++++
>>   drivers/gpu/drm/xe/Makefile                     |  4 +++-
>>   drivers/gpu/drm/xe/display/xe_display_wa.c      | 16 ++++++++++++++++
>>   4 files changed, 33 insertions(+), 1 deletion(-)
>>   create mode 100644 drivers/gpu/drm/xe/display/xe_display_wa.c
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h 
>> b/drivers/gpu/drm/i915/display/intel_display_wa.h
>> index 63201d09852c..be644ab6ae00 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>> @@ -6,8 +6,16 @@
>>   #ifndef __INTEL_DISPLAY_WA_H__
>>   #define __INTEL_DISPLAY_WA_H__
>> +#include <linux/types.h>
>> +
>>   struct drm_i915_private;
>>   void intel_display_wa_apply(struct drm_i915_private *i915);
>> +#ifdef I915
>> +static inline bool intel_display_needs_wa_16023588340(struct 
>> drm_i915_private *i915) { return false; }
>> +#else
>> +bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915);
>> +#endif
>> +
>>   #endif
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c 
>> b/drivers/gpu/drm/i915/display/intel_fbc.c
>> index 67116c9f1464..8488f82143a4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> @@ -56,6 +56,7 @@
>>   #include "intel_display_device.h"
>>   #include "intel_display_trace.h"
>>   #include "intel_display_types.h"
>> +#include "intel_display_wa.h"
>>   #include "intel_fbc.h"
>>   #include "intel_fbc_regs.h"
>>   #include "intel_frontbuffer.h"
>> @@ -1237,6 +1238,11 @@ static int intel_fbc_check_plane(struct 
>> intel_atomic_state *state,
>>           return 0;
>>       }
>> +    if (intel_display_needs_wa_16023588340(i915)) {
>> +        plane_state->no_fbc_reason = "Wa_16023588340";
>> +        return 0;
>> +    }
>> +
>>       /* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
>>       if (i915_vtd_active(i915) && (IS_SKYLAKE(i915) || 
>> IS_BROXTON(i915))) {
>>           plane_state->no_fbc_reason = "VT-d enabled";
>> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>> index 0e16e5029081..f7521fd5db4c 100644
>> --- a/drivers/gpu/drm/xe/Makefile
>> +++ b/drivers/gpu/drm/xe/Makefile
>> @@ -34,7 +34,8 @@ uses_generated_oob := \
>>       $(obj)/xe_ring_ops.o \
>>       $(obj)/xe_vm.o \
>>       $(obj)/xe_wa.o \
>> -    $(obj)/xe_ttm_stolen_mgr.o
>> +    $(obj)/xe_ttm_stolen_mgr.o \
>> +    $(obj)/display/xe_display_wa.o \
>>   $(uses_generated_oob): $(generated_oob)
>> @@ -192,6 +193,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>>       display/xe_display.o \
>>       display/xe_display_misc.o \
>>       display/xe_display_rps.o \
>> +    display/xe_display_wa.o \
>>       display/xe_dsb_buffer.o \
>>       display/xe_fb_pin.o \
>>       display/xe_hdcp_gsc.o \
>> diff --git a/drivers/gpu/drm/xe/display/xe_display_wa.c 
>> b/drivers/gpu/drm/xe/display/xe_display_wa.c
>> new file mode 100644
>> index 000000000000..68e3d1959ad6
>> --- /dev/null
>> +++ b/drivers/gpu/drm/xe/display/xe_display_wa.c
>> @@ -0,0 +1,16 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright © 2024 Intel Corporation
>> + */
>> +
>> +#include "intel_display_wa.h"
>> +
>> +#include "xe_device.h"
>> +#include "xe_wa.h"
>> +
>> +#include <generated/xe_wa_oob.h>
>> +
>> +bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915)
>> +{
>> +    return XE_WA(xe_root_mmio_gt(i915), 16023588340);
>> +}
