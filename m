Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2951A91871F
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 18:17:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB7D610E961;
	Wed, 26 Jun 2024 16:17:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YnKwSbWb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5545F10E92C;
 Wed, 26 Jun 2024 16:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719418666; x=1750954666;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=56C0Ddcbn1fQwBJuNUK9xh+LLz1sUY2C1exArSM6sAs=;
 b=YnKwSbWbK+nE0nUVYFhppeaVgAem0hgvtY2JDFdEt8oT2Ux6QPqKNLWN
 D52jCoW1J6tI6RbRxFKHgJEJroJ415Cup5mL3Wu0Khnk5Ds6s9eqDauqY
 KQMHqcgy3GkxTNmsinCxTg0VJreDpiWgKZxtYcshDArqOUWyCNWZoqkC2
 gdkR0J+tn+WxO2Gnucx+H76BSVSZT8NzYpIDiby8xjnWJVT4XbugvvqIc
 4DM1+m5y6zXR0vp8Yaa9N9xvgcXJXW8M2QtOFUAxjsPO59ZtWE3rsR4mb
 UCYmDO4QjFxmlp3aJY4ciZQimiHOmzP8KdVAWt8KOzrBwSzx690MmPuyX w==;
X-CSE-ConnectionGUID: jBKMOB2QRL2lVDykq5d7oQ==
X-CSE-MsgGUID: wCKdc79URASiZi0Kf34fXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="41917876"
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="41917876"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 09:17:46 -0700
X-CSE-ConnectionGUID: a95Hey4iR8StcyBAWQNJXQ==
X-CSE-MsgGUID: KQlaliTUTzennyKFBBYZNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="44161967"
Received: from unknown (HELO [10.245.245.26]) ([10.245.245.26])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 09:17:44 -0700
Message-ID: <70fd9b0e-36a7-4247-914f-ac71c33fca7d@intel.com>
Date: Wed, 26 Jun 2024 17:17:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915: disable fbc due to Wa_16023588340
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-xe@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20240619143127.110045-3-matthew.auld@intel.com>
 <20240619143127.110045-4-matthew.auld@intel.com> <Znw5jj7YROnoWD9j@intel.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <Znw5jj7YROnoWD9j@intel.com>
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

On 26/06/2024 16:53, Rodrigo Vivi wrote:
> On Wed, Jun 19, 2024 at 03:31:27PM +0100, Matthew Auld wrote:
>> On BMG-G21 we need to disable fbc due to complications around the WA.
>>
>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> Cc: intel-gfx@lists.freedesktop.org
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_wa.h |  8 ++++++++
>>   drivers/gpu/drm/i915/display/intel_fbc.c        |  6 ++++++
>>   drivers/gpu/drm/xe/Makefile                     |  4 +++-
>>   drivers/gpu/drm/xe/display/xe_display_wa.c      | 16 ++++++++++++++++
>>   4 files changed, 33 insertions(+), 1 deletion(-)
>>   create mode 100644 drivers/gpu/drm/xe/display/xe_display_wa.c
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
>> index 63201d09852c..be644ab6ae00 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>> @@ -6,8 +6,16 @@
>>   #ifndef __INTEL_DISPLAY_WA_H__
>>   #define __INTEL_DISPLAY_WA_H__
>>   
>> +#include <linux/types.h>
>> +
>>   struct drm_i915_private;
>>   
>>   void intel_display_wa_apply(struct drm_i915_private *i915);
>>   
>> +#ifdef I915
>> +static inline bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915) { return false; }
>> +#else
>> +bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915);
>> +#endif
> 
> please avoid the ifdef I915 in new patches as we are trying to get away from that
> in favor of a clean separation.

Can you please share an example for the best way to do that here, with 
clean separation?

I can add a new .c just for intel_display_needs_wa_16023588340 and move 
it there, which then avoids the ifdef I think, but that then adds an 
entirely new file just for this tiny stub. Unless I can dump it 
somewhere else?

> 
>> +
>>   #endif
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
>> index 67116c9f1464..8488f82143a4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> @@ -56,6 +56,7 @@
>>   #include "intel_display_device.h"
>>   #include "intel_display_trace.h"
>>   #include "intel_display_types.h"
>> +#include "intel_display_wa.h"
>>   #include "intel_fbc.h"
>>   #include "intel_fbc_regs.h"
>>   #include "intel_frontbuffer.h"
>> @@ -1237,6 +1238,11 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>>   		return 0;
>>   	}
>>   
>> +	if (intel_display_needs_wa_16023588340(i915)) {
>> +		plane_state->no_fbc_reason = "Wa_16023588340";
>> +		return 0;
>> +	}
>> +
>>   	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
>>   	if (i915_vtd_active(i915) && (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
>>   		plane_state->no_fbc_reason = "VT-d enabled";
>> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>> index 0e16e5029081..f7521fd5db4c 100644
>> --- a/drivers/gpu/drm/xe/Makefile
>> +++ b/drivers/gpu/drm/xe/Makefile
>> @@ -34,7 +34,8 @@ uses_generated_oob := \
>>   	$(obj)/xe_ring_ops.o \
>>   	$(obj)/xe_vm.o \
>>   	$(obj)/xe_wa.o \
>> -	$(obj)/xe_ttm_stolen_mgr.o
>> +	$(obj)/xe_ttm_stolen_mgr.o \
>> +	$(obj)/display/xe_display_wa.o \
>>   
>>   $(uses_generated_oob): $(generated_oob)
>>   
>> @@ -192,6 +193,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>>   	display/xe_display.o \
>>   	display/xe_display_misc.o \
>>   	display/xe_display_rps.o \
>> +	display/xe_display_wa.o \
>>   	display/xe_dsb_buffer.o \
>>   	display/xe_fb_pin.o \
>>   	display/xe_hdcp_gsc.o \
>> diff --git a/drivers/gpu/drm/xe/display/xe_display_wa.c b/drivers/gpu/drm/xe/display/xe_display_wa.c
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
>> +	return XE_WA(xe_root_mmio_gt(i915), 16023588340);
>> +}
>> -- 
>> 2.45.1
>>
