Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE769EABF1
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 10:28:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6040410E842;
	Tue, 10 Dec 2024 09:28:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A+l8hfJv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78A3B10E842
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 09:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733822882; x=1765358882;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=dGIZK9jghOkdWNQ4QMG/QQpwR0FFQVg73XHCd2R9jwg=;
 b=A+l8hfJv1+yqPzPPEaQtic/20SDnmLTeu3QYb7LtG+cmeBcC0t44RVm4
 uo9DPaJeryXchUWVMxwYc/rL5pdz0NMAfNQBRi7Vqi9DeOIdmg9J5hHIU
 D5lo3SyrD9BeNGTzKm21LaSmT1+BMSpxXoJPCMYFR4rIeklukxfQiL3wV
 hGTfj/j9PJoSMDp/HZkBddLoycCsex0uqIeoXPVDQ5fMybHPCqtbQRZbu
 LSKXWctU0faYbebFp0uj6eNOIzL6JdKH3uT6TSdqGKqzw6vTyc5aOZ62g
 Y8y/3RP1UXsNhZe/5iGspjjkuvRvK8GfJx1lYuB+raF4OmeyELNEpZMTX w==;
X-CSE-ConnectionGUID: FkH4y8/fReuQGTh+C/5NgA==
X-CSE-MsgGUID: ytnJXWRJSeyGAFOFujct0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="21742810"
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="21742810"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 01:28:02 -0800
X-CSE-ConnectionGUID: 2I9yGTCqRrmGevKTiNQWDg==
X-CSE-MsgGUID: X8LrFFWTQw6N6xEhxOLu3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="118600193"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 01:28:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/pps: include panel power cycle delay in debugfs
In-Reply-To: <SJ1PR11MB6129E94FE67A8215E4B0FDE1B93C2@SJ1PR11MB6129.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241205123720.3278727-1-jani.nikula@intel.com>
 <SJ1PR11MB6129E94FE67A8215E4B0FDE1B93C2@SJ1PR11MB6129.namprd11.prod.outlook.com>
Date: Tue, 10 Dec 2024 11:27:58 +0200
Message-ID: <87jzc7zy3l.fsf@intel.com>
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
>> Sent: Thursday, December 5, 2024 6:07 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>
>> Subject: [PATCH] drm/i915/pps: include panel power cycle delay in debugfs
>>
>> The debugfs contains all the other timings except panel power cycle delay.
>> Add it for completeness.
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> LGTM.
>
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>
>> ---
>>  drivers/gpu/drm/i915/display/intel_pps.c | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
>> b/drivers/gpu/drm/i915/display/intel_pps.c
>> index 7784b3b760db..e55c84685521 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> @@ -1819,6 +1819,8 @@ static int intel_pps_show(struct seq_file *m, void
>> *data)
>>                  intel_dp->pps.panel_power_up_delay);
>>       seq_printf(m, "Panel power down delay: %d\n",
>>                  intel_dp->pps.panel_power_down_delay);
>> +     seq_printf(m, "Panel power cycle delay: %d\n",
>> +                intel_dp->pps.panel_power_cycle_delay);
>>       seq_printf(m, "Backlight on delay: %d\n",
>>                  intel_dp->pps.backlight_on_delay);
>>       seq_printf(m, "Backlight off delay: %d\n",
>> --
>> 2.39.5
>

-- 
Jani Nikula, Intel
