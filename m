Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32707B90549
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 13:19:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5F7810E423;
	Mon, 22 Sep 2025 11:19:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kYqaXYNF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 322B110E423;
 Mon, 22 Sep 2025 11:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758539984; x=1790075984;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Jae3MMLYwMA3jfYveQy9/V9SYqnNFPGUa+2hpyJdj+k=;
 b=kYqaXYNF7mORGDuw4E/mY/6oqz3qMepIfeSUnAD8Ir/Prrn2wOezDZ9d
 3HQ3nJze8B01Fh9nhQa8KTGFL/ozX0ksd8fXRbUcQWJouxnKcxUi0Erti
 Ro3Cdfa5gLdKJrRqmeBJhLqxFIKHd3fqmi2ymwufJ2mZVr0Le7qH3bkrO
 oot50XjPBHqB17/v+dPjTfp9NW2uVg3GEfWEB0e+bH1XZG5rEFQpulyyy
 NN8nIwW+d72OpMUq+xHWX6v6y8E9uUIpPt7xQA6LCX4IDLLTyylSmgS1H
 rfrS9wgxx6eDJ+IZxQv80A6aLk3mOOyQwNaDypx11kS38icmgEcfPplTa A==;
X-CSE-ConnectionGUID: /dnWIbT1SqiIdB1hgW6VJA==
X-CSE-MsgGUID: EG5BhXtsS8eWUO+11buUAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11560"; a="59839438"
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="59839438"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 04:19:44 -0700
X-CSE-ConnectionGUID: lDLdwDFtQyuGknt/fqiflQ==
X-CSE-MsgGUID: TgFYQtrQQi+/I8B5S1lmdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="177235021"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.115])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 04:19:42 -0700
Date: Mon, 22 Sep 2025 14:19:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 6/9] drm/i915/display: Use set context latency in evasion
 logic
Message-ID: <aNEwywBIvZAhqadB@intel.com>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
 <20250921043535.2012978-7-ankit.k.nautiyal@intel.com>
 <aNEiXtXdiEXSxGCn@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aNEiXtXdiEXSxGCn@intel.com>
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

On Mon, Sep 22, 2025 at 01:18:06PM +0300, Ville Syrjälä wrote:
> On Sun, Sep 21, 2025 at 10:05:32AM +0530, Ankit Nautiyal wrote:
> > Currently we use difference between vactive and vblank delay to
> > implicitly wait for SCL lines.
> > 
> > Remove the function intel_mode_vblank_delay as we can simply use
> > the set context latency instead.
> > 
> > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dsb.c    | 4 ++--
> >  drivers/gpu/drm/i915/display/intel_vblank.c | 7 +------
> >  drivers/gpu/drm/i915/display/intel_vblank.h | 1 -
> >  3 files changed, 3 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> > index ca31e928ecb0..dfe928aefdcd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > @@ -130,7 +130,7 @@ static int dsb_vblank_delay(struct intel_atomic_state *state,
> >  		 */
> >  		return intel_vrr_scl_delay(crtc_state) + 1;
> >  	else
> > -		return intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
> > +		return crtc_state->set_context_latency;
> 
> I think we want to leave all the non-VRR cases to use
> intel_mode_vblank_delay(). Otherwise when running with fixed
> refresh rate we won't account for a reduced guardband.
> 
> And for the cases where the fixed refresh rate is handle by the legacy
> timing generator we actually need a slightly different delay for the
> legacy and VRR timing generators on TGL (due to
> intel_vrr_extra_vblank_delay() only affecting the VRR timing generator).

Just to elaborate on this, I am thinking that adjusted_mode.crtc_vblank_start
should *always* match the delayed vblank for the fixed refresh rate timings.

So I am envisioning the following rules:

always_use_vrr_tg():
	crtc_vblank_start should reflect the undelayed vblank
	for the VRR TG fixed refresh rate case (ie. fixed_rr_vtotal - guardband).
	This should in fact be the same for both the VRR timings and fixed
	RR timings because the vmin and guardband should be the same for both.

!always_use_vrr_tg()
	crtc_vblank_start should reflect the undelayed vblank
	for the legacy TG (ie. vactive + SCL). The VRR timing
	generator's vblank can be different here due to reduced
	guardband.

This is rather important when we're doing a full modeset and userspace
has already requested vrr.enable=true. The actual modeset part will be
excuted while still running with the fixed refresh rate timings (either
using VRR TG or legacy TG depending on always_use_vrr_tg()). So the
vblank evasion prior to commit_arm() will need to know the correct
position of the delayed vblank for the fixed RR timings. We will then
switch over to the VRR timings (and possibly to the other timing
generator) during the actul commit.

This also means that intel_mode_vblank_delay() will always give us
the total delay betweern the undelayed vblank and delayed vblank for
the fixed RR timings. And this is exactly what we want
for eg. intel_dsb_wait_vblank_delay() since we will have configured
DSB_CHICKEN to use the undelayed vblank (as opposed to safe window)
and thus intel_dsb_wait_vblanks()/DSB_WAIT_FOR_VBLANK will wait for
the undelayed vblank.

> 
> >  }
> >  
> >  static int dsb_vtotal(struct intel_atomic_state *state,
> > @@ -733,7 +733,7 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
> >  		start = end - vblank_delay - latency;
> >  		intel_dsb_wait_scanline_out(state, dsb, start, end);
> >  	} else {
> > -		int vblank_delay = intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
> > +		int vblank_delay = crtc_state->set_context_latency;
> >  
> >  		end = intel_mode_vblank_start(&crtc_state->hw.adjusted_mode);
> >  		start = end - vblank_delay - latency;
> > diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> > index 9441b7bacd27..8c4cb6913ef9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> > @@ -619,11 +619,6 @@ int intel_mode_vtotal(const struct drm_display_mode *mode)
> >  	return vtotal;
> >  }
> >  
> > -int intel_mode_vblank_delay(const struct drm_display_mode *mode)
> > -{
> > -	return intel_mode_vblank_start(mode) - intel_mode_vdisplay(mode);
> > -}
> > -
> >  static const struct intel_crtc_state *
> >  pre_commit_crtc_state(const struct intel_crtc_state *old_crtc_state,
> >  		      const struct intel_crtc_state *new_crtc_state)
> > @@ -685,7 +680,7 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
> >  	} else {
> >  		evade->vblank_start = intel_mode_vblank_start(adjusted_mode);
> >  
> > -		vblank_delay = intel_mode_vblank_delay(adjusted_mode);
> > +		vblank_delay = crtc_state->set_context_latency;
> >  	}
> >  
> >  	/* FIXME needs to be calibrated sensibly */
> > diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
> > index 21fbb08d61d5..0fd6f7aeffd4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vblank.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vblank.h
> > @@ -25,7 +25,6 @@ int intel_mode_vdisplay(const struct drm_display_mode *mode);
> >  int intel_mode_vblank_start(const struct drm_display_mode *mode);
> >  int intel_mode_vblank_end(const struct drm_display_mode *mode);
> >  int intel_mode_vtotal(const struct drm_display_mode *mode);
> > -int intel_mode_vblank_delay(const struct drm_display_mode *mode);
> >  
> >  void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
> >  			     const struct intel_crtc_state *new_crtc_state,
> > -- 
> > 2.45.2
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
