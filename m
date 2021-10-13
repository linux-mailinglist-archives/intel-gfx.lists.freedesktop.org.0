Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F2E42BBAC
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 11:32:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 708B26E861;
	Wed, 13 Oct 2021 09:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C307C89C96
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 09:32:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="214540096"
X-IronPort-AV: E=Sophos;i="5.85,370,1624345200"; d="scan'208";a="214540096"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 02:32:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,370,1624345200"; d="scan'208";a="460715354"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 13 Oct 2021 02:32:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Oct 2021 12:32:43 +0300
Date: Wed, 13 Oct 2021 12:32:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Yakui Zhao <yakui.zhao@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Message-ID: <YWanuyKbmIDWOGZ3@intel.com>
References: <20211013010046.91858-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211013010046.91858-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Remove memory frequency
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

On Tue, Oct 12, 2021 at 06:00:46PM -0700, José Roberto de Souza wrote:
> This memory frequency calculated is only used to check if it is zero,
> what is not useful as it will never actually be zero.
> 
> Also the calculation is wrong, we should be checking other bit to
> select the appropriate frequency multiplier while this code is stuck
> with a fixed multiplier.

I don't think the alternate ref clock was ever used.
At least I don't recall ever seeing it.

The real problem with this is that IIRC this is just the last
requested frequency. So on a system with SAGV this will
change dynamically.

> 
> So here dropping it as whole.

We have a second copy of this in gen6_update_ring_freq(). Rather
than removing one and leaving another potentially broken one behind we
should probably just consolidate on a single implementation.

> 
> v2:
> - Also remove memory frequency calculation for gen9 LP platforms
> 
> Cc: Yakui Zhao <yakui.zhao@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Fixes: f8112cb9574b ("drm/i915/gen11+: Only load DRAM information from pcode")
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h   |  8 --------
>  drivers/gpu/drm/i915/intel_dram.c | 30 ++----------------------------
>  2 files changed, 2 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index a897f4abea0c3..8825f7ac477b6 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -11109,12 +11109,6 @@ enum skl_power_gate {
>  #define  DC_STATE_DEBUG_MASK_CORES	(1 << 0)
>  #define  DC_STATE_DEBUG_MASK_MEMORY_UP	(1 << 1)
>  
> -#define BXT_P_CR_MC_BIOS_REQ_0_0_0	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x7114)
> -#define  BXT_REQ_DATA_MASK			0x3F
> -#define  BXT_DRAM_CHANNEL_ACTIVE_SHIFT		12
> -#define  BXT_DRAM_CHANNEL_ACTIVE_MASK		(0xF << 12)
> -#define  BXT_MEMORY_FREQ_MULTIPLIER_HZ		133333333
> -
>  #define BXT_D_CR_DRP0_DUNIT8			0x1000
>  #define BXT_D_CR_DRP0_DUNIT9			0x1200
>  #define  BXT_D_CR_DRP0_DUNIT_START		8
> @@ -11145,9 +11139,7 @@ enum skl_power_gate {
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
> index 30a0cab5eff46..0adadfd9528aa 100644
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
> @@ -350,24 +338,10 @@ static void bxt_get_dimm_info(struct dram_dimm_info *dimm, u32 val)
>  static int bxt_get_dram_info(struct drm_i915_private *i915)
>  {
>  	struct dram_info *dram_info = &i915->dram_info;
> -	u32 dram_channels;
> -	u32 mem_freq_khz, val;
> -	u8 num_active_channels, valid_ranks = 0;
> +	u32 val;
> +	u8 valid_ranks = 0;
>  	int i;
>  
> -	val = intel_uncore_read(&i915->uncore, BXT_P_CR_MC_BIOS_REQ_0_0_0);
> -	mem_freq_khz = DIV_ROUND_UP((val & BXT_REQ_DATA_MASK) *
> -				    BXT_MEMORY_FREQ_MULTIPLIER_HZ, 1000);
> -
> -	dram_channels = val & BXT_DRAM_CHANNEL_ACTIVE_MASK;
> -	num_active_channels = hweight32(dram_channels);
> -
> -	if (mem_freq_khz * num_active_channels == 0) {
> -		drm_info(&i915->drm,
> -			 "Couldn't get system memory bandwidth\n");
> -		return -EINVAL;
> -	}
> -
>  	/*
>  	 * Now read each DUNIT8/9/10/11 to check the rank of each dimms.
>  	 */
> -- 
> 2.33.0

-- 
Ville Syrjälä
Intel
