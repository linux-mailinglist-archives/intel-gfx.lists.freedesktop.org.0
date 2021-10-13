Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D06642B112
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 02:44:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA4086EA04;
	Wed, 13 Oct 2021 00:44:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C4EE6EA04
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 00:44:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="227207347"
X-IronPort-AV: E=Sophos;i="5.85,369,1624345200"; d="scan'208";a="227207347"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 17:44:35 -0700
X-IronPort-AV: E=Sophos;i="5.85,369,1624345200"; d="scan'208";a="591973175"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 17:44:35 -0700
Date: Tue, 12 Oct 2021 17:44:33 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Yakui Zhao <yakui.zhao@intel.com>
Message-ID: <20211013004433.GA602200@mdroper-desk1.amr.corp.intel.com>
References: <20211013002455.77860-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211013002455.77860-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove memory frequency
 calculation
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

On Tue, Oct 12, 2021 at 05:24:55PM -0700, José Roberto de Souza wrote:
> This memory frequency calculated is only used to check if it is zero,
> what is not useful as it will never actually be zero.
> 
> Also the calculation is wrong, we should be checking other bit to
> select the appropriate frequency multiplier while this code is stuck
> with a fixed multiplier.
> 
> So here dropping it as whole.

I think we can do similar cleanup in bxt_get_dram_info() too.  The value
of BXT_P_CR_MC_BIOS_REQ_0_0_0 that we read is used to obtain
mem_freq_khz and dram_channels/num_active_channels, but none of those
variables are ever used for anything except a needless zero-check.


Matt

> Cc: Yakui Zhao <yakui.zhao@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Fixes: f8112cb9574b ("drm/i915/gen11+: Only load DRAM information from pcode")
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h   |  2 --
>  drivers/gpu/drm/i915/intel_dram.c | 12 ------------
>  2 files changed, 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index a897f4abea0c3..03b6c505249dc 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -11145,9 +11145,7 @@ enum skl_power_gate {
>  #define  BXT_DRAM_TYPE_LPDDR4			(0x2 << 22)
>  #define  BXT_DRAM_TYPE_DDR4			(0x4 << 22)
>  
> -#define SKL_MEMORY_FREQ_MULTIPLIER_HZ		266666666
>  #define SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5E04)
> -#define  SKL_REQ_DATA_MASK			(0xF << 0)
>  #define  DG1_GEAR_TYPE				REG_BIT(16)
>  
>  #define SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MCMAIN _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5000)
> diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
> index 30a0cab5eff46..31933b1e7277b 100644
> --- a/drivers/gpu/drm/i915/intel_dram.c
> +++ b/drivers/gpu/drm/i915/intel_dram.c
> @@ -244,7 +244,6 @@ static int
>  skl_get_dram_info(struct drm_i915_private *i915)
>  {
>  	struct dram_info *dram_info = &i915->dram_info;
> -	u32 mem_freq_khz, val;
>  	int ret;
>  
>  	dram_info->type = skl_get_dram_type(i915);
> @@ -255,17 +254,6 @@ skl_get_dram_info(struct drm_i915_private *i915)
>  	if (ret)
>  		return ret;
>  
> -	val = intel_uncore_read(&i915->uncore,
> -				SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU);
> -	mem_freq_khz = DIV_ROUND_UP((val & SKL_REQ_DATA_MASK) *
> -				    SKL_MEMORY_FREQ_MULTIPLIER_HZ, 1000);
> -
> -	if (dram_info->num_channels * mem_freq_khz == 0) {
> -		drm_info(&i915->drm,
> -			 "Couldn't get system memory bandwidth\n");
> -		return -EINVAL;
> -	}
> -
>  	return 0;
>  }
>  
> -- 
> 2.33.0
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
