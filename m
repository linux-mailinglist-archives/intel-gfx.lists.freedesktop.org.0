Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC4CA48A40
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 22:05:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C68410E009;
	Thu, 27 Feb 2025 21:05:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VVCh4E+c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D67710E009;
 Thu, 27 Feb 2025 21:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740690332; x=1772226332;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=YhM67tT+3xYQfL3czq5NrG4k/rmQs0QXGv3dlXpZlBw=;
 b=VVCh4E+cgRKBAcy+6fBS/amqGOEGvX2txu/clLKi5wCs0SAxOaktEaCJ
 Svoq3XIixLgtfdb/K4bSt1EojdCh+0KJgOgSlGl+1CKWAF/viEsKVLZme
 y7+uRVaJwmyYCSA+frxDdsSL59KO2CoMfuto6c/KGx/eyfi9FuBpclXEQ
 phDcaCxi7cPDYktu52u3J13BB/1A2E0tNgXqQbdchdyHn2Z68V3HcO7TC
 fPvmwiwDv+qLQTkmgDOLP6NEjzsfSOlzLQeUc06oXlI4TKYVtwQURUQtv
 jZ09Vktf4uON/1AdMVu44odyirpvjDyWWtFNjBISQkxiB+XcAA13bIZJO A==;
X-CSE-ConnectionGUID: ArR/JXRpTmKumWnQ7fTAsw==
X-CSE-MsgGUID: K3JtyzOETwOEKaZm3dRhOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="40846991"
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="40846991"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 13:05:32 -0800
X-CSE-ConnectionGUID: pcUwLOjdSdW4aJtUs+qb1w==
X-CSE-MsgGUID: QNCCq4aHRG2iUUFfUz/95g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="122368785"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 27 Feb 2025 13:05:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Feb 2025 23:05:28 +0200
Date: Thu, 27 Feb 2025 23:05:28 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 18/20] drm/i915/vrr: Use fixed timings for platforms that
 support VRR
Message-ID: <Z8DTmGHA4qptFxjG@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-19-ankit.k.nautiyal@intel.com>
 <Z78vB6J2BWXvXhPK@intel.com>
 <844651a6-372d-4a1f-8772-e947d61a8559@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <844651a6-372d-4a1f-8772-e947d61a8559@intel.com>
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

On Thu, Feb 27, 2025 at 04:31:28PM +0530, Nautiyal, Ankit K wrote:
> 
> On 2/26/2025 8:41 PM, Ville Syrjälä wrote:
> > On Mon, Feb 24, 2025 at 11:47:15AM +0530, Ankit Nautiyal wrote:
> >> For fixed refresh rate use fixed timings for all platforms that support
> >> VRR. For this add checks to avoid computing and reading VRR for
> >> platforms that do not support VRR.
> >> For platforms that do support VRR, readback vrr timings whether or not
> >> VRR_CTL_FLIP_LINE_EN is set in VRR_CTL or not.
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_vrr.c | 43 ++++++++++++------------
> >>   1 file changed, 22 insertions(+), 21 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> >> index 551dcc16f0d4..975fed9930c1 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> >> @@ -344,6 +344,9 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
> >>   	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> >>   	int vmin = 0, vmax = 0;
> >>   
> >> +	if (!HAS_VRR(display))
> >> +		return;
> >> +
> >>   	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
> >>   		return;
> >>   
> >> @@ -358,9 +361,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
> >>   
> >>   	vmin = intel_vrr_compute_vmin(crtc_state);
> >>   
> >> -	if (vmin >= vmax)
> >> -		return;
> >> -
> >>   	crtc_state->vrr.vmin = vmin;
> >>   	crtc_state->vrr.vmax = vmax;
> > I think your earlier pathc left vmax==0 here for the !in_range so
> > this looks a bit wrong. But if you change the earlier patch like I
> > suggested to set vmax=vmin then this would be fine.
> 
> Right, will set the vmax=vmin, as discussed in the earlier patch.
> 
> 
> >
> >>   
> >> @@ -373,7 +373,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
> >>   	 */
> >>   	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
> >>   
> >> -	if (crtc_state->uapi.vrr_enabled)
> >> +	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
> >>   		intel_vrr_compute_vrr_timings(crtc_state);
> >>   	else if (is_cmrr_frac_required(crtc_state) && is_edp)
> >>   		intel_vrr_compute_cmrr_timings(crtc_state);
> >> @@ -640,6 +640,9 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
> >>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> >>   	u32 trans_vrr_ctl, trans_vrr_vsync;
> >>   
> >> +	if (!HAS_VRR(display))
> >> +		return;
> > I think the caller is already checking that. But I suppose we could
> > move the checks into the VRR code.
> >
> >> +
> >>   	trans_vrr_ctl = intel_de_read(display,
> >>   				      TRANS_VRR_CTL(display, cpu_transcoder));
> >>   
> >> @@ -663,23 +666,21 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
> >>   			crtc_state->vrr.pipeline_full =
> >>   				REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, trans_vrr_ctl);
> >>   
> >> -	if (trans_vrr_ctl & VRR_CTL_FLIP_LINE_EN) {
> >> -		crtc_state->vrr.flipline = intel_de_read(display,
> >> -							 TRANS_VRR_FLIPLINE(display, cpu_transcoder)) + 1;
> >> -		crtc_state->vrr.vmax = intel_de_read(display,
> >> -						     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
> >> -		crtc_state->vrr.vmin = intel_de_read(display,
> >> -						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
> >> -
> >> -		if (HAS_AS_SDP(display)) {
> >> -			trans_vrr_vsync =
> >> -				intel_de_read(display,
> >> -					      TRANS_VRR_VSYNC(display, cpu_transcoder));
> >> -			crtc_state->vrr.vsync_start =
> >> -				REG_FIELD_GET(VRR_VSYNC_START_MASK, trans_vrr_vsync);
> >> -			crtc_state->vrr.vsync_end =
> >> -				REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
> >> -		}
> > I think you want to keep the VRR_CTL_FLIP_LINE_EN check around the
> > TRANS_VRR_FLIPLINE read at least, because we want the state checker
> > to catch any misprogrammng of VRR_CTL_FLIP_LINE_EN.
> 
> Alright, will remove this change.
> 
> 
> There is one more thing I wanted your opinion on:
> 
> For PTL+, the support for TRANS_VTOTAL.Vtotal bits is going away.

Aren't we still using the legacy timing gnerator currently on ptl?
I think I did manage to run upstream code on a ptl somehwat 
succesfully, and I don't remeber any state checker warns or other
real problems (which I would expect to happen if we don't have a
working vtotal programmed in).

> I can 
> skip writing it based on the intel_vrr_always_use_vrr_tg(), but how 
> should I fill adjusted_mode->crtc_vtotal during readout?
> 
> Can we use vrr.vmin for that? Or should we just remove the state checker 
> for crtc_vtotal for platforms where this applies?

I think reading it out from VMIN would be the way to go. Otherwise
we'd have to somehow stop using crtc_vtotal everywhere and that sounds
like a lot of work.

> 
> I am intending to include this change as the last patch of the series.
> 
> Thanks again for all the reviews and suggestions.
> 
> 
> Regards,
> 
> Ankit
> 
> 
> >
> >> +	crtc_state->vrr.flipline = intel_de_read(display,
> >> +						 TRANS_VRR_FLIPLINE(display, cpu_transcoder)) + 1;
> >> +	crtc_state->vrr.vmax = intel_de_read(display,
> >> +					     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
> >> +	crtc_state->vrr.vmin = intel_de_read(display,
> >> +					     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
> >> +
> >> +	if (HAS_AS_SDP(display)) {
> >> +		trans_vrr_vsync =
> >> +			intel_de_read(display,
> >> +				      TRANS_VRR_VSYNC(display, cpu_transcoder));
> >> +		crtc_state->vrr.vsync_start =
> >> +			REG_FIELD_GET(VRR_VSYNC_START_MASK, trans_vrr_vsync);
> >> +		crtc_state->vrr.vsync_end =
> >> +			REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
> >>   	}
> >>   
> >>   	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
> >> -- 
> >> 2.45.2

-- 
Ville Syrjälä
Intel
