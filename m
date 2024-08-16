Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D67E9954517
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2024 11:05:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9214810E17D;
	Fri, 16 Aug 2024 09:05:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aj5gb7nv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44EA110E17D
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2024 09:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723799104; x=1755335104;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=UW/vEKHtvHJPjPEei64d/AhyoTlu5jfm3DaUOXaOngo=;
 b=aj5gb7nvCbpSaeSK0Fywiyu9vjyfpxoaBFGC6TYbtmGEwJ4oPmgVSHjK
 5C8iR8gxiXmHj5gHgS/ju18C7amr6kbfEXgA4ZZOJBdNwwzazEpBGKVn8
 recEFlkh5xsTRVwC+/PIAcjYRkLux1yI4ekzaXpyneHyd4wz8AUBeDlMM
 MkLQKiz9BNe4NH6XXeADhbp7KB7IeWLzLaJissqcxnlw65O793s9bRoZu
 +7yBfRdGWQWZNm8l3dmNRB0ujjEpzwhOpeEwZrv0bzm9Pdg7n9HwTXe20
 bVTKdnMacc1dGjSCudSzpODFkEjKIrx9tkXCZTcZ4gj8SJnnFjMqZUjWX A==;
X-CSE-ConnectionGUID: WLO+sTYORf6u9zud0lWPQw==
X-CSE-MsgGUID: 8UVsZp/LQ/ew9vIwrm3WwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="22058266"
X-IronPort-AV: E=Sophos;i="6.10,151,1719903600"; d="scan'208";a="22058266"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2024 02:04:55 -0700
X-CSE-ConnectionGUID: npN7vOmCThWKwRJuLc+TXQ==
X-CSE-MsgGUID: KYDfKhxfQyGbNPdRBB0dWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,151,1719903600"; d="scan'208";a="59635912"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.214])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2024 02:04:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: make intel_display_power_domain_str() static
In-Reply-To: <Zr4FeLoFySKebKk0@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240815120002.3472727-1-jani.nikula@intel.com>
 <Zr4FeLoFySKebKk0@ideak-desk.fi.intel.com>
Date: Fri, 16 Aug 2024 12:04:48 +0300
Message-ID: <87le0w7s9b.fsf@intel.com>
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

On Thu, 15 Aug 2024, Imre Deak <imre.deak@intel.com> wrote:
> On Thu, Aug 15, 2024 at 03:00:02PM +0300, Jani Nikula wrote:
>> The function isn't used outside of intel_display_power.c. Make it
>> static.
>> 
>> Suggested-by: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
>>  drivers/gpu/drm/i915/display/intel_display_power.h | 3 ---
>>  2 files changed, 1 insertion(+), 4 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index cf8b38f2ebf5..39ab3117265c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -36,7 +36,7 @@
>>  	for_each_power_well_reverse(__dev_priv, __power_well)		        \
>>  		for_each_if(test_bit((__domain), (__power_well)->domains.bits))
>>  
>> -const char *
>> +static const char *
>>  intel_display_power_domain_str(enum intel_display_power_domain domain)
>>  {
>>  	switch (domain) {
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
>> index 0962f6aaeee6..425452c5a469 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>> @@ -183,9 +183,6 @@ void intel_display_power_resume(struct drm_i915_private *i915);
>>  void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
>>  					     u32 state);
>>  
>> -const char *
>> -intel_display_power_domain_str(enum intel_display_power_domain domain);
>> -
>>  bool intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
>>  				    enum intel_display_power_domain domain);
>>  intel_wakeref_t intel_display_power_get(struct drm_i915_private *dev_priv,
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
