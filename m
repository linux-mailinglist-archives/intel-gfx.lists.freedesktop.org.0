Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAAD78FBEE
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 12:53:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FC9E10E739;
	Fri,  1 Sep 2023 10:53:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CB0B10E739
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 10:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693565601; x=1725101601;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ZmZ8U/34mEKJ3JQVub5imKlbckwTuyjEV0FHZyAN+I8=;
 b=l9ufNgZOgBNpf0aa+d1v+H4dE9pZEplxSLRKn28ISmQt3l3vwvaVIh87
 tG5y5Uxs3iGg06jWvGE3JlwSF5chkyA3QjYq0KBqzU5utaG5iB6vgbYus
 uP4Sejz6VD6uTLkNEf0qt/I1PRyKSzA0bXysNpRiortkVi3bvY7rvPFSx
 QxV82TJlyTVbIbdbPuadiAXcKzbMEdMJILCqbBrBlDqOXDgOzTr33bStr
 mEU4ctPDuTnvHT0rFpPdtnOTuHgNpzaV7bJICTPjOoRhx0tB5EmGrvdXU
 3MeTejba609m1ejbmBhW6GIVCrjmny1QDtFCyrxspczZ5mQLDln31VO7v g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="356508366"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="356508366"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 03:53:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="854667491"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="854667491"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 01 Sep 2023 03:53:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Sep 2023 13:53:18 +0300
Date: Fri, 1 Sep 2023 13:53:18 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: William Tseng <william.tseng@intel.com>
Message-ID: <ZPHCnhg9KcOwfvof@intel.com>
References: <20230901095100.3771188-1-william.tseng@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230901095100.3771188-1-william.tseng@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: let HW maintain HS-TRAIL and
 CLK_POST
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

On Fri, Sep 01, 2023 at 05:51:00PM +0800, William Tseng wrote:
> This change is to adjust TEOT timing and TCLK-POST timing so DSI
> signaling can meet CTS specification.
> 
> For clock lane, the measured TEOT may be changed from 142.64 ns to
> 107.36 ns, which is less than (105 ns+12*UI) and is conformed to
> mipi D-PHY v1.2 CTS v1.0.
> 
> As to TCLK-POST, it may be changed from 133.44 ns to 178.72 ns, which
> is greater than (60 ns+52*UI) and is conformed to the CTS standard.
> 
> The computed UI is around 1.47 ns.
> 
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Signed-off-by: William Tseng <william.tseng@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 31 ++++----------------------
>  1 file changed, 4 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index ad6488e9c2b2..4a13f467ca46 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1819,10 +1819,10 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
>  	struct intel_connector *connector = intel_dsi->attached_connector;
>  	struct mipi_config *mipi_config = connector->panel.vbt.dsi.config;
>  	u32 tlpx_ns;
> -	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt, trail_cnt;
> -	u32 ths_prepare_ns, tclk_trail_ns;
> +	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt;
> +	u32 ths_prepare_ns;
>  	u32 hs_zero_cnt;
> -	u32 tclk_pre_cnt, tclk_post_cnt;
> +	u32 tclk_pre_cnt;
>  
>  	tlpx_ns = intel_dsi_tlpx_ns(intel_dsi);
>  
> @@ -1853,14 +1853,6 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
>  		clk_zero_cnt = ICL_CLK_ZERO_CNT_MAX;
>  	}
>  
> -	/* trail cnt in escape clocks*/
> -	trail_cnt = DIV_ROUND_UP(tclk_trail_ns, tlpx_ns);
> -	if (trail_cnt > ICL_TRAIL_CNT_MAX) {
> -		drm_dbg_kms(&dev_priv->drm, "trail_cnt out of range (%d)\n",
> -			    trail_cnt);
> -		trail_cnt = ICL_TRAIL_CNT_MAX;
> -	}
> -
>  	/* tclk pre count in escape clocks */
>  	tclk_pre_cnt = DIV_ROUND_UP(mipi_config->tclk_pre, tlpx_ns);
>  	if (tclk_pre_cnt > ICL_TCLK_PRE_CNT_MAX) {
> @@ -1869,15 +1861,6 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
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
> @@ -1902,19 +1885,13 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
>  			       CLK_ZERO_OVERRIDE |
>  			       CLK_ZERO(clk_zero_cnt) |
>  			       CLK_PRE_OVERRIDE |
> -			       CLK_PRE(tclk_pre_cnt) |
> -			       CLK_POST_OVERRIDE |
> -			       CLK_POST(tclk_post_cnt) |
> -			       CLK_TRAIL_OVERRIDE |
> -			       CLK_TRAIL(trail_cnt));
> +			       CLK_PRE(tclk_pre_cnt));

Windows seems set these overrides:

icl clk DPHY:  PREPARE,ZERO
icl clk DSI:   PREPARE,ZERO
icl data DPHY: PREPARE,ZERO,EXIT
icl data DSI:  PREPARE,ZERO,EXIT

tgl clk DPHY:  PREPARE,ZERO (?)
tgl clk DSI:   PREPARE,ZERO,POST (?)
tgl data DPHY: PREPARE,ZERO,EXIT
tgl data DSI:  PREPARE,ZERO,EXIT

adl clk DPHY:  PREPARE,ZERO (?)      (also PRE for 2.0-2.5 GHz data rate)
adl clk DSI:   PREPARE,ZERO,POST (?) (also PRE for 2.0-2.5 GHz data rate)
adl data DPHY: PREPARE,ZERO,EXIT
adl data DSI : PREPARE,ZERO,EXIT

Didn't see any justification for the weird mismatch between 
DSI vs. DPHY POST override on tgl+.

Anyways, looks like removing TRAIL is not particularly controversial
since Windows also never overrides it. So probably you should split that
up into a separate patch. 

>  
>  	/* data lanes dphy timings */
>  	intel_dsi->dphy_data_lane_reg = (HS_PREPARE_OVERRIDE |
>  					 HS_PREPARE(prepare_cnt) |
>  					 HS_ZERO_OVERRIDE |
>  					 HS_ZERO(hs_zero_cnt) |
> -					 HS_TRAIL_OVERRIDE |
> -					 HS_TRAIL(trail_cnt) |
>  					 HS_EXIT_OVERRIDE |
>  					 HS_EXIT(exit_zero_cnt));
>  
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
