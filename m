Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9362EA7026C
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 14:45:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EB5D10E582;
	Tue, 25 Mar 2025 13:45:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iAaXgX+k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B202710E06E;
 Tue, 25 Mar 2025 13:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742910335; x=1774446335;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ebSAhZQtbSs8XJNG39ZQYu1rwYjiWavUzqPI//QVjV8=;
 b=iAaXgX+k+I0fHfB8HWmlZRi6WkxmODhFF1gg9qoFhSk7BOCNLlL6CW9j
 L0QbCTdAVzTvSNquj0OQTxLoUud34Rqe+oPXNXCMvbvrnXUqCXktMt7TJ
 UNV62oqaytJVVLr6T8QE5uBduxwwARFQqRf6pF/WMq9/EW8dugN3I7+Am
 fvA7jeclJZrmxPhnrkl5kC0fhVlADX/YmQI2HrOZV8+9bCZDmdIHT9vzw
 SyQ4WSP5bTvKUeAxzhxonykeAoINPdaPaWCPluDstZffT2Jbfmue0zl/0
 /rYl6NmNAOubQ8nHcLoU5e+TWsLKPhKnN4hGNS1XXPV4ox1BwWGvj4FnR Q==;
X-CSE-ConnectionGUID: VmAJ0Nh6SjySURBVMebUKw==
X-CSE-MsgGUID: cCx4cIKlQfaaYAkV16XX6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11384"; a="54359883"
X-IronPort-AV: E=Sophos;i="6.14,275,1736841600"; d="scan'208";a="54359883"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 06:45:35 -0700
X-CSE-ConnectionGUID: GARYtHA7R965rHYkAIizLw==
X-CSE-MsgGUID: CLVIMeohRPKar80KcdBbnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,275,1736841600"; d="scan'208";a="129561923"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 25 Mar 2025 06:45:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Mar 2025 15:45:31 +0200
Date: Tue, 25 Mar 2025 15:45:31 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 15/16] drm/i915/display: Separate out functions to
 get/set VTOTAL register
Message-ID: <Z-Kze5WxTVVs5bbi@intel.com>
References: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
 <20250324133248.4071909-16-ankit.k.nautiyal@intel.com>
 <Z-GeIi5I0R9U4EGS@intel.com>
 <28b1b129-f84d-4d15-97b0-3ef3e05002d5@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <28b1b129-f84d-4d15-97b0-3ef3e05002d5@intel.com>
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

On Tue, Mar 25, 2025 at 11:52:24AM +0530, Nautiyal, Ankit K wrote:
> 
> On 3/24/2025 11:32 PM, Ville Syrjälä wrote:
> > On Mon, Mar 24, 2025 at 07:02:47PM +0530, Ankit Nautiyal wrote:
> >> Introduce helpers to get and set TRANS_VTOTAL registers.
> >> This will pave way to avoid reading/writing VTOTAL.Vtotal bits for
> >> platforms that always use VRR timing generator.
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_display.c | 41 +++++++++++++-------
> >>   1 file changed, 27 insertions(+), 14 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> >> index ae1dc32044fb..fa9c6793357e 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> @@ -2638,6 +2638,15 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
> >>   		      PIPE_LINK_N2(display, transcoder));
> >>   }
> >>   
> >> +static void intel_crtc_set_vtotal(struct intel_display *display,
> >> +				  enum transcoder cpu_transcoder,
> >> +				  u32 crtc_vdisplay, u32 crtc_vtotal)
> >> +{
> >> +	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
> >> +		       VACTIVE(crtc_vdisplay - 1) |
> >> +		       VTOTAL(crtc_vtotal - 1));
> >> +}
> >> +
> >>   static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
> >>   {
> >>   	struct intel_display *display = to_intel_display(crtc_state);
> >> @@ -2702,9 +2711,8 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
> >>   		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
> >>   		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
> >>   
> >> -	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
> >> -		       VACTIVE(crtc_vdisplay - 1) |
> >> -		       VTOTAL(crtc_vtotal - 1));
> >> +	intel_crtc_set_vtotal(display, cpu_transcoder, crtc_vdisplay, crtc_vtotal);
> >> +
> >>   	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
> >>   		       VBLANK_START(crtc_vblank_start - 1) |
> >>   		       VBLANK_END(crtc_vblank_end - 1));
> >> @@ -2718,9 +2726,8 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
> >>   	 * bits. */
> >>   	if (display->platform.haswell && cpu_transcoder == TRANSCODER_EDP &&
> >>   	    (pipe == PIPE_B || pipe == PIPE_C))
> >> -		intel_de_write(display, TRANS_VTOTAL(display, pipe),
> >> -			       VACTIVE(crtc_vdisplay - 1) |
> >> -			       VTOTAL(crtc_vtotal - 1));
> >> +		intel_crtc_set_vtotal(display, (enum transcoder)pipe,
> >> +				      crtc_vdisplay, crtc_vtotal);
> >>   }
> >>   
> >>   static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state)
> >> @@ -2766,9 +2773,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
> >>   	 * The double buffer latch point for TRANS_VTOTAL
> >>   	 * is the transcoder's undelayed vblank.
> >>   	 */
> >> -	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
> >> -		       VACTIVE(crtc_vdisplay - 1) |
> >> -		       VTOTAL(crtc_vtotal - 1));
> >> +	intel_crtc_set_vtotal(display, cpu_transcoder, crtc_vdisplay, crtc_vtotal);
> > Not really a fan of special casing this that much. I think we should
> > probably handle it the same way we deal with the VBLANK_START vs.
> > TRANS_SET_CONTEXT_LATENCY.
> Hmm I can do away with the helper, and avoid having VTOTAL.Vtotal bits 
> set for specific cases in intel_vrr_set_transcoder_{timings, timings_lrr}.
> >
> > The readount should perhaps just be handled in intel_vrr_get_config().
> 
> I can try this out.
> 
> 
> > But I think we'll need somehting like transcoder_has_vrr() to exclude
> > the DSI transcoders in a consistent way.
> 
> If I understand correctly you mean that wherever we are avoiding VRR 
> related register read/write for DSI, use trans_has_vrr() instead of 
> !transcoder_is_dsi(),
> 
> with trans_has_vrr having call to transcoder_is_dsi()?

Yeah something like that.

> 
> Will perhaps add this as a separate patch.

These two last patches aren't needed to get this stuff actually
working right? Or is the GOP leaving TRANS_VOTAL.vtotal unset?
So yeah, if not needed right now probably best to leave this
stuff for a seaprate series.

-- 
Ville Syrjälä
Intel
