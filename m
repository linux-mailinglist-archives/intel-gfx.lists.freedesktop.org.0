Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 579D07DF23D
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 13:23:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13ADA10E158;
	Thu,  2 Nov 2023 12:23:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 966BE10E097
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 12:23:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698927832; x=1730463832;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=V1Lpq+c3Sguu4OZujJgBnjpPynCUMsUkgJHy65QKAqY=;
 b=j2SgDNIJb1WpGuwb+26nkEiP/UTD4yY8gFXUQ2gEcJUL6cqK+zOQ1UeH
 mtrj5WzpzhhLvhVeQM/ZNo4dN5B4lq0bmRYAbXFE7EhNPF1OQC3jxVcVn
 wFlAFxAxIu/HyCPkQVTQutVkp84LUyi8mm7Jmb4aD2wwVje1cvGcSKYy2
 Xl1rCUJ7QhD/rXsAW/ygsw9z2H65ODhgG0Klp0T7wr7Ea9gLiVf5zTbfY
 JA5AibriwoWd6IM/5KucibtQ8QBCD74AMCZnj/iey+u8QwP95f91v9fnj
 fL0fbqkMr+Z/5kiDgS47Cph8eBAK3n/CjbmEOxbjAFCJxL+S4NqA4dkM2 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="455181654"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="455181654"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 05:23:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="796222070"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="796222070"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 05:23:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Nirmoy Das <nirmoy.das@linux.intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <4ac1d8f8-d108-9ff4-024f-85bc5394fb5d@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231031124502.1772160-1-jani.nikula@intel.com>
 <4ac1d8f8-d108-9ff4-024f-85bc5394fb5d@linux.intel.com>
Date: Thu, 02 Nov 2023 14:23:47 +0200
Message-ID: <87msvw2vjg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH RESEND 1/3] drm/i915: make some error
 capture functions static
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

On Tue, 31 Oct 2023, Nirmoy Das <nirmoy.das@linux.intel.com> wrote:
> On 10/31/2023 1:45 PM, Jani Nikula wrote:
>> Not needed outside of i915_gpu_error.c.
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

Thanks, series pushed to din.

BR,
Jani.

>> ---
>>   drivers/gpu/drm/i915/i915_gpu_error.c | 8 ++++----
>>   drivers/gpu/drm/i915/i915_gpu_error.h | 5 -----
>>   2 files changed, 4 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
>> index 8275f9b6a47d..889db834f07d 100644
>> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
>> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
>> @@ -520,7 +520,7 @@ __find_vma(struct i915_vma_coredump *vma, const char *name)
>>   	return NULL;
>>   }
>>   
>> -struct i915_vma_coredump *
>> +static struct i915_vma_coredump *
>>   intel_gpu_error_find_batch(const struct intel_engine_coredump *ee)
>>   {
>>   	return __find_vma(ee->vma, "batch");
>> @@ -609,9 +609,9 @@ void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...)
>>   	va_end(args);
>>   }
>>   
>> -void intel_gpu_error_print_vma(struct drm_i915_error_state_buf *m,
>> -			       const struct intel_engine_cs *engine,
>> -			       const struct i915_vma_coredump *vma)
>> +static void intel_gpu_error_print_vma(struct drm_i915_error_state_buf *m,
>> +				      const struct intel_engine_cs *engine,
>> +				      const struct i915_vma_coredump *vma)
>>   {
>>   	char out[ASCII85_BUFSZ];
>>   	struct page *page;
>> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
>> index 4ce227f7e1e1..8f9cdf056181 100644
>> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
>> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
>> @@ -277,11 +277,6 @@ static inline void intel_klog_error_capture(struct intel_gt *gt,
>>   
>>   __printf(2, 3)
>>   void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...);
>> -void intel_gpu_error_print_vma(struct drm_i915_error_state_buf *m,
>> -			       const struct intel_engine_cs *engine,
>> -			       const struct i915_vma_coredump *vma);
>> -struct i915_vma_coredump *
>> -intel_gpu_error_find_batch(const struct intel_engine_coredump *ee);
>>   
>>   struct i915_gpu_coredump *i915_gpu_coredump(struct intel_gt *gt,
>>   					    intel_engine_mask_t engine_mask, u32 dump_flags);

-- 
Jani Nikula, Intel
