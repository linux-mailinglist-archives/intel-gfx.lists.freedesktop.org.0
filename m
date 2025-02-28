Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48563A4948F
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 10:15:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCE3310EC1E;
	Fri, 28 Feb 2025 09:15:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fcTqLH/Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A258910EC1E;
 Fri, 28 Feb 2025 09:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740734142; x=1772270142;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=xsdlhvpbkUXz2wXyXjIR5owgC889BPkVxw/JvOWSYT8=;
 b=fcTqLH/YGZlYOVAR4cj/Mb1I78LDkmU+oUgFCUueT8S0RYAADeyFgaLC
 oAGjrhmzcW0TTzb369bnqonjdh/vtuzQImX6iAsAf50D350C2k9nk+uDu
 deddvl9SgYuHhzkFkoW0sD3zn2JsemKxWnKXbR0hXixGIkVRSCqAX5AdN
 QA0czVmJcj6LCErjhrC+flI1GC2xs7W2IgSp1I1Z13bDNn2ikBmZ8ULSz
 QKmL3MlRqNWsfP61aIvK1R2TXmbgF75GHNYUwOCWQY1AkxoHPWTw8AOK2
 bKYK7nTXjv8cicuTq4hEJkLEpObLn6MkZI0dVe6FjmAYK2G628T8jFVtc A==;
X-CSE-ConnectionGUID: kYX3ejPDRTCBWKFRmoO1IQ==
X-CSE-MsgGUID: hmIgxuA1RBeKG9o4amnMPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="64119850"
X-IronPort-AV: E=Sophos;i="6.13,321,1732608000"; d="scan'208";a="64119850"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 01:15:42 -0800
X-CSE-ConnectionGUID: S/j/KmM6QIK4A5wPtt/sew==
X-CSE-MsgGUID: VGCD1ULFRHWDLCKGzqC79A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118205507"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.24])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 01:15:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 william.tseng@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/vdsc: Use the DSC config tables for DSI panels
In-Reply-To: <20250228051041.397020-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250228051041.397020-1-suraj.kandpal@intel.com>
Date: Fri, 28 Feb 2025 11:15:35 +0200
Message-ID: <87bjum2zwo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 28 Feb 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Some DSI panel vendors end up hardcoding PPS params because of which
> it does not listen to the params sent from the source. We use the
> default config tables for DSI panels when using DSC 1.1 rather than
> calculate our own rc parameters.
>
> --v2
> -Use intel_crtc_has_type [Jani]
>
> --v3
> -Add Signed-off-by from William too [Ankit]

Why?

People seem to assign all sorts of meanings to Signed-off-by, but it's
really about certifying [1]. It's certainly not about giving credits.

[1] https://developercertificate.org/

>
> --v4
> -Use a function to check Mipi dsi dsc 1.1 condition [Ankit]
> -Add documentation for using this condition [Ankit]
> -Rebase
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13719
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: William Tseng <william.tseng@intel.com>

If William was indeed involved in writing the patch, his Signed-off-by,
possibly with a Co-developed-by, needs to come first. The subsequent
handlers add their Signed-off-by at the end. For instance, if I applied
the patch, my Signed-off-by would be added at the end.

> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 3ed64c17bdff..2a6706517cfa 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -259,6 +259,13 @@ static int intel_dsc_slice_dimensions_valid(struct intel_crtc_state *pipe_config
>  	return 0;
>  }
>  
> +static bool is_mipi_dsi_dsc_1_1(struct drm_dsc_config *vdsc_cfg,
> +				struct intel_crtc_state *crtc_state)

We don't really use "mipi_dsi" naming, just like we don't use
"vesa_dp". It's just DSI, and it's clear enough.

There's no need to pass vdsc_cfg separately. You can figure it out from
crtc_state.

> +{
> +	return vdsc_cfg->dsc_version_minor == 1 &&

I wonder how many places would blow up with the addition of DSC 2.1...

This isn't the only place that gets this wrong, but we really need to be
more careful about the DSC version checks. Might as well start with new
code being added.

> +		intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI);
> +}
> +
>  int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
>  {
>  	struct intel_display *display = to_intel_display(pipe_config);
> @@ -317,8 +324,14 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
>  	 * From XE_LPD onwards we supports compression bpps in steps of 1
>  	 * upto uncompressed bpp-1, hence add calculations for all the rc
>  	 * parameters

Add a blank comment line here to separate paragraphs.

> +	 * We also don't want to calculate all rc parameters when the panel
> +	 * is MIPI DSI and it's using DSC 1.1. The reason being that some
> +	 * DSI panels vendors have hardcoded PPS params in the VBT causing
> +	 * the parameters sent from the source to be ignore. This causes a
> +	 * noise in the display.
>  	 */
> -	if (DISPLAY_VER(display) >= 13) {
> +	if (DISPLAY_VER(display) >= 13 &&
> +	    !is_mipi_dsi_dsc_1_1(vdsc_cfg, pipe_config)) {

With the parameter removed, this'll probably fit on one line.

BR,
Jani.

>  		calculate_rc_params(vdsc_cfg);
>  	} else {
>  		if ((compressed_bpp == 8 ||

-- 
Jani Nikula, Intel
