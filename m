Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3237646D4F
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 11:43:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 691EC10E1B8;
	Thu,  8 Dec 2022 10:43:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EC7710E1B8
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 10:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670496217; x=1702032217;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=jCZQfu5JaV+OB95HjCi8qMCdlkzIbvICaLpvVDyehpg=;
 b=Pc+YWuO7n7gHCc4oiuRfnuR1ieyXZ5ULDbHZ177QGGuhNHPAcKCp7KQ1
 mVboANaUEi5hEXk6EpDPr5Ujv0lo6Nw2boh6MOyhnCLtpMFamf+r1qolP
 0UtalQDCCGP6O0N/ChY1BhGwLBSgjFET1WC1ENXSL39Ct8jbPC3lpzgSL
 z66gXcLEan4cQkLGHJbGZeDYJH/s5J7sLNCNiRXaef0ChpuvK/j0dgpdo
 9VtXI9D8FaUiY/XOCe2X9ad4/ISma5+llnKZSQyGR+Fpo0Dz0hBXHVIy/
 niPdmOUo1ouqc2xI5IZxIC7A3kLAM9AsCv4Vj2C742CkA2A9g5rGGFNHR g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="381432145"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="381432145"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 02:43:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="649089795"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="649089795"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.6.160])
 ([10.213.6.160])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 02:43:35 -0800
Message-ID: <09f5e0f1-95bd-4467-c2f3-0693c0bf7774@intel.com>
Date: Thu, 8 Dec 2022 11:43:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1670433372.git.jani.nikula@intel.com>
 <4992661d93f8d5744e19408dc60ae49a5f2d597a.1670433372.git.jani.nikula@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <4992661d93f8d5744e19408dc60ae49a5f2d597a.1670433372.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 10/11] drm/i915/snps: switch to
 intel_de_* register accessors in display code
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

On 07.12.2022 18:17, Jani Nikula wrote:
> Avoid direct uncore use in display code.
> 
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/display/intel_snps_phy.c | 15 +++++++--------
>   1 file changed, 7 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> index c799e891f8b5..9494cfd45519 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> @@ -44,18 +44,18 @@ void intel_snps_phy_wait_for_calibration(struct drm_i915_private *i915)
>   	}
>   }
>   
> -void intel_snps_phy_update_psr_power_state(struct drm_i915_private *dev_priv,
> +void intel_snps_phy_update_psr_power_state(struct drm_i915_private *i915,
>   					   enum phy phy, bool enable)
>   {
>   	u32 val;
>   
> -	if (!intel_phy_is_snps(dev_priv, phy))
> +	if (!intel_phy_is_snps(i915, phy))
>   		return;
>   
>   	val = REG_FIELD_PREP(SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR,
>   			     enable ? 2 : 3);
> -	intel_uncore_rmw(&dev_priv->uncore, SNPS_PHY_TX_REQ(phy),
> -			 SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR, val);
> +	intel_de_rmw(i915, SNPS_PHY_TX_REQ(phy),
> +		     SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR, val);
>   }
>   
>   void intel_snps_phy_set_signal_levels(struct intel_encoder *encoder,
> @@ -1785,7 +1785,7 @@ void intel_mpllb_enable(struct intel_encoder *encoder,
>   	 */
>   
>   	/* 5. Software sets DPLL_ENABLE [PLL Enable] to "1". */
> -	intel_uncore_rmw(&dev_priv->uncore, enable_reg, 0, PLL_ENABLE);
> +	intel_de_rmw(dev_priv, enable_reg, 0, PLL_ENABLE);
>   
>   	/*
>   	 * 9. Software sets SNPS_PHY_MPLLB_DIV dp_mpllb_force_en to "1". This
> @@ -1830,14 +1830,13 @@ void intel_mpllb_disable(struct intel_encoder *encoder)
>   	 */
>   
>   	/* 2. Software programs DPLL_ENABLE [PLL Enable] to "0" */
> -	intel_uncore_rmw(&i915->uncore, enable_reg, PLL_ENABLE, 0);
> +	intel_de_rmw(i915, enable_reg, PLL_ENABLE, 0);
>   
>   	/*
>   	 * 4. Software programs SNPS_PHY_MPLLB_DIV dp_mpllb_force_en to "0".
>   	 * This will allow the PLL to stop running.
>   	 */
> -	intel_uncore_rmw(&i915->uncore, SNPS_PHY_MPLLB_DIV(phy),
> -			 SNPS_PHY_MPLLB_FORCE_EN, 0);
> +	intel_de_rmw(i915, SNPS_PHY_MPLLB_DIV(phy), SNPS_PHY_MPLLB_FORCE_EN, 0);
>   
>   	/*
>   	 * 5. Software polls DPLL_ENABLE [PLL Lock] for PHY acknowledgment

