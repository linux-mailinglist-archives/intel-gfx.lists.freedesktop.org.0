Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 820C08190AE
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 20:26:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61B5E10E011;
	Tue, 19 Dec 2023 19:26:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57CDF10E011
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 19:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703013971; x=1734549971;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=BljtsPMl+dLla4rimf1GYgB1VcRf+nJA+U1Kqi1RGPU=;
 b=JYJj/OJDSh6r28+OpXs2orhGgbdLU4wvBc2/pwGnJrwLBkRJ/wkuOKaA
 JQ2EiKmmus9T+YHGhcisamSwJF5Bmk+mt6TAO0JueiT6lUXabmTZw519V
 /iSFP4TgnAxSNL+qR2Bn7l6vzrcWWN/w41R/usCpYdFkn9osVwNHRlxOd
 EqSEOSIMipaVECBY0ZiHLaTOc04xOFrA0JHwYdU9rsBsfktkK4D3Ckrhe
 T9I8ZXH9xWeAmHlRogHjp81QQsmEd9HGxD/5RQX/zm/3HZMp5YqK98SnZ
 LvBDj1Wn0dDpIjjCWwRxO7t87IX+ESo42YGAUt0O0tgofkd5XCtfuHLH+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="460053997"
X-IronPort-AV: E=Sophos;i="6.04,289,1695711600"; d="scan'208";a="460053997"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 11:26:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="949283424"
X-IronPort-AV: E=Sophos;i="6.04,289,1695711600"; d="scan'208";a="949283424"
Received: from alexeyze-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.34.118])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 11:26:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v4 1/3] drm/i915/dp: Use LINK_QUAL_PATTERN_* Phy test
 pattern names
In-Reply-To: <20231213211542.3585105-1-khaled.almahallawy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231213211542.3585105-1-khaled.almahallawy@intel.com>
Date: Tue, 19 Dec 2023 21:26:06 +0200
Message-ID: <87a5q6t2nl.fsf@intel.com>
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

On Wed, 13 Dec 2023, Khaled Almahallawy <khaled.almahallawy@intel.com> wrote:
> Starting from DP2.0 specs, DPCD 248h is renamed
> LINK_QUAL_PATTERN_SELECT and it has the same values of registers
> DPCD 10Bh-10Eh.
> Use the PHY pattern names defined for DPCD 10Bh-10Eh in order to add
> CP2520 Pattern 3 (TPS4) phy pattern support in the next
> patch of this series and DP2.1 PHY patterns for future series.
>
> v2: rebase
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

All three pushed to drm-intel-next, thanks for the patches, and sorry it
took so long.

BR,
Jani.


> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3b2482bf683f..a1e63ab5761b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4683,27 +4683,27 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
>  	u32 pattern_val;
>  
>  	switch (data->phy_pattern) {
> -	case DP_PHY_TEST_PATTERN_NONE:
> +	case DP_LINK_QUAL_PATTERN_DISABLE:
>  		drm_dbg_kms(&dev_priv->drm, "Disable Phy Test Pattern\n");
>  		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe), 0x0);
>  		break;
> -	case DP_PHY_TEST_PATTERN_D10_2:
> +	case DP_LINK_QUAL_PATTERN_D10_2:
>  		drm_dbg_kms(&dev_priv->drm, "Set D10.2 Phy Test Pattern\n");
>  		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
>  			       DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_D10_2);
>  		break;
> -	case DP_PHY_TEST_PATTERN_ERROR_COUNT:
> +	case DP_LINK_QUAL_PATTERN_ERROR_RATE:
>  		drm_dbg_kms(&dev_priv->drm, "Set Error Count Phy Test Pattern\n");
>  		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
>  			       DDI_DP_COMP_CTL_ENABLE |
>  			       DDI_DP_COMP_CTL_SCRAMBLED_0);
>  		break;
> -	case DP_PHY_TEST_PATTERN_PRBS7:
> +	case DP_LINK_QUAL_PATTERN_PRBS7:
>  		drm_dbg_kms(&dev_priv->drm, "Set PRBS7 Phy Test Pattern\n");
>  		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
>  			       DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_PRBS7);
>  		break;
> -	case DP_PHY_TEST_PATTERN_80BIT_CUSTOM:
> +	case DP_LINK_QUAL_PATTERN_80BIT_CUSTOM:
>  		/*
>  		 * FIXME: Ideally pattern should come from DPCD 0x250. As
>  		 * current firmware of DPR-100 could not set it, so hardcoding
> @@ -4721,7 +4721,7 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
>  			       DDI_DP_COMP_CTL_ENABLE |
>  			       DDI_DP_COMP_CTL_CUSTOM80);
>  		break;
> -	case DP_PHY_TEST_PATTERN_CP2520:
> +	case DP_LINK_QUAL_PATTERN_CP2520_PAT_1:
>  		/*
>  		 * FIXME: Ideally pattern should come from DPCD 0x24A. As
>  		 * current firmware of DPR-100 could not set it, so hardcoding

-- 
Jani Nikula, Intel
