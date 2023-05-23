Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB8B70D6B1
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 10:08:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DBB910E028;
	Tue, 23 May 2023 08:08:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0449310E028;
 Tue, 23 May 2023 08:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684829318; x=1716365318;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=GpqryGurZdHdQoY5Kt1dxLs11Q+CmoxqiRU7Fp5OPDg=;
 b=esMwt2UQ/Fd9I0IyYT4QlsvmmmcUwM0W9c9Mb9IXOFnqmv6kMBD4G1NI
 Fr+LzTCLv/QvjdjIMqn3G+LCkiQ0yR5khRZHEhMmc/cee31VdUGRGJwGd
 YEhPxjTf6ZJe4lUsui7fAodRYKWv5U2zezcnrty1boVfBqRl8pzeMoF1U
 W3i9qfPJLK7UB7mYTLRayX/1Ejo3fl41qpEk8mBExdxJbiLON3m4KCNPD
 hXPvB1Li7BYPsaHTIXoHqRQ0lGIVy8AJP3AEiT3xsFqmRcUFwtS9mrYa5
 Dc6cm6iUhHYS5DIJ+lkQN4/0c9JqtysjcZyIBCnjs92R8yhqGo5XVgo0S w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="350678317"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="350678317"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 01:08:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="768908426"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="768908426"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.31.10])
 ([10.213.31.10])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 01:06:07 -0700
Message-ID: <4e4c4e63-8cd6-f0db-f807-796d18b428c4@intel.com>
Date: Tue, 23 May 2023 10:06:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.0
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230522202314.3939499-1-matthew.d.roper@intel.com>
 <20230522202314.3939499-7-matthew.d.roper@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230522202314.3939499-7-matthew.d.roper@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 6/6] drm/i915/display: Move feature test
 macros to intel_display_device.h
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
Cc: intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 22.05.2023 22:23, Matt Roper wrote:
> It makes sense to keep the display feature test macros centralized
> within the display code.
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej
> ---
>   .../drm/i915/display/intel_display_device.h   | 40 +++++++++++++
>   drivers/gpu/drm/i915/i915_drv.h               | 60 -------------------
>   2 files changed, 40 insertions(+), 60 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 2a14943313ad..343def9e7933 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -29,6 +29,46 @@
>   	func(overlay_needs_physical); \
>   	func(supports_tv);
>   
> +#define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
> +#define HAS_CDCLK_CRAWL(i915)		(DISPLAY_INFO(i915)->has_cdclk_crawl)
> +#define HAS_CDCLK_SQUASH(i915)		(DISPLAY_INFO(i915)->has_cdclk_squash)
> +#define HAS_CUR_FBC(i915)		(!HAS_GMCH(i915) && DISPLAY_VER(i915) >= 7)
> +#define HAS_D12_PLANE_MINIMIZATION(i915) (IS_ROCKETLAKE(i915) || IS_ALDERLAKE_S(i915))
> +#define HAS_DDI(i915)			(DISPLAY_INFO(i915)->has_ddi)
> +#define HAS_DISPLAY(i915)		(DISPLAY_RUNTIME_INFO(i915)->pipe_mask != 0)
> +#define HAS_DMC(i915)			(DISPLAY_RUNTIME_INFO(i915)->has_dmc)
> +#define HAS_DOUBLE_BUFFERED_M_N(i915)	(DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915))
> +#define HAS_DP_MST(i915)		(DISPLAY_INFO(i915)->has_dp_mst)
> +#define HAS_DP20(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
> +#define HAS_DPT(i915)			(DISPLAY_VER(i915) >= 13)
> +#define HAS_DSB(i915)			(DISPLAY_INFO(i915)->has_dsb)
> +#define HAS_DSC(__i915)			(DISPLAY_RUNTIME_INFO(__i915)->has_dsc)
> +#define HAS_FBC(i915)			(DISPLAY_RUNTIME_INFO(i915)->fbc_mask != 0)
> +#define HAS_FPGA_DBG_UNCLAIMED(i915)	(DISPLAY_INFO(i915)->has_fpga_dbg)
> +#define HAS_FW_BLC(i915)		(DISPLAY_VER(i915) > 2)
> +#define HAS_GMBUS_IRQ(i915)		(DISPLAY_VER(i915) >= 4)
> +#define HAS_GMBUS_BURST_READ(i915)	(DISPLAY_VER(i915) >= 10 || IS_KABYLAKE(i915))
> +#define HAS_GMCH(i915)			(DISPLAY_INFO(i915)->has_gmch)
> +#define HAS_HW_SAGV_WM(i915)		(DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
> +#define HAS_IPC(i915)			(DISPLAY_INFO(i915)->has_ipc)
> +#define HAS_IPS(i915)			(IS_HSW_ULT(i915) || IS_BROADWELL(i915))
> +#define HAS_LSPCON(i915)		(IS_DISPLAY_VER(i915, 9, 10))
> +#define HAS_MBUS_JOINING(i915)		(IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
> +#define HAS_MSO(i915)			(DISPLAY_VER(i915) >= 12)
> +#define HAS_OVERLAY(i915)		(DISPLAY_INFO(i915)->has_overlay)
> +#define HAS_PSR(i915)			(DISPLAY_INFO(i915)->has_psr)
> +#define HAS_PSR_HW_TRACKING(i915)	(DISPLAY_INFO(i915)->has_psr_hw_tracking)
> +#define HAS_PSR2_SEL_FETCH(i915)	(DISPLAY_VER(i915) >= 12)
> +#define HAS_SAGV(i915)			(DISPLAY_VER(i915) >= 9 && !IS_LP(i915))
> +#define HAS_TRANSCODER(i915, trans)	((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & \
> +					  BIT(trans)) != 0)
> +#define HAS_VRR(i915)			(DISPLAY_VER(i915) >= 11)
> +#define INTEL_NUM_PIPES(i915)		(hweight8(DISPLAY_RUNTIME_INFO(i915)->pipe_mask))
> +#define I915_HAS_HOTPLUG(i915)		(DISPLAY_INFO(i915)->has_hotplug)
> +#define OVERLAY_NEEDS_PHYSICAL(i915)	(DISPLAY_INFO(i915)->overlay_needs_physical)
> +#define SUPPORTS_TV(i915)		(DISPLAY_INFO(i915)->supports_tv)
> +
> +
>   struct intel_display_runtime_info {
>   	struct {
>   		u16 ver;
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 7a8a12d12790..64f383fe7e23 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -785,10 +785,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   	((sizes) & ~RUNTIME_INFO(i915)->page_sizes) == 0; \
>   })
>   
> -#define HAS_OVERLAY(i915)		 (DISPLAY_INFO(i915)->has_overlay)
> -#define OVERLAY_NEEDS_PHYSICAL(i915) \
> -		(DISPLAY_INFO(i915)->overlay_needs_physical)
> -
>   /* Early gen2 have a totally busted CS tlb and require pinned batches. */
>   #define HAS_BROKEN_CS_TLB(i915)	(IS_I830(i915) || IS_I845G(i915))
>   
> @@ -799,41 +795,12 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   #define NEEDS_WaRsDisableCoarsePowerGating(i915)			\
>   	(IS_SKL_GT3(i915) || IS_SKL_GT4(i915))
>   
> -#define HAS_GMBUS_IRQ(i915) (DISPLAY_VER(i915) >= 4)
> -#define HAS_GMBUS_BURST_READ(i915) (DISPLAY_VER(i915) >= 11 || \
> -					IS_GEMINILAKE(i915) || \
> -					IS_KABYLAKE(i915))
> -
>   /* With the 945 and later, Y tiling got adjusted so that it was 32 128-byte
>    * rows, which changed the alignment requirements and fence programming.
>    */
>   #define HAS_128_BYTE_Y_TILING(i915) (GRAPHICS_VER(i915) != 2 && \
>   					 !(IS_I915G(i915) || IS_I915GM(i915)))
> -#define SUPPORTS_TV(i915)		(DISPLAY_INFO(i915)->supports_tv)
> -#define I915_HAS_HOTPLUG(i915)	(DISPLAY_INFO(i915)->has_hotplug)
>   
> -#define HAS_FW_BLC(i915)	(DISPLAY_VER(i915) > 2)
> -#define HAS_FBC(i915)	(DISPLAY_RUNTIME_INFO(i915)->fbc_mask != 0)
> -#define HAS_CUR_FBC(i915)	(!HAS_GMCH(i915) && DISPLAY_VER(i915) >= 7)
> -
> -#define HAS_DPT(i915)	(DISPLAY_VER(i915) >= 13)
> -
> -#define HAS_IPS(i915)	(IS_HSW_ULT(i915) || IS_BROADWELL(i915))
> -
> -#define HAS_DP_MST(i915)	(DISPLAY_INFO(i915)->has_dp_mst)
> -#define HAS_DP20(i915)	(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
> -
> -#define HAS_DOUBLE_BUFFERED_M_N(i915)	(DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915))
> -
> -#define HAS_CDCLK_CRAWL(i915)	 (DISPLAY_INFO(i915)->has_cdclk_crawl)
> -#define HAS_CDCLK_SQUASH(i915)	 (DISPLAY_INFO(i915)->has_cdclk_squash)
> -#define HAS_DDI(i915)		 (DISPLAY_INFO(i915)->has_ddi)
> -#define HAS_FPGA_DBG_UNCLAIMED(i915) (DISPLAY_INFO(i915)->has_fpga_dbg)
> -#define HAS_PSR(i915)		 (DISPLAY_INFO(i915)->has_psr)
> -#define HAS_PSR_HW_TRACKING(i915) \
> -	(DISPLAY_INFO(i915)->has_psr_hw_tracking)
> -#define HAS_PSR2_SEL_FETCH(i915)	 (DISPLAY_VER(i915) >= 12)
> -#define HAS_TRANSCODER(i915, trans)	 ((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & BIT(trans)) != 0)
>   
>   #define HAS_RC6(i915)		 (INTEL_INFO(i915)->has_rc6)
>   #define HAS_RC6p(i915)		 (INTEL_INFO(i915)->has_rc6p)
> @@ -841,11 +808,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   
>   #define HAS_RPS(i915)	(INTEL_INFO(i915)->has_rps)
>   
> -#define HAS_DMC(i915)	(DISPLAY_RUNTIME_INFO(i915)->has_dmc)
> -#define HAS_DSB(i915)	(DISPLAY_INFO(i915)->has_dsb)
> -#define HAS_DSC(__i915)		(DISPLAY_RUNTIME_INFO(__i915)->has_dsc)
> -#define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
> -
>   #define HAS_HECI_PXP(i915) \
>   	(INTEL_INFO(i915)->has_heci_pxp)
>   
> @@ -854,8 +816,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   
>   #define HAS_HECI_GSC(i915) (HAS_HECI_PXP(i915) || HAS_HECI_GSCFI(i915))
>   
> -#define HAS_MSO(i915)		(DISPLAY_VER(i915) >= 12)
> -
>   #define HAS_RUNTIME_PM(i915) (INTEL_INFO(i915)->has_runtime_pm)
>   #define HAS_64BIT_RELOC(i915) (INTEL_INFO(i915)->has_64bit_reloc)
>   
> @@ -872,9 +832,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>    */
>   #define HAS_64K_PAGES(i915) (INTEL_INFO(i915)->has_64k_pages)
>   
> -#define HAS_IPC(i915)		(DISPLAY_INFO(i915)->has_ipc)
> -#define HAS_SAGV(i915)		(DISPLAY_VER(i915) >= 9 && !IS_LP(i915))
> -
>   #define HAS_REGION(i915, i) (RUNTIME_INFO(i915)->memory_regions & (i))
>   #define HAS_LMEM(i915) HAS_REGION(i915, REGION_LMEM)
>   
> @@ -892,12 +849,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   
>   #define HAS_GLOBAL_MOCS_REGISTERS(i915)	(INTEL_INFO(i915)->has_global_mocs)
>   
> -#define HAS_GMCH(i915) (DISPLAY_INFO(i915)->has_gmch)
> -
>   #define HAS_GMD_ID(i915)	(INTEL_INFO(i915)->has_gmd_id)
>   
> -#define HAS_LSPCON(i915) (IS_DISPLAY_VER(i915, 9, 10))
> -
>   #define HAS_L3_CCS_READ(i915) (INTEL_INFO(i915)->has_l3_ccs_read)
>   
>   /* DPF == dynamic parity feature */
> @@ -905,14 +858,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   #define NUM_L3_SLICES(i915) (IS_HSW_GT3(i915) ? \
>   				 2 : HAS_L3_DPF(i915))
>   
> -#define INTEL_NUM_PIPES(i915) (hweight8(DISPLAY_RUNTIME_INFO(i915)->pipe_mask))
> -
> -#define HAS_DISPLAY(i915) (DISPLAY_RUNTIME_INFO(i915)->pipe_mask != 0)
> -
> -#define HAS_VRR(i915)	(DISPLAY_VER(i915) >= 11)
> -
> -#define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
> -
>   /* Only valid when HAS_DISPLAY() is true */
>   #define INTEL_DISPLAY_ENABLED(i915) \
>   	(drm_WARN_ON(&(i915)->drm, !HAS_DISPLAY(i915)),		\
> @@ -922,11 +867,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   #define HAS_GUC_DEPRIVILEGE(i915) \
>   	(INTEL_INFO(i915)->has_guc_deprivilege)
>   
> -#define HAS_D12_PLANE_MINIMIZATION(i915) (IS_ROCKETLAKE(i915) || \
> -					      IS_ALDERLAKE_S(i915))
> -
> -#define HAS_MBUS_JOINING(i915) (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
> -
>   #define HAS_3D_PIPELINE(i915)	(INTEL_INFO(i915)->has_3d_pipeline)
>   
>   #define HAS_ONE_EU_PER_FUSE_BIT(i915)	(INTEL_INFO(i915)->has_one_eu_per_fuse_bit)

