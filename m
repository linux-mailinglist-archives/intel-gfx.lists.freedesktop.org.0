Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 218328A83C6
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 15:05:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6816F1134D6;
	Wed, 17 Apr 2024 13:05:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QOUiPbFq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 320C31134DE;
 Wed, 17 Apr 2024 13:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713359145; x=1744895145;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=o9rlsX97mmQhuQqKaaHGPsqJ6PCdTbhlTj6KIgYT7bM=;
 b=QOUiPbFqG/oT4dGfcKvQGEKpnzbuItEtSXNuRT+idS0U/oqVcxBel3iz
 PyPvJfKdWo1H3MNQoUqzOwbVt/jQQuOQHTjE5kV5lJ6eP6qVFFTB5dkz1
 khOA7Ls2hbiGHI8PHGleEdXzXpKQaCPbdIMIQnDyttwU6BScNU+VvABfJ
 OVltnbCK8F7Kjg3BlWWbXWrSutSnSdl+F9kXHlhFOyGfoS516Aqa3Ncbs
 gZ+QZHvjopJSw/MiuxLAgt8hTqTFMRkIn6QsIYSd0la97/Qc49SGVDIi7
 Pr4q8tB4UgtFzmKDm9EW/W9OMJ3bA4m9rMlo3r6wDwDPhzoXJqYEDfK0j Q==;
X-CSE-ConnectionGUID: 9XXL7QK4ToeUaribd1bGOw==
X-CSE-MsgGUID: 6c6mP6V2Q0+7UsntNcxduA==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="19406821"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="19406821"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:05:45 -0700
X-CSE-ConnectionGUID: pIGmw5JNQnyP2Zg+TsF1hQ==
X-CSE-MsgGUID: l4JTxNybSWiPaFcFuaTN2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="53829951"
Received: from vpus-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.45.164])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:05:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 lucas.demarchi@intel.com, ville.syrjala@linux.intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net
Subject: Re: [PATCH v3 6/7] drm/i915/de: allow intel_display and
 drm_i915_private for de functions
In-Reply-To: <Zh6kMTfGuSqVjNIV@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1712665176.git.jani.nikula@intel.com>
 <0b48d6bebfe90aa2f901a05be8279ed887d99d7a.1712665176.git.jani.nikula@intel.com>
 <Zh6kMTfGuSqVjNIV@intel.com>
Date: Wed, 17 Apr 2024 16:05:37 +0300
Message-ID: <87cyqoxhpa.fsf@intel.com>
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

On Tue, 16 Apr 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Tue, Apr 09, 2024 at 03:26:48PM +0300, Jani Nikula wrote:
>> It would be too much noise to convert the intel_de_* functions from
>> using struct drm_i915_private to struct intel_display all at once. Add
>> generic wrappers using __to_intel_display() to accept both.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> 
>> ---
>> 
>> This was done using a cocci + shell script combo.
>
> the conversion below seems sane.
> would you mind sharing the scripts in the commit message,
> so scripts could be used when porting this patch to other
> trees?

Done in v4.

>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
>> ---
>>  drivers/gpu/drm/i915/display/intel_de.h | 102 +++++++++++++++---------
>>  1 file changed, 64 insertions(+), 38 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
>> index ba7a1c6ebc2a..a08f8ef630f3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_de.h
>> +++ b/drivers/gpu/drm/i915/display/intel_de.h
>> @@ -10,80 +10,101 @@
>>  #include "i915_trace.h"
>>  #include "intel_uncore.h"
>>  
>> +static inline struct intel_uncore *__to_uncore(struct intel_display *display)
>> +{
>> +	return &to_i915(display->drm)->uncore;
>> +}
>> +
>>  static inline u32
>> -intel_de_read(struct drm_i915_private *i915, i915_reg_t reg)
>> +__intel_de_read(struct intel_display *display, i915_reg_t reg)
>>  {
>> -	return intel_uncore_read(&i915->uncore, reg);
>> +	return intel_uncore_read(__to_uncore(display), reg);
>>  }
>> +#define intel_de_read(p,...) __intel_de_read(__to_intel_display(p), __VA_ARGS__)
>>  
>>  static inline u8
>> -intel_de_read8(struct drm_i915_private *i915, i915_reg_t reg)
>> +__intel_de_read8(struct intel_display *display, i915_reg_t reg)
>>  {
>> -	return intel_uncore_read8(&i915->uncore, reg);
>> +	return intel_uncore_read8(__to_uncore(display), reg);
>>  }
>> +#define intel_de_read8(p,...) __intel_de_read8(__to_intel_display(p), __VA_ARGS__)
>>  
>>  static inline u64
>> -intel_de_read64_2x32(struct drm_i915_private *i915,
>> -		     i915_reg_t lower_reg, i915_reg_t upper_reg)
>> +__intel_de_read64_2x32(struct intel_display *display,
>> +		       i915_reg_t lower_reg, i915_reg_t upper_reg)
>>  {
>> -	return intel_uncore_read64_2x32(&i915->uncore, lower_reg, upper_reg);
>> +	return intel_uncore_read64_2x32(__to_uncore(display), lower_reg,
>> +					upper_reg);
>>  }
>> +#define intel_de_read64_2x32(p,...) __intel_de_read64_2x32(__to_intel_display(p), __VA_ARGS__)
>>  
>>  static inline void
>> -intel_de_posting_read(struct drm_i915_private *i915, i915_reg_t reg)
>> +__intel_de_posting_read(struct intel_display *display, i915_reg_t reg)
>>  {
>> -	intel_uncore_posting_read(&i915->uncore, reg);
>> +	intel_uncore_posting_read(__to_uncore(display), reg);
>>  }
>> +#define intel_de_posting_read(p,...) __intel_de_posting_read(__to_intel_display(p), __VA_ARGS__)
>>  
>>  static inline void
>> -intel_de_write(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
>> +__intel_de_write(struct intel_display *display, i915_reg_t reg, u32 val)
>>  {
>> -	intel_uncore_write(&i915->uncore, reg, val);
>> +	intel_uncore_write(__to_uncore(display), reg, val);
>>  }
>> +#define intel_de_write(p,...) __intel_de_write(__to_intel_display(p), __VA_ARGS__)
>>  
>>  static inline u32
>> -intel_de_rmw(struct drm_i915_private *i915, i915_reg_t reg, u32 clear, u32 set)
>> +__intel_de_rmw(struct intel_display *display, i915_reg_t reg, u32 clear,
>> +	       u32 set)
>>  {
>> -	return intel_uncore_rmw(&i915->uncore, reg, clear, set);
>> +	return intel_uncore_rmw(__to_uncore(display), reg, clear, set);
>>  }
>> +#define intel_de_rmw(p,...) __intel_de_rmw(__to_intel_display(p), __VA_ARGS__)
>>  
>>  static inline int
>> -intel_de_wait(struct drm_i915_private *i915, i915_reg_t reg,
>> -	      u32 mask, u32 value, unsigned int timeout)
>> +__intel_de_wait(struct intel_display *display, i915_reg_t reg,
>> +		u32 mask, u32 value, unsigned int timeout)
>>  {
>> -	return intel_wait_for_register(&i915->uncore, reg, mask, value, timeout);
>> +	return intel_wait_for_register(__to_uncore(display), reg, mask, value,
>> +				       timeout);
>>  }
>> +#define intel_de_wait(p,...) __intel_de_wait(__to_intel_display(p), __VA_ARGS__)
>>  
>>  static inline int
>> -intel_de_wait_fw(struct drm_i915_private *i915, i915_reg_t reg,
>> -		 u32 mask, u32 value, unsigned int timeout)
>> +__intel_de_wait_fw(struct intel_display *display, i915_reg_t reg,
>> +		   u32 mask, u32 value, unsigned int timeout)
>>  {
>> -	return intel_wait_for_register_fw(&i915->uncore, reg, mask, value, timeout);
>> +	return intel_wait_for_register_fw(__to_uncore(display), reg, mask,
>> +					  value, timeout);
>>  }
>> +#define intel_de_wait_fw(p,...) __intel_de_wait_fw(__to_intel_display(p), __VA_ARGS__)
>>  
>>  static inline int
>> -intel_de_wait_custom(struct drm_i915_private *i915, i915_reg_t reg,
>> -		     u32 mask, u32 value,
>> -		     unsigned int fast_timeout_us,
>> -		     unsigned int slow_timeout_ms, u32 *out_value)
>> +__intel_de_wait_custom(struct intel_display *display, i915_reg_t reg,
>> +		       u32 mask, u32 value,
>> +		       unsigned int fast_timeout_us,
>> +		       unsigned int slow_timeout_ms, u32 *out_value)
>>  {
>> -	return __intel_wait_for_register(&i915->uncore, reg, mask, value,
>> +	return __intel_wait_for_register(__to_uncore(display), reg, mask,
>> +					 value,
>>  					 fast_timeout_us, slow_timeout_ms, out_value);
>>  }
>> +#define intel_de_wait_custom(p,...) __intel_de_wait_custom(__to_intel_display(p), __VA_ARGS__)
>>  
>>  static inline int
>> -intel_de_wait_for_set(struct drm_i915_private *i915, i915_reg_t reg,
>> -		      u32 mask, unsigned int timeout)
>> +__intel_de_wait_for_set(struct intel_display *display, i915_reg_t reg,
>> +			u32 mask, unsigned int timeout)
>>  {
>> -	return intel_de_wait(i915, reg, mask, mask, timeout);
>> +	return intel_de_wait(display, reg, mask, mask, timeout);
>>  }
>> +#define intel_de_wait_for_set(p,...) __intel_de_wait_for_set(__to_intel_display(p), __VA_ARGS__)
>>  
>>  static inline int
>> -intel_de_wait_for_clear(struct drm_i915_private *i915, i915_reg_t reg,
>> -			u32 mask, unsigned int timeout)
>> +__intel_de_wait_for_clear(struct intel_display *display, i915_reg_t reg,
>> +			  u32 mask, unsigned int timeout)
>>  {
>> -	return intel_de_wait(i915, reg, mask, 0, timeout);
>> +	return intel_de_wait(display, reg, mask, 0, timeout);
>>  }
>> +#define intel_de_wait_for_clear(p,...) __intel_de_wait_for_clear(__to_intel_display(p), __VA_ARGS__)
>>  
>>  /*
>>   * Unlocked mmio-accessors, think carefully before using these.
>> @@ -94,33 +115,38 @@ intel_de_wait_for_clear(struct drm_i915_private *i915, i915_reg_t reg,
>>   * a more localised lock guarding all access to that bank of registers.
>>   */
>>  static inline u32
>> -intel_de_read_fw(struct drm_i915_private *i915, i915_reg_t reg)
>> +__intel_de_read_fw(struct intel_display *display, i915_reg_t reg)
>>  {
>>  	u32 val;
>>  
>> -	val = intel_uncore_read_fw(&i915->uncore, reg);
>> +	val = intel_uncore_read_fw(__to_uncore(display), reg);
>>  	trace_i915_reg_rw(false, reg, val, sizeof(val), true);
>>  
>>  	return val;
>>  }
>> +#define intel_de_read_fw(p,...) __intel_de_read_fw(__to_intel_display(p), __VA_ARGS__)
>>  
>>  static inline void
>> -intel_de_write_fw(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
>> +__intel_de_write_fw(struct intel_display *display, i915_reg_t reg, u32 val)
>>  {
>>  	trace_i915_reg_rw(true, reg, val, sizeof(val), true);
>> -	intel_uncore_write_fw(&i915->uncore, reg, val);
>> +	intel_uncore_write_fw(__to_uncore(display), reg, val);
>>  }
>> +#define intel_de_write_fw(p,...) __intel_de_write_fw(__to_intel_display(p), __VA_ARGS__)
>>  
>>  static inline u32
>> -intel_de_read_notrace(struct drm_i915_private *i915, i915_reg_t reg)
>> +__intel_de_read_notrace(struct intel_display *display, i915_reg_t reg)
>>  {
>> -	return intel_uncore_read_notrace(&i915->uncore, reg);
>> +	return intel_uncore_read_notrace(__to_uncore(display), reg);
>>  }
>> +#define intel_de_read_notrace(p,...) __intel_de_read_notrace(__to_intel_display(p), __VA_ARGS__)
>>  
>>  static inline void
>> -intel_de_write_notrace(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
>> +__intel_de_write_notrace(struct intel_display *display, i915_reg_t reg,
>> +			 u32 val)
>>  {
>> -	intel_uncore_write_notrace(&i915->uncore, reg, val);
>> +	intel_uncore_write_notrace(__to_uncore(display), reg, val);
>>  }
>> +#define intel_de_write_notrace(p,...) __intel_de_write_notrace(__to_intel_display(p), __VA_ARGS__)
>>  
>>  #endif /* __INTEL_DE_H__ */
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
