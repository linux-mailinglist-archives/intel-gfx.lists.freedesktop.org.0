Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8E9A07255
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 11:01:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0964810E0E3;
	Thu,  9 Jan 2025 10:01:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GKLv7QEa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0CCA10E0E3
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2025 10:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736416867; x=1767952867;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=mmjH8Ov/B99rAQLUsRkn1rrEJRGhM7bJj5waR75ew+k=;
 b=GKLv7QEadP/RNIEy/EmTbxUtXMFV1g7R0ElA1jecfYIftuihyGYOqPt+
 i4PklFmA4A6QKQEYbZhG19ATj4knwrukTg59kcnIWpQY9bS5FcNyyD671
 Zf0vsIzq2ZqNDGMI/mE2RxudLk/HX+t/q+0N53rDA7d3R5HJcyjsse7Uw
 GdQdo6l/iycrXKkSXo2ac/dhGqCrrlJwy4F14VoO4RrH8PqXJohSk3CYt
 uF7gwX0SEm9d7+Q0BsAzZXD1CUYdecJQx22V4upwkUmihDw6RLNwLiNop
 C3xWk5DO86AUS+xqynThPU1OS9ojrXlUH/mJ5dLew6386bVT636vvuw4k w==;
X-CSE-ConnectionGUID: TThIhFVBSOuVm7XRrmSy9Q==
X-CSE-MsgGUID: gMc7Iwb7TvqGJatJUQokqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="35956991"
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="35956991"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 02:01:06 -0800
X-CSE-ConnectionGUID: eL8W5fxQRUWN9CN4KoWTVA==
X-CSE-MsgGUID: Iu0rRC4ZS9+52euWLj5dvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="134253563"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.206])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 02:01:05 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/bios: Define eDP pipe joiner feature for VBT
In-Reply-To: <35c5ac22-42b2-4f55-b69d-51e27d86f153@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250108143638.1125237-1-dnyaneshwar.bhadane@intel.com>
 <35c5ac22-42b2-4f55-b69d-51e27d86f153@intel.com>
Date: Thu, 09 Jan 2025 12:01:02 +0200
Message-ID: <87zfk0jogx.fsf@intel.com>
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

On Wed, 08 Jan 2025, "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com> wrote:
> On 1/8/2025 8:06 PM, Dnyaneshwar Bhadane wrote:
>> There is new field "edp pipe joiner feature" size of 2 bytes in the
>> eDP VBT block. Each bit represent panel number to be enable/disable
>> for this feature.
>>
>> Default value:
>> For ARL platform, 0x0000 to keep the feature disabled by default.
>> Xe3lpd onwards, 0xFFFF to keep the feature enable by default by VBT.
>>
>> Bspec: 20142
>> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vbt_defs.h | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> index e9b809568cd4..2fdad5170896 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> @@ -1090,6 +1090,7 @@ struct bdb_edp {
>>   	u16 edp_dsc_disable;					/* 251+ */
>>   	u16 t6_delay_support;					/* 260+ */
>>   	u16 link_idle_time[16];					/* 260+ */
>> +	u16 edp_pipe_joiner_feature;				/* 261+ */
>
> Better to add variable when we are actually using it in code.

I was asking for usage plans myself, but for VBT definitions I don't
think we've ever been strict about requiring a user.

For one thing, we use the same file for the IGT intel_vbt_decode tool,
and I wouldn't want to block adding the decode there on some kernel
user.

BR,
Jani.


>
> Regards,
> Ravi Kumar V
>
>>   } __packed;
>>   
>>   /*
>

-- 
Jani Nikula, Intel
