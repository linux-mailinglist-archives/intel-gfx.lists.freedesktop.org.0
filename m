Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CFE6E0B73
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 12:34:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28BDB10EAB9;
	Thu, 13 Apr 2023 10:34:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A49010EAB9
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 10:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681382095; x=1712918095;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=UlHTuYX0HUuyHjnXlm69764g1t6vEeSMrPRkYGCq76E=;
 b=Cnw42P6Ids7G0Dgd9n8Hm71fF1nZezF2bYNm5VMLLFAVoGLDe094NTC9
 enjiNEQjQvl2I11laruBhsbrDuJGaHNTgvSi4xjR+g4XUVcuOJvWpayxB
 y/lN6aVh/U+f43k7zoQo8LOT45tRN7nBC9PMp36AKfR8udK3Jw80XoxKg
 cNGMSgZRbhOE1cgOIAL7KUUehBERdIRY+n6n7nrEadPrCOuydexpT969U
 Du1Vl27xkhhM2ftJCq6QunOtR4q2H34Z3uOaTxplG0mPjuyRUF2Tfz+gS
 dEmNSbRrqr3nYaAqZBTN6Jez60/ZqvmPeyX/3j9B8L7x2OG90fxlhNHhD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="345939577"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="345939577"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 03:34:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="719789956"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="719789956"
Received: from merkanx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.88])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 03:34:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Bhanuprakash Modem <bhanuprakash.modem@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87leixcq1t.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230412104152.828326-1-bhanuprakash.modem@intel.com>
 <20230412104152.828326-2-bhanuprakash.modem@intel.com>
 <87leixcq1t.fsf@intel.com>
Date: Thu, 13 Apr 2023 13:34:44 +0300
Message-ID: <87mt3cax4r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [V2 1/1] drm/i915/debugfs: New debugfs for display
 clock frequencies
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

On Wed, 12 Apr 2023, Jani Nikula <jani.nikula@intel.com> wrote:
> On Wed, 12 Apr 2023, Bhanuprakash Modem <bhanuprakash.modem@intel.com> wrote:
>> Instead of mixing display & non-display stuff together, move
>> display specific clock info to new debugfs. This patch will
>> create a new debugfs "i915_cdclk_info" to expose Current & Max
>> cdclk and Max pixel clock frequency info.
>>
>> Example:
>> $ cat /sys/kernel/debug/dri/0/i915_cdclk_info
>> Current CD clock frequency: 163200 kHz
>> Max CD clock frequency: 652800 kHz
>> Max pixel clock frequency: 1305600 kHz
>>
>> V2: - s/i915_display_clock_info/i915_cdclk_info/ (Jani)
>>     - Move the logic to intel_cdclk.c (Jani)
>>     - Don't remove info from i915_frequency_info (Jani)
>>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 25 +++++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_cdclk.h    |  1 +
>>  .../drm/i915/display/intel_display_debugfs.c  |  1 +
>>  3 files changed, 27 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> index 084a483f9776..c3ad7837fa09 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -3235,6 +3235,31 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
>>  	return freq;
>>  }
>>  
>> +static int i915_cdclk_info_show(struct seq_file *m, void *unused)
>> +{
>> +	struct drm_i915_private *i915 = m->private;
>> +
>> +	drm_modeset_lock_all(&i915->drm);
>
> Mmmh, I wonder how important that really is?

With the locking removed, this is

Reviewed-by: Jani Nikula <jani.nikula@intel.com>



>
> BR,
> Jani.
>
>
>> +
>> +	seq_printf(m, "Current CD clock frequency: %d kHz\n", i915->display.cdclk.hw.cdclk);
>> +	seq_printf(m, "Max CD clock frequency: %d kHz\n", i915->display.cdclk.max_cdclk_freq);
>> +	seq_printf(m, "Max pixel clock frequency: %d kHz\n", i915->max_dotclk_freq);
>> +
>> +	drm_modeset_unlock_all(&i915->drm);
>> +
>> +	return 0;
>> +}
>> +
>> +DEFINE_SHOW_ATTRIBUTE(i915_cdclk_info);
>> +
>> +void intel_cdclk_debugfs_register(struct drm_i915_private *i915)
>> +{
>> +	struct drm_minor *minor = i915->drm.primary;
>> +
>> +	debugfs_create_file("i915_cdclk_info", 0444, minor->debugfs_root,
>> +			    i915, &i915_cdclk_info_fops);
>> +}
>> +
>>  static const struct intel_cdclk_funcs mtl_cdclk_funcs = {
>>  	.get_cdclk = bxt_get_cdclk,
>>  	.set_cdclk = bxt_set_cdclk,
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
>> index 51e2f6a11ce4..48fd7d39e0cd 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
>> @@ -82,5 +82,6 @@ intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
>>  	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.cdclk.obj))
>>  
>>  int intel_cdclk_init(struct drm_i915_private *dev_priv);
>> +void intel_cdclk_debugfs_register(struct drm_i915_private *i915);
>>  
>>  #endif /* __INTEL_CDCLK_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> index 45113ae107ba..abd16a2b1f7a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -1094,6 +1094,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
>>  				 ARRAY_SIZE(intel_display_debugfs_list),
>>  				 minor->debugfs_root, minor);
>>  
>> +	intel_cdclk_debugfs_register(i915);
>>  	intel_dmc_debugfs_register(i915);
>>  	intel_fbc_debugfs_register(i915);
>>  	intel_hpd_debugfs_register(i915);

-- 
Jani Nikula, Intel Open Source Graphics Center
