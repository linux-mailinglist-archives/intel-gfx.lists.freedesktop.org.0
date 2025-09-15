Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41BA4B57B11
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Sep 2025 14:32:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D19FC10E473;
	Mon, 15 Sep 2025 12:32:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TuXC8GMi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D45F010E473;
 Mon, 15 Sep 2025 12:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757939536; x=1789475536;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=V5fi1DyJfi08R0alqS7mR2hmAt+tCabGqqeIN4xB3SA=;
 b=TuXC8GMir0TEUlkyjgFapNrWfqv+fC+vgY14FiZnLnOcnOneq5VKKC3h
 mg9Zt6KSjXHVFwIeYgw2jxOsTZAcQaAjOe4OEz5NHOtrEnAiNIccXLmQU
 l9LwkTm0IgkXAHVSQg12oHsPWarSDT/AdDb1OUeCNY5sEHXtD95uQbaj3
 28SfKHo8uwtAoBw70SQ3BfL2ADA8rO2Osa/8haBuEhHbojlLj9qXuZWtE
 pPsyrwLGHhmVaZzEhi49gcFE7M0qYWFbLVZso6+4Glm2t1+Qqah8EQhGQ
 HE/jaL471sgyO0SawFXUO1KgLAhV3XqF6VLyhn3rZBd7s+ie6ZHla5gF9 Q==;
X-CSE-ConnectionGUID: hJH16QfGSIGbCET5ZR8AIw==
X-CSE-MsgGUID: 5Gsldm99Szm8v+I6A2FJrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="64008912"
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="64008912"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 05:32:15 -0700
X-CSE-ConnectionGUID: FDxW3zlpRzyumqJx/Kn0ow==
X-CSE-MsgGUID: 9LGgDWQ7RW+FAUfYeuVhUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="173758348"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.90])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 05:32:14 -0700
Date: Mon, 15 Sep 2025 15:32:11 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 11/15] drm/i915/display: Use vrr.guardband to derive
 vblank_start
Message-ID: <aMgHS992-0aZ8FIb@intel.com>
References: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
 <20250911024554.692469-12-ankit.k.nautiyal@intel.com>
 <aMLb17oJa__bPVoA@intel.com>
 <f4fb8190-668f-4692-a610-9d7015130ba6@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f4fb8190-668f-4692-a610-9d7015130ba6@intel.com>
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

On Sun, Sep 14, 2025 at 11:29:10AM +0530, Nautiyal, Ankit K wrote:
> 
> On 9/11/2025 7:55 PM, Ville Syrjälä wrote:
> > On Thu, Sep 11, 2025 at 08:15:50AM +0530, Ankit Nautiyal wrote:
> >> When VRR TG is always enabled and an optimized guardband is used, the pipe
> >> vblank start is derived from the guardband.
> >> Currently TRANS_SET_CONTEXT_LATENCY is programmed with crtc_vblank_start -
> >> crtc_vdisplay, which is ~1 when guardband matches the vblank length.
> >> With shorter guardband this become a large window.
> >>
> >> To avoid misprogramming TRANS_SET_CONTEXT_LATENCY, clamp the scl value to 1
> >> when using optimized guardband.
> >>
> >> Also update the VRR get config logic to set crtc_vblank_start based on
> >> vtotal - guardband, during readback.
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_display.c | 36 ++++++++++++++++----
> >>   drivers/gpu/drm/i915/display/intel_vrr.c     |  9 ++++-
> >>   2 files changed, 38 insertions(+), 7 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> >> index 55bea1374dc4..73aec6d4686a 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> @@ -2638,6 +2638,30 @@ transcoder_has_vrr(const struct intel_crtc_state *crtc_state)
> >>   	return HAS_VRR(display) && !transcoder_is_dsi(cpu_transcoder);
> >>   }
> >>   
> >> +static int intel_set_context_latency(const struct intel_crtc_state *crtc_state,
> >> +				     int crtc_vblank_start,
> >> +				     int crtc_vdisplay)
> >> +{
> >> +	struct intel_display *display = to_intel_display(crtc_state);
> >> +
> >> +	/*
> >> +	 * When VRR TG is always on and optimized guardband is used,
> >> +	 * the pipe vblank start is based on the guardband,
> >> +	 * TRANS_SET_CONTEXT_LATENCY cannot be used to configure it.
> >> +	 */
> >> +	if (intel_vrr_always_use_vrr_tg(display))
> >> +		return clamp(crtc_vblank_start - crtc_vdisplay, 0, 1);
> > What are you trying to achieve with this? As in what problem are you
> > seeing with the current SCL programming?
> 
> In VRR TG mode with optimized guardband, the guardband is shortened and 
> vblank start is moved to match the delayed vblank position.
> 
> The SCL value which we are currently writing as difference between 
> delayed vblank and undelayed vblank becomes quite large.
> 
> With this large SCL, the flipline decision boundary which is given by 
> delayed vblank start and SCL lines is same as the undelayed vblank.

Everything should match the undelayed vblank.

> 
> It seems that intel_dsb_wait_vblank_delay() (in turn 
> intel_dsb_wait_usec()) does not behave correctly within the W2 window 
> (between flipdone decision boundary and delayed vblank start).
> 
> It seems to return prematurely. Since the push bit hasn’t cleared yet, 
> this leads to DSB poll errors.

That doesn't make any sense. That command is supposed to simply wait
for the specifid number of microseconds. It should not care at all
what is happening with the scanout. If that is not the case then we
need to write a synthetic test to reproduce it, and report the
problem to the hardware folks.

> AFAIU we are not using the SCL (Set Context Latency) lines to write 
> registers via DSB.
> 
> The evasion logic ensures we write within a separate window, making the 
> actual SCL value less critical for register programming.
> 
> So I have clamped the SCL value to (0,1). With this after the push is 
> sent the send push bit is cleared after (0,1) lines.
> 
> But we still need to wait for the delayed vblank. For this we need 
> either intel_dsb_wait_vblank_delay() or dsb_wait_for_scanline_in().
> 
> 
> Do you have any ideas, what could have been going wrong or if anything 
> we might have been missing?

Was your crtc_vblank_start even correct (== undelayed vblank)
when you were testing that?

-- 
Ville Syrjälä
Intel
