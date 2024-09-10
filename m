Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28569973D34
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 18:27:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E7D510E883;
	Tue, 10 Sep 2024 16:27:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YH0QWzbc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78DF110E883
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 16:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725985648; x=1757521648;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mG9hXPs2E4CSdADo+ctIolSvm/2S8UEx4z+bZJh3VNw=;
 b=YH0QWzbcpbiG+NhuC2RTzPfV9JG66G8rm20jPboxhIxZYSwrZ0BYc/A0
 5L62oCKlbXAa9MA0Kb7BBoEDctthLiFS1HreTE+0Dpqkwe34vZRQMl0fg
 VrRxmMu4ieA2f5mgeGEG76JlZQC5caCxBAKkwe2JCFNR6FFtsFtkowwlP
 u+BQuUH0OVB9zM70KQZr9smjShXVXm3SQSDvBoTgoQ3Eo2a6O4Vsz+Gnt
 BE6N8gO7DwEP99xro1XVWi+V7Miqimh0xZpsiCvl8JCj+hp/qVcD9MqHW
 1TcGn9sGY5BF63Iw+7TIS2aXvS90pattgy9mbMgmMKMfVK699RwGKR5e6 w==;
X-CSE-ConnectionGUID: v+3TumS3S+eJrDkvpSuiaQ==
X-CSE-MsgGUID: 6gtqpbqKRJ63vFaCXpH6CQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="42264211"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="42264211"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 09:27:27 -0700
X-CSE-ConnectionGUID: /7EFdckESA6tN7PCRpT0aA==
X-CSE-MsgGUID: OABR5BbARUq3MUgvW2cePA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="67598027"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 09:27:25 -0700
Date: Tue, 10 Sep 2024 19:27:49 +0300
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
	Animesh Manna <animesh.manna@intel.com>
Subject: Re: [PATCH] drm/i915/dp: Fix AUX IO power enabling for eDP PSR
Message-ID: <ZuBzheUe3xju2_iy@ideak-desk.fi.intel.com>
References: <20240910111847.2995725-1-imre.deak@intel.com>
 <ZuBbW5x7j8WUfneT@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZuBbW5x7j8WUfneT@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 10, 2024 at 10:44:43AM -0400, Rodrigo Vivi wrote:
> On Tue, Sep 10, 2024 at 02:18:47PM +0300, Imre Deak wrote:
> > Panel Self Refresh on eDP requires the AUX IO power to be enabled
> > whenever the output (main link) is enabled. This is required by the
> > AUX_PHY_WAKE/ML_PHY_LOCK signaling initiated by the HW automatically to
> > re-enable the main link after it got disabled in power saving states
> > (see eDP v1.4b, sections 5.1, 6.1.3.3.1.1).
> > 
> > The Panel Replay mode on non-eDP outputs on the other hand is only
> > supported by keeping the main link active, thus not requiring the above
> > AUX_PHY_WAKE/ML_PHY_LOCK signaling (eDP v1.4b, section 6.1.3.3.1.2).
> > Thus enabling the AUX IO power for this case is not required either.
> > 
> > Based on the above enable the AUX IO power only for eDP/PSR outputs.
> > 
> > Bspec: 49274, 53370
> > 
> > Cc: Animesh Manna <animesh.manna@intel.com>
> 
> Cc: Jouni Högander <jouni.hogander@intel.com>
> 
> > Fixes: b8cf5b5d266e ("drm/i915/panelreplay: Initializaton and compute config for panel replay")
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c |  2 +-
> >  drivers/gpu/drm/i915/display/intel_psr.c | 13 +++++++++++++
> >  drivers/gpu/drm/i915/display/intel_psr.h |  2 ++
> >  3 files changed, 16 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 00fbe9f8c03a9..b1c294236cc87 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -916,7 +916,7 @@ intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port,
> >  	 * instead of a specific AUX_IO_<port> reference without powering up any
> >  	 * extra wells.
> >  	 */
> > -	if (intel_encoder_can_psr(&dig_port->base))
> > +	if (intel_psr_needs_aux_io_power(&dig_port->base, crtc_state))
> >  		return intel_display_power_aux_io_domain(i915, dig_port->aux_ch);
> >  	else if (DISPLAY_VER(i915) < 14 &&
> >  		 (intel_crtc_has_dp_encoder(crtc_state) ||
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> > index b30fa067ce6e3..f2991dc4a04ab 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -205,6 +205,19 @@ bool intel_encoder_can_psr(struct intel_encoder *encoder)
> >  		return false;
> >  }
> >  
> > +bool intel_psr_needs_aux_io_power(struct intel_encoder *encoder,
> > +				  const struct intel_crtc_state *crtc_state)
> > +{
> > +	/*
> > +	 * For PSR/PR modes only eDP requires the AUX IO power to be enabled whenever
> > +	 * the output is enabled. For non-eDP outputs the main link is always
> > +	 * on, hence it doesn't require the HW initiated AUX wake-up signaling used
> > +	 * for eDP.
> 
> I honestly got confused with this sentence here, because PSR is only a eDP
> feature. But yeap, we have the DP2.0 panel replay that is based out of eDP PSR,
> and it looks our code is already inheriting and mixing both.
> 
> But anyway, I wonder if this aux thing here would depend on
> DP_ALPM_AUX_LESS_CAP intel_alpm_aux_less_wake_supported()
> instead of assuming aux always on for panel replay.

I think for panel replay aux power should be disabled, regardless of the
sink's AUX-less wake support. This latter should matter only if the main
link gets disabled in a power state, like PM_State 3b/ALW_SLEEP, but
this isn't supported by the HW during panel replay.

In theory aux could be also left disabled for panel replay on eDP, so
always if crtc_state->has_panel_replay. However that's separate from the
fix here for non-eDP connectors, so I'd do that as a follow-up.

> > +	 */
> > +	return intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
> > +	       intel_encoder_can_psr(encoder);
> > +}
> > +
> >  static bool psr_global_enabled(struct intel_dp *intel_dp)
> >  {
> >  	struct intel_display *display = to_intel_display(intel_dp);
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
> > index 4e09c10908e4c..6eb5f15f674fa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> > @@ -25,6 +25,8 @@ struct intel_plane_state;
> >  				    (intel_dp)->psr.source_panel_replay_support)
> >  
> >  bool intel_encoder_can_psr(struct intel_encoder *encoder);
> > +bool intel_psr_needs_aux_io_power(struct intel_encoder *encoder,
> > +				  const struct intel_crtc_state *crtc_state);
> >  void intel_psr_init_dpcd(struct intel_dp *intel_dp);
> >  void intel_psr_enable_sink(struct intel_dp *intel_dp,
> >  			   const struct intel_crtc_state *crtc_state);
> > -- 
> > 2.44.2
> > 
