Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E363DA46443
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 16:14:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 701C310E944;
	Wed, 26 Feb 2025 15:14:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RYfbuNbt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68A5910E944;
 Wed, 26 Feb 2025 15:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740582859; x=1772118859;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7Qoy/ApP1EgsUvcxyDecgF0/47WfK8veHjej2IadtK0=;
 b=RYfbuNbtCPe99Fq2tiIVO9JXhzqKfz6tQUfcXsNA1X8NANotSfbDXVTV
 ZFwUGILzZ+oSowyrCkdc7qRHrHkkylrKc81keqLrvllmm0ACduWteZBB0
 +8Fr307G5RtPYCPiQ44dDGOLdQfTiKFGK/gzDB8srXmFQL9UMuoIsmMp+
 t/BdtycRUysNlswl1WCuG5K79IV+MVpgELxFRYm7tNMQgP6HI+W9fvXL8
 KQN1baN3x4tNYvctwaucFfvC5WuDpvDSpjKA2hbgPHBY12w7ELxO6dlu0
 7bMAt9WyfLpHETX7oPddbGJ0ginmagVh6DUtRCbQTWzvvYcfbJsRSzDZM w==;
X-CSE-ConnectionGUID: e7+hydibQOKxsw67ePwn2g==
X-CSE-MsgGUID: ErhP6tRLSeScfFfjc9BBig==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="41357300"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="41357300"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 07:14:19 -0800
X-CSE-ConnectionGUID: ymePAfC4Qqa+kq/vRYKRhw==
X-CSE-MsgGUID: Jml4geeTSVKnB9TkxZ7uEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121983832"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Feb 2025 07:14:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2025 17:14:15 +0200
Date: Wed, 26 Feb 2025 17:14:15 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 13/20] drm/i915/vrr: Handle joiner with vrr
Message-ID: <Z78vx24DwelqHTc9@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-14-ankit.k.nautiyal@intel.com>
 <c60121e0-fd68-4cbf-ad49-0b86046bc213@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c60121e0-fd68-4cbf-ad49-0b86046bc213@intel.com>
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

On Mon, Feb 24, 2025 at 07:17:59PM +0530, Nautiyal, Ankit K wrote:
> 
> On 2/24/2025 11:47 AM, Ankit Nautiyal wrote:
> > Do not program transcoder registers for VRR for the secondary pipe of
> > the joiner. Remove check to skip VRR for joiner case.
> 
> Missed to drop this patch as mentioned in the last version.
> 
> Will work on this after the other changes are agreed upon, so this can 
> be ignored for now.

I think before trying to do full joiner+vrr support we should
just allow joiner+fixed_rr (and also not allow update_lrr).
That would avoid the problems with the live VRR reprogramming.

> 
> 
> Regards,
> 
> Ankit
> 
> >
> > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_vrr.c | 19 ++++++++++++-------
> >   1 file changed, 12 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index 45efcb57c77a..30fcd1e66a12 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -345,13 +345,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
> >   	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> >   	int vmin, vmax;
> >   
> > -	/*
> > -	 * FIXME all joined pipes share the same transcoder.
> > -	 * Need to account for that during VRR toggle/push/etc.
> > -	 */
> > -	if (crtc_state->joiner_pipes)
> > -		return;
> > -
> >   	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
> >   		return;
> >   
> > @@ -443,6 +436,9 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
> >   	struct intel_display *display = to_intel_display(crtc_state);
> >   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> >   
> > +	if (intel_crtc_is_joiner_secondary(crtc_state))
> > +		return;
> > +
> >   	/*
> >   	 * This bit seems to have two meanings depending on the platform:
> >   	 * TGL: generate VRR "safe window" for DSB vblank waits
> > @@ -494,6 +490,9 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
> >   	if (!crtc_state->vrr.enable)
> >   		return;
> >   
> > +	if (intel_crtc_is_joiner_secondary(crtc_state))
> > +		return;
> > +
> >   	if (dsb)
> >   		intel_dsb_nonpost_start(dsb);
> >   
> > @@ -558,6 +557,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
> >   	if (!crtc_state->vrr.enable)
> >   		return;
> >   
> > +	if (intel_crtc_is_joiner_secondary(crtc_state))
> > +		return;
> > +
> >   	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
> >   		       crtc_state->vrr.vmin - 1);
> >   	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> > @@ -586,6 +588,9 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
> >   	if (!old_crtc_state->vrr.enable)
> >   		return;
> >   
> > +	if (intel_crtc_is_joiner_secondary(old_crtc_state))
> > +		return;
> > +
> >   	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> >   		       trans_vrr_ctl(old_crtc_state));
> >   	intel_de_wait_for_clear(display,

-- 
Ville Syrjälä
Intel
