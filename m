Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1329EABEF
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 10:27:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3706210E844;
	Tue, 10 Dec 2024 09:27:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O9GquCZU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3CC610E842;
 Tue, 10 Dec 2024 09:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733822860; x=1765358860;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=HUATELVke6kS8FcxdIlyh91sEE+0xJZnywZAZxApnMs=;
 b=O9GquCZUoe45c7wm42RUW/pKRCEmH0GhljURPZZg0+mwbt+ucZxVz4jy
 yeHvH0q/j7gIAfu0ce+eruJ5WY2r3xSQbcf1Lg/eL8JoemMJh0hhdtGoc
 IKBlliRa7y3ElZoxgcSmFhvGoy2T2hb4xdvV9VVDoCiXlbwS49yeIrJGD
 6R4A4ruAKhghQtA/uiePRNRDbpCePj5BYx+AbzQK7yJVPtttc2i1HiHHb
 ehe0a4QCCzgLqTpuZlHn0e8V1j3isVJbGJuxJglpQq3r1m0Ajq/s1Uj1M
 S6/78MXkVziiBY2q+7KscJt8lh4r0gYX5V/EfzJswV4qps/qq7SRd41oQ Q==;
X-CSE-ConnectionGUID: pILLS/CZQBKsf0uMh91/Gw==
X-CSE-MsgGUID: UdbrXqH8TeW1NM75G6nGTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="21742785"
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="21742785"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 01:27:40 -0800
X-CSE-ConnectionGUID: PYhE3HR2RFC7720rL/lpDg==
X-CSE-MsgGUID: ZUjKHgSlQvy9Zy/0KZC5Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="118600164"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 01:27:38 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Cc: Paul Menzel <pmenzel@molgen.mpg.de>
Subject: RE: [PATCH] drm/i915/pps: debug log the remaining power cycle delay
 to wait
In-Reply-To: <SJ1PR11MB61293016527A2509AA597AACB93C2@SJ1PR11MB6129.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241204160048.2774419-1-jani.nikula@intel.com>
 <SJ1PR11MB61293016527A2509AA597AACB93C2@SJ1PR11MB6129.namprd11.prod.outlook.com>
Date: Tue, 10 Dec 2024 11:27:36 +0200
Message-ID: <87msh3zy47.fsf@intel.com>
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

On Mon, 09 Dec 2024, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: Wednesday, December 4, 2024 9:31 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; Paul Menzel
>> <pmenzel@molgen.mpg.de>
>> Subject: [PATCH] drm/i915/pps: debug log the remaining power cycle delay to
>> wait
>>
>> While pps_init_delays() debug logs the power cycle delay, also debug log the
>> actual remaining time to wait in wait_panel_power_cycle().
>>
>> Note that this still isn't the full picture; the power sequencer may still wait after
>> this one.
>>
>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13007
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> LGTM
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>
>
>>
>> ---
>>
>> Cc: Paul Menzel <pmenzel@molgen.mpg.de>
>> ---
>>  drivers/gpu/drm/i915/display/intel_pps.c | 19 ++++++++++---------
>>  1 file changed, 10 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
>> b/drivers/gpu/drm/i915/display/intel_pps.c
>> index 7784b3b760db..bfda52850150 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> @@ -668,23 +668,24 @@ static void wait_panel_power_cycle(struct intel_dp
>> *intel_dp)
>>       struct intel_display *display = to_intel_display(intel_dp);
>>       struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>       ktime_t panel_power_on_time;
>> -     s64 panel_power_off_duration;
>> -
>> -     drm_dbg_kms(display->drm,
>> -                 "[ENCODER:%d:%s] %s wait for panel power cycle\n",
>> -                 dig_port->base.base.base.id, dig_port->base.base.name,
>> -                 pps_name(intel_dp));
>> +     s64 panel_power_off_duration, remaining;
>>
>>       /* take the difference of current time and panel power off time
>>        * and then make panel wait for power_cycle if needed. */
>>       panel_power_on_time = ktime_get_boottime();
>>       panel_power_off_duration = ktime_ms_delta(panel_power_on_time,
>> intel_dp->pps.panel_power_off_time);
>>
>> +     remaining = max(0, intel_dp->pps.panel_power_cycle_delay -
>> +panel_power_off_duration);
>> +
>> +     drm_dbg_kms(display->drm,
>> +                 "[ENCODER:%d:%s] %s wait for panel power cycle (%lld ms
>> remaining)\n",
>> +                 dig_port->base.base.base.id, dig_port->base.base.name,
>> +                 pps_name(intel_dp), remaining);
>> +
>>       /* When we disable the VDD override bit last we have to do the
>> manual
>>        * wait. */
>> -     if (panel_power_off_duration < (s64)intel_dp-
>> >pps.panel_power_cycle_delay)
>> -             wait_remaining_ms_from_jiffies(jiffies,
>> -                                    intel_dp->pps.panel_power_cycle_delay -
>> panel_power_off_duration);
>> +     if (remaining)
>> +             wait_remaining_ms_from_jiffies(jiffies, remaining);
>>
>>       wait_panel_status(intel_dp, IDLE_CYCLE_MASK, IDLE_CYCLE_VALUE);
>> }
>> --
>> 2.39.5
>

-- 
Jani Nikula, Intel
