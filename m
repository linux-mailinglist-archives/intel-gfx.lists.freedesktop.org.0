Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BC899446F
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 11:36:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AFC610E4B3;
	Tue,  8 Oct 2024 09:36:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cVBZilhG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFC7A10E13D;
 Tue,  8 Oct 2024 09:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728380202; x=1759916202;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=AbTVKv7WU4/U5EEXxr1ORkDAA76TwqgfOGuXvwtHi/k=;
 b=cVBZilhGhzvSBthpMo0ogeGdqD3F2mbLbCAKbRm1kHFBVqbkNre4OF7P
 T9rpNWNcVr2WPIbtvLRFeYkhij4FeXR0DoO09n126KCWVDzLUfSDPDmnd
 rLLql4lTLc2LtoMaRnFtGHYyIP5CS+lbM32S7XShcPOTd4r2DtUVrcqDV
 mBuQsligquOOoksORg30HTaKipXwigIOsOj20PIbkkXw4COxbamcFdgux
 G7G8WAa3UWGjnxoLjcg1kHaMqQinuuZCk8nGOgOFMxn43DHDAPHt9+zBy
 qQO/EsgS1oGSACkeqHeVvACiIIJA6WbUSBsiNEn+3s3u++6LvVD0vxHfF g==;
X-CSE-ConnectionGUID: pTJpXKERRzO3SMGB0PLCmA==
X-CSE-MsgGUID: VKhgq1B8Q7GzytAnZMolvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="27693375"
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="27693375"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 02:36:41 -0700
X-CSE-ConnectionGUID: gkvNuqQKRYWZbECn/LP9Hw==
X-CSE-MsgGUID: xD3Pd8WQTHGS7ft8dszoog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="76606624"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.41])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 02:36:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 lucas.demarchi@intel.com, maarten.lankhorst@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH v3 06/15] drm/i915/display: add display platforms
 structure with platform members
In-Reply-To: <ZwQ8ZVuhUNiUHPyp@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1727699233.git.jani.nikula@intel.com>
 <d824d6675f7f8b5da7de6c28fa83fed6b990c59b.1727699233.git.jani.nikula@intel.com>
 <ZwQ8ZVuhUNiUHPyp@intel.com>
Date: Tue, 08 Oct 2024 12:36:34 +0300
Message-ID: <87zfnfq6l9.fsf@intel.com>
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

On Mon, 07 Oct 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Mon, Sep 30, 2024 at 03:31:07PM +0300, Jani Nikula wrote:
>> Add a structure with a bitfield member for each platform and
>> subplatform, and initialize them in platform and subplatform descs.
>> 
>> The structure also contains a bitmap in a union for easier manipulation
>> of the bits.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../drm/i915/display/intel_display_device.c   |  4 ++++
>>  .../drm/i915/display/intel_display_device.h   | 19 +++++++++++++++++++
>>  2 files changed, 23 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
>> index b2610217f5c5..258660b49eba 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>> @@ -31,6 +31,7 @@ struct stepping_desc {
>>  	.step_info.size = ARRAY_SIZE(_map)
>>  
>>  struct subplatform_desc {
>> +	struct intel_display_platforms platforms;
>>  	enum intel_display_platform subplatform;
>>  	const char *name;
>>  	const u16 *pciidlist;
>> @@ -38,10 +39,12 @@ struct subplatform_desc {
>>  };
>>  
>>  #define SUBPLATFORM(_platform, _subplatform)				\
>> +	.platforms._platform##_##_subplatform = 1,			\
>>  	.subplatform = (INTEL_DISPLAY_##_platform##_##_subplatform),	\
>>  	.name = #_subplatform
>>  
>>  struct platform_desc {
>> +	struct intel_display_platforms platforms;
>>  	enum intel_display_platform platform;
>>  	const char *name;
>>  	const struct subplatform_desc *subplatforms;
>> @@ -50,6 +53,7 @@ struct platform_desc {
>>  };
>>  
>>  #define PLATFORM(_platform)			 \
>> +	.platforms._platform = 1,		 \
>>  	.platform = (INTEL_DISPLAY_##_platform), \
>>  	.name = #_platform
>>  
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index c4208c34cc31..f166d4698949 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -6,6 +6,7 @@
>>  #ifndef __INTEL_DISPLAY_DEVICE_H__
>>  #define __INTEL_DISPLAY_DEVICE_H__
>>  
>> +#include <linux/bitops.h>
>>  #include <linux/types.h>
>>  
>>  #include "intel_display_conversion.h"
>> @@ -104,6 +105,24 @@ enum intel_display_platform {
>>  
>>  #undef __ENUM
>>  
>> +#define __MEMBER(name) unsigned long name:1;
>> +#define __COUNT(x) 1 +
>> +
>> +#define __NUM_PLATFORMS (INTEL_DISPLAY_PLATFORMS(__COUNT) 0)
>> +
>> +struct intel_display_platforms {
>> +	union {
>> +		struct {
>> +			INTEL_DISPLAY_PLATFORMS(__MEMBER);
>> +		};
>> +		DECLARE_BITMAP(bitmap, __NUM_PLATFORMS);
>> +	};
>> +};
>> +
>> +#undef __MEMBER
>> +#undef __COUNT
>
> why do we need the count here?
> I'm afraid I didn't fully followed this macro...

"1 +" gets substituted for each platform in INTEL_DISPLAY_PLATFORMS(),
resulting in the number of platforms, stored in __NUM_PLATFORMS.

We use that for the DECLARE_BITMAP() above. And we're using a bitmap to
avoid hand-rolling bitmap_or(). Yeah, it's a bit icky, but a) gets the
job done, b) should not need to be manually updated when the number of
platforms grows.

BR,
Jani.

>
>> +#undef __NUM_PLATFORMS
>> +
>>  #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
>>  	/* Keep in alphabetical order */ \
>>  	func(cursor_needs_physical); \
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
