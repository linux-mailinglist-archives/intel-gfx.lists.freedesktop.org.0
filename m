Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FEC91BCF4
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 13:04:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3999710E29F;
	Fri, 28 Jun 2024 11:04:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FWFmK51k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FF7610E29F
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2024 11:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719572655; x=1751108655;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SWB8iEodEzlxOuvg+mWCuMjkyOaSHS7WgUnDbNrxeKA=;
 b=FWFmK51kkKxBJgxjzcFyidCZgPiZEGziYgb53dOvdjWRrCM8mV5tjQyM
 GzV1Ra7PDmyaWTzy/epePr0aJacB1hyr5Mzu45DnK4IiqfrY3Rlgy2Wpj
 A277RJiDKOrBIm7XVRbRPqKmoRrpC/EFB+2I0sPNSCqLK9h72bKvlpLf/
 D3uMxKKbu5aaL6zUUT0/oEnYkYldqTm2rZtOcJGWx72omNftjWjJGwPKX
 riSjwfLe1Wmw4I9zOeppnL0z3n/q8hYmYFPSBIe1gOLdzu/ooqncnreKl
 LnhGW2/y04r4yk9ItNgAzGDre6PzyjR8E+4Y6+2RdbDwZBt3p98c74+Pz Q==;
X-CSE-ConnectionGUID: yr/Za1+XQxuLjL16FQUt/w==
X-CSE-MsgGUID: 6nXKu7XWTXOrVfS7DvGVIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="42171560"
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="42171560"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2024 04:04:14 -0700
X-CSE-ConnectionGUID: Z4/YOqzdS0yyRUN9CjU1XQ==
X-CSE-MsgGUID: 60nk0jiGQWaKR3o9oTwJ3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="44695230"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 Jun 2024 04:04:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Jun 2024 14:04:12 +0300
Date: Fri, 28 Jun 2024 14:04:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 03/14] drm/i915/dsb: Hook up DSB error interrupts
Message-ID: <Zn6YrOxswOJu9V9e@intel.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-4-ville.syrjala@linux.intel.com>
 <PH7PR11MB5981EA92D125D9C7B9510A57F9D02@PH7PR11MB5981.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <PH7PR11MB5981EA92D125D9C7B9510A57F9D02@PH7PR11MB5981.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
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

On Fri, Jun 28, 2024 at 09:21:24AM +0000, Manna, Animesh wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Tuesday, June 25, 2024 12:40 AM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH 03/14] drm/i915/dsb: Hook up DSB error interrupts
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Enable all DSB error/fault interrupts so that we can see if anything goes
> > terribly wrong.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_display_irq.c  | 17 ++++++
> >  drivers/gpu/drm/i915/display/intel_dsb.c      | 58 +++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_dsb.h      |  6 ++
> >  drivers/gpu/drm/i915/i915_reg.h               |  4 ++
> >  4 files changed, 85 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> > b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > index 5219ba295c74..7169db984651 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > @@ -14,6 +14,7 @@
> >  #include "intel_display_trace.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dp_aux.h"
> > +#include "intel_dsb.h"
> >  #include "intel_fdi_regs.h"
> >  #include "intel_fifo_underrun.h"
> >  #include "intel_gmbus.h"
> > @@ -1143,6 +1144,17 @@ void gen8_de_irq_handler(struct
> > drm_i915_private *dev_priv, u32 master_ctl)
> > 
> >  		intel_uncore_write(&dev_priv->uncore,
> > GEN8_DE_PIPE_IIR(pipe), iir);
> > 
> > +		if (HAS_DSB(dev_priv)) {
> > +			if (iir & GEN12_DSB_INT(INTEL_DSB_0))
> > +				intel_dsb_irq_handler(&dev_priv->display,
> > pipe, INTEL_DSB_0);
> > +
> > +			if (iir & GEN12_DSB_INT(INTEL_DSB_1))
> > +				intel_dsb_irq_handler(&dev_priv->display,
> > pipe, INTEL_DSB_1);
> > +
> > +			if (iir & GEN12_DSB_INT(INTEL_DSB_2))
> > +				intel_dsb_irq_handler(&dev_priv->display,
> > pipe, INTEL_DSB_2);
> > +		}
> > +
> >  		if (iir & GEN8_PIPE_VBLANK)
> >  			intel_handle_vblank(dev_priv, pipe);
> > 
> > @@ -1718,6 +1730,11 @@ void gen8_de_irq_postinstall(struct
> > drm_i915_private *dev_priv)
> >  			de_port_masked |= DSI0_TE | DSI1_TE;
> >  	}
> > 
> > +	if (HAS_DSB(dev_priv))
> > +		de_pipe_masked |= GEN12_DSB_INT(INTEL_DSB_0) |
> > +			GEN12_DSB_INT(INTEL_DSB_1) |
> > +			GEN12_DSB_INT(INTEL_DSB_2);
> > +
> >  	de_pipe_enables = de_pipe_masked |
> >  		GEN8_PIPE_VBLANK |
> >  		gen8_de_pipe_underrun_mask(dev_priv) | diff --git
> > a/drivers/gpu/drm/i915/display/intel_dsb.c
> > b/drivers/gpu/drm/i915/display/intel_dsb.c
> > index 2ab3765f6c06..ded696363258 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > @@ -339,6 +339,42 @@ static u32 dsb_chicken(struct intel_crtc *crtc)
> >  		return DSB_SKIP_WAITS_EN;
> >  }
> > 
> > +static u32 dsb_error_int_status(struct intel_display *display) {
> > +	struct drm_i915_private *i915 = to_i915(display->drm);
> > +	u32 errors;
> > +
> > +	errors = DSB_GTT_FAULT_INT_STATUS |
> > +		DSB_RSPTIMEOUT_INT_STATUS |
> > +		DSB_POLL_ERR_INT_STATUS;
> > +
> > +	/*
> > +	 * All the non-existing status bits operate as
> > +	 * normal r/w bits, so any attempt to clear them
> > +	 * will just end up setting them. Never do that so
> > +	 * we won't mistake them for actual error interrupts.
> > +	 */
> > +	if (DISPLAY_VER(i915) >= 14)
> > +		errors |= DSB_ATS_FAULT_INT_STATUS;
> > +
> > +	return errors;
> > +}
> > +
> > +static u32 dsb_error_int_en(struct intel_display *display) {
> > +	struct drm_i915_private *i915 = to_i915(display->drm);
> > +	u32 errors;
> > +
> > +	errors = DSB_GTT_FAULT_INT_EN |
> > +		DSB_RSPTIMEOUT_INT_EN |
> > +		DSB_POLL_ERR_INT_EN;
> > +
> > +	if (DISPLAY_VER(i915) >= 14)
> > +		errors |= DSB_ATS_FAULT_INT_EN;
> > +
> > +	return errors;
> > +}
> > +
> >  static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
> >  			      int dewake_scanline)
> >  {
> > @@ -363,6 +399,10 @@ static void _intel_dsb_commit(struct intel_dsb *dsb,
> > u32 ctrl,
> >  	intel_de_write_fw(display, DSB_CHICKEN(pipe, dsb->id),
> >  			  dsb_chicken(crtc));
> > 
> > +	intel_de_write_fw(display, DSB_INTERRUPT(pipe, dsb->id),
> > +			  dsb_error_int_status(display) |
> > DSB_PROG_INT_STATUS |
> > +			  dsb_error_int_en(display));
> > +
> >  	intel_de_write_fw(display, DSB_HEAD(pipe, dsb->id),
> >  			  intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf));
> > 
> > @@ -430,6 +470,9 @@ void intel_dsb_wait(struct intel_dsb *dsb)
> >  	dsb->free_pos = 0;
> >  	dsb->ins_start_offset = 0;
> >  	intel_de_write_fw(display, DSB_CTRL(pipe, dsb->id), 0);
> > +
> > +	intel_de_write_fw(display, DSB_INTERRUPT(pipe, dsb->id),
> > +			  dsb_error_int_status(display) |
> > DSB_PROG_INT_STATUS);
> >  }
> > 
> >  /**
> > @@ -513,3 +556,18 @@ void intel_dsb_cleanup(struct intel_dsb *dsb)
> >  	intel_dsb_buffer_cleanup(&dsb->dsb_buf);
> >  	kfree(dsb);
> >  }
> > +
> > +void intel_dsb_irq_handler(struct intel_display *display,
> > +			   enum pipe pipe, enum intel_dsb_id dsb_id) {
> > +	struct intel_crtc *crtc = intel_crtc_for_pipe(to_i915(display->drm),
> > pipe);
> > +	u32 tmp, errors;
> > +
> > +	tmp = intel_de_read_fw(display, DSB_INTERRUPT(pipe, dsb_id));
> > +	intel_de_write_fw(display, DSB_INTERRUPT(pipe, dsb_id), tmp);
> > +
> > +	errors = tmp & dsb_error_int_status(display);
> > +	if (errors)
> > +		drm_err(display->drm, "[CRTC:%d:%s] / DSB %d error
> > interrupt: 0x%x\n",
> > +			crtc->base.base.id, crtc->base.name, dsb_id, errors);
> 
> Just a nitpick: maybe good to print the errors in a string format instead of hex value.

Yeah that might be nice. But we don't do that for eg. pipe fault
errors either. Perhaps a nice little task for someone to go over
all of these and make them a bit more human friendly...

-- 
Ville Syrjälä
Intel
