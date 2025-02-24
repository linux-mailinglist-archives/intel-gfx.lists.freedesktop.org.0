Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41417A42196
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:44:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07AD310E3C5;
	Mon, 24 Feb 2025 13:42:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GzP6vrhJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 306E910E1FC;
 Mon, 24 Feb 2025 10:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740393281; x=1771929281;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=zdNflq1GeOQTZuf4UAlceelvEZTDdDaYrA0DEt0INW8=;
 b=GzP6vrhJB/pfH8aRR1txkxbuKwatihEhyzI98RDqsqo7R6Y6r9iNRZtw
 d78GPJLFx1nK53AtdC5efe6QWOm2X4RI+7OPUCqawyOMticbZGQC7yQY9
 3mlnr5O28xcapN95MQ7ml1gJr+Uhz49TP6POBdv73Q2YriBagTJULplPL
 iA9xdlrDvu3yGmdpleJItJx61VRgGSTLbqyK7uAeJ1iDHDbFbMm0EUpGa
 rL6Smr7aewQPs57Zrr3kwHU0Q/2M7hT7LjiHYjtWc7lDRpH9NFuPxo++u
 rdGLw8d3QRGk12DDE0N0tJ0p7fsDtj6d6yjJexEvFuBx6wJB5396iFPlk w==;
X-CSE-ConnectionGUID: auvj1pNxRCSXKePlbUZPXw==
X-CSE-MsgGUID: Zrl1stQjSCCP6dwB5Kk3sQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="28739424"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="28739424"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:34:40 -0800
X-CSE-ConnectionGUID: o82CY+xIQ5ix6iuzp42nCg==
X-CSE-MsgGUID: ke3AQ2tQSEuNq9Nwxl0d3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="146906629"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.133])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:34:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dp_mst: Fix encoder HW state readout for UHBR MST
In-Reply-To: <20250224093242.1859583-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250224093242.1859583-1-imre.deak@intel.com>
Date: Mon, 24 Feb 2025 12:34:36 +0200
Message-ID: <8734g38wcj.fsf@intel.com>
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

On Mon, 24 Feb 2025, Imre Deak <imre.deak@intel.com> wrote:
> The encoder HW/SW state verification should use a SW state which stays
> unchanged while the encoder/output is active. The intel_dp::is_mst flag
> used during state computation to choose between the DP SST/MST modes can
> change while the output is active, if the sink gets disconnected or the
> MST topology is removed for another reason. A subsequent state
> verification using intel_dp::is_mst leads then to a mismatch if the
> output is disabled/re-enabled without recomputing its state.
>
> Use the encoder's active MST link count instead, which will be always
> non-zero for an active MST output and will be zero for SST.
>
> Fixes: 35d2e4b75649 ("drm/i915/ddi: start distinguishing 128b/132b SST and MST at state readout")
> Fixes: 40d489fac0e8 ("drm/i915/ddi: handle 128b/132b SST in intel_ddi_read_func_ctl()")
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Do we have a bug for this?

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 7937f4de66cb4..8c8b53414da67 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -890,7 +890,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
>  			    encoder->base.base.id, encoder->base.name);
>  
>  	if (!mst_pipe_mask && dp128b132b_pipe_mask) {
> -		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +		struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  
>  		/*
>  		 * If we don't have 8b/10b MST, but have more than one
> @@ -902,7 +902,8 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
>  		 * we don't expect MST to have been enabled at that point, and
>  		 * can assume it's SST.
>  		 */
> -		if (hweight8(dp128b132b_pipe_mask) > 1 || intel_dp->is_mst)
> +		if (hweight8(dp128b132b_pipe_mask) > 1 ||
> +		    intel_dp_mst_encoder_active_links(dig_port))

I think the reasoning here is valid, but I think we should probably do
something about the intel_dp_mst_encoder_active_links() naming as
follow-up. This is confusing. What is an "mst encoder"? The above
expects the primary digital port, i.e. it assumes enc_to_dig_port()
already did the right thing. It's all really subtle. Also wrt which
encoders the intel_ddi_get_encoder_pipes() gets called on.

Maybe we need s/intel_dp_mst_encoder/intel_dp_mst_primary/ for this and
some other functions? They're not about the "fake" mst stream encoders.

Anyway,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>  			mst_pipe_mask = dp128b132b_pipe_mask;
>  	}
>  
> @@ -4131,13 +4132,13 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
>  	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_MST) {
>  		intel_ddi_read_func_ctl_dp_mst(encoder, pipe_config, ddi_func_ctl);
>  	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && HAS_DP20(display)) {
> -		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +		struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  
>  		/*
>  		 * If this is true, we know we're being called from mst stream
>  		 * encoder's ->get_config().
>  		 */
> -		if (intel_dp->is_mst)
> +		if (intel_dp_mst_encoder_active_links(dig_port))
>  			intel_ddi_read_func_ctl_dp_mst(encoder, pipe_config, ddi_func_ctl);
>  		else
>  			intel_ddi_read_func_ctl_dp_sst(encoder, pipe_config, ddi_func_ctl);

-- 
Jani Nikula, Intel
