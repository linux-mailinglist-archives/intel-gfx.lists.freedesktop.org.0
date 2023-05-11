Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 751A16FEDED
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 10:39:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5D0C10E5B9;
	Thu, 11 May 2023 08:39:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60DE110E5B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 08:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683794363; x=1715330363;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=6UaIU8+OCh3Vh/TY/O/iiL2U6RMqCpeKF4x8si+ivLQ=;
 b=iTJYyG1a2UaTIlSDXNKsvU2YJZb7xi+8uYTX6obBG+54gE/W5gqy4SoC
 V/V2qMV74TBezOrHNYGo36rJr0h7T2RYrUb3NT9vi595FyLUsjLwl6iuh
 wrCvGUXJmo6ICbNMU0GFGjA0yW6x67VPpdgt5uqw0v1ANnLGIhr6sEhUu
 379uGa4lS7MOo5yPzUMOi6Lz5w9HoLIch/jYszr8ICi8lTuA/k/pqpitL
 gYW7dolum5jzCtqocnvsKR0dynmTIJkQJ36Cp/fk6xBDuftVXZ3/3l7m8
 IQ2hTc5swTxxqTXUc82fOq6fxJ1WmxR5YkSfI4xjzRE1WkIr6tB8OXHi6 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="353530204"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="353530204"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 01:39:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="789305143"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="789305143"
Received: from nbathi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.63.185])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 01:39:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: imre.deak@intel.com
In-Reply-To: <Y6II2T9SCtc1uZC6@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221220094618.207126-1-maarten.lankhorst@linux.intel.com>
 <87zgbi2qpc.fsf@intel.com> <Y6II2T9SCtc1uZC6@ideak-desk.fi.intel.com>
Date: Thu, 11 May 2023 11:39:18 +0300
Message-ID: <877ctfmfd5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix a use-after-free when
 intel_edp_init_connector fails
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 20 Dec 2022, Imre Deak <imre.deak@intel.com> wrote:
> On Tue, Dec 20, 2022 at 02:40:47PM +0200, Jani Nikula wrote:
>> On Tue, 20 Dec 2022, Maarten Lankhorst <maarten.lankhorst@linux.intel.com> wrote:
>> > We enable the DP aux channel during probe, but may free the connector
>> > soon afterwards. Ensure the DP aux display power put is completed before
>> > everything is freed, to prevent a use-after-free in icl_aux_pw_to_phy(),
>> > called from icl_combo_phy_aux_power_well_disable.
>> 
>> Feels like the placement of the intel_display_power_flush_work_sync()
>> call in intel_dp_aux_fini() is a bit arbitrary.
>> 
>> If we add it in intel_dp_aux_fini(), the async and sync waits will both
>> be called on the regular encoder destroy path.
>
> Yes, calling intel_display_power_flush_work() from the error handler at
> the end of intel_dp_init_connector() would be better.
>
>> Maybe both intel_ddi_encoder_destroy() and intel_dp_encoder_destroy()
>> should call intel_display_power_flush_work_sync(), instead of async,
>
> intel_display_power_flush_work() ensures that power wells without a
> reference held are disabled when it returns, so no need to call the
> _sync() version for encoders (the _sync() version ensures in addition
> during driver unloading that the work function is not running).
>
>> and maybe the error paths should call those functions instead of just
>> drm_encoder_cleanup()?
>
> Yes, the cleanup in those functions could be shared with the error
> handling in g4x_dp_init() and intel_ddi_init(), except kfree(dig_port)
> which also happens if drm_encoder_init() fails. 
>
> For this intel_pps_vdd_off_sync() / intel_dp_aux_fini() would also
> happen later at the end of g4x_dp_init()/intel_ddi_init(), I guess
> that's ok.
>
> I wonder if not handling drm_encoder_init() error in intel_ddi_init()
> was on purpose, can't see a reason for it.

This patch has been forgotten...

Maarten, can you follow up on it please?

BR,
Jani.


>
>> Imre?
>> 
>> 
>> BR,
>> Jani.
>> 
>> 
>> >
>> > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
>> >  drivers/gpu/drm/i915/display/intel_display_power.h | 1 +
>> >  drivers/gpu/drm/i915/display/intel_dp_aux.c        | 2 ++
>> >  3 files changed, 4 insertions(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>> > index 04915f85a0df..0edb5532461f 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> > @@ -776,7 +776,7 @@ void intel_display_power_flush_work(struct drm_i915_private *i915)
>> >   * Like intel_display_power_flush_work(), but also ensure that the work
>> >   * handler function is not running any more when this function returns.
>> >   */
>> > -static void
>> > +void
>> >  intel_display_power_flush_work_sync(struct drm_i915_private *i915)
>> >  {
>> >  	struct i915_power_domains *power_domains = &i915->display.power.domains;
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
>> > index 7136ea3f233e..dc10ee0519e6 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>> > @@ -188,6 +188,7 @@ void __intel_display_power_put_async(struct drm_i915_private *i915,
>> >  				     enum intel_display_power_domain domain,
>> >  				     intel_wakeref_t wakeref);
>> >  void intel_display_power_flush_work(struct drm_i915_private *i915);
>> > +void intel_display_power_flush_work_sync(struct drm_i915_private *i915);
>> >  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
>> >  void intel_display_power_put(struct drm_i915_private *dev_priv,
>> >  			     enum intel_display_power_domain domain,
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> > index f1835c74bff0..1006dddad2d5 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> > @@ -680,6 +680,8 @@ void intel_dp_aux_fini(struct intel_dp *intel_dp)
>> >  	if (cpu_latency_qos_request_active(&intel_dp->pm_qos))
>> >  		cpu_latency_qos_remove_request(&intel_dp->pm_qos);
>> >  
>> > +	/* Ensure async work from intel_dp_aux_xfer() is flushed before we clean up */
>> > +	intel_display_power_flush_work_sync(dp_to_i915(intel_dp));
>> >  	kfree(intel_dp->aux.name);
>> >  }
>> 
>> -- 
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
