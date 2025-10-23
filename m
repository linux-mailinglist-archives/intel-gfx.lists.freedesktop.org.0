Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECF7C02995
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 18:57:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57AA510E937;
	Thu, 23 Oct 2025 16:57:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZN1QE3U0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A20E610E934;
 Thu, 23 Oct 2025 16:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761238642; x=1792774642;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ozakSo3N2BNuRkSSEzSlrn3AqAAFpTpxU3KnCVFGjrA=;
 b=ZN1QE3U0YAe5OJ3YIdd0B+q2ZZnA95Q1Pa3YBS3brHApMTeUtmve+V+9
 kWhZOvZTZwoqr0RoP+/K7UcsO880b6uzBhKOmxd9Hz229D8bswi7vn1jG
 9++JVLCWe1lpp1V4vSsgdcSxXuhB4H/7dZyRHsn0wT2iNvrVoINgC9ur+
 ObjE2XPYQtdx84RQYiTa8ho5vT2YELCVRb7ldbhIXitWyv95YC2OksUfO
 kLh31YYJjvTW5Gh9TxUkLrALGo96pPRP5X0oLlD1I4GTHBC35MzVNcqCq
 +nOW135SNuZd9+cKYFP8mfK7w4AnmTVur9oWmVJ+SAFJuiXEy6XHZoJXn Q==;
X-CSE-ConnectionGUID: TMD3ym1BQiyirUyQF5t9RA==
X-CSE-MsgGUID: KfadpAkrTP6QAgoPA6Oe/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="81042560"
X-IronPort-AV: E=Sophos;i="6.19,250,1754982000"; d="scan'208";a="81042560"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 09:57:21 -0700
X-CSE-ConnectionGUID: ddaLC//lSjucJLyYHxoqCA==
X-CSE-MsgGUID: v+ikGjKwR6ayc1zGc9bwNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,250,1754982000"; d="scan'208";a="183381896"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.153])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 09:57:20 -0700
Date: Thu, 23 Oct 2025 19:57:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com
Subject: Re: [PATCH] drm/i915/vrr: Fix transmission line for Adaptive Sync SDP
Message-ID: <aPpebBQsbjQOfuGo@intel.com>
References: <20251023081614.2645242-1-ankit.k.nautiyal@intel.com>
 <aPoZ05jth8oGvoGk@intel.com>
 <b7971dfc-2c75-4a33-ba91-5a2d30339b35@intel.com>
 <aPo-STwN09z7qnFB@intel.com>
 <fb3a74ae-5b57-477e-8681-11d0ee10747b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fb3a74ae-5b57-477e-8681-11d0ee10747b@intel.com>
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

On Thu, Oct 23, 2025 at 08:37:14PM +0530, Nautiyal, Ankit K wrote:
> 
> On 10/23/2025 8:10 PM, Ville Syrjälä wrote:
> > On Thu, Oct 23, 2025 at 05:57:02PM +0530, Nautiyal, Ankit K wrote:
> >> On 10/23/2025 5:34 PM, Ville Syrjälä wrote:
> >>> On Thu, Oct 23, 2025 at 01:46:14PM +0530, Ankit Nautiyal wrote:
> >>>> Currently the EMP_AS_SDP_TL is set to vrr.vsync_start which is
> >>>> incorrect.
> >>>>
> >>>> As per Bspec:71197 the transmission line must be within the SCL +
> >>>> guardband region. Before guardband optimization, guradband was same as
> >>>> vblank length so EMP_AS_SDP_TL set with vrr.sync_start was falling in
> >>>> this region and it was not giving an issue.
> >>>>
> >>>> Now with optimized guardband, this is falling outside the SCL +
> >>>> guardband region and since the same transmission line is used by VSC SDP
> >>>> also, this results in PSR timeout issues.
> >>>>
> >>>> Further restrictions on the position of the transmission line:
> >>>> For DP/eDP, if there is a set context latency (SCL) window, then it
> >>>> cannot be the first line of SCL
> >>>> For DP/eDP, if there is no SCL window, then it cannot be the first line of
> >>>> the Delayed V. Blank
> >>>>
> >>>> Fix the EMP_AS_SDP_TL to VTOTAL - (delayed vblank_start - SCL + 1)
> >>>> Internally the HW computes the value as VTOTAL - EMP_AS_SDP_TL.
> >>>>
> >>>> Fixes: e1123e617e51 ("drm/i915/vrr: Program EMP_AS_SDP_TL for DP AS SDP")
> >>>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >>>> Cc: Jouni Högander <jouni.hogander@intel.com>
> >>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >>>> ---
> >>>>    drivers/gpu/drm/i915/display/intel_vrr.c | 12 +++++++++---
> >>>>    1 file changed, 9 insertions(+), 3 deletions(-)
> >>>>
> >>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> >>>> index 92fb72b56f16..dd81d2133aba 100644
> >>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> >>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> >>>> @@ -655,18 +655,24 @@ void intel_vrr_set_db_point_and_transmission_line(const struct intel_crtc_state
> >>>>    {
> >>>>    	struct intel_display *display = to_intel_display(crtc_state);
> >>>>    	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> >>>> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> >>>> +	int transmission_line;
> >>>>    
> >>>>    	/*
> >>>>    	 * For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for programming
> >>>>    	 * double buffering point and transmission line for VRR packets for
> >>>>    	 * HDMI2.1/DP/eDP/DP->HDMI2.1 PCON.
> >>>>    	 * Since currently we support VRR only for DP/eDP, so this is programmed
> >>>> -	 * to for Adaptive Sync SDP to Vsync start.
> >>>> +	 * for Adaptive Sync SDP.
> >>>>    	 */
> >>>> -	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
> >>>> +	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20) {
> >>>> +		transmission_line = adjusted_mode->crtc_vtotal - (adjusted_mode->crtc_vblank_start -
> >>>> +								  crtc_state->set_context_latency +
> >>>> +								  1);
> >>>>    		intel_de_write(display,
> >>>>    			       EMP_AS_SDP_TL(display, cpu_transcoder),
> >>>> -			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
> >>>> +			       EMP_AS_SDP_DB_TL(transmission_line));
> >>>> +	}
> >>> Pretty sure we are expected to send it at vsync_start.
> >> Hmm.. then do we need to move vsync_start too similar to vblank_start
> >> for optimized guardband?
> > The vsync pulse location is dictated by the timings.
> 
> Hmm... then with transmission line set as vsync_start, with a reduced 
> guardband we might need to increase the SCL so that vsync_start is more 
> or less inside the SCL + guardband.
> 
> So, if the panel supports AS_SDP while optimizing the guardband we 
> increase the SCL for this.

From the vblank evasion pov the easiest thing would be to make
delayed vblank match vsync start exactly, and then bump SCL up one
line to deal with whatever PSR issue there is. But that wouldn't
allow us to use the max guardband, so I guess not really an option.

So at the very least we do need to allow guardband > vsync_start,
but that actually already has a vblank evasion issue because we
might be past the delayed vblank but not yet at vsync start when
we write the registers. Fixing that for the DSB should be pretty
easy, but for the MMIO path it'll take more thinking...

And the guardband < vsync_start case I guess could be made to work
as well. The MMIO vblank evasion would need to be updated to evade
the SCL window when the AS SDP needs reprogramming (or at least
evade starting from vsync_start). IIRC the DSB vblank evasion
evades the entire SCL window anyway so should already be fine.
But that last point actually means that the deadline for a commit
is anyway defined by the start of SCL, so not sure there's any actual
benefit from stretching the SCL rather than the guardband.

-- 
Ville Syrjälä
Intel
