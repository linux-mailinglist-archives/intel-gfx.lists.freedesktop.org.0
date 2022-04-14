Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E8C501AA5
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 19:59:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B4ED10E1B8;
	Thu, 14 Apr 2022 17:59:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E63210E1B8
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 17:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649959190; x=1681495190;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qOc9X3y/UXzAKitx1Gq+jrbkRw7OKaqLzpcuXay/gS8=;
 b=TRh9vLt0xklx1sIhDEYZrW2smlOaEhFQ9DMmmAhcm1qMDifsGl7piY/Z
 Qu0eIYlwDiujKEgEsck3fb4syZmCtWJmt0R5qOxJg9BUCGfS/es9L4FfM
 FU99wVlRA1hnSGRr6fXQwHDoN/UUe50jzsklUDjAdCR7i8DbZo+ORW2mS
 zv5GxTWNxU/Uhfi3sizuhC+AbDJ7pVjt65UqTTmJHJ1CtfZK9V24XOPhI
 0/Z5FsUtfyM5B57AneIppoKWMWBDIUN30Rh6063fmpO6z0m5Vn/Cdcxae
 nOgRNQsBX8YR0IwHVu87EZyEVM6HaQR2L6RfKa1dq1kIym+JZtVj47ABa w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="349431272"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="349431272"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 10:59:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="527008002"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga002.jf.intel.com with SMTP; 14 Apr 2022 10:59:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Apr 2022 20:59:46 +0300
Date: Thu, 14 Apr 2022 20:59:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <YlhhEmBvblhXf8l1@intel.com>
References: <20220406174311.82104-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220406174311.82104-1-vinod.govindapillai@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: program wm blocks to at least
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

On Wed, Apr 06, 2022 at 08:43:11PM +0300, Vinod Govindapillai wrote:
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
> V2: styling and comments changes (Ville)
> V3: Updated the reviewed-by tag
> 
> cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 

Normally people put all the tags in one block, ie. no extra newlines
like this. Also 'Cc:' is the normal form for these.

I was expecting to see gitlab issue links here. Maybe not Closes:
since this is not the final form I guess. But could slap them on here
as References:.

> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 8824f269e5f5..d284ec8aff21 100644
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
> +		blocks = max_t(u32, blocks,
> +			       fixed16_to_u32_round_up(wp->plane_blocks_per_line));

A simple max() should do since the types are the same.

>  	lines = div_round_up_fixed16(selected_result,
>  				     wp->plane_blocks_per_line);
>  
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
