Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66829825386
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 13:59:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A276710E056;
	Fri,  5 Jan 2024 12:59:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9EFD10E056
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 12:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704459583; x=1735995583;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=BhG8zhztiNQEBarbvCPGIhEe7NaBs1m2y+UNbvxXvTc=;
 b=nxzTMPVn+y+p4ZOA67ShWotpCa3J7kCki4CfelnHbLZtOhKK7vyyFo6b
 ABik9jWt1kqt2W6t3XowD/+GFb+Xz3+GWINpDy3DSeZrkVJdpV+V7JQgw
 NDwIFqsrISuM2FCbBSkN5hBROhIZgIGeKQEnIdem9GIH3sb7iR3dlR/Jv
 Yc4DSjpOUGGyohQ3VBf6oF09HDCIZWJSg7lUcjsyXJFyCSBqwGGbcHBvx
 QA59KGRJ62TvHbFszYsGPQVXhPexxV9QMV7DNaDwmK42UuQCuJKdHrx/F
 rV7EXzi+iRcdYpiXe9jVvRbN872V19BCphrwp7b9bCMi1zlQN9Q3vO+Jd A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="4871555"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; 
   d="scan'208";a="4871555"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 04:59:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="1112086518"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; d="scan'208";a="1112086518"
Received: from amaslenx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.106])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 04:59:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
Subject: Re: [PATCH] drm/i915: don't make assumptions about intel_wakeref_t
 type
In-Reply-To: <ZZboM17ia5lPn+1o@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240104164600.783371-1-jani.nikula@intel.com>
 <ZZboM17ia5lPn+1o@ideak-desk.fi.intel.com>
Date: Fri, 05 Jan 2024 14:59:37 +0200
Message-ID: <87sf3cx7eu.fsf@intel.com>
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, intel-gfx@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 04 Jan 2024, Imre Deak <imre.deak@intel.com> wrote:
> On Thu, Jan 04, 2024 at 06:46:00PM +0200, Jani Nikula wrote:
>> intel_wakeref_t is supposed to be a mostly opaque cookie to its
>> users. It should only be checked for being non-zero and set to
>> zero. Debug logging its actual value is meaningless. Switch to just
>> debug logging whether the async_put_wakeref is non-zero.
>> 
>> The issue dates back to much earlier than
>> commit b49e894c3fd8 ("drm/i915: Replace custom intel runtime_pm tracker
>> with ref_tracker library"), but this is the one that brought about a
>> build failure due to the printf format.
>> 
>> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
>> Closes: https://lore.kernel.org/r/20240102111222.2db11208@canb.auug.org.au
>> Fixes: b49e894c3fd8 ("drm/i915: Replace custom intel runtime_pm tracker with ref_tracker library")
>> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Thanks for the reviews, pushed to drm-intel-gt-next (because that's
where b49e894c3fd8 was pushed).

BR,
Jani.


>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_power.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index 5f091502719b..6fd4fa52253a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -405,8 +405,8 @@ print_async_put_domains_state(struct i915_power_domains *power_domains)
>>  						     struct drm_i915_private,
>>  						     display.power.domains);
>>  
>> -	drm_dbg(&i915->drm, "async_put_wakeref %lu\n",
>> -		power_domains->async_put_wakeref);
>> +	drm_dbg(&i915->drm, "async_put_wakeref: %s\n",
>> +		str_yes_no(power_domains->async_put_wakeref));
>>  
>>  	print_power_domains(power_domains, "async_put_domains[0]",
>>  			    &power_domains->async_put_domains[0]);
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
