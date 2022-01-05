Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 491E5485732
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 18:27:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5848910FC63;
	Wed,  5 Jan 2022 17:27:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8AC410FC63
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 17:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641403632; x=1672939632;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=zzLx4Y2HoKjRr1zK/Ht5RHrNDICy4wJXjsn+QG+T18I=;
 b=U9sp7C8hKSneIE5Z+hNw6UKQZaU6fubtwRpqwad3/1wnCWQEvlwO6tzQ
 r5RtJ+cG32LjMfExDyJTeCQjYsactTiIrbpNLnCkiaQAebaEKAJAOOYSN
 cohOy2jViTxskG+o1RuKCR69CVJsEaTFLMT+qmiME5b+00hF22bEXmNsQ
 3TVC6TuQhBbP0gAVDUKleMSc8elpX1udX8X4ojJcdalJCfN5VAS8t/kZO
 M4lDe1hiI7sf5jksY0qt2oEn73NQSuiv8CivlEBpUgqWUbw7d4RCwHJT0
 Ch8DDXrr4FdLVsPkMdSYjoAEPh1RT3MnxhJ39MtXHvcv7W5PL73BbYMVd w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="240033156"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="240033156"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 09:27:12 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="513033890"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 09:27:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <4f090abf-3bcd-0253-d9f9-2a385aa11bb6@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220105102131.988791-1-jani.nikula@intel.com>
 <4f090abf-3bcd-0253-d9f9-2a385aa11bb6@linux.intel.com>
Date: Wed, 05 Jan 2022 19:27:08 +0200
Message-ID: <87bl0qjdoz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: stop including i915_irq.h from
 i915_drv.h
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

On Wed, 05 Jan 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> On 05/01/2022 10:21, Jani Nikula wrote:
>> Only include i915_irq.h where actually needed.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.

>
> Regards,
>
> Tvrtko
>
>> ---
>>   drivers/gpu/drm/i915/display/intel_crtc.c          | 1 +
>>   drivers/gpu/drm/i915/display/intel_display_trace.h | 1 +
>>   drivers/gpu/drm/i915/gt/intel_rps.c                | 1 +
>>   drivers/gpu/drm/i915/gt/uc/intel_guc.c             | 1 +
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_log.c         | 1 +
>>   drivers/gpu/drm/i915/i915_drv.h                    | 1 -
>>   6 files changed, 5 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
>> index 16c3ca66d9f0..08ee3e17ee5c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
>> @@ -12,6 +12,7 @@
>>   #include <drm/drm_plane_helper.h>
>>   #include <drm/drm_vblank_work.h>
>>   
>> +#include "i915_irq.h"
>>   #include "i915_vgpu.h"
>>   #include "i9xx_plane.h"
>>   #include "icl_dsi.h"
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
>> index 4043e1276383..f05f0f9b5103 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_trace.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
>> @@ -13,6 +13,7 @@
>>   #include <linux/tracepoint.h>
>>   
>>   #include "i915_drv.h"
>> +#include "i915_irq.h"
>>   #include "intel_crtc.h"
>>   #include "intel_display_types.h"
>>   
>> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
>> index 54e7df788dbf..bd35e45d3aaa 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
>> @@ -6,6 +6,7 @@
>>   #include <drm/i915_drm.h>
>>   
>>   #include "i915_drv.h"
>> +#include "i915_irq.h"
>>   #include "intel_breadcrumbs.h"
>>   #include "intel_gt.h"
>>   #include "intel_gt_clock_utils.h"
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> index 6e228343e8cb..0c52d1652e8b 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> @@ -12,6 +12,7 @@
>>   #include "intel_guc_ads.h"
>>   #include "intel_guc_submission.h"
>>   #include "i915_drv.h"
>> +#include "i915_irq.h"
>>   
>>   /**
>>    * DOC: GuC
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
>> index ac0931f0374b..7b0b43e87244 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
>> @@ -7,6 +7,7 @@
>>   
>>   #include "gt/intel_gt.h"
>>   #include "i915_drv.h"
>> +#include "i915_irq.h"
>>   #include "i915_memcpy.h"
>>   #include "intel_guc_log.h"
>>   
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index beeb42a14aae..3967748ba347 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -106,7 +106,6 @@
>>   #include "i915_scheduler.h"
>>   #include "gt/intel_timeline.h"
>>   #include "i915_vma.h"
>> -#include "i915_irq.h"
>>   
>>   
>>   /* General customization:
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
