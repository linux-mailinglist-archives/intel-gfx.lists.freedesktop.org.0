Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 197FCBD3818
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 16:28:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 541B410E46A;
	Mon, 13 Oct 2025 14:28:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H8UFXkbx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08F3110E469;
 Mon, 13 Oct 2025 14:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760365679; x=1791901679;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mPFeOhXMX6PN0dKXztCnHZ/cQcbyrLw1FgTdhpPU74Y=;
 b=H8UFXkbxvm+aay/aeCUUPICiG+rkqluh5ZAnv0ZANH1g3zShcCghWtc2
 tcCA1cxaej7VgHBG1d5B8vGPZVRb+q/7BsqYHo99/bgjFS+rIURbE0O/a
 /DM2mi8LZHUk+WtvUdV1fsiinDm9/oFXChcgO8HJL9/rXmrxqqSD27vwK
 2pa3ISkvpYC2igkZO0OzEF+C/vqOl1wg3Nmnz8qPiZYtJI70CpXs+c2Cw
 veqiD+Wn6xlDwndzP4bjpGfKFayJL5jqrOs67XQboZ5IjiAVty2EV4zOv
 V70Rp6F1LNv8eu317Bxs4QZCPQSiXbog63JwAKZexR9SHcmLKIK2zahOh A==;
X-CSE-ConnectionGUID: Y/hKth7AQVeBOAmbrbSmug==
X-CSE-MsgGUID: Pn01Sfn1QSGrgDnJPealwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="73609203"
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="73609203"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 07:27:59 -0700
X-CSE-ConnectionGUID: apO4DUHtRO2SU+o/Y11BVg==
X-CSE-MsgGUID: B2qa/ss3QTmo7UGPwj3Ssg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="185872983"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.105])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 07:27:57 -0700
Date: Mon, 13 Oct 2025 17:27:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 7/8] drm/i915/vrr: Recompute vblank_start for platforms
 with always-on VRR TG
Message-ID: <aO0MaW2Q-o6QXGo_@intel.com>
References: <20251013123559.1055429-1-ankit.k.nautiyal@intel.com>
 <20251013123559.1055429-8-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251013123559.1055429-8-ankit.k.nautiyal@intel.com>
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

On Mon, Oct 13, 2025 at 06:05:58PM +0530, Ankit Nautiyal wrote:
> Currently, crtc_vblank_start is read from either the VBLANK_START register
> (on pre-ADL platforms) or computed as vdisplay + set_context_latency in
> intel_get_transcoder_timings().
> 
> This works when the entire vblank region after vdisplay is treated as
> guardband, i.e.:
> delayed vblank start = vdisplay + SCL = vtotal - guardband.
> 
> However, with optimized guardband, the guardband becomes shorter, and the
> delayed vblank_start moves further away from vdisplay.
> 
> For platforms where intel_vrr_always_use_vrr_tg == false, the delayed
> vblank start is only relevant in VRR mode. We retain the original
> crtc_vblank_start and apply adjustments in VRR-specific paths. Evasion
> logic, push clear already use vtotal - guardband directly for VRR case.
> 
> On platforms where intel_vrr_always_use_vrr_tg == true, the delayed
> vblank_start is used in both fixed and VRR modes. So we need to change the
> crtc_vblank_start so that fixed rr case works properly.
> 
> Therefore for the readout, we need to overwrite crtc_vblank_start
> with vtotal - guardband to ensure correct behavior across both modes.
> 
> This change prepares the pipeline for optimized guardband usage by ensuring
> crtc_vblank_start reflects the correct timing on platforms with always-on
> VRR TG.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 8d71d7dc9d12..221b25832e56 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -821,6 +821,20 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  	 */
>  	if (crtc_state->vrr.enable)
>  		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> +
> +	/*
> +	 * For platforms that always use the VRR timing generator, we overwrite
> +	 * crtc_vblank_start with vtotal - guardband to reflect the delayed
> +	 * vblank start. This works for both default and optimized guardband values.
> +	 * On other platforms, we keep the original value from
> +	 * intel_get_transcoder_timings() and apply adjustments only in VRR-specific
> +	 * paths as needed.
> +	 */
> +	if (intel_vrr_always_use_vrr_tg(display))
> +		crtc_state->hw.adjusted_mode.crtc_vblank_start =
> +			crtc_state->hw.adjusted_mode.crtc_vtotal -
> +			crtc_state->vrr.guardband;

You still lost the compute counterpart somewhere.

And as mentioned, the new order of compute_pipe_mode()->compute_guardband()
will require that we fix up pipe_mode well (in the compute path). Could
just do it as 'pipe_mode.crtc_vblank_start = adjusted_mode.crtc_vblank_start'
after adjusted_mode has been tweaked.

It's a bit annoying that we need that one special pipe_mode handling in
the compute path, but there is no counterpart in the readout path.
But I suppose the only way to fix that would be to manually account for
joiner in the guardband calculations, which might be annoying as well...

-- 
Ville Syrjälä
Intel
