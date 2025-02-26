Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E961A46132
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 14:44:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B91CA10E15A;
	Wed, 26 Feb 2025 13:44:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SMk8MBN0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 904FC10E15A;
 Wed, 26 Feb 2025 13:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740577496; x=1772113496;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=rG1tz6zQj4pfoLxFKvEhgEv1Gcpgk1BM6BqFmJkF9aQ=;
 b=SMk8MBN0/28nrHyAeurrSgmXWDjX+rcDnEmXUXIXQcGkp+9Mn5oVOPoi
 SKp1iN1avkfuM4RLyL13+45nqjeGPFA2xqLB9Gw2m99fLuIQAY/o0lMYU
 e70pe3mg2g6KJuC+wQOtbj6goabdEIyS9G3ecQjTGSLV8qcOMJX7G9o20
 vLJSowI9i0zRPHSAgmk3EKlKYtkV7Han0ZF2Ulo98/QT3+85GDZ3QXgI3
 V+GAAxuu2AapSJKd5a1g1bePbR3+cAoMlwaEWoDAygMHamXB2AAFxoRbh
 JTfkQ6pCiKNLtBP/q03lnEOcawl6yeUAKRCoc2t16v2NCimgHZi6JQy17 g==;
X-CSE-ConnectionGUID: s2Tm+q2EQZuBm3H4JDMzuQ==
X-CSE-MsgGUID: MC8M9QlvRiyddi0mgQhrxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="58957345"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="58957345"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 05:44:53 -0800
X-CSE-ConnectionGUID: kmL4I+z4SnqMO85lvPZIHQ==
X-CSE-MsgGUID: nKF3L0XuRTGwSz/NFIZBug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120812988"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 05:44:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/power: move runtime power status info to power
 debugfs
In-Reply-To: <Z772S8QBkIrVJucR@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250225121742.721871-1-jani.nikula@intel.com>
 <Z772S8QBkIrVJucR@ideak-desk.fi.intel.com>
Date: Wed, 26 Feb 2025 15:44:48 +0200
Message-ID: <87frk04y7j.fsf@intel.com>
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

On Wed, 26 Feb 2025, Imre Deak <imre.deak@intel.com> wrote:
> On Tue, Feb 25, 2025 at 02:17:42PM +0200, Jani Nikula wrote:
>> The i915 core debugfs has no business looking at power domain guts for
>> runtime power status. Move the info to the more appropriate place.
>> 
>> Cc: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_power.c | 3 +++
>>  drivers/gpu/drm/i915/i915_debugfs.c                | 3 ---
>>  2 files changed, 3 insertions(+), 3 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index 396930937d98..96346b33d7e9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -2317,6 +2317,9 @@ void intel_display_power_debug(struct intel_display *display, struct seq_file *m
>>  
>>  	mutex_lock(&power_domains->lock);
>>  
>> +	seq_printf(m, "Runtime power status: %s\n",
>> +		   str_enabled_disabled(!power_domains->init_wakeref));
>> +
>>  	seq_printf(m, "%-25s %s\n", "Power well/domain", "Use count");
>>  	for (i = 0; i < power_domains->power_well_count; i++) {
>>  		struct i915_power_well *power_well;
>> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
>> index 1c2a97f593c7..0d9e263913ff 100644
>> --- a/drivers/gpu/drm/i915/i915_debugfs.c
>> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
>> @@ -411,9 +411,6 @@ static int i915_runtime_pm_status(struct seq_file *m, void *unused)
>>  	if (!HAS_RUNTIME_PM(dev_priv))
>>  		seq_puts(m, "Runtime power management not supported\n");
>>  
>> -	seq_printf(m, "Runtime power status: %s\n",
>> -		   str_enabled_disabled(!dev_priv->display.power.domains.init_wakeref));
>> -
>>  	seq_printf(m, "GPU idle: %s\n", str_yes_no(!to_gt(dev_priv)->awake));
>>  	seq_printf(m, "IRQs disabled: %s\n",
>>  		   str_yes_no(!intel_irqs_enabled(dev_priv)));
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
