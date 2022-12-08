Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BB8647092
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 14:14:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A360310E20F;
	Thu,  8 Dec 2022 13:14:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9850E10E20F
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 13:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670505271; x=1702041271;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=JCldrK9GLgXb2snKu0zoz355HmkEkM4NBbDdSZDacYA=;
 b=g2Fy3/QnqduS12dAAdQ7TqBspG3RiL5t3qe2g3UufH0RXD48y1KElnBc
 fGlvAPZAWBRXYpHcXff40oNPx6akbE7vAvH263Dzc3dAS3lNEJXjeBOr4
 UvANCHmhGk0/f/8oAtxH1i3SlHQHmeM9XYOcD9JAdk5DwsD0W56u5fHML
 TFf3KTBS/arSngqKkarBcxz8VLGFjeOT3FFXpg17I0ZG7JGjGNjqn3JKI
 sAFOcx936ItJDvoOpo9xB0QA5Ia1UPTYLeKujhnNnTGz9w/EYAJwd6eLI
 3EtZsDVwBnbX5I+lI8SS+UHxKBIGejXMe1jYrFQ00Kd18ZMIGM42OxXhj g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="379328789"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="379328789"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 05:14:19 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="624695048"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="624695048"
Received: from danyang-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.18.245])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 05:14:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <51dae3e3-8ebd-9d81-e20c-937144bcd599@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1670433372.git.jani.nikula@intel.com>
 <0d051554dfeeb4d8aa3bc9136ed111fa35f647d8.1670433372.git.jani.nikula@intel.com>
 <51dae3e3-8ebd-9d81-e20c-937144bcd599@intel.com>
Date: Thu, 08 Dec 2022 15:14:15 +0200
Message-ID: <87zgbyyr4o.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 01/11] drm/i915/de: Add more macros to
 remove all direct calls to uncore
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

On Thu, 08 Dec 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
> On 07.12.2022 18:17, Jani Nikula wrote:
>> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> 
>> Add more de helpers to be able to avoid direct calls to uncore.
>> 
>> v3 by Jani:
>> - drop intel_de_write_samevalue/intel_de_rewrite_fw altogether
>> 
>> v2 by Jani:
>> - drop pcode stuff for now
>> - rename intel_de_write_samevalue -> intel_de_rewrite_fw
>> 
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_de.h | 35 +++++++++++++++++++++++++
>>   1 file changed, 35 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
>> index 9c104f65e4c8..004f01906fd7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_de.h
>> +++ b/drivers/gpu/drm/i915/display/intel_de.h
>> @@ -16,6 +16,12 @@ intel_de_read(struct drm_i915_private *i915, i915_reg_t reg)
>>   	return intel_uncore_read(&i915->uncore, reg);
>>   }
>>   
>> +static inline u8
>> +intel_de_read8(struct drm_i915_private *i915, i915_reg_t reg)
>> +{
>> +	return intel_uncore_read8(&i915->uncore, reg);
>> +}
>> +
>>   static inline void
>>   intel_de_posting_read(struct drm_i915_private *i915, i915_reg_t reg)
>>   {
>> @@ -41,6 +47,23 @@ intel_de_wait_for_register(struct drm_i915_private *i915, i915_reg_t reg,
>>   	return intel_wait_for_register(&i915->uncore, reg, mask, value, timeout);
>>   }
>>   
>> +static inline int
>> +intel_de_wait_for_register_fw(struct drm_i915_private *i915, i915_reg_t reg,
>> +			      u32 mask, u32 value, unsigned int timeout)
>> +{
>> +	return intel_wait_for_register_fw(&i915->uncore, reg, mask, value, timeout);
>> +}
>> +
>> +static inline int
>> +__intel_de_wait_for_register(struct drm_i915_private *i915, i915_reg_t reg,
>> +			     u32 mask, u32 value,
>> +			     unsigned int fast_timeout_us,
>> +			     unsigned int slow_timeout_ms, u32 *out_value)
>> +{
>> +	return __intel_wait_for_register(&i915->uncore, reg, mask, value,
>> +					 fast_timeout_us, slow_timeout_ms, out_value);
>> +}
>> +
>>   static inline int
>>   intel_de_wait_for_set(struct drm_i915_private *i915, i915_reg_t reg,
>>   		      u32 mask, unsigned int timeout)
>> @@ -81,4 +104,16 @@ intel_de_write_fw(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
>>   	intel_uncore_write_fw(&i915->uncore, reg, val);
>>   }
>>   
>> +static inline u32
>> +intel_de_read_notrace(struct drm_i915_private *i915, i915_reg_t reg)
>> +{
>> +	return intel_uncore_read_notrace(&i915->uncore, reg);
>> +}
>> +
>> +static inline void
>> +intel_de_write_notrace(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
>> +{
>> +	intel_uncore_write_notrace(&i915->uncore, reg, val);
>> +}
>> +
>
> I wonder why intel_de_* helpers are only in display subsystem, I guess 
> whole i915 could benefit from it.

I guess the rest of i915 needs to remain aware of gt specific uncores?

> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Thanks, pushed the series to din.

BR,
Jani.

>
> Regards
> Andrzej
>
>
>>   #endif /* __INTEL_DE_H__ */
>

-- 
Jani Nikula, Intel Open Source Graphics Center
