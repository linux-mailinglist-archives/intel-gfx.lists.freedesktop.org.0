Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7415BA6DA1A
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 13:28:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A344210E2E8;
	Mon, 24 Mar 2025 12:28:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eKYCKDOf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6DD610E247;
 Mon, 24 Mar 2025 12:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742819321; x=1774355321;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=whaWhGHgCI6drOH5yvY1MLYnO1s9U36IOiPWNxwFFs0=;
 b=eKYCKDOfjPI1QdMpwsRoeNAbrwsZgq8TWZgvwr7+S+w4/738gkazeqS/
 FNWtf0c5rXn4Kcs0oF3jE8h/sZkQmE9/cFOR4GABZIrH4CY+vs1Czlvhi
 PWwmvmy0oKP3I3d/rAzSb/ktPuE4PP1mLBoDjYE9li7EHOeUwSzRZ4OvJ
 BAl67HrMeKFwrxVXkhddWKO6kYOZMRWM0W4WgkIKqL+TzuuHW6gk3Dyg3
 Z17K6FJw5a+kQQRl8O8mDk+mGDTyno6Y2++/cqh1uifuIw6EK9rs3mozd
 q0R4P2+o+Es4UNTk8Z7PgOxuReiPVjrvxPK+Evch/R5DTLM90qLkU811h g==;
X-CSE-ConnectionGUID: 0K6A6lVgSgqrm5t6jSgbHg==
X-CSE-MsgGUID: SMgvGA+oSbqFSf01i7v4tQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="43175746"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="43175746"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 05:28:39 -0700
X-CSE-ConnectionGUID: 9/UHFj7eQfOydPEC0aUNBQ==
X-CSE-MsgGUID: 4fRL0QBwSiqt6ukS7f+tdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="155045992"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 05:28:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Ville
 Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 1/3] drm/i915/pps: Add helpers to lock PPS for AUX
 transfers
In-Reply-To: <Z-FJjXyOjHEvXZz7@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250321145626.94101-1-imre.deak@intel.com>
 <20250321145626.94101-2-imre.deak@intel.com> <874izibtvx.fsf@intel.com>
 <Z-FJjXyOjHEvXZz7@ideak-desk.fi.intel.com>
Date: Mon, 24 Mar 2025 14:28:35 +0200
Message-ID: <87v7rya9zg.fsf@intel.com>
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

On Mon, 24 Mar 2025, Imre Deak <imre.deak@intel.com> wrote:
> On Mon, Mar 24, 2025 at 12:33:22PM +0200, Jani Nikula wrote:
>> On Fri, 21 Mar 2025, Imre Deak <imre.deak@intel.com> wrote:
>> > Factor out from the DP AUX transfer function the logic to lock/unlock
>> > the Panel Power Sequencer state and enable/disable the VDD power
>> > required for the AUX transfer, adding these to helpers in intel_pps.c .
>> > This prepares for a follow-up change making these steps dependent on the
>> > platform and output type.
>> >
>> > Signed-off-by: Imre Deak <imre.deak@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_dp_aux.c | 16 ++----------
>> >  drivers/gpu/drm/i915/display/intel_pps.c    | 29 ++++++++++++++++++++-
>> >  drivers/gpu/drm/i915/display/intel_pps.h    |  3 ++-
>> >  3 files changed, 32 insertions(+), 16 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> > index ec27bbd70bcf0..bf5ccfa24ca0b 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> > @@ -272,15 +272,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>> >  	aux_domain = intel_aux_power_domain(dig_port);
>> >  
>> >  	aux_wakeref = intel_display_power_get(display, aux_domain);
>> > -	pps_wakeref = intel_pps_lock(intel_dp);
>> > -
>> > -	/*
>> > -	 * We will be called with VDD already enabled for dpcd/edid/oui reads.
>> > -	 * In such cases we want to leave VDD enabled and it's up to upper layers
>> > -	 * to turn it off. But for eg. i2c-dev access we need to turn it on/off
>> > -	 * ourselves.
>> > -	 */
>> > -	vdd = intel_pps_vdd_on_unlocked(intel_dp);
>> > +	pps_wakeref = intel_pps_lock_for_aux(intel_dp, &vdd);
>> >  
>> >  	/*
>> >  	 * dp aux is extremely sensitive to irq latency, hence request the
>> > @@ -289,8 +281,6 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>> >  	 */
>> >  	cpu_latency_qos_update_request(&intel_dp->pm_qos, 0);
>> >  
>> > -	intel_pps_check_power_unlocked(intel_dp);
>> > -
>> >  	/*
>> >  	 * FIXME PSR should be disabled here to prevent
>> >  	 * it using the same AUX CH simultaneously
>> > @@ -427,10 +417,8 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>> >  out:
>> >  	cpu_latency_qos_update_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
>> >  
>> > -	if (vdd)
>> > -		intel_pps_vdd_off_unlocked(intel_dp, false);
>> > +	intel_pps_unlock_for_aux(intel_dp, pps_wakeref, vdd);
>> >  
>> > -	intel_pps_unlock(intel_dp, pps_wakeref);
>> >  	intel_display_power_put_async(display, aux_domain, aux_wakeref);
>> >  out_unlock:
>> >  	intel_digital_port_unlock(encoder);
>> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
>> > index 617ce49931726..3c078fd53fbfa 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> > @@ -571,7 +571,7 @@ static bool edp_have_panel_vdd(struct intel_dp *intel_dp)
>> >  	return intel_de_read(display, _pp_ctrl_reg(intel_dp)) & EDP_FORCE_VDD;
>> >  }
>> >  
>> > -void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
>> > +static void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
>> >  {
>> >  	struct intel_display *display = to_intel_display(intel_dp);
>> >  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> > @@ -955,6 +955,33 @@ void intel_pps_vdd_off(struct intel_dp *intel_dp)
>> >  		intel_pps_vdd_off_unlocked(intel_dp, false);
>> >  }
>> >  
>> > +intel_wakeref_t intel_pps_lock_for_aux(struct intel_dp *intel_dp, bool *vdd_ref)
>> > +{
>> > +	intel_wakeref_t wakeref;
>> > +
>> > +	wakeref = intel_pps_lock(intel_dp);
>> > +
>> > +	/*
>> > +	 * We will be called with VDD already enabled for dpcd/edid/oui reads.
>> > +	 * In such cases we want to leave VDD enabled and it's up to upper layers
>> > +	 * to turn it off. But for eg. i2c-dev access we need to turn it on/off
>> > +	 * ourselves.
>> > +	 */
>> > +	*vdd_ref = intel_pps_vdd_on_unlocked(intel_dp);
>> > +
>> > +	intel_pps_check_power_unlocked(intel_dp);
>> > +
>> > +	return wakeref;
>> > +}
>> > +
>> > +void intel_pps_unlock_for_aux(struct intel_dp *intel_dp, intel_wakeref_t wakeref, bool vdd_ref)
>> > +{
>> > +	if (vdd_ref)
>> > +		intel_pps_vdd_off_unlocked(intel_dp, false);
>> > +
>> > +	intel_pps_unlock(intel_dp, wakeref);
>> > +}
>> 
>> It took me a while to pinpoint what exactly I don't like about this
>> interface.
>> 
>> And I mean the whole intel_pps.h interface is already really difficult
>> to understand.
>> 
>> This flips the lock/unlock and vdd on/off logic inside out.
>> 
>> Normally you have functions for doing vdd or power or backlight, or
>> anything PPS really, and they're either unlocked (assuming the caller
>> handles PPS lock) or locked (the function itself takes the lock).
>
> The PPS and VDD handling steps are dependent (PPS must be locked for
> enabling VDD) and both are skipped for the same reason during AUX
> transfers. So I thought it makes sense to move these to a separate
> function and skip both based on the same platform/output type check.

On the contrary, I think the reasons are different.

VDD is only needed for eDP.

The PPS must be locked for VDD change (IOW for eDP) and for VLV/CHV pipe
based PPS. But these two cases are independent.

>> This one purports to be an interface for lock/unlock, but in reality it
>> also does VDD internally. And that feels really quite wrong to me.
>> 
>> ---
>> 
>> These are a single-use interface that I think make intel_pps.[ch] more
>> difficult to understand. I'd suggest checking how you'd implement this
>> logic inside intel_dp_aux_xfer() *without* changing the intel_pps.[ch]
>> interface at all.
>> 
>> Okay, took a quick stab at it, and unless I'm missing something it's
>> super easy:
>
> I still think it'd be better to have a separate function for both
> locking PPS and enabling VDD for the reason I described above, that is
> to clarify that the PPS state must be locked to enable VDD.

But there's no requirement that they must be done at the same time. The
PPS lock could be held for a much longer period or for other things than
just VDD. And in this case, the PPS lock may indeed protect *other*
things than just VDD. Adding the separate function ties these unrelated
cases together for IMO not good enough reason.

intel_pps_vdd_on_unlocked() does check that it's called with the PPS
lock held.

But I realize it needs to be relaxed a bit like this:


diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 617ce4993172..c883e872c9c8 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -744,11 +744,11 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
 	i915_reg_t pp_stat_reg, pp_ctrl_reg;
 	bool need_to_disable = !intel_dp->pps.want_panel_vdd;
 
-	lockdep_assert_held(&display->pps.mutex);
-
 	if (!intel_dp_is_edp(intel_dp))
 		return false;
 
+	lockdep_assert_held(&display->pps.mutex);
+
 	cancel_delayed_work(&intel_dp->pps.panel_vdd_work);
 	intel_dp->pps.want_panel_vdd = true;
 
@@ -925,11 +925,11 @@ void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
-	lockdep_assert_held(&display->pps.mutex);
-
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
+	lockdep_assert_held(&display->pps.mutex);
+
 	INTEL_DISPLAY_STATE_WARN(display, !intel_dp->pps.want_panel_vdd,
 				 "[ENCODER:%d:%s] %s VDD not forced on",
 				 dp_to_dig_port(intel_dp)->base.base.base.id,


> I guess the above could be done separately later in any case, so I can
> inline the fix as you suggest.
>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> index ec27bbd70bcf..a5608659df59 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> @@ -247,7 +247,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>>  	u32 aux_clock_divider;
>>  	enum intel_display_power_domain aux_domain;
>>  	intel_wakeref_t aux_wakeref;
>> -	intel_wakeref_t pps_wakeref;
>> +	intel_wakeref_t pps_wakeref = NULL;
>>  	int i, ret, recv_bytes;
>>  	int try, clock = 0;
>>  	u32 status;
>> @@ -272,7 +272,10 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>>  	aux_domain = intel_aux_power_domain(dig_port);
>>  
>>  	aux_wakeref = intel_display_power_get(display, aux_domain);
>> -	pps_wakeref = intel_pps_lock(intel_dp);
>> +
>> +	if (intel_dp_is_edp(intel_dp) ||
>> +	    (display->platform.valleyview || display->platform.cherryview))
>> +		pps_wakeref = intel_pps_lock(intel_dp);
>>  
>>  	/*
>>  	 * We will be called with VDD already enabled for dpcd/edid/oui reads.
>> @@ -430,7 +433,8 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>>  	if (vdd)
>>  		intel_pps_vdd_off_unlocked(intel_dp, false);
>>  
>> -	intel_pps_unlock(intel_dp, pps_wakeref);
>> +	if (pps_wakeref)
>> +		intel_pps_unlock(intel_dp, pps_wakeref);
>>  	intel_display_power_put_async(display, aux_domain, aux_wakeref);
>>  out_unlock:
>>  	intel_digital_port_unlock(encoder);
>> 
>> 
>> Please let's not make intel_pps.[ch] harder to understand.
>> 
>> 
>> BR,
>> Jani.
>> 
>> 
>> > +
>> >  void intel_pps_on_unlocked(struct intel_dp *intel_dp)
>> >  {
>> >  	struct intel_display *display = to_intel_display(intel_dp);
>> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
>> > index c83007152f07d..4390d05892325 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_pps.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_pps.h
>> > @@ -31,10 +31,11 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp);
>> >  void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync);
>> >  void intel_pps_on_unlocked(struct intel_dp *intel_dp);
>> >  void intel_pps_off_unlocked(struct intel_dp *intel_dp);
>> > -void intel_pps_check_power_unlocked(struct intel_dp *intel_dp);
>> >  
>> >  void intel_pps_vdd_on(struct intel_dp *intel_dp);
>> >  void intel_pps_vdd_off(struct intel_dp *intel_dp);
>> > +intel_wakeref_t intel_pps_lock_for_aux(struct intel_dp *intel_dp, bool *vdd_ref);
>> > +void intel_pps_unlock_for_aux(struct intel_dp *intel_dp, intel_wakeref_t wakeref, bool vdd_ref);
>> >  void intel_pps_on(struct intel_dp *intel_dp);
>> >  void intel_pps_off(struct intel_dp *intel_dp);
>> >  void intel_pps_vdd_off_sync(struct intel_dp *intel_dp);
>> 
>> -- 
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
