Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0945B904B3
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 13:01:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5E9510E415;
	Mon, 22 Sep 2025 11:01:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fZt2EK6u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 058F210E415;
 Mon, 22 Sep 2025 11:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758538877; x=1790074877;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=TkziFThJtaR3rhq689+7vDziJ1NmU1j5j9hPD0FsUPE=;
 b=fZt2EK6uIhnHfg0GIEW7OuV+K4J33bHlDC6juFKQ2hx4YUUrpl49l9zZ
 Fwv9mGRB2wBGtF/3ihxfQMQMZYtKbaonGjWXeGHuy8e0UkT0kz7Zgxwnv
 h7TKPqkGUIMLOh+BFRqHCwG8JZ2aUVTlaiAZceICuEvNSsIE2W7CrsUhy
 m8Ls/biEHjbm4UlbqQ7GXjo0R+OFWSqGMPITIO+NT46T+RKxHFGvRuRf5
 d9B4/SORj4ws9zvQJeSJaRxHPUibcnM4LJb5HVbSbscQ2SQFJgHN7KCM4
 LR75o3V/QLroR0Nywh6EwbnhXRYW+UW96ky5ttokjd6qjm5QoI4H6NbVc g==;
X-CSE-ConnectionGUID: EDxDOr18Sga82hXhSeyPOA==
X-CSE-MsgGUID: qDlYuyl9Qr+xX7Zq9HKgHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11560"; a="78239555"
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="78239555"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 04:01:16 -0700
X-CSE-ConnectionGUID: h4CA6QsxQ8uSDLO+C564LQ==
X-CSE-MsgGUID: VDqdUP9kTAyc1bmBUn6WWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="181697645"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.115])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 04:01:14 -0700
Date: Mon, 22 Sep 2025 14:01:11 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/9] drm/i915/display: Use VBLANK_START to get the vblank
 delay for TGL
Message-ID: <aNEsdzB0ufWpB10N@intel.com>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
 <20250921043535.2012978-4-ankit.k.nautiyal@intel.com>
 <aNEf8XAdjowLeBUk@intel.com>
 <aa5ae7cc-9e97-44f9-811a-54642f41bd50@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aa5ae7cc-9e97-44f9-811a-54642f41bd50@intel.com>
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

On Mon, Sep 22, 2025 at 03:50:17PM +0530, Nautiyal, Ankit K wrote:
> 
> On 9/22/2025 3:37 PM, Ville Syrjälä wrote:
> > On Sun, Sep 21, 2025 at 10:05:29AM +0530, Ankit Nautiyal wrote:
> >> For TGL the TRANS_SET_CONTEXT_LATENCY doesn't exist to account for SCL.
> >> However, the VBLANK_START-VACTIVE diffence plays an identical role here ie.
> >> it can be used to create the SCL window ahead of the undelayed vblank.
> >>
> >> While readback there is no specific register to read out the SCL, so use
> >> the same helper intel_crtc_compute_scl() and reduce the vblank_start by
> >> this amount.
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++++
> >>   1 file changed, 10 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> >> index 5a7794387ea2..455bbebb50a5 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> @@ -2822,6 +2822,16 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
> >>   		adjusted_mode->crtc_vblank_end += 1;
> >>   	}
> >>   
> >> +	if (DISPLAY_VER(display) == 12) {
> >> +		/*
> >> +		 * There is no specific register for SCL for TGL.
> >> +		 * Derive the value from the helper intel_crtc_set_context_latency().
> >> +		 * crtc_vblank_start needs to be reduced with this amount.
> >> +		 */
> >> +		pipe_config->set_context_latency = intel_crtc_set_context_latency(pipe_config);
> > That thing *computes* the SCL, it doesn't teel us what the
> > current hw value is.
> >
> >> +		adjusted_mode->crtc_vblank_start -= pipe_config->set_context_latency;
> >> +	}
> >> +
> >>   	if (DISPLAY_VER(display) >= 13 && !transcoder_is_dsi(cpu_transcoder)) {
> >>   		pipe_config->set_context_latency =
> >>   			intel_de_read(display,
> > I think this whole thing needs to look something like this:
> >
> > if (DISPLAY_VER >= 13 && !dsi) {
> > 	set_context_latency = read(TRANS_SET_CONTEXT_LATENCY);
> > 	crtc_vblank_start = crtc_vdisplay + set_set_context_latency;
> > } else if (DISPLAY_VER >= 12) {
> > 	set_context_latency = crtc_vblank_start - crtc_vdisplay;
> 
> I was wondering if we optimize the guardband for TGL, this will be a 
> problem. It will make set_context_latency huge for TGL.
> 
> Or shall we drop the guardband optimization changes for TGL?

We'll anyway clamp the guardband to the hw/vblank max.

So the initial value we can calculate any which way we want (as long
as we don't calculate it to be too small since that will either make
the commit fail, or will burn away power needleslly).

> 
> 
> > }
> >
> > That'll also cover DSI (not that the DSI code itself is actually
> > ready for SCL...).
> >
> > And I think you need to squash this into the set_context_latency
> > patch. Otherwise we'll get state checker mismatches on TGL in
> > between.
> 
> Yes right, I just wanted to get comments specific to this patch :) .
> 
> This change does belong to the previous patch.
> 
> 
> Regards,
> 
> Ankit
> 
> 
> >

-- 
Ville Syrjälä
Intel
