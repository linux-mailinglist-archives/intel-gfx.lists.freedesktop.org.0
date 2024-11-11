Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0EB9C3A53
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 09:58:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA63410E442;
	Mon, 11 Nov 2024 08:58:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RRY3XleQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C84E10E43B;
 Mon, 11 Nov 2024 08:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731315506; x=1762851506;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=WmQtLUTxwlrQZ/DTv2qLjz7HAZUJ0eFKiWLBdURBzjs=;
 b=RRY3XleQal+3YEQWlWIJf9FU14cqWd4RIEkz0ksgWR3HNSl91IiHFLX6
 eD5XoA43NExDNc+Lq6cyCO/abNEqiZrdj4AG9n/MdFHYgtxLbAIlQMg8D
 j8+spf1Hz0ilXlFkPAWo7GnyI3rB0dSVm16qIHhPx4vAU7Xmz9Nlp3a5d
 1GbLDeilXUr1tDkDl/2hkzAWNnPh8dzaMXp39UjnjaHjgKyKnJxOOCcQj
 6fr/awRUnZh73Z+MPpQ+eoUT3Zj8rBBOwGPjoJuRCfD2eNZHv1tE7P8IK
 VMyIFnXeQoA1BzDnDZNKA29BoXpRfn+ireh3KVo81HUhTvE8PY/amRybL A==;
X-CSE-ConnectionGUID: 24R2Z/ipTJywEP42z1SJiQ==
X-CSE-MsgGUID: e8RZT4w0QRKwXZfoXkx8gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="41743465"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="41743465"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 00:58:25 -0800
X-CSE-ConnectionGUID: dv+l+57ASY6OsIYhL1onSA==
X-CSE-MsgGUID: MVCauSs3SvauTOnNyr3B8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="117737973"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.75])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 00:58:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Clint
 Taylor <clinton.a.taylor@intel.com>, Imre Deak <imre.deak@intel.com>
Subject: Re: [PATCH] drm/i915/dp: demote source OUI read/write failure
 logging to debug
In-Reply-To: <20241106172416.GP4891@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241106162325.4065078-1-jani.nikula@intel.com>
 <20241106172416.GP4891@mdroper-desk1.amr.corp.intel.com>
Date: Mon, 11 Nov 2024 10:58:20 +0200
Message-ID: <87zfm6cfkj.fsf@intel.com>
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

On Wed, 06 Nov 2024, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Wed, Nov 06, 2024 at 06:23:25PM +0200, Jani Nikula wrote:
>> Commit 1f12d63a14d7 ("drm/i915/dp: Write the source OUI for non-eDP
>> sinks as well") started writing source OUI for non-eDP sinks as well,
>> increasing the possibilities of hitting read/write failures either due
>> to the sink behaviour or hotplug or whatever.
>> 
>> Even before that, commit 3fb0501f0c07 ("drm/i915/display/dp: Reduce log
>> level for SOURCE OUI write failures") already reduced write failures to
>> info level when source OUI was just for eDP.
>> 
>> Further reduce the log level to just debug. Switch to struct intel_dp
>> while at it.
>
> Did you mean intel_display here rather than intel_dp?

Yes, fixed while pushing!

>
> Aside from that,
>
>    Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks!

BR,
Jani.

>
>
> Matt
>
>> 
>> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/3372
>> Cc: Clint Taylor <clinton.a.taylor@intel.com>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 5b918363df16..95c71e425fbe 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -3432,7 +3432,7 @@ void intel_dp_sink_disable_decompression(struct intel_atomic_state *state,
>>  static void
>>  intel_dp_init_source_oui(struct intel_dp *intel_dp)
>>  {
>> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> +	struct intel_display *display = to_intel_display(intel_dp);
>>  	u8 oui[] = { 0x00, 0xaa, 0x01 };
>>  	u8 buf[3] = {};
>>  
>> @@ -3446,7 +3446,7 @@ intel_dp_init_source_oui(struct intel_dp *intel_dp)
>>  	 * already set to what we want, so as to avoid clearing any state by accident
>>  	 */
>>  	if (drm_dp_dpcd_read(&intel_dp->aux, DP_SOURCE_OUI, buf, sizeof(buf)) < 0)
>> -		drm_err(&i915->drm, "Failed to read source OUI\n");
>> +		drm_dbg_kms(display->drm, "Failed to read source OUI\n");
>>  
>>  	if (memcmp(oui, buf, sizeof(oui)) == 0) {
>>  		/* Assume the OUI was written now. */
>> @@ -3455,7 +3455,7 @@ intel_dp_init_source_oui(struct intel_dp *intel_dp)
>>  	}
>>  
>>  	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(oui)) < 0) {
>> -		drm_info(&i915->drm, "Failed to write source OUI\n");
>> +		drm_dbg_kms(display->drm, "Failed to write source OUI\n");
>>  		WRITE_ONCE(intel_dp->oui_valid, false);
>>  	}
>>  
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
