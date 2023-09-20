Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB067A8AC2
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 19:44:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13AF810E529;
	Wed, 20 Sep 2023 17:44:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79F5310E529
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 17:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695231867; x=1726767867;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=/midA83FeSBwmQxLu9kcT3UtoHQpH4Z8uP0SswMB2cU=;
 b=CKbfWMSe9kBMlSOw3YFYNk9YBn6EblXfVs4ZrgWn6mXL9BeGqy/VbgOm
 wjNNoS59Jy6nesrm+hXiRSN1fOSKhoH4kRBuw8R7sYXumQc/ICrB9z1kY
 IRcSq+t3R5yzGbsGFoeclQtsq6MKogPz3aUyb6m/mSRx7nwubhuugSqVv
 +rltxks7Pg8pqVoVqgcwOFYGgLta8BnQUb1gDmV2XPxfhrMeQCMGhTmaE
 3InOod9bNbJm6IuHrY4AK5wff3kZ8RpuuMrJJUFVaxWJaq3Ds86ZO5dty
 nwb0WCJyIAQXKjV5LrSHM8PcdVphs5FS7gXm5EGgirTQ6rTvF5m2m2AO2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="411241329"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="411241329"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 10:44:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="1077554686"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="1077554686"
Received: from ptelkov-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.38.103])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 10:44:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: William Tseng <william.tseng@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230914095137.4132029-1-william.tseng@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230901095100.3771188-1-william.tseng@intel.com>
 <20230914095137.4132029-1-william.tseng@intel.com>
Date: Wed, 20 Sep 2023 20:44:21 +0300
Message-ID: <87h6norb7u.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dsi: let HW maintain CLK_POST
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
Cc: William Tseng <william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 14 Sep 2023, William Tseng <william.tseng@intel.com> wrote:
> This change is to adjust TCLK-POST timing so DSI signaling can
> meet CTS specification.
>
> For clock lane, the TCLK-POST timing may be changed from
> 133.44 ns to 178.72 ns, which is greater than (60 ns+52*UI)
> and is conformed to the CTS standard.
>
> The computed UI is around 1.47 ns.
>
> v2: remove the change of HS-TRAIL.
>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Signed-off-by: William Tseng <william.tseng@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 13 +------------
>  1 file changed, 1 insertion(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index ad6488e9c2b2..c4585e445198 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1822,7 +1822,7 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
>  	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt, trail_cnt;
>  	u32 ths_prepare_ns, tclk_trail_ns;
>  	u32 hs_zero_cnt;
> -	u32 tclk_pre_cnt, tclk_post_cnt;
> +	u32 tclk_pre_cnt;
>  
>  	tlpx_ns = intel_dsi_tlpx_ns(intel_dsi);
>  
> @@ -1869,15 +1869,6 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
>  		tclk_pre_cnt = ICL_TCLK_PRE_CNT_MAX;
>  	}
>  
> -	/* tclk post count in escape clocks */
> -	tclk_post_cnt = DIV_ROUND_UP(mipi_config->tclk_post, tlpx_ns);
> -	if (tclk_post_cnt > ICL_TCLK_POST_CNT_MAX) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "tclk_post_cnt out of range (%d)\n",
> -			    tclk_post_cnt);
> -		tclk_post_cnt = ICL_TCLK_POST_CNT_MAX;
> -	}
> -
>  	/* hs zero cnt in escape clocks */
>  	hs_zero_cnt = DIV_ROUND_UP(mipi_config->ths_prepare_hszero -
>  				   ths_prepare_ns, tlpx_ns);
> @@ -1903,8 +1894,6 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
>  			       CLK_ZERO(clk_zero_cnt) |
>  			       CLK_PRE_OVERRIDE |
>  			       CLK_PRE(tclk_pre_cnt) |
> -			       CLK_POST_OVERRIDE |
> -			       CLK_POST(tclk_post_cnt) |
>  			       CLK_TRAIL_OVERRIDE |
>  			       CLK_TRAIL(trail_cnt));

-- 
Jani Nikula, Intel
