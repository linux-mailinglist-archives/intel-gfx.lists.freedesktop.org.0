Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D93CB1035
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 21:10:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 119A210E5A8;
	Tue,  9 Dec 2025 20:10:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I60TFN1G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F7A710E5A8
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Dec 2025 20:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765311041; x=1796847041;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6nTZRpx1Yz/S9ky8KM0GDFNdk2wLRi6N+cOKqJzOjPc=;
 b=I60TFN1GGKasnAgL/fE2uavSkbaFtxF/U7hNlWWdk2wkoCFIf5bFxxS2
 R6BFFccph5/M3qxENc+tLFyR1hIBevx6t46ic/rgJDsaDGsquOgMunQ/Y
 ZupLrudNGihCvTd8bS3F/5a6RgdtoFNAW/5hNPspwBeViR1048nUpsTRW
 4ZoNjRdr+z4WtYV76Nokxt00NjJAX3nBgY9I4Ju3zF+7VagBeiNqlb4oa
 AG4+jG5zt/nwQWIoN5MGNcQJHf+fXHVPwAYAWEGGMdkaXNPnXqXwrZR2P
 shj59OdpSRJiEsFa6PKX+LbFoLoez40KVQ3GJLAX7q9sXGAc1dIWqVUfM w==;
X-CSE-ConnectionGUID: wY+DH7M3RfCjjPXslKCE+Q==
X-CSE-MsgGUID: O9rVD5e0TI6TR4aWiexibw==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="89929805"
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="89929805"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 12:10:41 -0800
X-CSE-ConnectionGUID: Pm8cVuRDRRWsO1iJlG6dgA==
X-CSE-MsgGUID: anzihroWSOiugZEtrcR11g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="196323103"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.194])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 12:10:39 -0800
Date: Tue, 9 Dec 2025 22:10:36 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Luca Coelho <luca@coelho.fi>
Cc: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/xe3p: add W/A to disable DC5/DC6 in certain
 scaler conditions
Message-ID: <aTiCPBexCQ9ZC0_j@intel.com>
References: <20251209125458.1105645-1-luciano.coelho@intel.com>
 <aTgiLJ9MWZTa44ZP@intel.com>
 <8927dc7edf0cf3a28bbd10760cdd6bdfe2e00ec8.camel@coelho.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8927dc7edf0cf3a28bbd10760cdd6bdfe2e00ec8.camel@coelho.fi>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Tue, Dec 09, 2025 at 03:58:55PM +0200, Luca Coelho wrote:
> On Tue, 2025-12-09 at 15:20 +0200, Ville Syrjälä wrote:
> > On Tue, Dec 09, 2025 at 02:54:42PM +0200, Luca Coelho wrote:
> > > In NVL-A0, a workaround is needed to prevent scaling problems when
> > > using scaler coefficients with DC5 and DC6.  In order to avoid this,
> > > the workaround needs to prevent the device from entering DC5 or DC6
> > > when programmable scaler coefficients are used.
> > > 
> > > Check for these conditions and hold a DC_OFF power domain wakeref to
> > > prevent entering DC5 and DC6 in these situations.
> > > 
> > > This patch implements Wa_16026694205.
> > > 
> > > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c  | 10 ++++++
> > >  .../drm/i915/display/intel_display_types.h    |  7 ++++
> > >  .../gpu/drm/i915/display/intel_display_wa.c   |  4 +++
> > >  .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
> > >  drivers/gpu/drm/i915/display/skl_scaler.c     | 35 +++++++++++++++++++
> > >  drivers/gpu/drm/i915/display/skl_scaler.h     |  5 +++
> > >  6 files changed, 62 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 9c6d3ecdb589..c3b19dd2ac56 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -7299,6 +7299,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
> > >  	struct intel_crtc_state *new_crtc_state =
> > >  		intel_atomic_get_new_crtc_state(state, crtc);
> > >  	unsigned int size = new_crtc_state->plane_color_changed ? 8192 : 1024;
> > > +	u32 ps_ctrl;
> > > +	int i;
> > >  
> > >  	if (!new_crtc_state->use_flipq &&
> > >  	    !new_crtc_state->use_dsb &&
> > > @@ -7384,6 +7386,14 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
> > >  	}
> > >  
> > >  	intel_dsb_finish(new_crtc_state->dsb_commit);
> > > +
> > > +	/* Wa_16026694205: check and re-enable DC5 if needed */
> > > +	for (i = 0; i < crtc->num_scalers; i++) {
> > > +		ps_ctrl = intel_de_read(display, SKL_PS_CTRL(crtc->pipe, i));
> > > +		if (intel_display_wa(display, 16026694205))
> > > +			wa_no_dc5_if_ps_filter_programmed(display, crtc,
> > > +							  ps_ctrl, false);
> > > +	}
> > >  }
> > >  
> > >  static void intel_atomic_commit_tail(struct intel_atomic_state *state)
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index 6ff53cd58052..8d4dbe46fa26 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1545,6 +1545,13 @@ struct intel_crtc {
> > >  	/* scalers available on this crtc */
> > >  	int num_scalers;
> > >  
> > > +	/*
> > > +	 * wakeref for Wa_16026694205 where we need to prevent DC5/DC6
> > > +	 * when using scaler coefficients (PS_CTRL_FILTER_SELECT is
> > > +	 * programmed).
> > > +	 */
> > > +	struct ref_tracker *wa_no_dc5_wakeref;
> > > +
> > >  	/* for loading single buffered registers during vblank */
> > >  	struct pm_qos_request vblank_pm_qos;
> > >  
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > > index a00af39f7538..9e4de69f4d58 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > > @@ -10,6 +10,7 @@
> > >  #include "intel_display_core.h"
> > >  #include "intel_display_regs.h"
> > >  #include "intel_display_wa.h"
> > > +#include "intel_step.h"
> > >  
> > >  static void gen11_display_wa_apply(struct intel_display *display)
> > >  {
> > > @@ -74,6 +75,9 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
> > >  		return display->platform.battlemage;
> > >  	case INTEL_DISPLAY_WA_14025769978:
> > >  		return DISPLAY_VER(display) == 35;
> > > +	case INTEL_DISPLAY_WA_16026694205:
> > > +		return (DISPLAY_VER(display) == 35 &&
> > > +			IS_DISPLAY_STEP(display, STEP_A0, STEP_A0));
> > 
> > This looks like a lot of  code to deal with a single broken
> > pre-production stepping. Assuming this is going to get fixed in
> > the hardware later (which seems to be the case according to the
> > HSD), then IMO we should simply not use the programmed coefficients
> > on that broken stepping.
> 
> That was my original thought too, I thought we wouldn't even need to
> upstream this and, only if really needed, we would add it to our
> internal tree.  But I was advised otherwise.

I think if we really need this for some reason then it should be done
at a fairly high level. Something like:
- scaler state compute sets some flag in crtc_state if we need to
  disable dc states
- enable/disable dc states from the {pre,post}_plane_update()
  when the flag changes

But I have a feeling it might all just be dead code we carry around
for a bit and then remove. And not using the programmable coefficients
would be a lot simpler (basically just don't expose the filter props).

> 
> 
> > That's assuming that we even care about this. The HSD fails to explain
> > what the lack of the retention will do to the sign bit. If it's simply
> > going to get reset to 0 then it'll be fine since we never used negative
> > coefficients anyway.
> 
> Okay, so any recommendation on how to proceed?

I'd try to find out what happens to the sign bit. If it always
comes back as zero then I don't think we need to do anything.
But if it can be corrupted in the other direction then we
need to deal with it somehow.

-- 
Ville Syrjälä
Intel
