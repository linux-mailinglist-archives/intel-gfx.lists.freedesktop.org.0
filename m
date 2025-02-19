Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E754A3C319
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2025 16:08:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B7B410E831;
	Wed, 19 Feb 2025 15:08:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PaKSar8A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AE8010E831;
 Wed, 19 Feb 2025 15:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739977685; x=1771513685;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=PR9aQXojofHqdbr5oH28rptkcNlsN92Pa3fvqZrRoHk=;
 b=PaKSar8AEQrYumb23rbnonh8cFIwpw3SEfjiqGjQubW9EFLGbZZsKWeZ
 k9zU0IuKCkXVbziYgOHfUTY5UZn2Phw4D4gZMLZ0Uz3x28NxdHwxUZRbl
 YEBTvt9kroKtGfbvMTAk7u/QJTVlik8mYWh1wUUmlpAcisVM1Nz8jcmPc
 NprvqT/UWT7SR5/Tc5RU0s+Q/A+PnGFH9HTDUhJG9DHRrxpjFqg2iTrG7
 vyLJI9S6Nh+J4IpszdVbHE/KmyFZpe5Q0/QGusrCBt8ogzMtCxl9GKrOp
 +ECOo9MmIGkFMnXpSv7kX0DtI6uImZa8oWRTh6VCHxkqi/L2GVmSwGSbN A==;
X-CSE-ConnectionGUID: 39qwtwgyTUaK9ZW41qzO3Q==
X-CSE-MsgGUID: O0frK2ocTYaFSUOmOjxIdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="44486846"
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="44486846"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 07:08:05 -0800
X-CSE-ConnectionGUID: MPuOfNmvT0S3RvHmHMd4kg==
X-CSE-MsgGUID: ByzARhWUQCSQQV2Vznwb1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="114937752"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Feb 2025 07:08:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Feb 2025 17:08:01 +0200
Date: Wed, 19 Feb 2025 17:08:01 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 16/19] drm/i915/display: Use fixed_rr timings in modeset
 sequence
Message-ID: <Z7Xz0edP2PSOq7l6@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
 <20250214121130.1808451-17-ankit.k.nautiyal@intel.com>
 <Z7OBP8kdGZLtWCAK@intel.com> <Z7OGZY3mBy24LHYy@intel.com>
 <2fd746c7-fdd5-4d2c-ba3c-287680c28cb3@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2fd746c7-fdd5-4d2c-ba3c-287680c28cb3@intel.com>
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

On Wed, Feb 19, 2025 at 07:27:00PM +0530, Nautiyal, Ankit K wrote:
> 
> On 2/18/2025 12:26 AM, Ville Syrjälä wrote:
> > On Mon, Feb 17, 2025 at 08:34:39PM +0200, Ville Syrjälä wrote:
> >> On Fri, Feb 14, 2025 at 05:41:26PM +0530, Ankit Nautiyal wrote:
> >>> During modeset enable sequence, program the fixed timings,
> >>> and turn on the VRR Timing Generator (VRR TG) for platforms
> >>> that always use VRR TG.
> >>>
> >>> Later if vrr timings are required, vrr_enable() will switch
> >>> to the real VRR timings.
> >>>
> >>> With this we dont want to reset TRANS_CTL_VRR Enable bit while updating
> >>> the vrr transcoder timings.
> >>>
> >>> v2: Update intel_vrr_set_transcoder_timings for fixed_rr.
> >>> v3: Update intel_set_transcoder_timings_lrr for fixed_rr. (Ville)
> >>>      Add TRANS_PUSH while enabling VRR for fixed_rr.
> >>>
> >>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >>> ---
> >>>   drivers/gpu/drm/i915/display/intel_display.c | 10 +++++--
> >>>   drivers/gpu/drm/i915/display/intel_vrr.c     | 29 ++++++++++++++++++--
> >>>   drivers/gpu/drm/i915/display/intel_vrr.h     |  3 ++
> >>>   3 files changed, 36 insertions(+), 6 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> >>> index 66c5ad46bfea..c9d1c091b109 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >>> @@ -1755,6 +1755,7 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
> >>>   
> >>>   static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_state)
> >>>   {
> >>> +	struct intel_display *display = to_intel_display(crtc_state);
> >>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >>>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> >>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> >>> @@ -1770,9 +1771,12 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
> >>>   	}
> >>>   
> >>>   	intel_set_transcoder_timings(crtc_state);
> >>> -	if (HAS_VRR(dev_priv))
> >>> -		intel_vrr_set_transcoder_timings(crtc_state);
> >>> -
> >>> +	if (HAS_VRR(dev_priv)) {
> >>> +		if (intel_vrr_always_use_vrr_tg(display))
> >>> +			intel_vrr_enable_fixed_rr_timings(crtc_state);
> >>> +		else
> >>> +			intel_vrr_set_transcoder_timings(crtc_state);
> >> I think intel_vrr_set_transcoder_timings() should just program the
> >> fixed timings always. And we shouldn't do anything else here.
> >>
> >> And I think the VRR_CTL enable/disable for the always_use_vrr_tg==true
> >> case should be done at some more appropriate spot in the modeset
> >> sequence. We can add eg. intel_vrr_trancoder_{enable,disable}() for
> >> that part.
> >>
> >>> +	}
> >>>   	if (cpu_transcoder != TRANSCODER_EDP)
> >>>   		intel_de_write(dev_priv, TRANS_MULT(dev_priv, cpu_transcoder),
> >>>   			       crtc_state->pixel_multiplier - 1);
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> >>> index e247055bc486..4151fcd0f978 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> >>> @@ -456,8 +456,12 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
> >>>   		       crtc_state->vrr.vmin - 1);
> >>>   	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> >>>   		       crtc_state->vrr.vmax - 1);
> >>> -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> >>> -		       trans_vrr_ctl(crtc_state));
> >>> +	if (intel_vrr_always_use_vrr_tg(display))
> >>> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> >>> +			       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> >>> +	else
> >>> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> >>> +			       trans_vrr_ctl(crtc_state));
> >> We should probably remove this VRR_CTL frobbing from here entirely,
> >> and just always do it from the intel_vrr_trancoder_{enable,disable}().
> >> And obviously for the !always_use_vrr_tg case we just skip setting
> >> the enable bit there.
> > Hmm. One thing that might screw us over here is the fastboot vs.
> > vblank_delay stuff. We might have to allow that to reconfigure
> > the guardband...
> >
> > In that case we need to reprogram VRR_CTL from
> > intel_set_transcoder_timings_lrr(), and be careful what
> > we do with the enable bit. So it'd perhaps have to be
> > something like:
> >   vrr_ctl = trans_vrr_ctl();
> >   if (always_use_vrr_tg && !needs_modeset)
> > 	vrr_ctl |= VRR_CTL_VRR_ENABLE;
> 
> I understand while using fastset for platforms that use vrr TG, we dont 
> want to reset the VRR_ENABLE while setting the guardband.
> 
> We want to use the function intel_vrr_transcoder_enable to handle bits 
> for VRR_CTL.
> 
> Do you mean to pass need_modeset flag to intel_vrr_transcoder_enable()?

intel_vrr_transcoder_{enable,disable}() should just be

intel_vrr_transcoder_enable()
{
	if (!always_use_vrr_tg)
		return;
	enable vrr tg
}

intel_vrr_transcoder_disable()
{
	if (!always_use_vrr_tg)
		return;
	disable vrr tg
}

and they should only be called from the full modeset
path.

-- 
Ville Syrjälä
Intel
