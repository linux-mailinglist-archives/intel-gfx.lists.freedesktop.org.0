Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8C6BB049F
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 14:13:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19FA510E6EB;
	Wed,  1 Oct 2025 12:13:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HCCXlqQL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E665610E6B6;
 Wed,  1 Oct 2025 12:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759320779; x=1790856779;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nGrurC0VVwW4+6ntzPGDG5aNlrMuLD2o+u72dWF/LT0=;
 b=HCCXlqQLIVpu48+1rKK0D0mbskP1zm6Wnzvx9xNQ6OLy0OgGyQ4d8qzh
 sEzXrG63OtZVLKKPbcm+JovwkT6zVm+5FtKnaEyz7JTdiFe4hKU77pXN6
 Yvbbo6/WnZJ05OWjc3VvZXRbzGIdDPXTBwgl7lBH0RYArykmTCo1CC4z1
 OQ5uZna8cLseN9NjRwZtO2k13/XyehBFhgeaqgfjsZ7nqIo29WC8TXfLm
 kzk2jcofiCRoI6uryncuounHgglwTbYeWf8OTcHXX2ajcyLeFXrH4MaJ9
 BSOya3bxTFZwzBaII8CubaUxcj/cU2W53RnmAQeEihxknCRDBZng6/f1D g==;
X-CSE-ConnectionGUID: ot4VIa8TQgCagcoUEzKjAA==
X-CSE-MsgGUID: FNGU0nMQQHWUh5clDslU8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="60806309"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="60806309"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 05:12:58 -0700
X-CSE-ConnectionGUID: Td4zX7cOSZaBEHXNrSFnUg==
X-CSE-MsgGUID: qae+JJkxRvu/HU49P6aymQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="178823142"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.91])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 05:12:57 -0700
Date: Wed, 1 Oct 2025 15:12:54 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 15/15] drm/i915/display: Use optimized guardband to set
 vblank start
Message-ID: <aN0axoGBGu3ZEMBk@intel.com>
References: <20250928070541.3892890-1-ankit.k.nautiyal@intel.com>
 <20250928070541.3892890-16-ankit.k.nautiyal@intel.com>
 <aNpKrMapLVw4bvGb@intel.com>
 <daf38ab6-b123-4c91-a18c-1b6c7ec7715d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <daf38ab6-b123-4c91-a18c-1b6c7ec7715d@intel.com>
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

On Wed, Oct 01, 2025 at 04:11:13PM +0530, Nautiyal, Ankit K wrote:
> 
> On 9/29/2025 2:30 PM, Ville Syrjälä wrote:
> > On Sun, Sep 28, 2025 at 12:35:40PM +0530, Ankit Nautiyal wrote:
> >> As we move towards using a shorter, optimized guardband, we need to adjust
> >> how the delayed vblank start is computed.
> >>
> >> Use the helper intel_vrr_compute_guardband() to calculate the optimized
> >> guardband. Since this is measured from the vblank end, we shift the
> >> vblank-start accordingly.
> >>
> >> Calculate the minimum delay required based on the guardband and apply it in
> >> intel_crtc_vblank_delay() to update crtc_vblank_start.
> >>
> >> Additionally, introduce a new allow_vblank_delay_fastset() helper that
> >> combines the existing LRR-based logic with an additional check for the
> >> optimized guardband usage.
> >>
> >> v2:
> >> - Check if optimized guardband is more than vblank length and add debug
> >>    print.
> >> - Extend vblank delay fastset logic to cover optimized guardband.
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_display.c | 79 +++++++++++++++++++-
> >>   1 file changed, 76 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> >> index 4135f9be53fd..97a3121a204f 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> @@ -2361,6 +2361,67 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
> >>   	return 0;
> >>   }
> >>   
> >> +static
> >> +int intel_crtc_min_guardband_delay(struct intel_atomic_state *state,
> >> +				   struct intel_crtc *crtc)
> >> +{
> >> +	struct intel_display *display = to_intel_display(state);
> >> +	struct intel_crtc_state *crtc_state =
> >> +		intel_atomic_get_new_crtc_state(state, crtc);
> >> +	const struct drm_display_mode *adjusted_mode =
> >> +		&crtc_state->hw.adjusted_mode;
> >> +	struct drm_connector_state *conn_state;
> >> +	struct drm_connector *drm_connector;
> >> +	int vblank_length;
> >> +	int i;
> >> +
> >> +	if (!intel_vrr_use_optimized_guardband(crtc_state))
> >> +		return 0;
> >> +
> >> +	vblank_length = crtc_state->vrr.vmin -
> >> +			adjusted_mode->crtc_vdisplay;
> >> +
> >> +	for_each_new_connector_in_state(&state->base,
> >> +					drm_connector,
> >> +					conn_state, i) {
> >> +		int guardband;
> >> +		struct intel_connector *connector;
> >> +
> >> +		if (conn_state->crtc != &crtc->base)
> >> +			continue;
> >> +
> >> +		connector = to_intel_connector(drm_connector);
> >> +		guardband = intel_vrr_compute_guardband(crtc_state,
> >> +							connector);
> >> +		if (guardband > vblank_length) {
> >> +			drm_dbg_kms(display->drm,
> >> +				    "[CRTC:%d:%s] Cannot optimize guardband (%d) exceeds max (%d)\n",
> >> +				    crtc->base.base.id, crtc->base.name,
> >> +				    guardband,
> >> +				    vblank_length);
> >> +			return 0;
> >> +		}
> >> +
> >> +		return vblank_length - guardband;
> >> +	}
> >> +
> >> +	return 0;
> >> +}
> >> +
> >> +static void intel_crtc_vblank_delay(struct intel_atomic_state *state,
> >> +				    struct intel_crtc *crtc)
> >> +{
> >> +	struct intel_crtc_state *crtc_state =
> >> +		intel_atomic_get_new_crtc_state(state, crtc);
> >> +	struct drm_display_mode *adjusted_mode =
> >> +		&crtc_state->hw.adjusted_mode;
> >> +	int vblank_delay = 0;
> >> +
> >> +	vblank_delay = intel_crtc_min_guardband_delay(state, crtc);
> >> +
> >> +	adjusted_mode->crtc_vblank_start += vblank_delay;
> >> +}
> >> +
> >>   static int intel_crtc_set_context_latency(struct intel_crtc_state *crtc_state)
> >>   {
> >>   	struct intel_display *display = to_intel_display(crtc_state);
> >> @@ -2413,6 +2474,7 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
> >>   	ret = intel_crtc_compute_set_context_latency(state, crtc);
> >>   	if (ret)
> >>   		return ret;
> >> +	intel_crtc_vblank_delay(state, crtc);
> > IMO we should get rid of all this vblank_delay terminology here.
> > This one I think should just be our current
> > intel_vrr_compute_config_late() (renamed to eg.
> > intel_vrr_compute_guardband()).
> 
> Hmm ok so will rename this and call from intel_modeset_pipe_config_late().

I meant you should move the intel_vrr_compute_config_late() call
from intel_modeset_pipe_config_late() to here, and rename it to
eg. intel_vrr_compute_guardband().

-- 
Ville Syrjälä
Intel
