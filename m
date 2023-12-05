Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D50638055BB
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 14:21:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56CB410E524;
	Tue,  5 Dec 2023 13:21:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 961CE10E524
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 13:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701782490; x=1733318490;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=MgHUgYCYqJbiF30i0vKaseJx/MQ35EfImiZzvubtCvE=;
 b=PDgBIG3vbOEfWayHekw7gl1wCe2W/H8SWdg/gteA+okP17HM/0lnNiDu
 yGgZsqNsPdW4Je/UzAF/Z1ZofQY6EFtpT+lTEiGsFNHnNOKAlRG63TiJz
 omewy9xb96wcaoLtlmSZEQKLGHOUncYJGT56zSmzk5QBm62+sCsJ/sf5f
 IQBM3dkhEe9oQA5ms3Yd65jvh1ZhNYjT2NgMGJdIrrK4qxGdfnKzrYINP
 7srROsO+5jRidwYRpwFGAe7YzoVVq7U1i0eNNW0nLlRQLm71aYqXiw/or
 Lo/Y4dDqtoP97Ow0iMc5eZgADZ/2mxC7/Ov9awGX4iXzCSgyYeG9HIPHg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="775158"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; 
   d="scan'208";a="775158"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 05:21:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="774631722"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="774631722"
Received: from pesir-mobl.ger.corp.intel.com (HELO localhost) ([10.252.61.103])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 05:21:28 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231130213103.214915-1-khaled.almahallawy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231130213103.214915-1-khaled.almahallawy@intel.com>
Date: Tue, 05 Dec 2023 15:21:25 +0200
Message-ID: <87y1e823ai.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/dp: Use LINK_QUAL_PATTERN_*
 Phy test pattern names
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

On Thu, 30 Nov 2023, Khaled Almahallawy <khaled.almahallawy@intel.com> wrote:
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

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

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
