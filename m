Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBBBDC0623B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 14:01:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 089A110EA51;
	Fri, 24 Oct 2025 12:00:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GqIp1Q8R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E7F010EA51;
 Fri, 24 Oct 2025 12:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761307257; x=1792843257;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=zzvR+I8ZSkryow7I8FVLYCqyYreu5LazpBOA8IQHAqM=;
 b=GqIp1Q8RNRwSnzEGasx9kfqspABgGMd7BvgfWI6g0Dqp7RihYuaLfg3M
 C/dP9FhyInRkAoOkFlY38F9zO558Wujg1V3GANWcobueZXEW4bdR6SSkR
 GgXbi7relz9uy/GYGgcbOP2SxQnPkMnYCvYbaUYcm4JqTXN+OAKiBW97G
 zFJbbzO38fVPfFb2tuado0acs/JWvl/4B+rXxcssfef5BdMKA8WiuJ3iP
 yG5f4R6A+Nn3aoLbAqflqsUvtMxf9dT65BtVtR7WYCqinseZl1zouxB/R
 ufyQIT+IoRX8apiblvV/TgeBWxDBccecqJbeE47IZlguHt9ZCoOQ328ih w==;
X-CSE-ConnectionGUID: lgeCpJGCTcONLgwNWFyBwA==
X-CSE-MsgGUID: UK6ngWuDSW6qIwQhmZA1WQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63583943"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="63583943"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 05:00:56 -0700
X-CSE-ConnectionGUID: QAT13V8+Sqa5oSBTwIKc3g==
X-CSE-MsgGUID: Z4EuO6QrS6mvVSHDHHGkWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="184128184"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.37])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 05:00:54 -0700
Date: Fri, 24 Oct 2025 15:00:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com
Subject: Re: [PATCH] drm/i915/vrr: Fix transmission line for Adaptive Sync SDP
Message-ID: <aPtqdAxDwiuQZbrn@intel.com>
References: <20251023081614.2645242-1-ankit.k.nautiyal@intel.com>
 <aPoZ05jth8oGvoGk@intel.com>
 <b7971dfc-2c75-4a33-ba91-5a2d30339b35@intel.com>
 <aPo-STwN09z7qnFB@intel.com> <aPpE_z3rVxfv5x0r@intel.com>
 <2be97649-cfab-4ca7-b895-83bd597bda4b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2be97649-cfab-4ca7-b895-83bd597bda4b@intel.com>
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

On Fri, Oct 24, 2025 at 09:30:26AM +0530, Nautiyal, Ankit K wrote:
> 
> On 10/23/2025 8:38 PM, Ville Syrjälä wrote:
> > On Thu, Oct 23, 2025 at 05:40:09PM +0300, Ville Syrjälä wrote:
> >> On Thu, Oct 23, 2025 at 05:57:02PM +0530, Nautiyal, Ankit K wrote:
> >>> On 10/23/2025 5:34 PM, Ville Syrjälä wrote:
> >>>> On Thu, Oct 23, 2025 at 01:46:14PM +0530, Ankit Nautiyal wrote:
> >>>>> Currently the EMP_AS_SDP_TL is set to vrr.vsync_start which is
> >>>>> incorrect.
> >>>>>
> >>>>> As per Bspec:71197 the transmission line must be within the SCL +
> >>>>> guardband region. Before guardband optimization, guradband was same as
> >>>>> vblank length so EMP_AS_SDP_TL set with vrr.sync_start was falling in
> >>>>> this region and it was not giving an issue.
> >>>>>
> >>>>> Now with optimized guardband, this is falling outside the SCL +
> >>>>> guardband region and since the same transmission line is used by VSC SDP
> >>>>> also, this results in PSR timeout issues.
> >>>>>
> >>>>> Further restrictions on the position of the transmission line:
> >>>>> For DP/eDP, if there is a set context latency (SCL) window, then it
> >>>>> cannot be the first line of SCL
> >>>>> For DP/eDP, if there is no SCL window, then it cannot be the first line of
> >>>>> the Delayed V. Blank
> >>>>>
> >>>>> Fix the EMP_AS_SDP_TL to VTOTAL - (delayed vblank_start - SCL + 1)
> >>>>> Internally the HW computes the value as VTOTAL - EMP_AS_SDP_TL.
> >>>>>
> >>>>> Fixes: e1123e617e51 ("drm/i915/vrr: Program EMP_AS_SDP_TL for DP AS SDP")
> >>>>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >>>>> Cc: Jouni Högander <jouni.hogander@intel.com>
> >>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >>>>> ---
> >>>>>    drivers/gpu/drm/i915/display/intel_vrr.c | 12 +++++++++---
> >>>>>    1 file changed, 9 insertions(+), 3 deletions(-)
> >>>>>
> >>>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> >>>>> index 92fb72b56f16..dd81d2133aba 100644
> >>>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> >>>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> >>>>> @@ -655,18 +655,24 @@ void intel_vrr_set_db_point_and_transmission_line(const struct intel_crtc_state
> >>>>>    {
> >>>>>    	struct intel_display *display = to_intel_display(crtc_state);
> >>>>>    	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> >>>>> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> >>>>> +	int transmission_line;
> >>>>>    
> >>>>>    	/*
> >>>>>    	 * For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for programming
> >>>>>    	 * double buffering point and transmission line for VRR packets for
> >>>>>    	 * HDMI2.1/DP/eDP/DP->HDMI2.1 PCON.
> >>>>>    	 * Since currently we support VRR only for DP/eDP, so this is programmed
> >>>>> -	 * to for Adaptive Sync SDP to Vsync start.
> >>>>> +	 * for Adaptive Sync SDP.
> >>>>>    	 */
> >>>>> -	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
> >>>>> +	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20) {
> >>>>> +		transmission_line = adjusted_mode->crtc_vtotal - (adjusted_mode->crtc_vblank_start -
> >>>>> +								  crtc_state->set_context_latency +
> >>>>> +								  1);
> >>>>>    		intel_de_write(display,
> >>>>>    			       EMP_AS_SDP_TL(display, cpu_transcoder),
> >>>>> -			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
> >>>>> +			       EMP_AS_SDP_DB_TL(transmission_line));
> >>>>> +	}
> >>>> Pretty sure we are expected to send it at vsync_start.
> >>> Hmm.. then do we need to move vsync_start too similar to vblank_start
> >>> for optimized guardband?
> >> The vsync pulse location is dictated by the timings.
> >>
> >>> If we do not move vsync_start, and set the transmission line to
> >>> vsync_start, it will never fall in the region SCL + guardband with a
> >>> reduced guardband.
> >> Only if the vsync pulse is early in the vblank. That's up to the
> >> display.
> > Oh and I think we should get rid of that 'assume_all_enabled' stuff
> > for the AS SDP, and account for it only when actually needed.
> > Which I *think* means PCON or panel replay with AUX-less ALPM.
> 
> Currently we are enabling it for VRR and CMRR with AVT and FAVT mode 
> respectively.
> 
> 
> >
> > There's also that t1 vs. t2 setup time thing for the panel replay,
> > which seems to be telling me that we could sometimes transmit the
> > AS SDP later. But if I'm reading that right we have to switch to the
> > t1 (vsync) transmission line whenever we switch to live frame mode,
> > which I presume can happen basically at any time. So maybe we can't
> > actually use that t2 transmission line.
> 
> I think it will be prudent to set the min guardband to accommodate the 
> vsync_start as done by Jouni in patch: 
> https://patchwork.freedesktop.org/patch/682984/?series=156341&rev=2
> 
> Need to remove 'assume_all_enabled' as mentioned, and have some check 
> for whether AS_SDP is supported (and can be enabled later).

I'm thinking we should perhaps just enable it always if
PCON+vrr.in_range or PR+AUX-less ALPM is possible. Although I'm
not sure if we're actually handling all the VRR details correctly
with PCONs, and not sure we even can due to the disaster that is
HDMI 2.1...

> To have this check is a bit challenging in intel_dp_sdp_min_guardband() 
> since its called from 
> intel_crtc_compute_config()->intel_vrr_compute_guardband() also, where 
> we do not have obvious way to get intel_dp.

.compute_config() should be able to decide whether AS SDP is needed or
not.

-- 
Ville Syrjälä
Intel
