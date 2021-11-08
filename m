Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F260449F13
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Nov 2021 00:39:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87CFF6E1B3;
	Mon,  8 Nov 2021 23:39:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 764726E1B3
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Nov 2021 23:39:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="295782455"
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="295782455"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 15:39:04 -0800
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="533490675"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 15:39:04 -0800
Date: Mon, 8 Nov 2021 15:52:07 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20211108235206.GA15292@labuser-Z97X-UD5H>
References: <20210628235054.694581-1-madhumitha.tolakanahalli.pradeep@intel.com>
 <87ilxcdvfy.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87ilxcdvfy.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/tgl: Implement
 Wa_14013120569
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

On Mon, Nov 01, 2021 at 12:25:21PM +0200, Jani Nikula wrote:
> On Mon, 28 Jun 2021, Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com> wrote:
> > PCH display HPD IRQ is not detected with default filter value.
> > So, PP_CONTROL is manually reprogrammed.
> 
> Returning to this workaround.
> 
> You're not supposed to enable the workaround when there's eDP
> connected. This is also crucial in avoiding issues with eDP PPS.
> 
> The workaround is specific to Tiger Lake PCH, so you need to check
> against the PCH, not the GPU.
> 
> Also see comments inline.
> 
> >
> > Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_display_power.c   |  8 ++++++++
> >  drivers/gpu/drm/i915/display/intel_hotplug.c     | 16 ++++++++++++++++
> >  2 files changed, 24 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 285380079aab..e44323cc76f5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -6385,8 +6385,16 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
> >  
> >  void intel_display_power_suspend_late(struct drm_i915_private *i915)
> >  {
> > +    struct drm_i915_private *dev_priv = i915;
> > +    u32 val;
> >  	if (DISPLAY_VER(i915) >= 11 || IS_GEMINILAKE(i915) ||
> >  	    IS_BROXTON(i915)) {
> > +		val = intel_de_read(dev_priv, PP_CONTROL(0));
> > +		/* Wa_14013120569:tgl */
> > +		if (IS_TIGERLAKE(i915)) {
> > +			val &= ~PANEL_POWER_ON;
> > +			intel_de_write(dev_priv, PP_CONTROL(0), val);
> > +	}
> 
> As José said, how do you enable the workaround after resume if external
> displays are still connected?
> 
> >  		bxt_enable_dc9(i915);
> >  		/* Tweaked Wa_14010685332:icp,jsp,mcc */
> >  		if (INTEL_PCH_TYPE(i915) >= PCH_ICP && INTEL_PCH_TYPE(i915) <= PCH_MCC)
> > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> > index 47c85ac97c87..8e3f84100daf 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> > @@ -26,6 +26,7 @@
> >  #include "i915_drv.h"
> >  #include "intel_display_types.h"
> >  #include "intel_hotplug.h"
> > +#include "intel_de.h"
> >  
> >  /**
> >   * DOC: Hotplug
> > @@ -266,7 +267,9 @@ intel_encoder_hotplug(struct intel_encoder *encoder,
> >  		      struct intel_connector *connector)
> >  {
> >  	struct drm_device *dev = connector->base.dev;
> > +	struct drm_i915_private *dev_priv = to_i915(dev);
> >  	enum drm_connector_status old_status;
> > +	u32 val;
> >  	u64 old_epoch_counter;
> >  	bool ret = false;
> >  
> > @@ -288,6 +291,19 @@ intel_encoder_hotplug(struct intel_encoder *encoder,
> >  			      drm_get_connector_status_name(connector->base.status),
> >  			      old_epoch_counter,
> >  			      connector->base.epoch_counter);
> > +
> > +		/* Wa_14013120569:tgl */
> > +		if (IS_TIGERLAKE(dev_priv)) {
> > +			val = intel_de_read(dev_priv, PP_CONTROL(0));
> > +			if (connector->base.status == connector_status_connected) {
> > +				val |= PANEL_POWER_ON;
> > +				intel_de_write(dev_priv, PP_CONTROL(0), val);
> > +			}
> > +			else if (connector->base.status == connector_status_disconnected) {
> > +				val &= ~PANEL_POWER_ON;
> > +				intel_de_write(dev_priv, PP_CONTROL(0), val);
> > +			}
> > +		}
> 
> First off, usually if you have a clean, generic, high level function,
> it's a hint you shouldn't stick low level register access there.
> 
> If you plug in two external displays and then unplug one of them, you
> end up disabling the workaround, while it's supposed to remain enabled
> if there's an external display connected. This is likely the most
> annoying part about the workaround.
> 
> This does not seem like a trivial workaround to implement.
>

Yes I agree, not a trivial W/A to implement. I think few main things to figure out:
- Right place to enable/disable the W/A at connect/disconnect and for the connectors already connected on boot - Probably in hdmi_init_connector() and dp_init_connector() for the connected conns
on boot and then intel_encoder_hptplug() at the time of ext display hotplug/unplug

@Jani having this W/A in above 2 places you think is good?
- The other thing like Jani pointed out is that we should enable/disable only if !edp - so add this check for init_connector functions before setting/ clearing the W/A

- Third thing is the wrapper function to be defined in intel_pps.c something like below:

intel_pps_wa_enable(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
	intel_wakeref_t wakeref;

	with_intel_pps_lock(intel_dp, wakeref) {
		i915_reg_t pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
		u32 pp;

		pp = intel_de_read(dev_priv, _pp_ctrl_reg(intel_dp));
		pp |= PANEL_POWER_ON;
		intel_de_write(dev_priv, pp_ctrl_reg, pp);
		intel_de_posting_read(dev_priv, pp_ctrl_reg);
	}
}
And similar for disabling the wa

Then this function can be called in the appropriate places identified above.

@Jani this pps helper function for enable/disable W/A makes sense?


Regards
Manasi
} 
> 
> BR,
> Jani.
> 
> 
> >  		return INTEL_HOTPLUG_CHANGED;
> >  	}
> >  	return INTEL_HOTPLUG_UNCHANGED;
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
