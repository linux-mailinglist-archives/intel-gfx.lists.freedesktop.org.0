Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAD8997F58
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 10:20:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EFF810E2C5;
	Thu, 10 Oct 2024 08:20:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fBJZGJ/I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1B2E10E899;
 Thu, 10 Oct 2024 08:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728548420; x=1760084420;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=4oY5IifHoiDF08GsuMzKw8QrvBeSq08/tetMdla794s=;
 b=fBJZGJ/IrQ5gso/H+NyJF241ijxaG2mFQH0/oDnOkD1Y/GEc9S4Jij+r
 GsXzKTWshWr0sXXkalnZl0zb2+mFgbwd5zBi+00Id8FdpYlrF8tinkj9G
 iXdfEEdZIChdnzsf6+zJPZRHk9FxvzySxoQbQ/eBZSdjE4stK2UqO6COH
 wNB3cENLRUWp+x3wgAqIGqo2L4u2FfoWDGRj2gqg0y9NFguul37xZw6SY
 W1j6fc3lNvk01yNDhLf2u8XbFS0edH+CdV0YIBFNuETcndc0hjMbBgkfq
 GBog107l9zIgh9gfVeBkmEZ/gbHSO6CXNG1m1AbnnxmRt0zRajzn3ujmv g==;
X-CSE-ConnectionGUID: UY7o6Ws1SWGUARyoLS4SSg==
X-CSE-MsgGUID: +sen02/ySnamMdxAAaHaZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="50429322"
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="50429322"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 01:20:20 -0700
X-CSE-ConnectionGUID: ZA1r+WYOSXiMBx4G+cqSEw==
X-CSE-MsgGUID: fgnUAxwuSxKSanEkaoc2pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="107358228"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.131])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 01:20:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH 09/10] drm/i915/xe3lpd: Add check to see if edp over
 type c is allowed
In-Reply-To: <SN7PR11MB6750C1D264E35F66C2105804E3782@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
 <20241008223741.82790-10-matthew.s.atwood@intel.com>
 <87jzehbtkb.fsf@intel.com> <ZwcMaS6oVZneqURv@msatwood-mobl>
 <SN7PR11MB6750C1D264E35F66C2105804E3782@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Thu, 10 Oct 2024 11:20:13 +0300
Message-ID: <871q0o8j42.fsf@intel.com>
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

On Thu, 10 Oct 2024, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> -----Original Message-----
>> From: Atwood, Matthew S <matthew.s.atwood@intel.com>
>> Sent: Thursday, October 10, 2024 4:36 AM
>> To: Kandpal, Suraj <suraj.kandpal@intel.com>
>> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Kandpal,
>> Suraj <suraj.kandpal@intel.com>
>> Subject: Re: [PATCH 09/10] drm/i915/xe3lpd: Add check to see if edp over
>> type c is allowed
>> 
>> On Wed, Oct 09, 2024 at 10:53:56AM +0300, Jani Nikula wrote:
>> > On Tue, 08 Oct 2024, Matt Atwood <matthew.s.atwood@intel.com> wrote:
>> > > From: Suraj Kandpal <suraj.kandpal@intel.com>
>> > >
>> > > Read PICA register to see if edp over type C is possible and then
>> > > add the appropriate tables for it.
>> >
>> > There's clearly more to be done for the feature than this.
>
> From what I could see in the spec we just need to read this the rest of the framework
> Already seemed to be in place and removing the checks where we didn't allow edp to go ahead when
> It was type c

Is it driven by VBT?

>
>> >
>> > >
>> > > Bspec: 68846
>> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> > > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>> > > ---
>> > >  drivers/gpu/drm/i915/display/intel_cx0_phy.c     |  2 ++
>> > >  .../gpu/drm/i915/display/intel_display_types.h   |  1 +
>> > >  drivers/gpu/drm/i915/display/intel_dp.c          | 16 ++++++++++++++++
>> > >  drivers/gpu/drm/i915/i915_reg.h                  |  3 +++
>> > >  4 files changed, 22 insertions(+)
>> > >
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > > index 0d6f75ae35f5..1c8c2a2b05e1 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > > @@ -2261,6 +2261,8 @@ intel_c20_pll_tables_get(struct intel_crtc_state
>> *crtc_state,
>> > >  		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
>> > >  			if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
>> > >  				return xe2hpd_c20_edp_tables;
>> > > +			if (DISPLAY_VER(i915) >= 30 && encoder-
>> >typec_supp)
>> > > +				return xe3lpd_c20_dp_edp_tables;
>> > >  		}
>> > >
>> > >  		if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1)) diff --git
>> > > a/drivers/gpu/drm/i915/display/intel_display_types.h
>> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
>> > > index 2bb1fa64da2f..e9dc7707fbcd 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> > > @@ -158,6 +158,7 @@ struct intel_encoder {
>> > >  	enum port port;
>> > >  	u16 cloneable;
>> > >  	u8 pipe_mask;
>> > > +	bool typec_supp;
>> >
>> > The register is global, why do we store this per encoder?
>
> Do you think having this in drm_i915_private makes sense wanted to put it there originally

Ugh no. We've stopped putting *anything* in drm_i915_private.

I couldn't find much detail about how the register behaves, but it looks
like a strap. I think I'd put the info in struct
intel_display_runtime_info and initialize in
__intel_display_device_info_runtime_init() based on the register,
similar to a ton of other things there.

>
>> >
>> > Side not, please let's not abbreviate stuff like _supp for the sake of
>> > abbreviating stuff.
>
> Sure will fix the naming
> Also quick question what would be the rule when abbreviating variables or
> When would we want to abbreviate the a variable if we want to

It's all about conventions, scope, and context. Certain things always
have the same name. Shorter names are fine in tight scope. Context can
allow you to shorten the name if parts of it are obvious from context.

>
>> >
>> > >
>> > >  	/* Check and recover a bad link state. */
>> > >  	struct delayed_work link_check_work; diff --git
>> > > a/drivers/gpu/drm/i915/display/intel_dp.c
>> > > b/drivers/gpu/drm/i915/display/intel_dp.c
>> > > index fbb096be02ad..917a503cc43b 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > > @@ -5570,6 +5570,20 @@ intel_dp_detect_sdp_caps(struct intel_dp
>> *intel_dp)
>> > >  		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp-
>> >dpcd);  }
>> > >
>> > > +static void
>> > > +intel_dp_check_edp_typec_supp(struct intel_encoder *encoder)
>> >
>> > It's not about checking anything, it's about reading, right?
>
> Yes will rename this to intel_dp_read_edp_typec_support

If we move the check to runtime info, the function shouldn't be needed.

>
>> >
>> > > +{
>> > > +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>> > > +	bool is_tc_port = intel_encoder_is_tc(encoder);
>> > > +	u32 ret = 0;
>> > > +
>> > > +	if (encoder->type != INTEL_OUTPUT_EDP || !is_tc_port)
>> >
>> > Currently we warn at connector init for eDP type-C combo.
>
> That's true we will need to remove that check for DISPLAY_VER > 20
> Thanks will add that in this patch

That check should be amended with the runtime info check.

>
>> >
>> > > +		return;
>> > > +
>> > > +	ret = intel_de_read(i915, PICA_PHY_CONFIG_CONTROL);
>> > > +	encoder->typec_supp = ret & EDP_ON_TYPEC; }
>> > > +
>> > >  static int
>> > >  intel_dp_detect(struct drm_connector *connector,
>> > >  		struct drm_modeset_acquire_ctx *ctx, @@ -5595,6 +5609,8
>> @@
>> > > intel_dp_detect(struct drm_connector *connector,
>> > >  	if (!intel_display_driver_check_access(dev_priv))
>> > >  		return connector->status;
>> > >
>> > > +	intel_dp_check_edp_typec_supp(encoder);
>> > > +
>> >
>> > Isn't this something that should be determined at intel_ddi_init() time?
>
> Or intel_dp_connector_init can add it there what do you think ?

Yes, that's where we check the type-C/eDP combo currently.

BR,
Jani.

>
> Regards,
> Suraj Kandpal
>> >
>> > BR,
>> > Jani.
>> Please respond to Jani's comments
>> MattA
>> >
>> >
>> > >  	/* Can't disconnect eDP */
>> > >  	if (intel_dp_is_edp(intel_dp))
>> > >  		status = edp_detect(intel_dp);
>> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h
>> > > b/drivers/gpu/drm/i915/i915_reg.h index da65500cd0c8..5f5a6ade5f8c
>> > > 100644
>> > > --- a/drivers/gpu/drm/i915/i915_reg.h
>> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
>> > > @@ -4583,4 +4583,7 @@ enum skl_power_gate {
>> > >
>> > >  #define MTL_MEDIA_GSI_BASE		0x380000
>> > >
>> > > +#define PICA_PHY_CONFIG_CONTROL 	_MMIO(0x16FE68)
>> > > +#define   EDP_ON_TYPEC			REG_BIT(31)
>> > > +
>> > >  #endif /* _I915_REG_H_ */
>> >
>> > --
>> > Jani Nikula, Intel

-- 
Jani Nikula, Intel
