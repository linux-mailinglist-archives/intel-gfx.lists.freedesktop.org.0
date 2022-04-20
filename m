Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6005089F9
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 16:02:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2616910F18C;
	Wed, 20 Apr 2022 14:02:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8901910F18C
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 14:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650463363; x=1681999363;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=CRdgkj8CQjsDz562HRndLLC/Nvqp4EHbnxopiTDWn2M=;
 b=lkhcwxOqXTyOlV+CGABz82eANZTDGwhZ+2w2fCR5emc/9QYBt4EqWZZx
 f8coJstLq23NODwbf6i1eESghL0himjqEbbRcAm6sOEm6trdFetEV/huY
 nkPVt+HlQFRc89OGVx6UaUqWoDLbbsGthhYVKj+uxQGUV3yWVpUzRoJT/
 HPtQ/ddGaf1SoF4Ri9+M9uvcZUaovOwCS34W+Bir43ncp4z1l0ZRdee5q
 OlweT5e1BVY5fiSKHfazcDgsXzarl2VR8O4o5vAa1xt5Gj4CAGCdowUWn
 OAYhrV4ABWTCiyw9JWWNmD67WPIvM7NUXkKMN4HKysZC17lQM7Sycvrop w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="263492323"
X-IronPort-AV: E=Sophos;i="5.90,275,1643702400"; d="scan'208";a="263492323"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 07:02:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,275,1643702400"; d="scan'208";a="531826670"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga002.jf.intel.com with SMTP; 20 Apr 2022 07:02:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Apr 2022 17:02:39 +0300
Date: Wed, 20 Apr 2022 17:02:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <YmASf4LaUet8p2Nn@intel.com>
References: <20220417093105.729014-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220417093105.729014-1-vinod.govindapillai@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915: program wm blocks to at least
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

On Sun, Apr 17, 2022 at 12:31:05PM +0300, Vinod Govindapillai wrote:
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
> v2: styling and comments changes (Ville)
> v3: Updated the reviewed-by tag
> v4: max_t to max and patch styling (Ville)
> 
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/4321
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Thanks. Pushed to drm-intel-next.

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 594ab59e4991..ee0047fdc95d 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -5475,6 +5475,25 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
>  	}
>  
>  	blocks = fixed16_to_u32_round_up(selected_result) + 1;
> +	/*
> +	 * Lets have blocks at minimum equivalent to plane_blocks_per_line
> +	 * as there will be at minimum one line for lines configuration. This
> +	 * is a work around for FIFO underruns observed with resolutions like
> +	 * 4k 60 Hz in single channel DRAM configurations.
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
> +	if (skl_wm_has_lines(dev_priv, level))
> +		blocks = max(blocks,
> +			     fixed16_to_u32_round_up(wp->plane_blocks_per_line));
>  	lines = div_round_up_fixed16(selected_result,
>  				     wp->plane_blocks_per_line);
>  
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
