Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FBC4F5744
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 10:14:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B8CD10E3DB;
	Wed,  6 Apr 2022 08:14:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D06210E3DB
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 08:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649232860; x=1680768860;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=D7NeBswoRVxK6sK6IT7g1mB/QpXrpxapCSsaI2YNEp8=;
 b=iL3vP+qNIUPMdoUdq1X8vfqNBIpHbBavTerp5HYxiNzVlz4v5CZvozg+
 0AVWFGAdtK04fPwUbAStLdtR6zcF2Zd3E/Hk3XL1EZD68If2jXrZD+j9u
 9commrpcDqMEie9BTimSnj8IbYdrCm9mocRPZjD0eDwQbIv2h6ELL3iG0
 PyT+xS2PIBrT5FcEpCDT63wkvlOHdMrhl5Qa9fQqtKkYOTkmm98nJioWz
 X8be2AHevQEBatfi4tlb5t765dKzYAVIDnnUb56cQp2QpI8pNPBGamnF9
 67uyGcqOo8AKZ2cddYz/BVxf81qbpu8HC7yCMGtjV1P5y7jkrkIDnBREI g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="261159636"
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="261159636"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 01:14:19 -0700
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="608799701"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 01:14:18 -0700
Date: Wed, 6 Apr 2022 11:14:59 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <20220406081459.GA14945@intel.com>
References: <20220404134918.729038-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220404134918.729038-1-vinod.govindapillai@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: program wm blocks to at least
 blocks required per line
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 04, 2022 at 04:49:18PM +0300, Vinod Govindapillai wrote:
> In configurations with single DRAM channel, for usecases like
> 4K 60 Hz, FIFO underruns are observed quite frequently. Looks
> like the wm0 watermark values need to bumped up because the wm0
> memory latency calculations are probably not taking the DRAM
> channel's impact into account.
> 
> As per the Bspec 49325, if the ddb allocation can hold at least
> one plane_blocks_per_line we should have selected method2.
> Assuming that modern HW versions have enough dbuf to hold
> at least one line, set the wm blocks to equivalent to blocks
> per line.
> 
> cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 8824f269e5f5..ae28a8c63ca4 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -5474,7 +5474,24 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
>  		}
>  	}
>  
> -	blocks = fixed16_to_u32_round_up(selected_result) + 1;
> +	/*
> +	 * Lets have blocks at minimum equivalent to plane_blocks_per_line
> +	 * as there will be at minimum one line for lines configuration.
> +	 *
> +	 * As per the Bspec 49325, if the ddb allocation can hold at least
> +	 * one plane_blocks_per_line, we should have selected method2 in
> +	 * the above logic. Assuming that modern versions have enough dbuf
> +	 * and method2 guarantees blocks equivalent to at least 1 line,
> +	 * select the blocks as plane_blocks_per_line.
> +	 *
> +	 * TODO: Revisit the logic when we have better understanding on DRAM
> +	 * channels' impact on the level 0 memory latency and the relevant
> +	 * wm calculations.
> +	 */
> +	blocks = skl_wm_has_lines(dev_priv, level) ?
> +			max_t(u32, fixed16_to_u32_round_up(selected_result) + 1,
> +				  fixed16_to_u32_round_up(wp->plane_blocks_per_line)) :
> +			fixed16_to_u32_round_up(selected_result) + 1;
>  	lines = div_round_up_fixed16(selected_result,
>  				     wp->plane_blocks_per_line);

I think this is a good fix, no IGT/BAT regressions are visible, also 
it fixes some of the current issues at customer side. So don't see any reason
for it not to be merged.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

P.S: there is some checkpatch warning, which probably needs to be addressed :)

Stan

>  
> -- 
> 2.25.1
> 
