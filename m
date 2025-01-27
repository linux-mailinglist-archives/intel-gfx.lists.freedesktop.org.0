Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE1CA1D5BB
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 13:02:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E743C10E4FF;
	Mon, 27 Jan 2025 12:02:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k7Wb1lHT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19D5810E4FF;
 Mon, 27 Jan 2025 12:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737979366; x=1769515366;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=1uKCGdscUx/MtCWw0JqqlwUrFd8Bb62A0b5OlIQ9vtc=;
 b=k7Wb1lHTCVh5xnCKh+MDuMMCkHpHyn0+1RSIGPY7fIsouk3CwOKyeKm3
 Crv7Yzw6MYlUt6gp31h6IvWZINXWVxPqcZPHh1lSEzFp5MTm6GouJ40dx
 igi44MHW+B1zAPMCQN9bCnhyLd1yiB+dfBBO/dSI1nnq+55oe2jSfbsAP
 bUIsjdgymHbLYqZrCqoiqNYraje2kdwocwYL+NMiCibQNORr0bBNWLHya
 pugvilusqpzkzrkEvIF3st/LfizLKVVIYuI0gQwD+2qak59O6ZjXzTIGg
 AvdMdZOzvPLixs0CMXAUly54P8M5DaAw5AWcQ6zeRHtLrsNGrHJYCyhzL g==;
X-CSE-ConnectionGUID: cqc6hLqXSXyQJxfDIMEqQA==
X-CSE-MsgGUID: tdmRCWv/RHCgvmYqOPrUnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="38466941"
X-IronPort-AV: E=Sophos;i="6.13,238,1732608000"; d="scan'208";a="38466941"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 04:02:45 -0800
X-CSE-ConnectionGUID: t4qQI8EpSWuQh3NZICj/Zg==
X-CSE-MsgGUID: ZitO0uSYR8KRAZ070wejcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,238,1732608000"; d="scan'208";a="108950117"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.14])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 04:02:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/4] drm/i915/dmc_wl: Enable the debugfs only with
 enable_dmc_wl_debugfs=1
In-Reply-To: <87zfjca2jg.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250117220747.87927-1-gustavo.sousa@intel.com>
 <20250117220747.87927-5-gustavo.sousa@intel.com>
 <87zfjca2jg.fsf@intel.com>
Date: Mon, 27 Jan 2025 14:02:40 +0200
Message-ID: <87wmega2hr.fsf@intel.com>
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

On Mon, 27 Jan 2025, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Fri, 17 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> We use a spinlock to protect DMC wakelock debugfs data, since it is also
>> accessed by the core DMC wakelock logic. Taking the spinlock when the
>> debugfs is not in use introduces a small but unnecessary penalty.
>>
>> Since the debugfs functionality is only expected to be used for, uh,
>> debugging sessions, let's protect it behind a module parameter
>> enable_dmc_wl_debugfs. That way, we only take the lock if the feature
>> was enabled in the first place.
>
> If the debug struct were an opaque pointer, you could check for that
> being != NULL. Register the debugfs always, and have that initialize
> everything as needed?

...the underlying point being that I'm generally against adding any new
module parameters.

BR,
Jani.

>
> BR,
> Jani.
>
>>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  .../gpu/drm/i915/display/intel_display_params.c  |  5 +++++
>>  .../gpu/drm/i915/display/intel_display_params.h  |  1 +
>>  .../gpu/drm/i915/display/intel_dmc_wl_debugfs.c  | 16 +++++++++++++++-
>>  3 files changed, 21 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
>> index c4f1ab43fc0c..bc36d1b0ef87 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
>> @@ -133,6 +133,11 @@ intel_display_param_named_unsafe(enable_dmc_wl, int, 0400,
>>  	"(-1=use per-chip default, 0=disabled, 1=enabled, 2=match any register, 3=always locked) "
>>  	"Default: -1");
>>  
>> +intel_display_param_named_unsafe(enable_dmc_wl_debugfs, bool, 0400,
>> +	"Enable DMC wakelock debugfs"
>> +	"(0=disabled, 1=enabled) "
>> +	"Default: 0");
>> +
>>  __maybe_unused
>>  static void _param_print_bool(struct drm_printer *p, const char *driver_name,
>>  			      const char *name, bool val)
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
>> index 5317138e6044..cb7dc1bc6846 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
>> @@ -48,6 +48,7 @@ struct drm_printer;
>>  	param(bool, psr_safest_params, false, 0400) \
>>  	param(bool, enable_psr2_sel_fetch, true, 0400) \
>>  	param(int, enable_dmc_wl, -1, 0400) \
>> +	param(bool, enable_dmc_wl_debugfs, false, 0400) \
>>  
>>  #define MEMBER(T, member, ...) T member;
>>  struct intel_display_params {
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
>> index 1493d296ac98..f4e4c7a5a730 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
>> @@ -37,6 +37,9 @@
>>   * which exports a buffer of untracked register offsets and also allows extra
>>   * register offsets to be tracked by the driver.
>>   *
>> + * The debugfs directory is only exported if the module parameter
>> + * enable_dmc_wl_debugfs=1 is passed.
>> + *
>>   * Untracked offsets
>>   * -----------------
>>   *
>> @@ -411,6 +414,9 @@ void intel_dmc_wl_debugfs_register(struct intel_display *display)
>>  {
>>  	struct dentry *dir;
>>  
>> +	if (!display->params.enable_dmc_wl_debugfs)
>> +		return;
>> +
>>  	if (!HAS_DMC_WAKELOCK(display))
>>  		return;
>>  
>> @@ -453,6 +459,9 @@ void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, u32 offse
>>  	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
>>  	unsigned long flags;
>>  
>> +	if (!display->params.enable_dmc_wl_debugfs)
>> +		return;
>> +
>>  	spin_lock_irqsave(&dbg->lock, flags);
>>  
>>  	if (!dbg->untracked.size)
>> @@ -479,9 +488,14 @@ void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, u32 offse
>>  bool intel_dmc_wl_debugfs_offset_in_extra_ranges(struct intel_display *display, u32 offset)
>>  {
>>  	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
>> -	bool ret = false;
>> +	bool ret;
>>  	unsigned long flags;
>>  
>> +	if (!display->params.enable_dmc_wl_debugfs)
>> +		return false;
>> +
>> +	ret = false;
>> +
>>  	spin_lock_irqsave(&dbg->lock, flags);
>>  
>>  	if (!dbg->extra_ranges)

-- 
Jani Nikula, Intel
