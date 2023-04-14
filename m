Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8716E1EDD
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 10:58:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0750D10ECA4;
	Fri, 14 Apr 2023 08:58:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D624A10E16C
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 08:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681462700; x=1712998700;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=Dp7/73t6ZDAL9goAKLdUtv05uZK/rtPTOGHNqsjRrrc=;
 b=n+iQdHsm+fbwmAJhOTYhoio7epj8RiNiUyaCanytPLeRzXLxd2864Hd3
 4+xnZMBRYjsENMuxcOxyy/yrI6D90WHcPzhQ9q4d5vXTdt9ZtiyoPfaFC
 z+18BTObU5h6N/5WHF8GuvXuC/1yHQQyU78sMpYN/ZaFO5UKzyY/8/Eaw
 qFTSbwzmMjHyTPjGsVx1tFf+YcpfEpoH0BwRm8tnxiytHrtpvVtf4C7DJ
 hpM5nWlDepG5DzAQZ1bpn7UExA8Kz+DzMPFBykZMhE4WznsnA1c0gbuyz
 3uVgcX2zJimexYrSbSe4FPeya7rVSdNknCviju7PLyYyV+wL3aePe8ei4 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="407290206"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="407290206"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 01:58:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="759042423"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="759042423"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.117])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 01:58:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <SN7PR11MB675097D1D709DA0920B4E691E3999@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230414072345.1041605-1-suraj.kandpal@intel.com>
 <87a5zaho4o.fsf@intel.com>
 <SN7PR11MB675097D1D709DA0920B4E691E3999@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Fri, 14 Apr 2023 11:58:15 +0300
Message-ID: <877cuehmc8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: PCH display HPD IRQ is
 not detected with default filter value
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

On Fri, 14 Apr 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> 
>> On Fri, 14 Apr 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> > On TGP, the RTC (always running) was reduced from 3MHz to 32KHz.
>> > As a result of this change, when HPD active going low pulse or HPD IRQ
>> > is presented and the refclk (19.2MHz) is not toggling already
>> > toggling, there is a 60 to 90us synchronization delay which
>> > effectively reduces the duration of the IRQ pulse to less than the
>> > programmed 500us filter value and the hot plug interrupt is NOT
>> registered.
>> > Program 0xC7204 (PP_CONTROL) bit #0 to '1' to enable workaround and
>> > clear to disable it.
>> > Driver shall enable this WA when external display is connected and
>> > remove WA when display is unplugged or before going into sleep to
>> > allow CS entry.
>> > Driver shall not enable WA when eDP is connected.
>> > Wa_1508796671:adls
>> >
>> > Cc: Arun Murthy <arun.r.murthy@intel.com>
>> > Cc: Uma Shankar <uma.shankar@intel.com>
>> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> 
>> I don't know what the right fix should eventually be, but this, as it is, is
>> absolutely not it.
>
> I guess we should open a discussion on how we should go ahead implementing this fix

Ville's reply is relevant here.

>
>> 
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_dp.c  | 19 +++++++++++++++++++
>> > drivers/gpu/drm/i915/display/intel_pps.c |  1 +
>> >  drivers/gpu/drm/i915/i915_drv.h          |  2 ++
>> >  3 files changed, 22 insertions(+)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> > b/drivers/gpu/drm/i915/display/intel_dp.c
>> > index 8e16745275f6..f93895d99fd1 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > @@ -4689,6 +4689,7 @@ intel_dp_detect(struct drm_connector
>> *connector,
>> >  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> >  	struct intel_encoder *encoder = &dig_port->base;
>> >  	enum drm_connector_status status;
>> > +	int32_t pp;
>> 
>> For registers, this should be u32. There isn't a single int32_t use in the driver.
>> 
>> >
>> >  	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
>> >  		    connector->base.id, connector->name); @@ -4792,6
>> +4793,22 @@
>> > intel_dp_detect(struct drm_connector *connector,
>> >  						 status,
>> >  						 intel_dp->dpcd,
>> >  						 intel_dp-
>> >downstream_ports);
>> > +
>> > +	/*
>> > +	 * WA_150879661:adls
>> > +	 * Driver shall enable this WA when external display is connected
>> > +	 * and remove WA when display is unplugged
>> > +	 */
>> > +	if (IS_ALDERLAKE_S(dev_priv)) {
>> > +		if (status == connector_status_connected &&
>> > +		    !dev_priv->edp_present)
>> > +			pp = PANEL_POWER_ON;
>> > +		else if (status == connector_status_disconnected)
>> > +			pp = 0;
>> > +
>> > +		intel_de_rmw(dev_priv, _MMIO(PCH_PPS_BASE + 4), 1, pp);
>> 
>> You're not supposed to cook up register offsets inline in code like that. The
>> *PPS_BASE macros are not for general use. There's PP_CONTROL macro for
>> that particular register.
>> 
>
> According to the WA we need to write in the register PP_CONTROL 0xC7204
> But the PP_CONTROL macro depends on the value assigned to mmio_base value
> In pps struct.

Yeah, it depends on the mmio_base value to make it independent of the
platform. It would not be different on ADL-S.

>
>> Why would you use magic 1 for clearing and PANEL_POWER_ON macro for
>> setting the bit in the rmw call?
>> 
>
> Since I wanted to set the first bit to be set as 0 or 1 hence used clear value as 1 to just clear
> The LSB and then intel_de_rmw OR's the read value with provided value.

Yeah, but if you're using PP_CONTROL to set the bit, why not also to
clear it? That's kind of the idea with the macros.

>
>> For the most part, only the PPS code in intel_pps.c is supposed to touch the
>> PPS registers.
>> 
>> > +	}
>> > +
>> >  	return status;
>> >  }
>> >
>> > @@ -5489,6 +5506,8 @@ intel_dp_init_connector(struct intel_digital_port
>> *dig_port,
>> >  	if (!intel_edp_init_connector(intel_dp, intel_connector)) {
>> >  		intel_dp_aux_fini(intel_dp);
>> >  		goto fail;
>> > +	} else {
>> > +		dev_priv->edp_present = true;
>> >  	}
>> >
>> >  	intel_dp_set_source_rates(intel_dp);
>> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
>> > b/drivers/gpu/drm/i915/display/intel_pps.c
>> > index 24b5b12f7732..21538338af3d 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> > @@ -1726,4 +1726,5 @@ void assert_pps_unlocked(struct
>> drm_i915_private *dev_priv, enum pipe pipe)
>> >  	I915_STATE_WARN(panel_pipe == pipe && locked,
>> >  			"panel assertion failure, pipe %c regs locked\n",
>> >  			pipe_name(pipe));
>> > +
>> >  }
>> > diff --git a/drivers/gpu/drm/i915/i915_drv.h
>> > b/drivers/gpu/drm/i915/i915_drv.h index 6254aa977398..ebe16aee0ca8
>> > 100644
>> > --- a/drivers/gpu/drm/i915/i915_drv.h
>> > +++ b/drivers/gpu/drm/i915/i915_drv.h
>> > @@ -352,6 +352,8 @@ struct drm_i915_private {
>> >  	/* The TTM device structure. */
>> >  	struct ttm_device bdev;
>> >
>> > +	bool edp_present;
>> 
>> Please don't add global state flags that duplicate info.
>> 
>> And when you actually need to, struct drm_i915_private is no longer the
>> dumping ground for random info anyway.
>> 
>
>
> This edp_present variable was to check if edp is connected to machine
> But other than iterate over all connectors to see if edp is present I couldn't find a way

Generally you should follow the Single Point of Truth (SPOT)
principle. Only cache stuff like that if you need the
performance. You'll quickly get into trouble duplicating state.

> Making me think drm_i915_private is the place where I can put this variable

I've been trying hard to clean up struct drm_i915_private of all display
stuff, and moving them to the display sub-struct in a more organized
manner.

BR,
Jani.

>
> Regards,
> Suraj Kandpal
>
>> BR,
>> Jani.
>> 
>> > +
>> >  	I915_SELFTEST_DECLARE(struct i915_selftest_stash selftest;)
>> >
>> >  	/*
>> 
>> --
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
