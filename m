Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2986C1F99
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 19:25:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48AC710E22C;
	Mon, 20 Mar 2023 18:25:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C92E610E2D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 18:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679336700; x=1710872700;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=79pIx/QDMQJWgXUdfHR2yFm/AoMg5LihL6QCp1lwJUg=;
 b=nuEScQ6xyh+OikAnceVZMlNKEudq3l5xz5ECRRwCjbviCX8K0S2jsBR2
 EA/hwkIKboWnWM+BgOWNPXuu4XHhcH72rOyo68inNUhLxi4yI6waM7r4g
 /r0MnfQWY8eb2ExUL4uJY5gbYLka+nMrEkmjFpq2DqYfB1oWa0BvmM15Z
 AdoHvfX5Z7nGapJ5fY6nX57meNvnIT+F3naJmfttnoLJWrzA3GnLANa0e
 SAl18txyMUT6iffJj0Xf7f6xQhKfTiP7lo0/tJeP9z00VhUdc6Ea6DaWm
 yoKY0dNPGffdI8iKmu5y29JMPcQar9cg/4eC/w1zARFqXNaFeHI68uMIX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="318393352"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="318393352"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 11:25:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="770287081"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="770287081"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 20 Mar 2023 11:24:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 20:24:56 +0200
Date: Mon, 20 Mar 2023 20:24:56 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZBik+B62+nlOAJaZ@intel.com>
References: <20230320095438.17328-1-ville.syrjala@linux.intel.com>
 <20230320095438.17328-6-ville.syrjala@linux.intel.com>
 <ZBhI2sMqrDs2sVru@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZBhI2sMqrDs2sVru@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Disable DC states for all
 commits
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
Cc: Drew Davenport <ddavenport@chromium.org>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 20, 2023 at 01:51:54PM +0200, Imre Deak wrote:
> On Mon, Mar 20, 2023 at 11:54:37AM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > [...]
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index f86060195987..f2c9f88e7aef 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -2502,3 +2502,18 @@ intel_display_power_tbt_aux_domain(struct drm_i915_private *i915, enum aux_ch au
> >  
> >  	return domains->aux_tbt + (int)(aux_ch - domains->aux_ch_start);
> >  }
> > +
> > +void intel_display_power_assert_dc_off(struct drm_i915_private *i915)
> > +{
> > +	struct i915_power_domains *power_domains = &i915->display.power.domains;
> > +	struct i915_power_well *power_well;
> > +
> > +	mutex_lock(&power_domains->lock);
> > +
> > +	power_well = lookup_power_well(i915, SKL_DISP_DC_OFF);
> > +
> > +	drm_WARN_ON(&i915->drm, power_well &&
> > +		    !intel_power_well_is_enabled(i915, power_well));
> > +
> > +	mutex_unlock(&power_domains->lock);
> 
> intel_display_power_is_enabled() returns the cached state, but I think
> it could be used here, as the hw vs. sw state is checked already at
> other places. Either way, the patch looks ok.

Yeah, intel_display_power_is_enabled() seems fine now that we use the
DC_OFF domain. I guess originally I was still using the MODESET domain
and asserting that seemed a bit too vague to my liking.

> 
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> > index 8e96be8e6330..9ca48e233185 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> > @@ -182,6 +182,7 @@ void intel_display_power_suspend(struct drm_i915_private *i915);
> >  void intel_display_power_resume(struct drm_i915_private *i915);
> >  void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
> >  					     u32 state);
> > +void intel_display_power_assert_dc_off(struct drm_i915_private *dev_priv);
> >  
> >  const char *
> >  intel_display_power_domain_str(enum intel_display_power_domain domain);
> > -- 
> > 2.39.2
> > 

-- 
Ville Syrjälä
Intel
