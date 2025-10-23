Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34691C01D59
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 16:40:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70F2310E910;
	Thu, 23 Oct 2025 14:40:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XVtSPJSv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E769D10E90E;
 Thu, 23 Oct 2025 14:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761230414; x=1792766414;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=m/aiUFzB112md8uC/tjsHxTPTdwLfBvVBMn3yxSWd58=;
 b=XVtSPJSvX4zQZxZ0t5auCb3NJ2kdTdnA8XWY2zvLinZ6H/A0gaWEtbBO
 Pcb3ElNrNCE9vdIriztZwwa15NSWIzDovaPvEF8tJ8163UuW11MtCTFHu
 7EQskgd2XfWJ0v4/B0qO4ibHKveSgGlp1rKJX44c0lxGXrilsUMj162tM
 Ju6o6Gi48z83zcZwRDIgPLLjjxxvsTqD1af30zrRnj+8n3Vyx9k+FtjdI
 6XOujjqCjPP5HKrg9VT2htDhXRFL9Q5TjoZOUWl9+R9ftwfDacGdY/bHf
 DlNzVOLnJvYaGmF2xMFiMnOHKZoJxbZrvDDuwU0jAlLRINAEq7m6rzPiS A==;
X-CSE-ConnectionGUID: qbQYOmMlRGGE1SNh8pynTA==
X-CSE-MsgGUID: N7wqbU2xTPO631A3i3babA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63495899"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="63495899"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 07:40:13 -0700
X-CSE-ConnectionGUID: y+u5ohJ2Ry+JKJmM3P80Kw==
X-CSE-MsgGUID: CcO2dBaDQEGXMyf7dwy/RA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="184652235"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.153])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 07:40:12 -0700
Date: Thu, 23 Oct 2025 17:40:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com
Subject: Re: [PATCH] drm/i915/vrr: Fix transmission line for Adaptive Sync SDP
Message-ID: <aPo-STwN09z7qnFB@intel.com>
References: <20251023081614.2645242-1-ankit.k.nautiyal@intel.com>
 <aPoZ05jth8oGvoGk@intel.com>
 <b7971dfc-2c75-4a33-ba91-5a2d30339b35@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b7971dfc-2c75-4a33-ba91-5a2d30339b35@intel.com>
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

On Thu, Oct 23, 2025 at 05:57:02PM +0530, Nautiyal, Ankit K wrote:
> 
> On 10/23/2025 5:34 PM, Ville Syrjälä wrote:
> > On Thu, Oct 23, 2025 at 01:46:14PM +0530, Ankit Nautiyal wrote:
> >> Currently the EMP_AS_SDP_TL is set to vrr.vsync_start which is
> >> incorrect.
> >>
> >> As per Bspec:71197 the transmission line must be within the SCL +
> >> guardband region. Before guardband optimization, guradband was same as
> >> vblank length so EMP_AS_SDP_TL set with vrr.sync_start was falling in
> >> this region and it was not giving an issue.
> >>
> >> Now with optimized guardband, this is falling outside the SCL +
> >> guardband region and since the same transmission line is used by VSC SDP
> >> also, this results in PSR timeout issues.
> >>
> >> Further restrictions on the position of the transmission line:
> >> For DP/eDP, if there is a set context latency (SCL) window, then it
> >> cannot be the first line of SCL
> >> For DP/eDP, if there is no SCL window, then it cannot be the first line of
> >> the Delayed V. Blank
> >>
> >> Fix the EMP_AS_SDP_TL to VTOTAL - (delayed vblank_start - SCL + 1)
> >> Internally the HW computes the value as VTOTAL - EMP_AS_SDP_TL.
> >>
> >> Fixes: e1123e617e51 ("drm/i915/vrr: Program EMP_AS_SDP_TL for DP AS SDP")
> >> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> Cc: Jouni Högander <jouni.hogander@intel.com>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_vrr.c | 12 +++++++++---
> >>   1 file changed, 9 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> >> index 92fb72b56f16..dd81d2133aba 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> >> @@ -655,18 +655,24 @@ void intel_vrr_set_db_point_and_transmission_line(const struct intel_crtc_state
> >>   {
> >>   	struct intel_display *display = to_intel_display(crtc_state);
> >>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> >> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> >> +	int transmission_line;
> >>   
> >>   	/*
> >>   	 * For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for programming
> >>   	 * double buffering point and transmission line for VRR packets for
> >>   	 * HDMI2.1/DP/eDP/DP->HDMI2.1 PCON.
> >>   	 * Since currently we support VRR only for DP/eDP, so this is programmed
> >> -	 * to for Adaptive Sync SDP to Vsync start.
> >> +	 * for Adaptive Sync SDP.
> >>   	 */
> >> -	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
> >> +	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20) {
> >> +		transmission_line = adjusted_mode->crtc_vtotal - (adjusted_mode->crtc_vblank_start -
> >> +								  crtc_state->set_context_latency +
> >> +								  1);
> >>   		intel_de_write(display,
> >>   			       EMP_AS_SDP_TL(display, cpu_transcoder),
> >> -			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
> >> +			       EMP_AS_SDP_DB_TL(transmission_line));
> >> +	}
> > Pretty sure we are expected to send it at vsync_start.
> 
> Hmm.. then do we need to move vsync_start too similar to vblank_start 
> for optimized guardband?

The vsync pulse location is dictated by the timings.

> 
> If we do not move vsync_start, and set the transmission line to 
> vsync_start, it will never fall in the region SCL + guardband with a 
> reduced guardband.

Only if the vsync pulse is early in the vblank. That's up to the
display.

> 
> Meaning effectively the guardband will be full vblank length.
> 
> 
> Regards,
> 
> Ankit
> 
> 
> >>   }
> >>   
> >>   static int intel_vrr_hw_vmin(const struct intel_crtc_state *crtc_state)
> >> -- 
> >> 2.45.2

-- 
Ville Syrjälä
Intel
