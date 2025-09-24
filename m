Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC21CB993C8
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 11:49:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD5EF10E6C9;
	Wed, 24 Sep 2025 09:49:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RAC+i7fi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9521710E22B;
 Wed, 24 Sep 2025 09:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758707385; x=1790243385;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MjiJHtW59JI1Gj9g3PgVYcqja9tmaNrXkUwRWCb0r4U=;
 b=RAC+i7fiOcIAjD9d/y3p36w4BPPDoUy0PRb5VNYvRZXMMR9PKfBcTA4T
 w/53XKd0UEqDnwYpNg2boTehvNSqPWObWcp0tXpJeEkFd4MOk8pMb4xPK
 Y+DGdiR0nbsiz3OsqmXfMueDJ8mEJwbxwQOtTFZxpJuRVHA0XvzHBupQQ
 L42MsStT27anznQlhe7f6ARlHb5Mz/a5Zg5FYwg+2/xY5rVqXeSAQcl9X
 xRugnweArFOKQon+qSGcOYCvAViuZryX60X9ISO8sEIMK+nun9vF9wruK
 D51uZ4KcZFcShrrASjZ7DkXVNl3cKzR7fr4eJS/U0XzjP3PJ06FHVNopd w==;
X-CSE-ConnectionGUID: DEhIznwCRDSBGgL0ly+CWw==
X-CSE-MsgGUID: e0V9WqE8QPCtkXVFE0Bpmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="78628826"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="78628826"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 02:49:44 -0700
X-CSE-ConnectionGUID: 1xO8xAMhR0OFuhpp/PsdxA==
X-CSE-MsgGUID: 6gNQFy/cQU+04DlpWXhzdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="207928277"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.144])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 02:49:43 -0700
Date: Wed, 24 Sep 2025 12:49:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 5/9] drm/i915/vrr:
 s/intel_vrr_vblank_delay/intel_vrr_scl_delay
Message-ID: <aNO-tA8hwlqBbNVb@intel.com>
References: <20250923131043.2628282-1-ankit.k.nautiyal@intel.com>
 <20250923131043.2628282-6-ankit.k.nautiyal@intel.com>
 <aNKrC6CZmNZ2u-rH@intel.com>
 <42504659-11d1-416e-99fc-2e62bd165e4b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <42504659-11d1-416e-99fc-2e62bd165e4b@intel.com>
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

On Wed, Sep 24, 2025 at 03:03:39PM +0530, Nautiyal, Ankit K wrote:
> 
> On 9/23/2025 7:43 PM, Ville Syrjälä wrote:
> > On Tue, Sep 23, 2025 at 06:40:39PM +0530, Ankit Nautiyal wrote:
> >> The helper intel_vrr_vblank_delay() is used to account for scl lines
> >> + extra_vblank_delay (for ICL/TGL case) for:
> >> - evasion logic for vrr case
> >> - to wait for SCL+ lines after send push operation.
> >>
> >> Rename the helper to intel_vrr_scl_delay since we are interested in the
> >> SCL+ lines for the VRR cases.
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_dsb.c    | 4 ++--
> >>   drivers/gpu/drm/i915/display/intel_vblank.c | 2 +-
> >>   drivers/gpu/drm/i915/display/intel_vrr.c    | 2 +-
> >>   drivers/gpu/drm/i915/display/intel_vrr.h    | 2 +-
> >>   4 files changed, 5 insertions(+), 5 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> >> index dee44d45b668..ca31e928ecb0 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> >> @@ -128,7 +128,7 @@ static int dsb_vblank_delay(struct intel_atomic_state *state,
> >>   		 * scanline until the delayed vblank occurs after
> >>   		 * TRANS_PUSH has been written.
> >>   		 */
> >> -		return intel_vrr_vblank_delay(crtc_state) + 1;
> >> +		return intel_vrr_scl_delay(crtc_state) + 1;
> > I'd skip this renaming for now. I think after you've added the
> > safe window scanline wait you can replace all of these with
> > crtc_state->set_context_latency.
> 
> Hmm alright. I will drop this patch.
> 
> But the intel_vrr_vblank_delay() is now just 
> crtc_state->set_context_latency + intel_vrr_extra_vblank_delay().
> 
> Do you mean we don't need intel_vrr_extra_vblank_delay()?
> 
> Perhaps you are right, with the wait for vmin safe window to end, will 
> leave only SCL lines before delayed vblank.
> 
> So the one extra scanline which gets inserted for ICL/TGL will be 
> counted in the wait for safe window.

Exactly. That icl/tgl quirk is functionally identical to
just reducing the guardband by one line on ADL+, and thus
both will be covered by the safe window wait.

> 
> 
> >
> >>   	else
> >>   		return intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
> >>   }
> >> @@ -723,7 +723,7 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
> >>   		intel_dsb_emit_wait_dsl(dsb, DSB_OPCODE_WAIT_DSL_OUT, 0, 0);
> >>   
> >>   	if (pre_commit_is_vrr_active(state, crtc)) {
> >> -		int vblank_delay = intel_vrr_vblank_delay(crtc_state);
> >> +		int vblank_delay = intel_vrr_scl_delay(crtc_state);
> >>   
> >>   		end = intel_vrr_vmin_vblank_start(crtc_state);
> >>   		start = end - vblank_delay - latency;
> >> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> >> index c15234c1d96e..9441b7bacd27 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> >> @@ -681,7 +681,7 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
> >>   		else
> >>   			evade->vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
> >>   
> >> -		vblank_delay = intel_vrr_vblank_delay(crtc_state);
> >> +		vblank_delay = intel_vrr_scl_delay(crtc_state);
> > I was pondering about this case especially, but I *think* it should
> > also be changed to crtc_state->set_context_latency. We don't want to
> > perform the commit while in the SCL here because then we're not in
> > the safe window and the DSB we use for LUT updates wouldn't start
> > until the next safe window starts (== next frame's vactive), whereas
> > the double buffered registers would latch already in the upcoming
> > delayed vblank.
> >
> > But performing the commit while we're between undelayed vblank
> > and SCL start should be fine since that is part of the safe
> > window. So we don't need to evade the actual undelayed vblank
> > when in VRR mode.
> >
> > The only exception here would be the LRR and M/N cases since those
> > perhaps still need to evade the undlayed vblank proper. But we always
> > drop out of VRR mode for those types of updates so they won't be
> > taking this codepath anyway.
> 
> Hmm ok so replacing intel_vrr_vblank_delay with 
> crtc_state->set_context_latency will work for both:
> 
> -the wait before push clear and
> 
> -the evasion case
> 
> So will add a last patch to just use crtc_state->set_context wherever we 
> are using intel_vrr_vblank_delay then.

ack

-- 
Ville Syrjälä
Intel
