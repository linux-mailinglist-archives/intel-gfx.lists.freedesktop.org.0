Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26446952DCF
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2024 14:01:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B86E210E311;
	Thu, 15 Aug 2024 12:01:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hq49X8qP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E632410E311
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2024 12:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723723302; x=1755259302;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=xKbY1MX+Ff/xR/vuOH7TKPoRU1CtKe8cQKmuyOJKBEk=;
 b=Hq49X8qPtfXUiZV25JVrLGTFUH67lZIjGsyfREuCHTIx7t9vYd7G5Ndo
 9uqv27AnEYzvlGkChKXkCPbw5AIpS5c/ZGrPzU9v9a5M8Yh0GDmlwg8eZ
 BSrkyg2FAFMFyZol3+ycDPq3FLXBGuEi/nLkTMJcF5ZFW7cvI3gY364/n
 vGcHLvGU+HQrYmB8q8usez3je5ZHGEPWjA7OvVsjsjA4PTSs0a2PQnQkZ
 Wm+FzqW7vxgmWnwHOTT5abDA1guVF1zN0agLYrxZwEzqcTsCwmzqsPM+S
 qniSAe9HY+VJYBHk4ddFNGz1288BybSs63ORB30SiaRQwCt2K8uJaVpqF w==;
X-CSE-ConnectionGUID: ceSH2in+Qz6KpZ1QqdJ4jA==
X-CSE-MsgGUID: BijTTjq/TWi5OjKaqc5rEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11164"; a="24878309"
X-IronPort-AV: E=Sophos;i="6.10,148,1719903600"; d="scan'208";a="24878309"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 05:01:41 -0700
X-CSE-ConnectionGUID: GlcatWdwSYSqx3u58TZ5wg==
X-CSE-MsgGUID: h1YKcMrrS1a9KusocHkHig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,148,1719903600"; d="scan'208";a="59612136"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 05:01:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: make __intel_display_power_is_enabled() static
In-Reply-To: <ZrykV8TC5w4pmyMR@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240813151216.2573845-1-jani.nikula@intel.com>
 <ZrykV8TC5w4pmyMR@ideak-desk.fi.intel.com>
Date: Thu, 15 Aug 2024 15:01:36 +0300
Message-ID: <87plqaxae7.fsf@intel.com>
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

On Wed, 14 Aug 2024, Imre Deak <imre.deak@intel.com> wrote:
> On Tue, Aug 13, 2024 at 06:12:16PM +0300, Jani Nikula wrote:
>> The function isn't used outside of intel_display_power.c. Make it
>> static.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Thanks, pushed to din.

> Same applies to intel_display_power_domain_str().

Sent another patch for that one.

BR,
Jani.

>
>> ---
>>  .../gpu/drm/i915/display/intel_display_power.c   | 16 ++--------------
>>  .../gpu/drm/i915/display/intel_display_power.h   |  2 --
>>  2 files changed, 2 insertions(+), 16 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index 0af1e34ef2a7..cf8b38f2ebf5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -198,20 +198,8 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
>>  	}
>>  }
>>  
>> -/**
>> - * __intel_display_power_is_enabled - unlocked check for a power domain
>> - * @dev_priv: i915 device instance
>> - * @domain: power domain to check
>> - *
>> - * This is the unlocked version of intel_display_power_is_enabled() and should
>> - * only be used from error capture and recovery code where deadlocks are
>> - * possible.
>> - *
>> - * Returns:
>> - * True when the power domain is enabled, false otherwise.
>> - */
>> -bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
>> -				      enum intel_display_power_domain domain)
>> +static bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
>> +					     enum intel_display_power_domain domain)
>>  {
>>  	struct i915_power_well *power_well;
>>  	bool is_enabled;
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
>> index d6c2a5846bdc..0962f6aaeee6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>> @@ -188,8 +188,6 @@ intel_display_power_domain_str(enum intel_display_power_domain domain);
>>  
>>  bool intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
>>  				    enum intel_display_power_domain domain);
>> -bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
>> -				      enum intel_display_power_domain domain);
>>  intel_wakeref_t intel_display_power_get(struct drm_i915_private *dev_priv,
>>  					enum intel_display_power_domain domain);
>>  intel_wakeref_t
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
