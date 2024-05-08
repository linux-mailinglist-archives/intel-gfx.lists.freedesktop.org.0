Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B081F8BFDE3
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 15:02:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ED0F10F34A;
	Wed,  8 May 2024 13:02:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iiHrToUY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63AF110F34A
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 13:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715173321; x=1746709321;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=WQs0x/iaZpDRgUcnCCtMeEBHEI1IpaBSuQI4LI5gtAU=;
 b=iiHrToUYIiRveeq+4zGLS9xMyNoQbKwEc0aWrxl1JvWjNrTIU0GXUEY4
 KIbRBloutiT2eGcre7M5Ji9XzHkVFfd3H6lSeXE+itn4VS5f2bGv8gjDr
 Xz8hBlXyzanpQVFsZ3FNs5aM28wEGmONQlJxFxAC0sNvFbjpzQm7ZA/XY
 ECexC3+8fkOnEzTyqXxer+KqdS6n4x/ijH0x8VSkoV4hSFwJ5eaeH+8kC
 hO7FatHg/in01q+WGT+eohhrCt0B06crZ/Sk+W54D2edtPIvGKBR5JrzE
 vdmanM+j9RaW5la0Cgx7aXB/wG7jiQGJgs4lF7DSSwFUCTbYYMZNKTxvO w==;
X-CSE-ConnectionGUID: Mn0nT1iFS+2ET6uqpYKErA==
X-CSE-MsgGUID: +pBd3DGkQU6yyXxHAfNy/w==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="33537079"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="33537079"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 06:02:01 -0700
X-CSE-ConnectionGUID: 6ZCH2xpVQpiOjuh5rfjqsQ==
X-CSE-MsgGUID: 4SRTFCbdReSVqAE/YavNOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="29280432"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 06:01:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com
Subject: Re: [PATCH 4/5] drm/i915: simplify ULT/ULX subplatform detection
In-Reply-To: <Zjt1W4owwCO2E4AZ@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1715086509.git.jani.nikula@intel.com>
 <0d96bdbcb87672ef1b78b5f78431aab4d2984818.1715086509.git.jani.nikula@intel.com>
 <Zjt1W4owwCO2E4AZ@intel.com>
Date: Wed, 08 May 2024 16:01:56 +0300
Message-ID: <87bk5gjw3f.fsf@intel.com>
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

On Wed, 08 May 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Tue, May 07, 2024 at 03:56:51PM +0300, Jani Nikula wrote:
>> For HSW/BDW ULX machines are also considered ULT. For the sake of
>> simplicity and clarity, handle this at the IS_XXX_ULT() macro level
>> instead of two simultaneous subplatforms.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_drv.h          | 9 ++++++---
>>  drivers/gpu/drm/i915/intel_device_info.c | 4 ----
>>  2 files changed, 6 insertions(+), 7 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index d1d21d433766..9c57af484ba8 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -562,19 +562,22 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPLU)
>>  #define IS_HASWELL_EARLY_SDV(i915) (IS_HASWELL(i915) && \
>>  				    (INTEL_DEVID(i915) & 0xFF00) == 0x0C00)
>> +/* BDW ULX machines are also considered ULT. */
>>  #define IS_BROADWELL_ULT(i915) \
>> -	IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULT)
>> +	(IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULT) || \
>> +	 IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULX))
>>  #define IS_BROADWELL_ULX(i915) \
>>  	IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULX)
>>  #define IS_BROADWELL_GT3(i915)	(IS_BROADWELL(i915) && \
>>  				 INTEL_INFO(i915)->gt == 3)
>> +/* HSW ULX machines are also considered ULT. */
>>  #define IS_HASWELL_ULT(i915) \
>> -	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULT)
>> +	(IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULT) ||	\
>> +	 IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULX))
>>  #define IS_HASWELL_GT3(i915)	(IS_HASWELL(i915) && \
>>  				 INTEL_INFO(i915)->gt == 3)
>>  #define IS_HASWELL_GT1(i915)	(IS_HASWELL(i915) && \
>>  				 INTEL_INFO(i915)->gt == 1)
>> -/* ULX machines are also considered ULT. */
>>  #define IS_HASWELL_ULX(i915) \
>>  	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULX)
>>  #define IS_SKYLAKE_ULT(i915) \
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
>> index 27b4a5882be3..a72efa919602 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.c
>> +++ b/drivers/gpu/drm/i915/intel_device_info.c
>> @@ -232,10 +232,6 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
>>  	} else if (find_devid(devid, subplatform_ulx_ids,
>>  			      ARRAY_SIZE(subplatform_ulx_ids))) {
>>  		mask = BIT(INTEL_SUBPLATFORM_ULX);
>> -		if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
>> -			/* ULX machines are also considered ULT. */
>> -			mask |= BIT(INTEL_SUBPLATFORM_ULT);
>> -		}
>
> Oh... it is a long time since I don't look to these bits,
> but I don't believe that the define above would cover this case here.
>
> It seems that you will miss the bits in this platform_mask.

How come?

What this does is make ULX platforms also match the ULT checks. Thus I'm
changing the ULT macros to include ULX subplatforms.

Or I don't understand what you mean.

BR,
Jani.




>
>>  	} else if (find_devid(devid, subplatform_portf_ids,
>>  			      ARRAY_SIZE(subplatform_portf_ids))) {
>>  		mask = BIT(INTEL_SUBPLATFORM_PORTF);
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
