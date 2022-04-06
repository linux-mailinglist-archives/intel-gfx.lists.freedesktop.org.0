Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C814F5E5F
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 14:48:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FEBC10EC50;
	Wed,  6 Apr 2022 12:48:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8218110ED18
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 12:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649249286; x=1680785286;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=J3GaxOLIPPMvdikGQd9G/VeY6mi8ZX5UR8rklzykslE=;
 b=TlkJQ2daebfHjvETZxSSjp34JZ5U6+SXnMRW+HOn33Ox0PqgQTgauzba
 LVIucDbAMXTWG0HL5Pszm50h5XxKFrwrAOnUm9WQ9wuiMLliH+zo9tcQv
 4izlSEoynz7CpiIFI6z+phqdBiddEpmwKM6vm5IhAmI9g8fCtmK27fXcA
 mGMOeTIS2o0zvPjChtJ3o1srodf2JNdkzZjvT+y3tO6+QbvygN6qkSE/e
 q0GwS67X6UlW+hDyThmdya49MKu+HMQ+diRRmWV6xWTyKclqhAldd6123
 kSrHknu6xt3LJniUb0w79370vb+ErfZQhustaZ+G8glnEFQBSR8nvo4QP w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="321729760"
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="321729760"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 05:48:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="697358419"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga001.fm.intel.com with SMTP; 06 Apr 2022 05:48:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Apr 2022 15:48:02 +0300
Date: Wed, 6 Apr 2022 15:48:02 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <Yk2MAo+cfr3npN2O@intel.com>
References: <20220404134918.729038-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220404134918.729038-1-vinod.govindapillai@intel.com>
X-Patchwork-Hint: comment
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

That's looks rather convoluted.

  blocks = fixed16_to_u32_round_up(selected_result) + 1;
+ /* blah */
+ if (has_lines)
+	blocks = max(blocks, fixed16_to_u32_round_up(wp->plane_blocks_per_line));

Also since Art said nothing like this should actually be needed
I think the comment should make it a bit more clear that this
is just a hack to work around the underruns with some single
memory channel configurations.


>  	lines = div_round_up_fixed16(selected_result,
>  				     wp->plane_blocks_per_line);
>  
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
