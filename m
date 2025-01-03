Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5808A00A73
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 15:23:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4978710E8DB;
	Fri,  3 Jan 2025 14:23:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="My/lOOrq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C01110E8D6;
 Fri,  3 Jan 2025 14:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735914187; x=1767450187;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=+cN+piU+xqd/PAeGhBd9rdJ8mCU8agm20h8DA0O71qw=;
 b=My/lOOrqHmk3eA4H9+ziBRdF5bsMZReNHVUsYoQhof3NdU+cOBGS7iAa
 aeDuSAuKTwKR0Wi/YOhZmDU9h5jMY0KuISosKD6w1hxiPWMx6ZdcVO2Mu
 Znb40P8ZDTGZsu8XQVRwQkIz9ck4BlUC53BHD2SbOIBvT78Afs3f0MsTI
 IMPQU+hNYl0MG/upBt/rYJwDExHOsyc3WvpNJaadkTeuu0u0NsPv7k9Bb
 9rxpbbIk+gHd2R6sYmKa8r8gRkVpKi4Dow6ttls9nAVNrzegHznhPU1yC
 nmX0qdxZ9rseINzGYNSeQHNPduPOZbOlA7CiWvirHi7iVzxFuvcOJYuci A==;
X-CSE-ConnectionGUID: 0T2R081rSQmUpf/Iap+VaA==
X-CSE-MsgGUID: JcOGvYqcRk+Ul8mwTBUvUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36181058"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="36181058"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 06:23:07 -0800
X-CSE-ConnectionGUID: h04EU/SAQpmMmgvFL/DUcw==
X-CSE-MsgGUID: TD8PZTuaSzWpVH6BuMimfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106429670"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 06:23:06 -0800
Date: Fri, 3 Jan 2025 16:23:57 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3 11/16] drm/i915/ddi: initialize 128b/132b SST DP2
 VFREQ registers
Message-ID: <Z3fy_QLCKfeS5ztC@ideak-desk.fi.intel.com>
References: <cover.1735912293.git.jani.nikula@intel.com>
 <7d90547e9ce01642b722efca0bf81cadb754e790.1735912293.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7d90547e9ce01642b722efca0bf81cadb754e790.1735912293.git.jani.nikula@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 03, 2025 at 03:52:34PM +0200, Jani Nikula wrote:
> Write the DP2 specific VFREQ registers.
> 
> This is preparation for enabling 128b/132b SST. This path is not
> reachable yet.
> 
> v2: Check for !is_hdmi (Imre)
> 
> Reviewed-by: Imre Deak <imre.deak@intel.com> # v1

Reviewed-by: Imre Deak <imre.deak@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 4bd35509ff7b..cdfb7caadcee 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3473,8 +3473,21 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_crtc *pipe_crtc;
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	bool is_hdmi = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI);
>  	int i;
>  
> +	/* 128b/132b SST */
> +	if (!is_hdmi && intel_dp_is_uhbr(crtc_state)) {
> +		const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +		u64 crtc_clock_hz = KHz(adjusted_mode->crtc_clock);
> +
> +		intel_de_write(display, TRANS_DP2_VFREQHIGH(cpu_transcoder),
> +			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz >> 24));
> +		intel_de_write(display, TRANS_DP2_VFREQLOW(cpu_transcoder),
> +			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz & 0xffffff));
> +	}
> +
>  	intel_ddi_enable_transcoder_func(encoder, crtc_state);
>  
>  	/* Enable/Disable DP2.0 SDP split config before transcoder */
> @@ -3491,7 +3504,7 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
>  		intel_crtc_vblank_on(pipe_crtc_state);
>  	}
>  
> -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +	if (is_hdmi)
>  		intel_ddi_enable_hdmi(state, encoder, crtc_state, conn_state);
>  	else
>  		intel_ddi_enable_dp(state, encoder, crtc_state, conn_state);
> -- 
> 2.39.5
> 
