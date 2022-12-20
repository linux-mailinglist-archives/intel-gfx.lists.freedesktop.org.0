Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7156526CD
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 20:11:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FC0D10E39F;
	Tue, 20 Dec 2022 19:11:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF16610E39F
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 19:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671563486; x=1703099486;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Xsn5qGbrwGzlwJOh92duMbFNWX8s5UMOpPQk1y3eSq8=;
 b=dB4y9zo7q1mbzFnzjhopTHilE2gxclxqmYDENhqTJ8iQuYvK1BIr3498
 BwMYN2stprRjtNdWpCOo+ZnJ4XZ+icESIUeBxW8w8IFZDsU65IwUJdarT
 85BkAKiHmDq1XbIq76Yd+BylIcJTti47a4iWp4S25Db4eCt3CANhSLKl5
 wtXQ/f6CYq+86spe9Gvw2veQ2SGD5YfGjhvT07i4rTHgd+oxEHGdsTzFN
 pJgDPoA2PskYlxeIh7tzbDBNI7iqmGSF0BjsJ8FgmnTB8/68MGCS4IuS8
 vBDjPPB4eareAb5VfmrudLybMnDUB2hlJ9vSECfgDBCBkGvN2wVSZD2OL g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="317332740"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="317332740"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 11:11:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="644568651"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="644568651"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 11:11:24 -0800
Date: Tue, 20 Dec 2022 21:11:21 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y6II2T9SCtc1uZC6@ideak-desk.fi.intel.com>
References: <20221220094618.207126-1-maarten.lankhorst@linux.intel.com>
 <87zgbi2qpc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87zgbi2qpc.fsf@intel.com>
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 20, 2022 at 02:40:47PM +0200, Jani Nikula wrote:
> On Tue, 20 Dec 2022, Maarten Lankhorst <maarten.lankhorst@linux.intel.com> wrote:
> > We enable the DP aux channel during probe, but may free the connector
> > soon afterwards. Ensure the DP aux display power put is completed before
> > everything is freed, to prevent a use-after-free in icl_aux_pw_to_phy(),
> > called from icl_combo_phy_aux_power_well_disable.
> 
> Feels like the placement of the intel_display_power_flush_work_sync()
> call in intel_dp_aux_fini() is a bit arbitrary.
> 
> If we add it in intel_dp_aux_fini(), the async and sync waits will both
> be called on the regular encoder destroy path.

Yes, calling intel_display_power_flush_work() from the error handler at
the end of intel_dp_init_connector() would be better.

> Maybe both intel_ddi_encoder_destroy() and intel_dp_encoder_destroy()
> should call intel_display_power_flush_work_sync(), instead of async,

intel_display_power_flush_work() ensures that power wells without a
reference held are disabled when it returns, so no need to call the
_sync() version for encoders (the _sync() version ensures in addition
during driver unloading that the work function is not running).

> and maybe the error paths should call those functions instead of just
> drm_encoder_cleanup()?

Yes, the cleanup in those functions could be shared with the error
handling in g4x_dp_init() and intel_ddi_init(), except kfree(dig_port)
which also happens if drm_encoder_init() fails. 

For this intel_pps_vdd_off_sync() / intel_dp_aux_fini() would also
happen later at the end of g4x_dp_init()/intel_ddi_init(), I guess
that's ok.

I wonder if not handling drm_encoder_init() error in intel_ddi_init()
was on purpose, can't see a reason for it.

> Imre?
> 
> 
> BR,
> Jani.
> 
> 
> >
> > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
> >  drivers/gpu/drm/i915/display/intel_display_power.h | 1 +
> >  drivers/gpu/drm/i915/display/intel_dp_aux.c        | 2 ++
> >  3 files changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 04915f85a0df..0edb5532461f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -776,7 +776,7 @@ void intel_display_power_flush_work(struct drm_i915_private *i915)
> >   * Like intel_display_power_flush_work(), but also ensure that the work
> >   * handler function is not running any more when this function returns.
> >   */
> > -static void
> > +void
> >  intel_display_power_flush_work_sync(struct drm_i915_private *i915)
> >  {
> >  	struct i915_power_domains *power_domains = &i915->display.power.domains;
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> > index 7136ea3f233e..dc10ee0519e6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> > @@ -188,6 +188,7 @@ void __intel_display_power_put_async(struct drm_i915_private *i915,
> >  				     enum intel_display_power_domain domain,
> >  				     intel_wakeref_t wakeref);
> >  void intel_display_power_flush_work(struct drm_i915_private *i915);
> > +void intel_display_power_flush_work_sync(struct drm_i915_private *i915);
> >  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> >  void intel_display_power_put(struct drm_i915_private *dev_priv,
> >  			     enum intel_display_power_domain domain,
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > index f1835c74bff0..1006dddad2d5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > @@ -680,6 +680,8 @@ void intel_dp_aux_fini(struct intel_dp *intel_dp)
> >  	if (cpu_latency_qos_request_active(&intel_dp->pm_qos))
> >  		cpu_latency_qos_remove_request(&intel_dp->pm_qos);
> >  
> > +	/* Ensure async work from intel_dp_aux_xfer() is flushed before we clean up */
> > +	intel_display_power_flush_work_sync(dp_to_i915(intel_dp));
> >  	kfree(intel_dp->aux.name);
> >  }
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
