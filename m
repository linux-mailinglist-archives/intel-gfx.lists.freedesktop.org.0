Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 979876E4540
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 12:33:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16A1B10E3F4;
	Mon, 17 Apr 2023 10:33:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41D1710E3F0
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 10:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681727627; x=1713263627;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=ZJOwb7S+TstRbRsMu+HaWHccU9wYiYqf7HO2rwFhgk8=;
 b=EvIiI1cO5MTjlUn1VG+c2OSsh8r95ozbdQfdU5LLWQnAZ0l2CuiG4EMa
 h8w+NhqJnedlTFhiYW2Wj/yFij1IhMrq8gfHeaZLDwPgCVCGHyikAj5+D
 bVLNUopeb3A4S9wnxihfCYEFLHTfPWC3qk0nGKzAe/lSYDYwWDrtqvAO9
 5tipEFipLWD/JvS/XAPsYEfQkq048s4jIE/bU5szAUsX+onCZ1KrWRk9u
 M7JLwyofqCaX7lWClXrZGcvBkl0zstrpnA+EjhHqn9+t3TugQRL701yG5
 Kon6JBE10GkYmTedoTd0HwctAVht0ro/Uzj9fm8QPKyju2fvy9sMG/O+T A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="325202782"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="325202782"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 03:33:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="834356367"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="834356367"
Received: from habramov-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.252.47.83])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 03:33:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <SN7PR11MB6750CDF9E59B364748A7ABB3E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230403080154.1239873-1-suraj.kandpal@intel.com>
 <20230405071951.1258132-1-suraj.kandpal@intel.com>
 <871qkigabf.fsf@intel.com>
 <SN7PR11MB6750CDF9E59B364748A7ABB3E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Mon, 17 Apr 2023 13:33:42 +0300
Message-ID: <87h6teer21.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX timeout
 for Type-C
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

On Mon, 17 Apr 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> On Wed, 05 Apr 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> > Type-C PHYs are taking longer than expected for Aux IO Power Enabling.
>> > Workaround: Increase the timeout.
>> >
>> > WA_14017248603: adlp
>> > Bspec: 55480
>> >
>> > ---v2
>> > -change style on how we mention WA [Ankit] -fix bat error
>> >
>> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> > ---
>> >  .../i915/display/intel_display_power_well.c   | 30 ++++++++++++++++++-
>> >  1 file changed, 29 insertions(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> > index 62bafcbc7937..52f595929a18 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> > @@ -489,6 +489,34 @@ static void icl_tc_cold_exit(struct
>> drm_i915_private *i915)
>> >  		    "succeeded");
>> >  }
>> >
>> > +static void
>> > +adl_aux_wait_for_power_well_enable(struct drm_i915_private *i915,
>> > +				   struct i915_power_well *power_well,
>> > +				   bool timeout_expected)
>> > +{
>> > +	const struct i915_power_well_regs *regs = power_well->desc->ops-
>> >regs;
>> > +	enum phy phy = icl_aux_pw_to_phy(i915, power_well);
>> > +	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
>> > +
>> > +	/*
>> > +	 * WA_14017248603: adlp
>> > +	 * Type-C Phy are taking longer than expected for AUX IO Power
>> Enabling.
>> > +	 * Increase timeout to 500ms.
>> > +	 */
>> > +	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
>> > +		if (intel_de_wait_for_set(i915, regs->driver,
>> > +
>> HSW_PWR_WELL_CTL_STATE(pw_idx), 500)) {
>> > +			drm_dbg_kms(&i915->drm, "%s power well enable
>> timeout\n",
>> > +				    intel_power_well_name(power_well));
>> > +
>> > +			drm_WARN_ON(&i915->drm, !timeout_expected);
>> > +		}
>> > +		return;
>> > +	}
>> > +
>> > +	hsw_wait_for_power_well_enable(i915, power_well,
>> timeout_expected);
>> > +}
>> 
>> Please don't duplicate the function and the wait like this.
>> 
>> Something like this is sufficient:
>> 
>> 
>> @@ -252,7 +252,9 @@ static void hsw_wait_for_power_well_enable(struct
>> drm_i915_private *dev_priv,
>>  					   bool timeout_expected)
>>  {
>>  	const struct i915_power_well_regs *regs = power_well->desc->ops-
>> >regs;
>> +	enum phy phy = icl_aux_pw_to_phy(i915, power_well);
>>  	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
>> +	int timeout = 1;
>> 
>>  	/*
>>  	 * For some power wells we're not supposed to watch the status bit
>> for @@ -264,9 +266,13 @@ static void
>> hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
>>  		return;
>>  	}
>> 
>> +	/* WA_14017248603: adlp */
>> +	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy))
>
> I did try this but it ends up throwing a kernel null pointer error at intel_phy_is_tc
> which made me float the version of code I did.

Please explain what causes it, and how your version avoids it.

BR,
Jani.


>
> Regards,
> Suraj Kandpal
>> +		timeout = 500;
>> +
>>  	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
>>  	if (intel_de_wait_for_set(dev_priv, regs->driver,
>> -				  HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
>> +				  HSW_PWR_WELL_CTL_STATE(pw_idx),
>> timeout)) {
>>  		drm_dbg_kms(&dev_priv->drm, "%s power well enable
>> timeout\n",
>>  			    intel_power_well_name(power_well));
>> 
>> 
>> > +
>
>> >  static void
>> >  icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
>> >  				 struct i915_power_well *power_well) @@ -
>> 517,7 +545,7 @@
>> > icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
>> >  	if (DISPLAY_VER(dev_priv) == 11 &&
>> intel_tc_cold_requires_aux_pw(dig_port))
>> >  		icl_tc_cold_exit(dev_priv);
>> >
>> > -	hsw_wait_for_power_well_enable(dev_priv, power_well,
>> timeout_expected);
>> > +	adl_aux_wait_for_power_well_enable(dev_priv, power_well,
>> > +timeout_expected);
>> 
>> A function prefixed adl_ should indicate it's only needed for adl+. This
>> change is misleading.
>> 
>> BR,
>> Jani.
>> 
>> 
>> >
>> >  	if (DISPLAY_VER(dev_priv) >= 12 && !is_tbt) {
>> >  		enum tc_port tc_port;
>> 
>> --
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
