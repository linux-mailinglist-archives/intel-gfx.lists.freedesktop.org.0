Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3424A7073
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 13:04:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95D8510E607;
	Wed,  2 Feb 2022 12:04:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1555610E607
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Feb 2022 12:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643803459; x=1675339459;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uu1ARTFG1zMiELf1zKwDmzM+Oh9OXJw1VTsmRALvWjI=;
 b=i80bQvOplfeYCOA0uGh9KgretGH9Bjxz+qmyNqOkHEN5SfJMRAYTHg3+
 6LB1ZvehkH9gGC3Ve3k/og5UcIu72IrNkB03r2/bgi/kNu7o0tsQVlx9B
 X911Vo7CmJXvLIpZQwkEB2pL7PKyYqc900u6f9QQVXQB/YLQ3cVDyRWgC
 kJEsz8Xp8PiHk+LHgyYpCET9udDZyZfFVv9PzrGeeXsZLDXM/CC7ldc3Q
 EFsgdHWjHDY/767SNMQxz5rXF7tGr+ELLl0wUo5DFK/FAJDL+x4zUL7Zg
 zsjT04CVAcsQl+FUiR9mHu/y0zKVHoJShvIST3Y37Ddc2PPEikF26hclX w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="246730950"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="246730950"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 04:04:18 -0800
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="769257917"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 04:04:17 -0800
Date: Wed, 2 Feb 2022 14:04:14 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20220202120414.GB2638457@ideak-desk.fi.intel.com>
References: <20220202104249.2680843-1-imre.deak@intel.com>
 <YfpkXv6Xl25q0unN@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YfpkXv6Xl25q0unN@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable unused power wells left
 enabled by BIOS
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

On Wed, Feb 02, 2022 at 01:00:46PM +0200, Ville Syrjälä wrote:
> On Wed, Feb 02, 2022 at 12:42:49PM +0200, Imre Deak wrote:
> > Make sure all unused power wells left enabled by BIOS get disabled
> > during driver loading and system resume.
> > 
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5028
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  |  2 ++
> >  .../drm/i915/display/intel_display_power.c    | 31 +++++++++++++++++++
> >  .../drm/i915/display/intel_display_power.h    |  1 +
> >  3 files changed, 34 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index c431076f98a15..df347329d90e5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -10664,6 +10664,8 @@ intel_modeset_setup_hw_state(struct drm_device *dev,
> >  	}
> >  
> >  	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
> > +
> > +	intel_power_domains_sanitize_state(dev_priv);
> 
> One slight concern is intel_vga_redisable() which is called after
> this during resume. Dunno if there's any way we could end up
> disabling the power well that houses the VGA logic before actually 
> turning off the VGA plane?

Yes, it could happen by the time
i915_drm_resume()->intel_display_resume() is called. Though, all the
power wells backing the VGA functionality are also in the INIT domain,
so would have caused a problem already before this patch.

i915_restore_display() also calls intel_vga_redisable(), so I think that
should handle the above scenario (and the second call can be removed as
you suggest below).

> Hmm. Maybe we should just reorder the intel_modeset_setup_hw_state()
> vs. intel_vga_redisable() anyway. We already do those in the opposite
> order during driver probe. No idea why we have a different order for
> resume.
> 
> Apart from that this seems sane enough to me.
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> >  }
> >  
> >  void intel_display_resume(struct drm_device *dev)
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 369317805d245..d2102cc17bb4c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -6213,6 +6213,37 @@ void intel_power_domains_driver_remove(struct drm_i915_private *i915)
> >  	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> >  }
> >  
> > +/**
> > + * intel_power_domains_sanitize_state - sanitize power domains state
> > + * @i915: i915 device instance
> > + *
> > + * Sanitize the power domains state during driver loading and system resume.
> > + * The function will disable all display power wells that BIOS has enabled
> > + * without a user for it (any user for a power well has taken a reference
> > + * on it by the time this function is called, after the state of all the
> > + * pipe, encoder, etc. HW resources have been sanitized).
> > + */
> > +void intel_power_domains_sanitize_state(struct drm_i915_private *i915)
> > +{
> > +	struct i915_power_domains *power_domains = &i915->power_domains;
> > +	struct i915_power_well *power_well;
> > +
> > +	mutex_lock(&power_domains->lock);
> > +
> > +	for_each_power_well_reverse(i915, power_well) {
> > +		if (power_well->desc->always_on || power_well->count ||
> > +		    !power_well->desc->ops->is_enabled(i915, power_well))
> > +			continue;
> > +
> > +		drm_dbg_kms(&i915->drm,
> > +			    "BIOS left unused %s power well enabled, disabling it\n",
> > +			    power_well->desc->name);
> > +		intel_power_well_disable(i915, power_well);
> > +	}
> > +
> > +	mutex_unlock(&power_domains->lock);
> > +}
> > +
> >  /**
> >   * intel_power_domains_enable - enable toggling of display power wells
> >   * @i915: i915 device instance
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> > index 686d18eaa24c8..a985f0e7ef78b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> > @@ -219,6 +219,7 @@ void intel_power_domains_disable(struct drm_i915_private *dev_priv);
> >  void intel_power_domains_suspend(struct drm_i915_private *dev_priv,
> >  				 enum i915_drm_suspend_mode);
> >  void intel_power_domains_resume(struct drm_i915_private *dev_priv);
> > +void intel_power_domains_sanitize_state(struct drm_i915_private *dev_priv);
> >  
> >  void intel_display_power_suspend_late(struct drm_i915_private *i915);
> >  void intel_display_power_resume_early(struct drm_i915_private *i915);
> > -- 
> > 2.27.0
> 
> -- 
> Ville Syrjälä
> Intel
