Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC736E45CF
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 12:56:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9604C10E408;
	Mon, 17 Apr 2023 10:56:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5571310E40E
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 10:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681728977; x=1713264977;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ePsUTL5VxKWOhHoBqdiCKmZRpg+iamU9reryego+jKA=;
 b=Q0Ye8DqdwQkt0TBRVXJCZxirGOmDfWo+legvw3TOTsLckoB1KfXY2iyU
 xKNgUqMhcNxymuWwykZRtHqiUsxyvwZ42qXqaihyiFjbuXX7a+tvjHeGk
 FYI4B7hV1ZMAS+eoweH8GwaC+IKbn94hHamudlUszzL6aiC4vbcQqvigE
 dwL4WqymharaLBaEFz0gOMqKGyKiN+vMjg93+3jZjgwG97N4Q/DSbqbNe
 JDm028sZGLDJMWvHnKVGhKHugenpzBwhH+yQV58UyljFPfBStULFxhHtK
 G+ZshcKWsdhA6bLhbTlGElCnozWNhiIAan7M2dn2C7qlTJJGASwM790in g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="333656031"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="333656031"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 03:56:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="693207949"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="693207949"
Received: from habramov-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.252.47.83])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 03:56:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <SN7PR11MB67501452EA239C59649E8335E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230403080154.1239873-1-suraj.kandpal@intel.com>
 <20230405071951.1258132-1-suraj.kandpal@intel.com>
 <871qkigabf.fsf@intel.com>
 <SN7PR11MB6750CDF9E59B364748A7ABB3E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87h6teer21.fsf@intel.com>
 <SN7PR11MB67501452EA239C59649E8335E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Mon, 17 Apr 2023 13:56:12 +0300
Message-ID: <87bkjmeq0j.fsf@intel.com>
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
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Monday, April 17, 2023 4:04 PM
>> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Subject: RE: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX timeout
>> for Type-C
>> 
>> On Mon, 17 Apr 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> >> On Wed, 05 Apr 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> >> > Type-C PHYs are taking longer than expected for Aux IO Power Enabling.
>> >> > Workaround: Increase the timeout.
>> >> >
>> >> > WA_14017248603: adlp
>> >> > Bspec: 55480
>> >> >
>> >> > ---v2
>> >> > -change style on how we mention WA [Ankit] -fix bat error
>> >> >
>> >> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> >> > ---
>> >> >  .../i915/display/intel_display_power_well.c   | 30 ++++++++++++++++++-
>> >> >  1 file changed, 29 insertions(+), 1 deletion(-)
>> >> >
>> >> > diff --git
>> >> > a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> >> > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> >> > index 62bafcbc7937..52f595929a18 100644
>> >> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> >> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> >> > @@ -489,6 +489,34 @@ static void icl_tc_cold_exit(struct
>> >> drm_i915_private *i915)
>> >> >  		    "succeeded");
>> >> >  }
>> >> >
>> >> > +static void
>> >> > +adl_aux_wait_for_power_well_enable(struct drm_i915_private *i915,
>> >> > +				   struct i915_power_well *power_well,
>> >> > +				   bool timeout_expected)
>> >> > +{
>> >> > +	const struct i915_power_well_regs *regs = power_well->desc->ops-
>> >> >regs;
>> >> > +	enum phy phy = icl_aux_pw_to_phy(i915, power_well);
>> >> > +	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
>> >> > +
>> >> > +	/*
>> >> > +	 * WA_14017248603: adlp
>> >> > +	 * Type-C Phy are taking longer than expected for AUX IO Power
>> >> Enabling.
>> >> > +	 * Increase timeout to 500ms.
>> >> > +	 */
>> >> > +	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
>> >> > +		if (intel_de_wait_for_set(i915, regs->driver,
>> >> > +
>> >> HSW_PWR_WELL_CTL_STATE(pw_idx), 500)) {
>> >> > +			drm_dbg_kms(&i915->drm, "%s power well enable
>> >> timeout\n",
>> >> > +				    intel_power_well_name(power_well));
>> >> > +
>> >> > +			drm_WARN_ON(&i915->drm, !timeout_expected);
>> >> > +		}
>> >> > +		return;
>> >> > +	}
>> >> > +
>> >> > +	hsw_wait_for_power_well_enable(i915, power_well,
>> >> timeout_expected);
>> >> > +}
>> >>
>> >> Please don't duplicate the function and the wait like this.
>> >>
>> >> Something like this is sufficient:
>> >>
>> >>
>> >> @@ -252,7 +252,9 @@ static void
>> hsw_wait_for_power_well_enable(struct
>> >> drm_i915_private *dev_priv,
>> >>  					   bool timeout_expected)
>> >>  {
>> >>  	const struct i915_power_well_regs *regs = power_well->desc->ops-
>> >> >regs;
>> >> +	enum phy phy = icl_aux_pw_to_phy(i915, power_well);
>> >>  	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
>> >> +	int timeout = 1;
>> >>
>> >>  	/*
>> >>  	 * For some power wells we're not supposed to watch the status bit
>> >> for @@ -264,9 +266,13 @@ static void
>> >> hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
>> >>  		return;
>> >>  	}
>> >>
>> >> +	/* WA_14017248603: adlp */
>> >> +	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy))
>> >
>> > I did try this but it ends up throwing a kernel null pointer error at
>> > intel_phy_is_tc which made me float the version of code I did.
>> 
>> Please explain what causes it, and how your version avoids it.
>> 
>
> icl_aux_pw_to_phy is called is hsw_wait_for_power_well is called everywhere where its not possible for aux_pw to phy
> conversion is not possible with this change we only get the phy for adls version.
> Will address this is next version.

Cc: Imre for input

Maybe pass the timeout to hsw_wait_for_power_well_enable() as parameter?
Other ideas?

BR,
Jani.

>
> Regards,
> Suraj Kandpal
>> BR,
>> Jani.
>> 
>> 
>> >
>> > Regards,
>> > Suraj Kandpal
>> >> +		timeout = 500;
>> >> +
>> >>  	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
>> >>  	if (intel_de_wait_for_set(dev_priv, regs->driver,
>> >> -				  HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
>> >> +				  HSW_PWR_WELL_CTL_STATE(pw_idx),
>> >> timeout)) {
>> >>  		drm_dbg_kms(&dev_priv->drm, "%s power well enable
>> timeout\n",
>> >>  			    intel_power_well_name(power_well));
>> >>
>> >>
>> >> > +
>> >
>> >> >  static void
>> >> >  icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
>> >> >  				 struct i915_power_well *power_well) @@ -
>> >> 517,7 +545,7 @@
>> >> > icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
>> >> >  	if (DISPLAY_VER(dev_priv) == 11 &&
>> >> intel_tc_cold_requires_aux_pw(dig_port))
>> >> >  		icl_tc_cold_exit(dev_priv);
>> >> >
>> >> > -	hsw_wait_for_power_well_enable(dev_priv, power_well,
>> >> timeout_expected);
>> >> > +	adl_aux_wait_for_power_well_enable(dev_priv, power_well,
>> >> > +timeout_expected);
>> >>
>> >> A function prefixed adl_ should indicate it's only needed for adl+.
>> >> This change is misleading.
>> >>
>> >> BR,
>> >> Jani.
>> >>
>> >>
>> >> >
>> >> >  	if (DISPLAY_VER(dev_priv) >= 12 && !is_tbt) {
>> >> >  		enum tc_port tc_port;
>> >>
>> >> --
>> >> Jani Nikula, Intel Open Source Graphics Center
>> 
>> --
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
