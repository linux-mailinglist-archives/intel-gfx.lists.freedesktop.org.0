Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APtEBrL4FmrUywcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 15:59:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3864D5E5744
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 15:59:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5149310E7F5;
	Wed, 27 May 2026 13:59:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BpGGyTs7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82A0A10E7F5;
 Wed, 27 May 2026 13:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779890350; x=1811426350;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Uj6a4fx+alJEWb/jQhl2KUxr0n5s7KWsP/gThLRKCXU=;
 b=BpGGyTs79KhpF+RhLcuFtKnOiKxTiCTHUDMioYT9JN5HqRup7EL6N3bb
 y7axa2sOz3LKQcKhEwYGy5xcVD3uA5pB71R/Zi98iaI4CEUIC76x7tJi8
 n5HLqpcDNpn2goi+i7vT2Gm13lVnJyBpCTvr5qq6iGO7IivgHUPz5uQ9K
 kNT+Ellu6G9eGcJJdDxOPru6ulb1/o6tEt2QWW3TohtU5B4H9htvhjrQP
 pldGAFGZ97XLg79l5vcy4/i4jTiFxH8pVu8WrgsO4uyFjMZQpRuIl1RPI
 MaRhIN1B7y51eJE/5NP5YIjfeo06+Jtajw6M1dEhsLiufc2TwQ5kf/Srv A==;
X-CSE-ConnectionGUID: nx3u4DCySW645oAfk8BO9A==
X-CSE-MsgGUID: 7bOTj/oHQiOatQW9yo1xDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="91025726"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="91025726"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 06:59:10 -0700
X-CSE-ConnectionGUID: 0RgnbqJpTJq0neYrSjt8YQ==
X-CSE-MsgGUID: b9aB4czrQ7iZL96m/n3o/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="241209655"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.38])
 by orviesa006-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2026 06:59:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915/power: add "runtime" to
 intel_display_power_{suspend,resume}() names
In-Reply-To: <ahb3yk6cLTc_RJRJ@ideak-desk.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1779876087.git.jani.nikula@intel.com>
 <4a8ae520e3151d6cf5d9e9e3a452f620cf781ee5.1779876087.git.jani.nikula@intel.com>
 <ahb3yk6cLTc_RJRJ@ideak-desk.lan>
Date: Wed, 27 May 2026 16:59:05 +0300
Message-ID: <639f84e1d86909cccc274a2900fb975c0fb4ed18@intel.com>
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 3864D5E5744
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 27 May 2026, Imre Deak <imre.deak@intel.com> wrote:
> On Wed, May 27, 2026 at 01:02:11PM +0300, Jani Nikula wrote:
>> The intel_display_power_suspend() and intel_display_power_resume()
>> functions are supposed to be called from the struct dev_pm_pops
>> .runtime_suspend and .runtime_resume hook paths. Name them accordingly
>> to intel_display_power_runtime_suspend() and
>> intel_display_power_runtime_resume().
>> 
>> Cc: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_power.c | 4 ++--
>>  drivers/gpu/drm/i915/display/intel_display_power.h | 5 +++--
>>  drivers/gpu/drm/i915/i915_driver.c                 | 4 ++--
>>  3 files changed, 7 insertions(+), 6 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index b2dcfeedbd2c..2e51dfcd5dce 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -2289,7 +2289,7 @@ void intel_display_power_resume_early(struct intel_display *display)
>>  	intel_power_domains_resume(display);
>>  }
>>  
>> -void intel_display_power_suspend(struct intel_display *display)
>> +void intel_display_power_runtime_suspend(struct intel_display *display)
>>  {
>>  	if (DISPLAY_VER(display) >= 11) {
>>  		icl_display_core_uninit(display);
>> @@ -2302,7 +2302,7 @@ void intel_display_power_suspend(struct intel_display *display)
>>  	}
>>  }
>>  
>> -void intel_display_power_resume(struct intel_display *display)
>> +void intel_display_power_runtime_resume(struct intel_display *display)
>>  {
>>  	struct i915_power_domains *power_domains = &display->power.domains;
>>  
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
>> index a43fab19e530..56dc89eed3f8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>> @@ -179,12 +179,13 @@ void intel_display_power_sanitize_state(struct intel_display *display);
>>  
>>  void intel_display_power_suspend_late(struct intel_display *display, bool s2idle);
>>  void intel_display_power_resume_early(struct intel_display *display);
>> -void intel_display_power_suspend(struct intel_display *display);
>> -void intel_display_power_resume(struct intel_display *display);
>>  void intel_display_power_set_target_dc_state(struct intel_display *display,
>>  					     u32 state);
>>  u32 intel_display_power_get_current_dc_state(struct intel_display *display);
>>  
>> +void intel_display_power_runtime_suspend(struct intel_display *display);
>> +void intel_display_power_runtime_resume(struct intel_display *display);
>> +
>
> Reviewed-by: Imre Deak <imre.deak@intel.coM>
>
> I wondered why the above prototypes moved later.

Just to group runtime suspend/resume separate from suspend/resume.

>
>>  bool intel_display_power_is_enabled(struct intel_display *display,
>>  				    enum intel_display_power_domain domain);
>>  struct ref_tracker *intel_display_power_get(struct intel_display *display,
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>> index 8b93bac600bf..d6b94a29c91d 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -1591,7 +1591,7 @@ static int intel_runtime_suspend(struct device *kdev)
>>  	for_each_gt(gt, dev_priv, i)
>>  		intel_uncore_suspend(gt->uncore);
>>  
>> -	intel_display_power_suspend(display);
>> +	intel_display_power_runtime_suspend(display);
>>  
>>  	ret = vlv_suspend_complete(dev_priv);
>>  	if (ret) {
>> @@ -1685,7 +1685,7 @@ static int intel_runtime_resume(struct device *kdev)
>>  		drm_dbg(&dev_priv->drm,
>>  			"Unclaimed access during suspend, bios?\n");
>>  
>> -	intel_display_power_resume(display);
>> +	intel_display_power_runtime_resume(display);
>>  
>>  	ret = vlv_resume_prepare(dev_priv, true);
>>  
>> -- 
>> 2.47.3
>> 

-- 
Jani Nikula, Intel
