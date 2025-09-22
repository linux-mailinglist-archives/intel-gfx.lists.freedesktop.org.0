Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4F9B92DE5
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 21:35:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 529E810E1D5;
	Mon, 22 Sep 2025 19:35:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PRmxOp8j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 725C110E009;
 Mon, 22 Sep 2025 19:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758569748; x=1790105748;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=byKLIucuW/2aSi2fcCD1kn2X7gGCGvpZ8npz/fT/9kw=;
 b=PRmxOp8jMQ7vd9jy/c4PgQW1IIhqd+hNARt9tVIIuqulmt/r+eaYdTMJ
 GlFKx+pDlN6RH/GT4StC2YCQUHj6Vaw6da+62/MhP8b1ILG+qk9TTFt6g
 lG3BE6Zbkl8jOnHuMOLXBGtakyK2s3bOdgm+E3vqTa3RyxyLvaFghaET0
 Od3iEf9Ls4YJTKUgzsosB2zMEFFrX3Z4f2NWa2jeSqSdOX1yqyrPKpZXw
 YQkkdo8lR/ZXHRVhlqqlIDNbrvH3UcOOE9PoMVtwmE7cjJ7jUwQZf2wKS
 5QucxvPAgzXEJBuoPMwK0NWEEHWOaahWAIlN8JafWi8K7cbYLa75DSecx Q==;
X-CSE-ConnectionGUID: SbLIi5zMTyijI3aMJzSPAQ==
X-CSE-MsgGUID: A5E9pUj4R72vj6JioN0nWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="61006022"
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="61006022"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 12:35:48 -0700
X-CSE-ConnectionGUID: Vju9z/KvRHO+mTkOpxHQig==
X-CSE-MsgGUID: cFygIyAwR1OVZmH6VM0xkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="176623090"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.115])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 12:35:45 -0700
Date: Mon, 22 Sep 2025 22:35:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/5] drm/i915/dp: Verify branch devices' overall pixel
 throughput/line width
Message-ID: <aNGlDi2n_C5pNFXk@intel.com>
References: <20250918211223.209674-1-imre.deak@intel.com>
 <20250918211223.209674-5-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250918211223.209674-5-imre.deak@intel.com>
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

On Fri, Sep 19, 2025 at 12:12:22AM +0300, Imre Deak wrote:
> Read out the branch devices' maximum overall DSC pixel throughput and
> line width and verify the mode's corresponding pixel clock and hactive
> period against these.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  8 +++
>  drivers/gpu/drm/i915/display/intel_dp.c       | 62 +++++++++++++++++++
>  2 files changed, 70 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 358ab922d7a76..73bdafae604f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -552,6 +552,14 @@ struct intel_connector {
>  
>  		u8 dsc_hblank_expansion_quirk:1;
>  		u8 dsc_decompression_enabled:1;
> +
> +		struct {
> +			struct {
> +				int rgb_yuv444;
> +				int yuv422_420;
> +			} overall_throughput;
> +			int max_line_width;
> +		} dsc_branch_caps;
>  	} dp;
>  
>  	struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 8cc123b0fd752..dd082d2fcc968 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1042,6 +1042,20 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>  	int tp_yuv422_420;
>  	u8 val;
>  
> +	/*
> +	 * TODO: Use the throughput value specific to the actual RGB/YUV
> +	 * format of the output.
> +	 * The RGB/YUV444 throughput value should be always either equal
> +	 * or smaller than the YUV422/420 value, but let's not depend on
> +	 * this assumption.
> +	 */
> +	if (mode_clock > max(connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444,
> +			     connector->dp.dsc_branch_caps.overall_throughput.yuv422_420))
> +		return 0;
> +
> +	if (mode_hdisplay > connector->dp.dsc_branch_caps.max_line_width)
> +		return 0;

Looks like you only initialize these when the branch device supports
decompression. What about a branch device that can do pass-through but
no decompression? Should we even be checking these when doing
pass-through?

> +
>  	val = connector->dp.dsc_dpcd[DP_DSC_PEAK_THROUGHPUT - DP_DSC_SUPPORT];
>  	tp_rgb_yuv444 = dsc_per_slice_throughput(display, mode_clock,
>  						 REG_FIELD_GET8(DP_DSC_THROUGHPUT_MODE_0_MASK,
> @@ -4204,6 +4218,44 @@ static void intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
>  		    dsc_dpcd);
>  }
>  
> +static int dsc_branch_overall_throughput(u8 bw_code)
> +{
> +	switch (bw_code) {
> +	case 0:
> +		return INT_MAX;
> +	case 1:
> +		return 680000;
> +	default:
> +		return 600000 + 50000 * bw_code;
> +	}
> +}
> +
> +static void init_dsc_overall_throughput_limits(struct intel_connector *connector, bool is_branch)
> +{
> +	u8 branch_caps[3];
> +
> +	connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444 = INT_MAX;
> +	connector->dp.dsc_branch_caps.overall_throughput.yuv422_420 = INT_MAX;
> +	connector->dp.dsc_branch_caps.max_line_width = INT_MAX;
> +
> +	if (!is_branch)
> +		return;
> +
> +	if (drm_dp_dpcd_read_data(connector->dp.dsc_decompression_aux,
> +				  DP_DSC_BRANCH_OVERALL_THROUGHPUT_0, branch_caps,
> +				  sizeof(branch_caps)) != 0)
> +		return;
> +
> +	connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444 =
> +		dsc_branch_overall_throughput(branch_caps[0]);
> +
> +	connector->dp.dsc_branch_caps.overall_throughput.yuv422_420 =
> +		dsc_branch_overall_throughput(branch_caps[1]);
> +
> +	if (branch_caps[2] != 0)
> +		connector->dp.dsc_branch_caps.max_line_width = branch_caps[2] * 320;

That max line width calculation should probably be a function as well
so that it can later be moved into some drm helper file along with the
other functions.

> +}
> +
>  void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
>  			       const struct drm_dp_desc *desc, bool is_branch,
>  			       struct intel_connector *connector)
> @@ -4219,6 +4271,8 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
>  	/* Clear fec_capable to avoid using stale values */
>  	connector->dp.fec_capability = 0;
>  
> +	memset(&connector->dp.dsc_branch_caps, 0, sizeof(connector->dp.dsc_branch_caps));
> +
>  	if (dpcd_rev < DP_DPCD_REV_14)
>  		return;
>  
> @@ -4233,6 +4287,11 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
>  
>  	drm_dbg_kms(display->drm, "FEC CAPABILITY: %x\n",
>  		    connector->dp.fec_capability);
> +
> +	if (!(connector->dp.dsc_dpcd[0] & DP_DSC_DECOMPRESSION_IS_SUPPORTED))
> +		return;
> +
> +	init_dsc_overall_throughput_limits(connector, is_branch);
>  }
>  
>  static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *connector)
> @@ -4241,6 +4300,9 @@ static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *
>  		return;
>  
>  	intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux, connector->dp.dsc_dpcd);
> +
> +	if (connector->dp.dsc_dpcd[0] & DP_DSC_DECOMPRESSION_IS_SUPPORTED)
> +		init_dsc_overall_throughput_limits(connector, false);
>  }
>  
>  static void
> -- 
> 2.49.1

-- 
Ville Syrjälä
Intel
