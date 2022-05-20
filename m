Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C191252F3B8
	for <lists+intel-gfx@lfdr.de>; Fri, 20 May 2022 21:21:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FB4F10EE7D;
	Fri, 20 May 2022 19:21:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C47E510EE7D
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 May 2022 19:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653074459; x=1684610459;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ZxSc/BfD4vU2ZO9b03yUUbFMHDarZX1QOk0rACns5as=;
 b=Bz288rYSKLIqy8OFIvuyHl73JfoSiNrRFI1kg8oZ+kTye9piCquu4VGA
 UEK9jbSF/LsF3WePdbUVfmbinlCGlsrV6ncIIOYfg6EXuiD87Cxy81mq6
 9E59uhRZCjE5/xP7KidpWJ7hJCUl1+hKPrlv2GYNYdfnjr2iEMRp3CMNX
 waoLfaPflhg/0FT5rIimzuUSgeIoV/VnnaKvO+RYPuPbBp7npNKs7Fus6
 oQSZWQ6qlB7oOSh7auJGutqAzn5ccZV5fBy3d4F0Fr6OKGAgm6ABZsb/H
 0GZJ30d8KT4J7eo3nGDTNDr9cQvckNdjQNvu6fDqwhbX6DaovVxUH/RMk A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10353"; a="272414259"
X-IronPort-AV: E=Sophos;i="5.91,240,1647327600"; d="scan'208";a="272414259"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2022 12:20:59 -0700
X-IronPort-AV: E=Sophos;i="5.91,240,1647327600"; d="scan'208";a="743638609"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2022 12:20:58 -0700
Date: Fri, 20 May 2022 12:20:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <YofqGVyLsHVFPEQo@mdroper-desk1.amr.corp.intel.com>
References: <20220511083121.3729202-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220511083121.3729202-1-ankit.k.nautiyal@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Support 4k@30 on HDMI
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

On Wed, May 11, 2022 at 02:01:21PM +0530, Ankit Nautiyal wrote:
> From: Vandita Kulkarni <vandita.kulkarni@intel.com>
> 
> This patch adds a fix to support 297MHz of dot clock by calculating
> the pll values using synopsis algorithm.
> This will help to support 4k@30 mode for HDMI monitors on DG2.
> 
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_snps_phy.c | 31 +++++++++++++++++++
>  1 file changed, 31 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> index 0dd4775e8195..ec1700dd3bc6 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> @@ -517,6 +517,36 @@ static const struct intel_mpllb_state dg2_hdmi_148_5 = {
>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
>  };
>  
> +/* values in the below table are calculted using the algo */
> +static const struct intel_mpllb_state dg2_hdmi_297 = {
> +	.clock = 297000,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2),

When I calculate these tables out by hand, I also have

        REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3)

as part of mpllb_div.  Can you double check that?


Matt

> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 86) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 26214) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 26214),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
>  static const struct intel_mpllb_state dg2_hdmi_594 = {
>  	.clock = 594000,
>  	.ref_control =
> @@ -551,6 +581,7 @@ static const struct intel_mpllb_state * const dg2_hdmi_tables[] = {
>  	&dg2_hdmi_27_0,
>  	&dg2_hdmi_74_25,
>  	&dg2_hdmi_148_5,
> +	&dg2_hdmi_297,
>  	&dg2_hdmi_594,
>  	NULL,
>  };
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
