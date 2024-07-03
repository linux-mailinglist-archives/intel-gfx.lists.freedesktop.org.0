Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1724D92601B
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2024 14:20:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5A4310E1F7;
	Wed,  3 Jul 2024 12:20:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XqUKnEL+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 537B410E1F7
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2024 12:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720009223; x=1751545223;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Bsr8lCeU8BYbWyIBE38F4B3coVdSESHKPgjzhlXC/ig=;
 b=XqUKnEL+AbyTa+9dVkHUQBjMwRsXDXCgF/rfajaTQI+BXbmA9w44wGMW
 JObEBKkh3emqXlkXeRVix+iIUwzQpurqoPc3QhCDzeVlj0LiFjNORdpu4
 wglEq0CbnI7I40B5zbrdT86RRFN6WPS6IUtBFVJMW4ydTxje/EDGkzT7w
 WIyMQzRdDL7G3BjVGQRuwLT30wYxp8SOpSyzBbW3picgpCxFOw5Ujy92u
 89NpXQ46YjUfzEGwrxoQsMc6TfIuGDLq6+YZrQmq/uOcvngDKb6eKBmhM
 fuhHBYDy+Q7oS9M8M2oJLeGhE9DnCMjZ0yt+KZz2wnAGJMpdzR9+6qLGh Q==;
X-CSE-ConnectionGUID: +x+b8yKoTQuZR0VrvpHmoA==
X-CSE-MsgGUID: Vx9dS+NCQLSFipUjwLzFjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="17070508"
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="17070508"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 05:20:23 -0700
X-CSE-ConnectionGUID: DlIRR+9jTymgvE+EiQucGg==
X-CSE-MsgGUID: NuqASVkUTHC189cjxxY1nA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="46213571"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 Jul 2024 05:20:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 03 Jul 2024 15:20:19 +0300
Date: Wed, 3 Jul 2024 15:20:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 10/14] drm/i915/dsb: Introduce intel_dsb_chain()
Message-ID: <ZoVCAxHLvC_D9N1M@intel.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-11-ville.syrjala@linux.intel.com>
 <PH7PR11MB59816D24912D1E83CC8B4CF6F9DD2@PH7PR11MB5981.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <PH7PR11MB59816D24912D1E83CC8B4CF6F9DD2@PH7PR11MB5981.namprd11.prod.outlook.com>
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

On Wed, Jul 03, 2024 at 12:10:38PM +0000, Manna, Animesh wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Tuesday, June 25, 2024 12:40 AM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH 10/14] drm/i915/dsb: Introduce intel_dsb_chain()
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > In order to handle the DEwake tricks without involving the CPU we need a
> > mechanism by which one DSB can start another one. Add a basic function to
> > do so. We'll extend it later with additional code to actually deal with DEwake.
> 
> Is chained DSB concept restricting to only 2 DSB instance or can be extended to available/max DSB instances? 
> 
> Are we exposing full chain of DSB to user or can be restrict to primary DSB which will control other instances?

You can start any DSB from any other DSB.

> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dsb.c | 42 ++++++++++++++++++++++++
> > drivers/gpu/drm/i915/display/intel_dsb.h |  3 ++
> >  2 files changed, 45 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> > b/drivers/gpu/drm/i915/display/intel_dsb.c
> > index 092cf082ac39..4c0519c41f16 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > @@ -502,6 +502,48 @@ static u32 dsb_error_int_en(struct intel_display
> > *display)
> >  	return errors;
> >  }
> > 
> > +static void _intel_dsb_chain(struct intel_atomic_state *state,
> > +			     struct intel_dsb *dsb,
> > +			     struct intel_dsb *chained_dsb,
> > +			     u32 ctrl)
> 
> I do not see any usage of ctrl variable in this patch, maybe good to add wherever will be using it.

It's in the next patch.

> 
> Regards,
> Animesh
> > +{
> > +	struct intel_display *display = to_intel_display(state->base.dev);
> > +	struct intel_crtc *crtc = dsb->crtc;
> > +	enum pipe pipe = crtc->pipe;
> > +	u32 tail;
> > +
> > +	if (drm_WARN_ON(display->drm, dsb->id == chained_dsb->id))
> > +		return;
> > +
> > +	tail = chained_dsb->free_pos * 4;
> > +	if (drm_WARN_ON(display->drm, !IS_ALIGNED(tail,
> > CACHELINE_BYTES)))
> > +		return;
> > +
> > +	intel_dsb_reg_write(dsb, DSB_CTRL(pipe, chained_dsb->id),
> > +			    ctrl | DSB_ENABLE);
> > +
> > +	intel_dsb_reg_write(dsb, DSB_CHICKEN(pipe, chained_dsb->id),
> > +			    dsb_chicken(state, crtc));
> > +
> > +	intel_dsb_reg_write(dsb, DSB_INTERRUPT(pipe, chained_dsb->id),
> > +			    dsb_error_int_status(display) |
> > DSB_PROG_INT_STATUS |
> > +			    dsb_error_int_en(display));
> > +
> > +	intel_dsb_reg_write(dsb, DSB_HEAD(pipe, chained_dsb->id),
> > +			    intel_dsb_buffer_ggtt_offset(&chained_dsb-
> > >dsb_buf));
> > +
> > +	intel_dsb_reg_write(dsb, DSB_TAIL(pipe, chained_dsb->id),
> > +			    intel_dsb_buffer_ggtt_offset(&chained_dsb-
> > >dsb_buf) + tail); }
> > +
> > +void intel_dsb_chain(struct intel_atomic_state *state,
> > +		     struct intel_dsb *dsb,
> > +		     struct intel_dsb *chained_dsb)
> > +{
> > +	_intel_dsb_chain(state, dsb, chained_dsb,
> > +			 0);
> > +}
> > +
> >  static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
> >  			      int hw_dewake_scanline)
> >  {
> > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h
> > b/drivers/gpu/drm/i915/display/intel_dsb.h
> > index d0737cefb393..e59fd7da0fc0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dsb.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
> > @@ -45,6 +45,9 @@ void intel_dsb_wait_scanline_in(struct
> > intel_atomic_state *state,  void intel_dsb_wait_scanline_out(struct
> > intel_atomic_state *state,
> >  				 struct intel_dsb *dsb,
> >  				 int lower, int upper);
> > +void intel_dsb_chain(struct intel_atomic_state *state,
> > +		     struct intel_dsb *dsb,
> > +		     struct intel_dsb *chained_dsb);
> > 
> >  void intel_dsb_commit(struct intel_dsb *dsb,
> >  		      bool wait_for_vblank);
> > --
> > 2.44.2
> 

-- 
Ville Syrjälä
Intel
