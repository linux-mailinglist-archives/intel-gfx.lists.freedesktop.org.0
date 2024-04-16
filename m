Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D94918A654C
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 09:40:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB634112ABE;
	Tue, 16 Apr 2024 07:40:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZhceugDH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A6AB112AC4;
 Tue, 16 Apr 2024 07:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713253230; x=1744789230;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=a2IYSa04UIUZQG167W0xXMcxvvTzyfdzsPwthocmbBQ=;
 b=ZhceugDH654AZ/8KMOKdDMVmLXe6UGUPKuxTVf4rJ1wEynZoP3g0QD+h
 7/472k18STvojoFnF0XbTbUr76emoTrAATMQ8/EsSltzZSgeQ7gWqwvqe
 RUJ5nRW8kWmlHM6NPBgXOllXu/7ulnoQtbI/zae2eEifxNu4U3rDDyIBL
 HZ9C1eI4/TVc+SarVAHQ2BUepAlS30Ao7DeCcIfTESKjK0IW7JTOg5QoK
 RGGLOYF1TbykFJ5IzNaLtQyV+BDNl2VRfWw8g5IsaXCHnupi7sCxB7zxU
 Pe8+xlW1phSASHsvtMYaYUTc820pghDJkKPZC+KgU+Bjpv5b9QgvDzO7t g==;
X-CSE-ConnectionGUID: ZejV6UNvQhi7ZpoKVwUGkg==
X-CSE-MsgGUID: BUa+na2aTCKg/szLArVa6Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="12451723"
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="12451723"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 00:40:16 -0700
X-CSE-ConnectionGUID: jEb8izxnSveiX6dlxChE8Q==
X-CSE-MsgGUID: Hlc6JZ8ER9mHso6nAY+7Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="26966203"
Received: from maurocar-mobl2.ger.corp.intel.com (HELO [10.245.244.62])
 ([10.245.244.62])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 00:40:14 -0700
Message-ID: <ce088ba3-e8a8-4928-9e52-faec58076c20@intel.com>
Date: Tue, 16 Apr 2024 08:40:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 20/21] drm/i915/display: perform transient flush
To: Matt Roper <matthew.d.roper@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
 <20240415081423.495834-21-balasubramani.vivekanandan@intel.com>
 <20240415170732.GJ6571@mdroper-desk1.amr.corp.intel.com>
 <20240415181432.GA2948065@mdroper-desk1.amr.corp.intel.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20240415181432.GA2948065@mdroper-desk1.amr.corp.intel.com>
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

On 15/04/2024 19:14, Matt Roper wrote:
> On Mon, Apr 15, 2024 at 10:07:32AM -0700, Matt Roper wrote:
>> On Mon, Apr 15, 2024 at 01:44:22PM +0530, Balasubramani Vivekanandan wrote:
>>> From: Matthew Auld <matthew.auld@intel.com>
>>>
>>> Perform manual transient cache flush prior to flip and at the end of
>>> frontbuffer_flush. This is needed to ensure display engine doesn't see
>>> garbage if the surface is L3:XD dirty.
>>>
>>> Testcase: igt@xe-pat@display-vs-wb-transient
>>
>> Has the IGT patch for this been sent yet?  If not, we should probably
>> make sure that happens soon, and then use the CI Test-with: thing if
>> there winds up being another revision of this series so that this will
>> be included in the CI results.
> 
> Oh, it looks like this test already landed back in early March; I just
> didn't look back far enough in the git history originally.  You can
> ignore this comment.

Yeah, my thinking was to upstream the IGT bits early for LNL, since it 
is still applicable there. Only difference is we are verifying we don't 
need the TDF on that platform, whereas on BMG the test will only pass 
with this patch.

> 
> 
> Matt
> 
>>
>> Anyway, the changes here look good to me,
>>
>> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>>
>>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>>> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>>> Acked-by: Nirmoy Das <nirmoy.das@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_display.c  |  3 +++
>>>   .../gpu/drm/i915/display/intel_frontbuffer.c  |  2 ++
>>>   drivers/gpu/drm/i915/display/intel_tdf.h      | 25 +++++++++++++++++++
>>>   drivers/gpu/drm/xe/Makefile                   |  3 ++-
>>>   drivers/gpu/drm/xe/display/xe_tdf.c           | 13 ++++++++++
>>>   5 files changed, 45 insertions(+), 1 deletion(-)
>>>   create mode 100644 drivers/gpu/drm/i915/display/intel_tdf.h
>>>   create mode 100644 drivers/gpu/drm/xe/display/xe_tdf.c
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>> index 67697d9a559c..4fc46edcb4ad 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -110,6 +110,7 @@
>>>   #include "intel_sdvo.h"
>>>   #include "intel_snps_phy.h"
>>>   #include "intel_tc.h"
>>> +#include "intel_tdf.h"
>>>   #include "intel_tv.h"
>>>   #include "intel_vblank.h"
>>>   #include "intel_vdsc.h"
>>> @@ -7242,6 +7243,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>>>   
>>>   	intel_atomic_commit_fence_wait(state);
>>>   
>>> +	intel_td_flush(dev_priv);
>>> +
>>>   	drm_atomic_helper_wait_for_dependencies(&state->base);
>>>   	drm_dp_mst_atomic_wait_for_dependencies(&state->base);
>>>   	intel_atomic_global_state_wait_for_dependencies(state);
>>> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
>>> index 2ea37c0414a9..4923c340a0b6 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
>>> @@ -65,6 +65,7 @@
>>>   #include "intel_fbc.h"
>>>   #include "intel_frontbuffer.h"
>>>   #include "intel_psr.h"
>>> +#include "intel_tdf.h"
>>>   
>>>   /**
>>>    * frontbuffer_flush - flush frontbuffer
>>> @@ -93,6 +94,7 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
>>>   	trace_intel_frontbuffer_flush(i915, frontbuffer_bits, origin);
>>>   
>>>   	might_sleep();
>>> +	intel_td_flush(i915);
>>>   	intel_drrs_flush(i915, frontbuffer_bits);
>>>   	intel_psr_flush(i915, frontbuffer_bits, origin);
>>>   	intel_fbc_flush(i915, frontbuffer_bits, origin);
>>> diff --git a/drivers/gpu/drm/i915/display/intel_tdf.h b/drivers/gpu/drm/i915/display/intel_tdf.h
>>> new file mode 100644
>>> index 000000000000..353cde21f6c2
>>> --- /dev/null
>>> +++ b/drivers/gpu/drm/i915/display/intel_tdf.h
>>> @@ -0,0 +1,25 @@
>>> +/* SPDX-License-Identifier: MIT */
>>> +/*
>>> + * Copyright © 2024 Intel Corporation
>>> + */
>>> +
>>> +#ifndef __INTEL_TDF_H__
>>> +#define __INTEL_TDF_H__
>>> +
>>> +/*
>>> + * TDF (Transient-Data-Flush) is needed for Xe2+ where special L3:XD caching can
>>> + * be enabled through various PAT index modes. Idea is to use this caching mode
>>> + * when for example rendering onto the display surface, with the promise that
>>> + * KMD will ensure transient cache entries are always flushed by the time we do
>>> + * the display flip, since display engine is never coherent with CPU/GPU caches.
>>> + */
>>> +
>>> +struct drm_i915_private;
>>> +
>>> +#ifdef I915
>>> +static inline void intel_td_flush(struct drm_i915_private *i915) {}
>>> +#else
>>> +void intel_td_flush(struct drm_i915_private *i915);
>>> +#endif
>>> +
>>> +#endif
>>> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>>> index 6015c9e41f24..97a8674cdd76 100644
>>> --- a/drivers/gpu/drm/xe/Makefile
>>> +++ b/drivers/gpu/drm/xe/Makefile
>>> @@ -198,7 +198,8 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>>>   	display/xe_dsb_buffer.o \
>>>   	display/xe_fb_pin.o \
>>>   	display/xe_hdcp_gsc.o \
>>> -	display/xe_plane_initial.o
>>> +	display/xe_plane_initial.o \
>>> +	display/xe_tdf.o
>>>   
>>>   # SOC code shared with i915
>>>   xe-$(CONFIG_DRM_XE_DISPLAY) += \
>>> diff --git a/drivers/gpu/drm/xe/display/xe_tdf.c b/drivers/gpu/drm/xe/display/xe_tdf.c
>>> new file mode 100644
>>> index 000000000000..2c0d4e144e09
>>> --- /dev/null
>>> +++ b/drivers/gpu/drm/xe/display/xe_tdf.c
>>> @@ -0,0 +1,13 @@
>>> +// SPDX-License-Identifier: MIT
>>> +/*
>>> + * Copyright © 2024 Intel Corporation
>>> + */
>>> +
>>> +#include "xe_device.h"
>>> +#include "intel_display_types.h"
>>> +#include "intel_tdf.h"
>>> +
>>> +void intel_td_flush(struct drm_i915_private *i915)
>>> +{
>>> +	xe_device_td_flush(i915);
>>> +}
>>> -- 
>>> 2.25.1
>>>
>>
>> -- 
>> Matt Roper
>> Graphics Software Engineer
>> Linux GPU Platform Enablement
>> Intel Corporation
> 
