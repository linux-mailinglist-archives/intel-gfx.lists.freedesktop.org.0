Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A227A39CCE
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 14:05:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68EA810E3BC;
	Tue, 18 Feb 2025 13:05:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NQ8JGM8E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98BAF10E09E;
 Tue, 18 Feb 2025 13:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739883898; x=1771419898;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=9D9SmEE5JqHtzDneDh6u1YLPQFf7KCKykJdMt6FxNL0=;
 b=NQ8JGM8EnEMIkc4Q9yaE9M7U64idP3k2lyEaJohG3YIUXsU3A1vv0T3c
 WN63l96GX6xjKIO9I16+bZNTp3sjpW9T1xvSatJmYLk+uA5MC9hTqDWT6
 C2tpMtts+Dd+VSalJcsH5wk3F5LlUHjSUpXL/159CC5iKV2Wj9D9brxP7
 MkmuJso1kICwddTQYTYOr0cA74NoEwl9zOGSuZgOZo50opXxM/IgsfwZa
 ThZa95JXxu+H+0/K86XqUGF8641/CJ3iLFF2px90juTY+/XejBkMz5kGS
 bYFrr+8bSa5XJxMhnHel092WpxOs9PZbVXeeiDgD2jAxBYYuYuUKGHexN w==;
X-CSE-ConnectionGUID: Jdi7KrmYThmd3MVCwWxnJg==
X-CSE-MsgGUID: LlMQ4IyZRvSDt2R7CJ5x/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="51562750"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="51562750"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 05:03:42 -0800
X-CSE-ConnectionGUID: 4bVkLIIeQ+m7jZcDXObxCQ==
X-CSE-MsgGUID: fu4tsk8DTzGcmmBzorB3Bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114254280"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.43])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 05:03:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/dp: Fix disabling the transcoder function
 in 128b/132b mode
In-Reply-To: <20250217223828.1166093-3-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250217223828.1166093-1-imre.deak@intel.com>
 <20250217223828.1166093-3-imre.deak@intel.com>
Date: Tue, 18 Feb 2025 15:03:35 +0200
Message-ID: <8734gbo15k.fsf@intel.com>
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

On Tue, 18 Feb 2025, Imre Deak <imre.deak@intel.com> wrote:
> During disabling the transcoder in DP 128b/132b mode (both in case of an
> MST master transcoder and in case of SST) the transcoder function must
> be first disabled without changing any other field in the register (in
> particular leaving the DDI port and mode select fields unchanged) and
> clearing the DDI port and mode select fields separately, later during
> the disabling sequences. Fix the sequence accordingly.
>
> Bspec: 54128, 65448, 68849
> Cc: Jani Nikula <jani.nikula@intel.com>
> Fixes: 79a6734cd56e ("drm/i915/ddi: disable trancoder port select for 128b/132b SST")
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Looks like I've intentionally done it this way. I think I've stumbled on
the bspec text "DP v2.0/128b Primary" and the "primary" has convinced me
this means MST. In most cases one should just read all things MST as
being true for MTP, regardless of 8b/10b or 128b/132b, no matter what
the text actually says. :p

Thanks for debugging and fixing these!

BR,
Jani.


> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 5082f38b0a02e..7937f4de66cb4 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -681,7 +681,6 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> -	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
>  	u32 ctl;
>  
>  	if (DISPLAY_VER(dev_priv) >= 11)
> @@ -701,8 +700,7 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
>  			 TRANS_DDI_PORT_SYNC_MASTER_SELECT_MASK);
>  
>  	if (DISPLAY_VER(dev_priv) >= 12) {
> -		if (!intel_dp_mst_is_master_trans(crtc_state) ||
> -		    (!is_mst && intel_dp_is_uhbr(crtc_state))) {
> +		if (!intel_dp_mst_is_master_trans(crtc_state)) {
>  			ctl &= ~(TGL_TRANS_DDI_PORT_MASK |
>  				 TRANS_DDI_MODE_SELECT_MASK);
>  		}
> @@ -3138,7 +3136,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
>  	intel_dp_set_power(intel_dp, DP_SET_POWER_D3);
>  
>  	if (DISPLAY_VER(dev_priv) >= 12) {
> -		if (is_mst) {
> +		if (is_mst || intel_dp_is_uhbr(old_crtc_state)) {
>  			enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
>  
>  			intel_de_rmw(dev_priv,

-- 
Jani Nikula, Intel
