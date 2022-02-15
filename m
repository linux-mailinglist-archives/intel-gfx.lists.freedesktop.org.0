Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4594B7A26
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 23:03:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F79710E579;
	Tue, 15 Feb 2022 22:03:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C6FD10E2D9
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 22:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644962615; x=1676498615;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=nHGtxU6KumokR8hO8LQLQyhwXIpNgL3TstsAq4RbEZM=;
 b=T8nfGWzx2ENJQ1CaXGG4AW6BcLkXO4vUVNUG73OHm7TjRL1R/SxDYSZ4
 ZARgy8kBea1N69hR+TC9dQWwggFrn+2Uj8kOOew5kEmY581w8GvLYedpw
 WMzvJI5Of7/uoteJT4hWBP5yQ7Xnw+v3fLzcZbD3F7xTJmH1MybHtBnAf
 vsPiv5gc3RvYqc//YijZH+3+sB3T2bgRxiE96t59JAaE1hlUjUN+XA4RP
 Ig5EJ1+KnrmW1uO1whKGtUz4dHDhTJ9lWun9iAQGXfg3oh/3t3dA0t+S4
 zRtusHEC7vzFDmxegwcPjyhbQuw2TPe3LsmuylfagWv+grgx1KNBO3v84 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="250203643"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="250203643"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 14:03:34 -0800
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="544526931"
Received: from dbhandar-mobl1.amr.corp.intel.com (HELO msatwood-mobl)
 ([10.212.183.40])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 14:03:34 -0800
Date: Tue, 15 Feb 2022 14:03:20 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>;,
	intel-gfx@lists.freedesktop.org
Message-ID: <20220215220320.GD13300@msatwood-mobl>
References: <20220209051140.1599643-1-matthew.d.roper@intel.com>
 <20220209051140.1599643-5-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220209051140.1599643-5-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/gt: Cleanup spacing of
 intel_gt_regs.h
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

On Tue, Feb 08, 2022 at 09:11:38PM -0800, Matt Roper wrote:
> There's a lot of inconsistent spacing and indentation in our register
> definitions.  Let's clean things up a bit and follow some consistent
> rules:
> 
>  * "#define" always starts in column 0
>  * There's exactly one space between '#define' and the name of a
>    register.
>  * There's exactly three spaces between '#define' and the name of a
>    bit/bitfield.
>  * Tabs (no spaces) are used between a definition name and its value;
>    the value starts on column 48 unless the name is too long, in which
>    case a single tab is used.
> 
> Final diff for this patch is empty if whitespace is ignored:
> 
>         $ git diff -w
>         $
> 
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h | 2116 +++++++++++------------
>  1 file changed, 1058 insertions(+), 1058 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 987e0e1e9c08..dcbf7f2f0b90 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -8,162 +8,162 @@
>  
>  #include "i915_reg_defs.h"
>  
> -#define ILK_GDSR _MMIO(MCHBAR_MIRROR_BASE + 0x2ca4)
> -#define  ILK_GRDOM_FULL		(0 << 1)
> -#define  ILK_GRDOM_RENDER	(1 << 1)
> -#define  ILK_GRDOM_MEDIA	(3 << 1)
> -#define  ILK_GRDOM_MASK		(3 << 1)
> -#define  ILK_GRDOM_RESET_ENABLE (1 << 0)
> -
> -#define GEN6_MBCUNIT_SNPCR	_MMIO(0x900c) /* for LLC config */
> -#define   GEN6_MBC_SNPCR_SHIFT	21
> -#define   GEN6_MBC_SNPCR_MASK	(3 << 21)
> -#define   GEN6_MBC_SNPCR_MAX	(0 << 21)
> -#define   GEN6_MBC_SNPCR_MED	(1 << 21)
> -#define   GEN6_MBC_SNPCR_LOW	(2 << 21)
> -#define   GEN6_MBC_SNPCR_MIN	(3 << 21) /* only 1/16th of the cache is shared */
> -
> -#define VLV_G3DCTL		_MMIO(0x9024)
> -#define VLV_GSCKGCTL		_MMIO(0x9028)
> -
> -#define FBC_LLC_READ_CTRL	_MMIO(0x9044)
> -#define   FBC_LLC_FULLY_OPEN	REG_BIT(30)
> -
> -#define GEN6_MBCTL		_MMIO(0x0907c)
> -#define   GEN6_MBCTL_ENABLE_BOOT_FETCH	(1 << 4)
> -#define   GEN6_MBCTL_CTX_FETCH_NEEDED	(1 << 3)
> -#define   GEN6_MBCTL_BME_UPDATE_ENABLE	(1 << 2)
> -#define   GEN6_MBCTL_MAE_UPDATE_ENABLE	(1 << 1)
> -#define   GEN6_MBCTL_BOOT_FETCH_MECH	(1 << 0)
> -
> -#define GEN6_GDRST	_MMIO(0x941c)
> -#define  GEN6_GRDOM_FULL		(1 << 0)
> -#define  GEN6_GRDOM_RENDER		(1 << 1)
> -#define  GEN6_GRDOM_MEDIA		(1 << 2)
> -#define  GEN6_GRDOM_BLT			(1 << 3)
> -#define  GEN6_GRDOM_VECS		(1 << 4)
> -#define  GEN9_GRDOM_GUC			(1 << 5)
> -#define  GEN8_GRDOM_MEDIA2		(1 << 7)
> +#define ILK_GDSR				_MMIO(MCHBAR_MIRROR_BASE + 0x2ca4)
> +#define   ILK_GRDOM_FULL			(0 << 1)
> +#define   ILK_GRDOM_RENDER			(1 << 1)
> +#define   ILK_GRDOM_MEDIA			(3 << 1)
> +#define   ILK_GRDOM_MASK			(3 << 1)
> +#define   ILK_GRDOM_RESET_ENABLE		(1 << 0)
> +
> +#define GEN6_MBCUNIT_SNPCR			_MMIO(0x900c) /* for LLC config */
> +#define   GEN6_MBC_SNPCR_SHIFT			21
> +#define   GEN6_MBC_SNPCR_MASK			(3 << 21)
> +#define   GEN6_MBC_SNPCR_MAX			(0 << 21)
> +#define   GEN6_MBC_SNPCR_MED			(1 << 21)
> +#define   GEN6_MBC_SNPCR_LOW			(2 << 21)
> +#define   GEN6_MBC_SNPCR_MIN			(3 << 21) /* only 1/16th of the cache is shared */
> +
> +#define VLV_G3DCTL				_MMIO(0x9024)
> +#define VLV_GSCKGCTL				_MMIO(0x9028)
> +
> +#define FBC_LLC_READ_CTRL			_MMIO(0x9044)
> +#define   FBC_LLC_FULLY_OPEN			REG_BIT(30)
> +
> +#define GEN6_MBCTL				_MMIO(0x0907c)
> +#define   GEN6_MBCTL_ENABLE_BOOT_FETCH		(1 << 4)
> +#define   GEN6_MBCTL_CTX_FETCH_NEEDED		(1 << 3)
> +#define   GEN6_MBCTL_BME_UPDATE_ENABLE		(1 << 2)
> +#define   GEN6_MBCTL_MAE_UPDATE_ENABLE		(1 << 1)
> +#define   GEN6_MBCTL_BOOT_FETCH_MECH		(1 << 0)
> +
> +#define GEN6_GDRST				_MMIO(0x941c)
> +#define   GEN6_GRDOM_FULL			(1 << 0)
> +#define   GEN6_GRDOM_RENDER			(1 << 1)
> +#define   GEN6_GRDOM_MEDIA			(1 << 2)
> +#define   GEN6_GRDOM_BLT			(1 << 3)
> +#define   GEN6_GRDOM_VECS			(1 << 4)
> +#define   GEN9_GRDOM_GUC			(1 << 5)
> +#define   GEN8_GRDOM_MEDIA2			(1 << 7)
>  /* GEN11 changed all bit defs except for FULL & RENDER */
> -#define  GEN11_GRDOM_FULL		GEN6_GRDOM_FULL
> -#define  GEN11_GRDOM_RENDER		GEN6_GRDOM_RENDER
> -#define  GEN11_GRDOM_BLT		(1 << 2)
> -#define  GEN11_GRDOM_GUC		(1 << 3)
> -#define  GEN11_GRDOM_MEDIA		(1 << 5)
> -#define  GEN11_GRDOM_MEDIA2		(1 << 6)
> -#define  GEN11_GRDOM_MEDIA3		(1 << 7)
> -#define  GEN11_GRDOM_MEDIA4		(1 << 8)
> -#define  GEN11_GRDOM_MEDIA5		(1 << 9)
> -#define  GEN11_GRDOM_MEDIA6		(1 << 10)
> -#define  GEN11_GRDOM_MEDIA7		(1 << 11)
> -#define  GEN11_GRDOM_MEDIA8		(1 << 12)
> -#define  GEN11_GRDOM_VECS		(1 << 13)
> -#define  GEN11_GRDOM_VECS2		(1 << 14)
> -#define  GEN11_GRDOM_VECS3		(1 << 15)
> -#define  GEN11_GRDOM_VECS4		(1 << 16)
> -#define  GEN11_GRDOM_SFC0		(1 << 17)
> -#define  GEN11_GRDOM_SFC1		(1 << 18)
> -#define  GEN11_GRDOM_SFC2		(1 << 19)
> -#define  GEN11_GRDOM_SFC3		(1 << 20)
> -#define  GEN11_VCS_SFC_RESET_BIT(instance)	(GEN11_GRDOM_SFC0 << ((instance) >> 1))
> -#define  GEN11_VECS_SFC_RESET_BIT(instance)	(GEN11_GRDOM_SFC0 << (instance))
> -
> -#define GEN12_SFC_DONE(n)		_MMIO(0x1cc000 + (n) * 0x1000)
> -
> -#define WAIT_FOR_RC6_EXIT		_MMIO(0x20CC)
> +#define   GEN11_GRDOM_FULL			GEN6_GRDOM_FULL
> +#define   GEN11_GRDOM_RENDER			GEN6_GRDOM_RENDER
> +#define   GEN11_GRDOM_BLT			(1 << 2)
> +#define   GEN11_GRDOM_GUC			(1 << 3)
> +#define   GEN11_GRDOM_MEDIA			(1 << 5)
> +#define   GEN11_GRDOM_MEDIA2			(1 << 6)
> +#define   GEN11_GRDOM_MEDIA3			(1 << 7)
> +#define   GEN11_GRDOM_MEDIA4			(1 << 8)
> +#define   GEN11_GRDOM_MEDIA5			(1 << 9)
> +#define   GEN11_GRDOM_MEDIA6			(1 << 10)
> +#define   GEN11_GRDOM_MEDIA7			(1 << 11)
> +#define   GEN11_GRDOM_MEDIA8			(1 << 12)
> +#define   GEN11_GRDOM_VECS			(1 << 13)
> +#define   GEN11_GRDOM_VECS2			(1 << 14)
> +#define   GEN11_GRDOM_VECS3			(1 << 15)
> +#define   GEN11_GRDOM_VECS4			(1 << 16)
> +#define   GEN11_GRDOM_SFC0			(1 << 17)
> +#define   GEN11_GRDOM_SFC1			(1 << 18)
> +#define   GEN11_GRDOM_SFC2			(1 << 19)
> +#define   GEN11_GRDOM_SFC3			(1 << 20)
> +#define   GEN11_VCS_SFC_RESET_BIT(instance)	(GEN11_GRDOM_SFC0 << ((instance) >> 1))
> +#define   GEN11_VECS_SFC_RESET_BIT(instance)	(GEN11_GRDOM_SFC0 << (instance))
> +
> +#define GEN12_SFC_DONE(n)			_MMIO(0x1cc000 + (n) * 0x1000)
> +
> +#define WAIT_FOR_RC6_EXIT			_MMIO(0x20CC)
>  /* HSW only */
> -#define   HSW_SELECTIVE_READ_ADDRESSING_SHIFT		2
> -#define   HSW_SELECTIVE_READ_ADDRESSING_MASK		(0x3 << HSW_SLECTIVE_READ_ADDRESSING_SHIFT)
> -#define   HSW_SELECTIVE_WRITE_ADDRESS_SHIFT		4
> -#define   HSW_SELECTIVE_WRITE_ADDRESS_MASK		(0x7 << HSW_SELECTIVE_WRITE_ADDRESS_SHIFT)
> +#define   HSW_SELECTIVE_READ_ADDRESSING_SHIFT	2
> +#define   HSW_SELECTIVE_READ_ADDRESSING_MASK	(0x3 << HSW_SLECTIVE_READ_ADDRESSING_SHIFT)
> +#define   HSW_SELECTIVE_WRITE_ADDRESS_SHIFT	4
> +#define   HSW_SELECTIVE_WRITE_ADDRESS_MASK	(0x7 << HSW_SELECTIVE_WRITE_ADDRESS_SHIFT)
>  /* HSW+ */
> -#define   HSW_WAIT_FOR_RC6_EXIT_ENABLE			(1 << 0)
> -#define   HSW_RCS_CONTEXT_ENABLE			(1 << 7)
> -#define   HSW_RCS_INHIBIT				(1 << 8)
> +#define   HSW_WAIT_FOR_RC6_EXIT_ENABLE		(1 << 0)
> +#define   HSW_RCS_CONTEXT_ENABLE		(1 << 7)
> +#define   HSW_RCS_INHIBIT			(1 << 8)
>  /* Gen8 */
> -#define   GEN8_SELECTIVE_WRITE_ADDRESS_SHIFT		4
> -#define   GEN8_SELECTIVE_WRITE_ADDRESS_MASK		(0x3 << GEN8_SELECTIVE_WRITE_ADDRESS_SHIFT)
> -#define   GEN8_SELECTIVE_WRITE_ADDRESS_SHIFT		4
> -#define   GEN8_SELECTIVE_WRITE_ADDRESS_MASK		(0x3 << GEN8_SELECTIVE_WRITE_ADDRESS_SHIFT)
> +#define   GEN8_SELECTIVE_WRITE_ADDRESS_SHIFT	4
> +#define   GEN8_SELECTIVE_WRITE_ADDRESS_MASK	(0x3 << GEN8_SELECTIVE_WRITE_ADDRESS_SHIFT)
> +#define   GEN8_SELECTIVE_WRITE_ADDRESS_SHIFT	4
> +#define   GEN8_SELECTIVE_WRITE_ADDRESS_MASK	(0x3 << GEN8_SELECTIVE_WRITE_ADDRESS_SHIFT)
>  #define   GEN8_SELECTIVE_WRITE_ADDRESSING_ENABLE	(1 << 6)
>  #define   GEN8_SELECTIVE_READ_SUBSLICE_SELECT_SHIFT	9
>  #define   GEN8_SELECTIVE_READ_SUBSLICE_SELECT_MASK	(0x3 << GEN8_SELECTIVE_READ_SUBSLICE_SELECT_SHIFT)
>  #define   GEN8_SELECTIVE_READ_SLICE_SELECT_SHIFT	11
> -#define   GEN8_SELECTIVE_READ_SLICE_SELECT_MASK		(0x3 << GEN8_SELECTIVE_READ_SLICE_SELECT_SHIFT)
> -#define   GEN8_SELECTIVE_READ_ADDRESSING_ENABLE         (1 << 13)
> -
> -#define GAM_ECOCHK			_MMIO(0x4090)
> -#define   BDW_DISABLE_HDC_INVALIDATION	(1 << 25)
> -#define   ECOCHK_SNB_BIT		(1 << 10)
> -#define   ECOCHK_DIS_TLB		(1 << 8)
> -#define   HSW_ECOCHK_ARB_PRIO_SOL	(1 << 6)
> -#define   ECOCHK_PPGTT_CACHE64B		(0x3 << 3)
> -#define   ECOCHK_PPGTT_CACHE4B		(0x0 << 3)
> -#define   ECOCHK_PPGTT_GFDT_IVB		(0x1 << 4)
> -#define   ECOCHK_PPGTT_LLC_IVB		(0x1 << 3)
> -#define   ECOCHK_PPGTT_UC_HSW		(0x1 << 3)
> -#define   ECOCHK_PPGTT_WT_HSW		(0x2 << 3)
> -#define   ECOCHK_PPGTT_WB_HSW		(0x3 << 3)
> -
> -#define GEN8_RC6_CTX_INFO		_MMIO(0x8504)
> -
> -#define GAC_ECO_BITS			_MMIO(0x14090)
> -#define   ECOBITS_SNB_BIT		(1 << 13)
> -#define   ECOBITS_PPGTT_CACHE64B	(3 << 8)
> -#define   ECOBITS_PPGTT_CACHE4B		(0 << 8)
> +#define   GEN8_SELECTIVE_READ_SLICE_SELECT_MASK	(0x3 << GEN8_SELECTIVE_READ_SLICE_SELECT_SHIFT)
> +#define   GEN8_SELECTIVE_READ_ADDRESSING_ENABLE	(1 << 13)
> +
> +#define GAM_ECOCHK				_MMIO(0x4090)
> +#define   BDW_DISABLE_HDC_INVALIDATION		(1 << 25)
> +#define   ECOCHK_SNB_BIT			(1 << 10)
> +#define   ECOCHK_DIS_TLB			(1 << 8)
> +#define   HSW_ECOCHK_ARB_PRIO_SOL		(1 << 6)
> +#define   ECOCHK_PPGTT_CACHE64B			(0x3 << 3)
> +#define   ECOCHK_PPGTT_CACHE4B			(0x0 << 3)
> +#define   ECOCHK_PPGTT_GFDT_IVB			(0x1 << 4)
> +#define   ECOCHK_PPGTT_LLC_IVB			(0x1 << 3)
> +#define   ECOCHK_PPGTT_UC_HSW			(0x1 << 3)
> +#define   ECOCHK_PPGTT_WT_HSW			(0x2 << 3)
> +#define   ECOCHK_PPGTT_WB_HSW			(0x3 << 3)
> +
> +#define GEN8_RC6_CTX_INFO			_MMIO(0x8504)
> +
> +#define GAC_ECO_BITS				_MMIO(0x14090)
> +#define   ECOBITS_SNB_BIT			(1 << 13)
> +#define   ECOBITS_PPGTT_CACHE64B		(3 << 8)
> +#define   ECOBITS_PPGTT_CACHE4B			(0 << 8)
>  
>  #define GEN12_GAMCNTRL_CTRL			_MMIO(0xcf54)
>  #define   INVALIDATION_BROADCAST_MODE_DIS	REG_BIT(12)
>  #define   GLOBAL_INVALIDATION_MODE		REG_BIT(2)
>  
> -#define GEN12_GAMSTLB_CTRL		_MMIO(0xcf4c)
> -#define   CONTROL_BLOCK_CLKGATE_DIS	REG_BIT(12)
> -#define   EGRESS_BLOCK_CLKGATE_DIS	REG_BIT(11)
> -#define   TAG_BLOCK_CLKGATE_DIS		REG_BIT(7)
> +#define GEN12_GAMSTLB_CTRL			_MMIO(0xcf4c)
> +#define   CONTROL_BLOCK_CLKGATE_DIS		REG_BIT(12)
> +#define   EGRESS_BLOCK_CLKGATE_DIS		REG_BIT(11)
> +#define   TAG_BLOCK_CLKGATE_DIS			REG_BIT(7)
>  
> -#define GEN12_MERT_MOD_CTRL		_MMIO(0xcf28)
> -#define RENDER_MOD_CTRL			_MMIO(0xcf2c)
> -#define COMP_MOD_CTRL			_MMIO(0xcf30)
> -#define VDBX_MOD_CTRL			_MMIO(0xcf34)
> -#define VEBX_MOD_CTRL			_MMIO(0xcf38)
> -#define   FORCE_MISS_FTLB		REG_BIT(3)
> +#define GEN12_MERT_MOD_CTRL			_MMIO(0xcf28)
> +#define RENDER_MOD_CTRL				_MMIO(0xcf2c)
> +#define COMP_MOD_CTRL				_MMIO(0xcf30)
> +#define VDBX_MOD_CTRL				_MMIO(0xcf34)
> +#define VEBX_MOD_CTRL				_MMIO(0xcf38)
> +#define   FORCE_MISS_FTLB			REG_BIT(3)
>  
> -#define GAB_CTL				_MMIO(0x24000)
> -#define   GAB_CTL_CONT_AFTER_PAGEFAULT	(1 << 8)
> +#define GAB_CTL					_MMIO(0x24000)
> +#define   GAB_CTL_CONT_AFTER_PAGEFAULT		(1 << 8)
>  
> -#define HSW_MI_PREDICATE_RESULT_2	_MMIO(0x2214)
> +#define HSW_MI_PREDICATE_RESULT_2		_MMIO(0x2214)
>  
>  /*
>   * Registers used only by the command parser
>   */
> -#define BCS_SWCTRL _MMIO(0x22200)
> -#define   BCS_SRC_Y REG_BIT(0)
> -#define   BCS_DST_Y REG_BIT(1)
> -
> -#define GPGPU_THREADS_DISPATCHED        _MMIO(0x2290)
> -#define GPGPU_THREADS_DISPATCHED_UDW	_MMIO(0x2290 + 4)
> -#define HS_INVOCATION_COUNT             _MMIO(0x2300)
> -#define HS_INVOCATION_COUNT_UDW		_MMIO(0x2300 + 4)
> -#define DS_INVOCATION_COUNT             _MMIO(0x2308)
> -#define DS_INVOCATION_COUNT_UDW		_MMIO(0x2308 + 4)
> -#define IA_VERTICES_COUNT               _MMIO(0x2310)
> -#define IA_VERTICES_COUNT_UDW		_MMIO(0x2310 + 4)
> -#define IA_PRIMITIVES_COUNT             _MMIO(0x2318)
> -#define IA_PRIMITIVES_COUNT_UDW		_MMIO(0x2318 + 4)
> -#define VS_INVOCATION_COUNT             _MMIO(0x2320)
> -#define VS_INVOCATION_COUNT_UDW		_MMIO(0x2320 + 4)
> -#define GS_INVOCATION_COUNT             _MMIO(0x2328)
> -#define GS_INVOCATION_COUNT_UDW		_MMIO(0x2328 + 4)
> -#define GS_PRIMITIVES_COUNT             _MMIO(0x2330)
> -#define GS_PRIMITIVES_COUNT_UDW		_MMIO(0x2330 + 4)
> -#define CL_INVOCATION_COUNT             _MMIO(0x2338)
> -#define CL_INVOCATION_COUNT_UDW		_MMIO(0x2338 + 4)
> -#define CL_PRIMITIVES_COUNT             _MMIO(0x2340)
> -#define CL_PRIMITIVES_COUNT_UDW		_MMIO(0x2340 + 4)
> -#define PS_INVOCATION_COUNT             _MMIO(0x2348)
> -#define PS_INVOCATION_COUNT_UDW		_MMIO(0x2348 + 4)
> -#define PS_DEPTH_COUNT                  _MMIO(0x2350)
> -#define PS_DEPTH_COUNT_UDW		_MMIO(0x2350 + 4)
> +#define BCS_SWCTRL				_MMIO(0x22200)
> +#define   BCS_SRC_Y				REG_BIT(0)
> +#define   BCS_DST_Y				REG_BIT(1)
> +
> +#define GPGPU_THREADS_DISPATCHED		_MMIO(0x2290)
> +#define GPGPU_THREADS_DISPATCHED_UDW		_MMIO(0x2290 + 4)
> +#define HS_INVOCATION_COUNT			_MMIO(0x2300)
> +#define HS_INVOCATION_COUNT_UDW			_MMIO(0x2300 + 4)
> +#define DS_INVOCATION_COUNT			_MMIO(0x2308)
> +#define DS_INVOCATION_COUNT_UDW			_MMIO(0x2308 + 4)
> +#define IA_VERTICES_COUNT			_MMIO(0x2310)
> +#define IA_VERTICES_COUNT_UDW			_MMIO(0x2310 + 4)
> +#define IA_PRIMITIVES_COUNT			_MMIO(0x2318)
> +#define IA_PRIMITIVES_COUNT_UDW			_MMIO(0x2318 + 4)
> +#define VS_INVOCATION_COUNT			_MMIO(0x2320)
> +#define VS_INVOCATION_COUNT_UDW			_MMIO(0x2320 + 4)
> +#define GS_INVOCATION_COUNT			_MMIO(0x2328)
> +#define GS_INVOCATION_COUNT_UDW			_MMIO(0x2328 + 4)
> +#define GS_PRIMITIVES_COUNT			_MMIO(0x2330)
> +#define GS_PRIMITIVES_COUNT_UDW			_MMIO(0x2330 + 4)
> +#define CL_INVOCATION_COUNT			_MMIO(0x2338)
> +#define CL_INVOCATION_COUNT_UDW			_MMIO(0x2338 + 4)
> +#define CL_PRIMITIVES_COUNT			_MMIO(0x2340)
> +#define CL_PRIMITIVES_COUNT_UDW			_MMIO(0x2340 + 4)
> +#define PS_INVOCATION_COUNT			_MMIO(0x2348)
> +#define PS_INVOCATION_COUNT_UDW			_MMIO(0x2348 + 4)
> +#define PS_DEPTH_COUNT				_MMIO(0x2350)
> +#define PS_DEPTH_COUNT_UDW			_MMIO(0x2350 + 4)
>  
>  /* There are the 4 64-bit counter registers, one for each stream output */
>  #define GEN7_SO_NUM_PRIMS_WRITTEN(n)		_MMIO(0x5200 + (n) * 8)
> @@ -172,585 +172,585 @@
>  #define GEN7_SO_PRIM_STORAGE_NEEDED(n)		_MMIO(0x5240 + (n) * 8)
>  #define GEN7_SO_PRIM_STORAGE_NEEDED_UDW(n)	_MMIO(0x5240 + (n) * 8 + 4)
>  
> -#define GEN7_3DPRIM_END_OFFSET          _MMIO(0x2420)
> -#define GEN7_3DPRIM_START_VERTEX        _MMIO(0x2430)
> -#define GEN7_3DPRIM_VERTEX_COUNT        _MMIO(0x2434)
> -#define GEN7_3DPRIM_INSTANCE_COUNT      _MMIO(0x2438)
> -#define GEN7_3DPRIM_START_INSTANCE      _MMIO(0x243C)
> -#define GEN7_3DPRIM_BASE_VERTEX         _MMIO(0x2440)
> +#define GEN7_3DPRIM_END_OFFSET			_MMIO(0x2420)
> +#define GEN7_3DPRIM_START_VERTEX		_MMIO(0x2430)
> +#define GEN7_3DPRIM_VERTEX_COUNT		_MMIO(0x2434)
> +#define GEN7_3DPRIM_INSTANCE_COUNT		_MMIO(0x2438)
> +#define GEN7_3DPRIM_START_INSTANCE		_MMIO(0x243C)
> +#define GEN7_3DPRIM_BASE_VERTEX			_MMIO(0x2440)
>  
> -#define GEN7_GPGPU_DISPATCHDIMX         _MMIO(0x2500)
> -#define GEN7_GPGPU_DISPATCHDIMY         _MMIO(0x2504)
> -#define GEN7_GPGPU_DISPATCHDIMZ         _MMIO(0x2508)
> +#define GEN7_GPGPU_DISPATCHDIMX			_MMIO(0x2500)
> +#define GEN7_GPGPU_DISPATCHDIMY			_MMIO(0x2504)
> +#define GEN7_GPGPU_DISPATCHDIMZ			_MMIO(0x2508)
>  
> -#define GEN12_SQCM		_MMIO(0x8724)
> -#define   EN_32B_ACCESS		REG_BIT(30)
> +#define GEN12_SQCM				_MMIO(0x8724)
> +#define   EN_32B_ACCESS				REG_BIT(30)
>  
>  /*
>   * Flexible, Aggregate EU Counter Registers.
>   * Note: these aren't contiguous
>   */
> -#define EU_PERF_CNTL0	    _MMIO(0xe458)
> -#define EU_PERF_CNTL1	    _MMIO(0xe558)
> -#define EU_PERF_CNTL2	    _MMIO(0xe658)
> -#define EU_PERF_CNTL3	    _MMIO(0xe758)
> -#define EU_PERF_CNTL4	    _MMIO(0xe45c)
> -#define EU_PERF_CNTL5	    _MMIO(0xe55c)
> -#define EU_PERF_CNTL6	    _MMIO(0xe65c)
> +#define EU_PERF_CNTL0				_MMIO(0xe458)
> +#define EU_PERF_CNTL1				_MMIO(0xe558)
> +#define EU_PERF_CNTL2				_MMIO(0xe658)
> +#define EU_PERF_CNTL3				_MMIO(0xe758)
> +#define EU_PERF_CNTL4				_MMIO(0xe45c)
> +#define EU_PERF_CNTL5				_MMIO(0xe55c)
> +#define EU_PERF_CNTL6				_MMIO(0xe65c)
>  
> -#define RT_CTRL			_MMIO(0xe530)
> -#define  DIS_NULL_QUERY		REG_BIT(10)
> +#define RT_CTRL					_MMIO(0xe530)
> +#define   DIS_NULL_QUERY			REG_BIT(10)
>  
>  /* RPM unit config (Gen8+) */
> -#define RPM_CONFIG0	    _MMIO(0x0D00)
> -#define  GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT	3
> -#define  GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	(1 << GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT)
> -#define  GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ	0
> -#define  GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ	1
> -#define  GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT	3
> -#define  GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	(0x7 << GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT)
> -#define  GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ	0
> -#define  GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ	1
> -#define  GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_38_4_MHZ	2
> -#define  GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_25_MHZ	3
> -#define  GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT	1
> -#define  GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK	(0x3 << GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT)
> -
> -#define RPM_CONFIG1	    _MMIO(0x0D04)
> -#define  GEN10_GT_NOA_ENABLE  (1 << 9)
> +#define RPM_CONFIG0				_MMIO(0x0D00)
> +#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT	3
> +#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	(1 << GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT)
> +#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ	0
> +#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ	1
> +#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT	3
> +#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	(0x7 << GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT)
> +#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ	0
> +#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ	1
> +#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_38_4_MHZ	2
> +#define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_25_MHZ	3
> +#define   GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT	1
> +#define   GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK	(0x3 << GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT)
> +
> +#define RPM_CONFIG1				_MMIO(0x0D04)
> +#define   GEN10_GT_NOA_ENABLE			(1 << 9)
>  
>  /* GPM unit config (Gen9+) */
> -#define CTC_MODE			_MMIO(0xA26C)
> -#define  CTC_SOURCE_PARAMETER_MASK 1
> -#define  CTC_SOURCE_CRYSTAL_CLOCK	0
> -#define  CTC_SOURCE_DIVIDE_LOGIC	1
> -#define  CTC_SHIFT_PARAMETER_SHIFT	1
> -#define  CTC_SHIFT_PARAMETER_MASK	(0x3 << CTC_SHIFT_PARAMETER_SHIFT)
> +#define CTC_MODE				_MMIO(0xA26C)
> +#define   CTC_SOURCE_PARAMETER_MASK		1
> +#define   CTC_SOURCE_CRYSTAL_CLOCK		0
> +#define   CTC_SOURCE_DIVIDE_LOGIC		1
> +#define   CTC_SHIFT_PARAMETER_SHIFT		1
> +#define   CTC_SHIFT_PARAMETER_MASK		(0x3 << CTC_SHIFT_PARAMETER_SHIFT)
>  
>  /* RCP unit config (Gen8+) */
> -#define RCP_CONFIG	    _MMIO(0x0D08)
> -
> -#define MICRO_BP0_0	    _MMIO(0x9800)
> -#define MICRO_BP0_2	    _MMIO(0x9804)
> -#define MICRO_BP0_1	    _MMIO(0x9808)
> -
> -#define MICRO_BP1_0	    _MMIO(0x980C)
> -#define MICRO_BP1_2	    _MMIO(0x9810)
> -#define MICRO_BP1_1	    _MMIO(0x9814)
> -
> -#define MICRO_BP2_0	    _MMIO(0x9818)
> -#define MICRO_BP2_2	    _MMIO(0x981C)
> -#define MICRO_BP2_1	    _MMIO(0x9820)
> -
> -#define MICRO_BP3_0	    _MMIO(0x9824)
> -#define MICRO_BP3_2	    _MMIO(0x9828)
> -#define MICRO_BP3_1	    _MMIO(0x982C)
> -
> -#define MICRO_BP_TRIGGER		_MMIO(0x9830)
> -#define MICRO_BP3_COUNT_STATUS01	_MMIO(0x9834)
> -#define MICRO_BP3_COUNT_STATUS23	_MMIO(0x9838)
> -#define MICRO_BP_FIRED_ARMED		_MMIO(0x983C)
> -
> -#define GAMTARBMODE		_MMIO(0x04a08)
> -#define   ARB_MODE_BWGTLB_DISABLE (1 << 9)
> -#define   ARB_MODE_SWIZZLE_BDW	(1 << 1)
> -#define RENDER_HWS_PGA_GEN7	_MMIO(0x04080)
> -
> -#define _RING_FAULT_REG_RCS        0x4094
> -#define _RING_FAULT_REG_VCS        0x4194
> -#define _RING_FAULT_REG_BCS        0x4294
> -#define _RING_FAULT_REG_VECS       0x4394
> -#define RING_FAULT_REG(engine)     _MMIO(_PICK((engine)->class, \
> -					       _RING_FAULT_REG_RCS, \
> -					       _RING_FAULT_REG_VCS, \
> -					       _RING_FAULT_REG_VECS, \
> -					       _RING_FAULT_REG_BCS))
> -#define GEN8_RING_FAULT_REG	_MMIO(0x4094)
> -#define GEN12_RING_FAULT_REG	_MMIO(0xcec4)
> -#define   GEN8_RING_FAULT_ENGINE_ID(x)	(((x) >> 12) & 0x7)
> -#define   RING_FAULT_GTTSEL_MASK (1 << 11)
> -#define   RING_FAULT_SRCID(x)	(((x) >> 3) & 0xff)
> -#define   RING_FAULT_FAULT_TYPE(x) (((x) >> 1) & 0x3)
> -#define   RING_FAULT_VALID	(1 << 0)
> -#define DONE_REG		_MMIO(0x40b0)
> -#define GEN12_GAM_DONE		_MMIO(0xcf68)
> -#define GEN8_PRIVATE_PAT_LO	_MMIO(0x40e0)
> -#define GEN8_PRIVATE_PAT_HI	_MMIO(0x40e0 + 4)
> -#define GEN10_PAT_INDEX(index)	_MMIO(0x40e0 + (index) * 4)
> -#define GEN12_PAT_INDEX(index)	_MMIO(0x4800 + (index) * 4)
> -#define BSD_HWS_PGA_GEN7	_MMIO(0x04180)
> -#define GEN12_GFX_CCS_AUX_NV	_MMIO(0x4208)
> -#define GEN12_VD0_AUX_NV	_MMIO(0x4218)
> -#define GEN12_VD1_AUX_NV	_MMIO(0x4228)
> -#define GEN12_VD2_AUX_NV	_MMIO(0x4298)
> -#define GEN12_VD3_AUX_NV	_MMIO(0x42A8)
> -#define GEN12_VE0_AUX_NV	_MMIO(0x4238)
> -#define GEN12_VE1_AUX_NV	_MMIO(0x42B8)
> -#define   AUX_INV		REG_BIT(0)
> -#define BLT_HWS_PGA_GEN7	_MMIO(0x04280)
> -#define VEBOX_HWS_PGA_GEN7	_MMIO(0x04380)
> -
> -#define MISC_STATUS0		_MMIO(0xA500)
> -#define MISC_STATUS1		_MMIO(0xA504)
> -
> -#define GEN7_TLB_RD_ADDR	_MMIO(0x4700)
> -
> -#define GEN9_GAMT_ECO_REG_RW_IA _MMIO(0x4ab0)
> +#define RCP_CONFIG				_MMIO(0x0D08)
> +
> +#define MICRO_BP0_0				_MMIO(0x9800)
> +#define MICRO_BP0_2				_MMIO(0x9804)
> +#define MICRO_BP0_1				_MMIO(0x9808)
> +
> +#define MICRO_BP1_0				_MMIO(0x980C)
> +#define MICRO_BP1_2				_MMIO(0x9810)
> +#define MICRO_BP1_1				_MMIO(0x9814)
> +
> +#define MICRO_BP2_0				_MMIO(0x9818)
> +#define MICRO_BP2_2				_MMIO(0x981C)
> +#define MICRO_BP2_1				_MMIO(0x9820)
> +
> +#define MICRO_BP3_0				_MMIO(0x9824)
> +#define MICRO_BP3_2				_MMIO(0x9828)
> +#define MICRO_BP3_1				_MMIO(0x982C)
> +
> +#define MICRO_BP_TRIGGER			_MMIO(0x9830)
> +#define MICRO_BP3_COUNT_STATUS01		_MMIO(0x9834)
> +#define MICRO_BP3_COUNT_STATUS23		_MMIO(0x9838)
> +#define MICRO_BP_FIRED_ARMED			_MMIO(0x983C)
> +
> +#define GAMTARBMODE				_MMIO(0x04a08)
> +#define   ARB_MODE_BWGTLB_DISABLE		(1 << 9)
> +#define   ARB_MODE_SWIZZLE_BDW			(1 << 1)
> +#define RENDER_HWS_PGA_GEN7			_MMIO(0x04080)
> +
> +#define _RING_FAULT_REG_RCS			0x4094
> +#define _RING_FAULT_REG_VCS			0x4194
> +#define _RING_FAULT_REG_BCS			0x4294
> +#define _RING_FAULT_REG_VECS			0x4394
> +#define RING_FAULT_REG(engine)			_MMIO(_PICK((engine)->class, \
> +							    _RING_FAULT_REG_RCS, \
> +							    _RING_FAULT_REG_VCS, \
> +							    _RING_FAULT_REG_VECS, \
> +							    _RING_FAULT_REG_BCS))
> +#define GEN8_RING_FAULT_REG			_MMIO(0x4094)
> +#define GEN12_RING_FAULT_REG			_MMIO(0xcec4)
> +#define   GEN8_RING_FAULT_ENGINE_ID(x)		(((x) >> 12) & 0x7)
> +#define   RING_FAULT_GTTSEL_MASK		(1 << 11)
> +#define   RING_FAULT_SRCID(x)			(((x) >> 3) & 0xff)
> +#define   RING_FAULT_FAULT_TYPE(x)		(((x) >> 1) & 0x3)
> +#define   RING_FAULT_VALID			(1 << 0)
> +#define DONE_REG				_MMIO(0x40b0)
> +#define GEN12_GAM_DONE				_MMIO(0xcf68)
> +#define GEN8_PRIVATE_PAT_LO			_MMIO(0x40e0)
> +#define GEN8_PRIVATE_PAT_HI			_MMIO(0x40e0 + 4)
> +#define GEN10_PAT_INDEX(index)			_MMIO(0x40e0 + (index) * 4)
> +#define GEN12_PAT_INDEX(index)			_MMIO(0x4800 + (index) * 4)
> +#define BSD_HWS_PGA_GEN7			_MMIO(0x04180)
> +#define GEN12_GFX_CCS_AUX_NV			_MMIO(0x4208)
> +#define GEN12_VD0_AUX_NV			_MMIO(0x4218)
> +#define GEN12_VD1_AUX_NV			_MMIO(0x4228)
> +#define GEN12_VD2_AUX_NV			_MMIO(0x4298)
> +#define GEN12_VD3_AUX_NV			_MMIO(0x42A8)
> +#define GEN12_VE0_AUX_NV			_MMIO(0x4238)
> +#define GEN12_VE1_AUX_NV			_MMIO(0x42B8)
> +#define   AUX_INV				REG_BIT(0)
> +#define BLT_HWS_PGA_GEN7			_MMIO(0x04280)
> +#define VEBOX_HWS_PGA_GEN7			_MMIO(0x04380)
> +
> +#define MISC_STATUS0				_MMIO(0xA500)
> +#define MISC_STATUS1				_MMIO(0xA504)
> +
> +#define GEN7_TLB_RD_ADDR			_MMIO(0x4700)
> +
> +#define GEN9_GAMT_ECO_REG_RW_IA			_MMIO(0x4ab0)
>  #define   GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS	(1 << 18)
>  
> -#define GEN8_GAMW_ECO_DEV_RW_IA _MMIO(0x4080)
> -#define   GAMW_ECO_ENABLE_64K_IPS_FIELD 0xF
> +#define GEN8_GAMW_ECO_DEV_RW_IA			_MMIO(0x4080)
> +#define   GAMW_ECO_ENABLE_64K_IPS_FIELD		0xF
>  #define   GAMW_ECO_DEV_CTX_RELOAD_DISABLE	(1 << 7)
>  
> -#define GAMT_CHKN_BIT_REG	_MMIO(0x4ab8)
> -#define   GAMT_CHKN_DISABLE_L3_COH_PIPE			(1 << 31)
> +#define GAMT_CHKN_BIT_REG			_MMIO(0x4ab8)
> +#define   GAMT_CHKN_DISABLE_L3_COH_PIPE		(1 << 31)
>  #define   GAMT_CHKN_DISABLE_DYNAMIC_CREDIT_SHARING	(1 << 28)
>  #define   GAMT_CHKN_DISABLE_I2M_CYCLE_ON_WR_PORT	(1 << 24)
>  
> -#define GEN8_RTCR	_MMIO(0x4260)
> -#define GEN8_M1TCR	_MMIO(0x4264)
> -#define GEN8_M2TCR	_MMIO(0x4268)
> -#define GEN8_BTCR	_MMIO(0x426c)
> -#define GEN8_VTCR	_MMIO(0x4270)
> -
> -#define IPEIR_I965	_MMIO(0x2064)
> -#define IPEHR_I965	_MMIO(0x2068)
> -#define GEN7_SC_INSTDONE	_MMIO(0x7100)
> -#define GEN12_SC_INSTDONE_EXTRA		_MMIO(0x7104)
> -#define GEN12_SC_INSTDONE_EXTRA2	_MMIO(0x7108)
> -#define GEN7_SAMPLER_INSTDONE	_MMIO(0xe160)
> -#define GEN7_ROW_INSTDONE	_MMIO(0xe164)
> -#define XEHPG_INSTDONE_GEOM_SVG		_MMIO(0x666c)
> -#define MCFG_MCR_SELECTOR		_MMIO(0xfd0)
> -#define SF_MCR_SELECTOR			_MMIO(0xfd8)
> -#define GEN8_MCR_SELECTOR		_MMIO(0xfdc)
> -#define   GEN8_MCR_SLICE(slice)		(((slice) & 3) << 26)
> -#define   GEN8_MCR_SLICE_MASK		GEN8_MCR_SLICE(3)
> -#define   GEN8_MCR_SUBSLICE(subslice)	(((subslice) & 3) << 24)
> -#define   GEN8_MCR_SUBSLICE_MASK	GEN8_MCR_SUBSLICE(3)
> -#define   GEN11_MCR_SLICE(slice)	(((slice) & 0xf) << 27)
> -#define   GEN11_MCR_SLICE_MASK		GEN11_MCR_SLICE(0xf)
> -#define   GEN11_MCR_SUBSLICE(subslice)	(((subslice) & 0x7) << 24)
> -#define   GEN11_MCR_SUBSLICE_MASK	GEN11_MCR_SUBSLICE(0x7)
> +#define GEN8_RTCR				_MMIO(0x4260)
> +#define GEN8_M1TCR				_MMIO(0x4264)
> +#define GEN8_M2TCR				_MMIO(0x4268)
> +#define GEN8_BTCR				_MMIO(0x426c)
> +#define GEN8_VTCR				_MMIO(0x4270)
> +
> +#define IPEIR_I965				_MMIO(0x2064)
> +#define IPEHR_I965				_MMIO(0x2068)
> +#define GEN7_SC_INSTDONE			_MMIO(0x7100)
> +#define GEN12_SC_INSTDONE_EXTRA			_MMIO(0x7104)
> +#define GEN12_SC_INSTDONE_EXTRA2		_MMIO(0x7108)
> +#define GEN7_SAMPLER_INSTDONE			_MMIO(0xe160)
> +#define GEN7_ROW_INSTDONE			_MMIO(0xe164)
> +#define XEHPG_INSTDONE_GEOM_SVG			_MMIO(0x666c)
> +#define MCFG_MCR_SELECTOR			_MMIO(0xfd0)
> +#define SF_MCR_SELECTOR				_MMIO(0xfd8)
> +#define GEN8_MCR_SELECTOR			_MMIO(0xfdc)
> +#define   GEN8_MCR_SLICE(slice)			(((slice) & 3) << 26)
> +#define   GEN8_MCR_SLICE_MASK			GEN8_MCR_SLICE(3)
> +#define   GEN8_MCR_SUBSLICE(subslice)		(((subslice) & 3) << 24)
> +#define   GEN8_MCR_SUBSLICE_MASK		GEN8_MCR_SUBSLICE(3)
> +#define   GEN11_MCR_SLICE(slice)		(((slice) & 0xf) << 27)
> +#define   GEN11_MCR_SLICE_MASK			GEN11_MCR_SLICE(0xf)
> +#define   GEN11_MCR_SUBSLICE(subslice)		(((subslice) & 0x7) << 24)
> +#define   GEN11_MCR_SUBSLICE_MASK		GEN11_MCR_SUBSLICE(0x7)
>  /*
>   * On GEN4, only the render ring INSTDONE exists and has a different
>   * layout than the GEN7+ version.
>   * The GEN2 counterpart of this register is GEN2_INSTDONE.
>   */
> -#define INSTPS		_MMIO(0x2070) /* 965+ only */
> -#define GEN4_INSTDONE1	_MMIO(0x207c) /* 965+ only, aka INSTDONE_2 on SNB */
> -#define ACTHD_I965	_MMIO(0x2074)
> -#define HWS_PGA		_MMIO(0x2080)
> -#define HWS_ADDRESS_MASK	0xfffff000
> -#define HWS_START_ADDRESS_SHIFT	4
> -#define PWRCTXA		_MMIO(0x2088) /* 965GM+ only */
> -#define   PWRCTX_EN	(1 << 0)
> -#define GEN2_INSTDONE	_MMIO(0x2090)
> -#define NOPID		_MMIO(0x2094)
> -#define HWSTAM		_MMIO(0x2098)
> -
> -#define ERROR_GEN6	_MMIO(0x40a0)
> -
> -#define GEN8_FAULT_TLB_DATA0		_MMIO(0x4b10)
> -#define GEN8_FAULT_TLB_DATA1		_MMIO(0x4b14)
> -#define GEN12_FAULT_TLB_DATA0		_MMIO(0xceb8)
> -#define GEN12_FAULT_TLB_DATA1		_MMIO(0xcebc)
> -#define   FAULT_VA_HIGH_BITS		(0xf << 0)
> -#define   FAULT_GTT_SEL			(1 << 4)
> -
> -#define GEN12_GFX_TLB_INV_CR	_MMIO(0xced8)
> -#define GEN12_VD_TLB_INV_CR	_MMIO(0xcedc)
> -#define GEN12_VE_TLB_INV_CR	_MMIO(0xcee0)
> -#define GEN12_BLT_TLB_INV_CR	_MMIO(0xcee4)
> -
> -#define GEN12_AUX_ERR_DBG		_MMIO(0x43f4)
> +#define INSTPS					_MMIO(0x2070) /* 965+ only */
> +#define GEN4_INSTDONE1				_MMIO(0x207c) /* 965+ only, aka INSTDONE_2 on SNB */
> +#define ACTHD_I965				_MMIO(0x2074)
> +#define HWS_PGA					_MMIO(0x2080)
> +#define   HWS_ADDRESS_MASK			0xfffff000
> +#define   HWS_START_ADDRESS_SHIFT			4
> +#define PWRCTXA					_MMIO(0x2088) /* 965GM+ only */
> +#define   PWRCTX_EN				(1 << 0)
> +#define GEN2_INSTDONE				_MMIO(0x2090)
> +#define NOPID					_MMIO(0x2094)
> +#define HWSTAM					_MMIO(0x2098)
> +
> +#define ERROR_GEN6				_MMIO(0x40a0)
> +
> +#define GEN8_FAULT_TLB_DATA0			_MMIO(0x4b10)
> +#define GEN8_FAULT_TLB_DATA1			_MMIO(0x4b14)
> +#define GEN12_FAULT_TLB_DATA0			_MMIO(0xceb8)
> +#define GEN12_FAULT_TLB_DATA1			_MMIO(0xcebc)
> +#define   FAULT_VA_HIGH_BITS			(0xf << 0)
> +#define   FAULT_GTT_SEL				(1 << 4)
> +
> +#define GEN12_GFX_TLB_INV_CR			_MMIO(0xced8)
> +#define GEN12_VD_TLB_INV_CR			_MMIO(0xcedc)
> +#define GEN12_VE_TLB_INV_CR			_MMIO(0xcee0)
> +#define GEN12_BLT_TLB_INV_CR			_MMIO(0xcee4)
> +
> +#define GEN12_AUX_ERR_DBG			_MMIO(0x43f4)
>  
>  /* GM45+ chicken bits -- debug workaround bits that may be required
>   * for various sorts of correct behavior.  The top 16 bits of each are
>   * the enables for writing to the corresponding low bit.
>   */
> -#define _3D_CHICKEN	_MMIO(0x2084)
> -#define  _3D_CHICKEN_HIZ_PLANE_DISABLE_MSAA_4X_SNB	(1 << 10)
> -#define _3D_CHICKEN2	_MMIO(0x208c)
> +#define _3D_CHICKEN				_MMIO(0x2084)
> +#define   _3D_CHICKEN_HIZ_PLANE_DISABLE_MSAA_4X_SNB	(1 << 10)
> +#define _3D_CHICKEN2				_MMIO(0x208c)
>  
> -#define FF_SLICE_CHICKEN	_MMIO(0x2088)
> -#define  FF_SLICE_CHICKEN_CL_PROVOKING_VERTEX_FIX	(1 << 1)
> +#define FF_SLICE_CHICKEN			_MMIO(0x2088)
> +#define   FF_SLICE_CHICKEN_CL_PROVOKING_VERTEX_FIX	(1 << 1)
>  
>  /* Disables pipelining of read flushes past the SF-WIZ interface.
>   * Required on all Ironlake steppings according to the B-Spec, but the
>   * particular danger of not doing so is not specified.
>   */
> -# define _3D_CHICKEN2_WM_READ_PIPELINED			(1 << 14)
> -#define _3D_CHICKEN3	_MMIO(0x2090)
> -#define  _3D_CHICKEN_SF_PROVOKING_VERTEX_FIX		(1 << 12)
> -#define  _3D_CHICKEN_SF_DISABLE_OBJEND_CULL		(1 << 10)
> -#define  _3D_CHICKEN3_AA_LINE_QUALITY_FIX_ENABLE	(1 << 5)
> -#define  _3D_CHICKEN3_SF_DISABLE_FASTCLIP_CULL		(1 << 5)
> -#define  _3D_CHICKEN_SDE_LIMIT_FIFO_POLY_DEPTH(x)	((x) << 1) /* gen8+ */
> -#define  _3D_CHICKEN3_SF_DISABLE_PIPELINED_ATTR_FETCH	(1 << 1) /* gen6 */
> -
> -#define GEN6_GT_MODE	_MMIO(0x20d0)
> -#define GEN7_GT_MODE	_MMIO(0x7008)
> -#define   GEN6_WIZ_HASHING(hi, lo)			(((hi) << 9) | ((lo) << 7))
> -#define   GEN6_WIZ_HASHING_8x8				GEN6_WIZ_HASHING(0, 0)
> -#define   GEN6_WIZ_HASHING_8x4				GEN6_WIZ_HASHING(0, 1)
> -#define   GEN6_WIZ_HASHING_16x4				GEN6_WIZ_HASHING(1, 0)
> -#define   GEN6_WIZ_HASHING_MASK				GEN6_WIZ_HASHING(1, 1)
> -#define   GEN6_TD_FOUR_ROW_DISPATCH_DISABLE		(1 << 5)
> -#define   GEN9_IZ_HASHING_MASK(slice)			(0x3 << ((slice) * 2))
> -#define   GEN9_IZ_HASHING(slice, val)			((val) << ((slice) * 2))
> +#define   _3D_CHICKEN2_WM_READ_PIPELINED	(1 << 14)
> +#define _3D_CHICKEN3				_MMIO(0x2090)
> +#define   _3D_CHICKEN_SF_PROVOKING_VERTEX_FIX	(1 << 12)
> +#define   _3D_CHICKEN_SF_DISABLE_OBJEND_CULL	(1 << 10)
> +#define   _3D_CHICKEN3_AA_LINE_QUALITY_FIX_ENABLE	(1 << 5)
> +#define   _3D_CHICKEN3_SF_DISABLE_FASTCLIP_CULL	(1 << 5)
> +#define   _3D_CHICKEN_SDE_LIMIT_FIFO_POLY_DEPTH(x)	((x) << 1) /* gen8+ */
> +#define   _3D_CHICKEN3_SF_DISABLE_PIPELINED_ATTR_FETCH	(1 << 1) /* gen6 */
> +
> +#define GEN6_GT_MODE				_MMIO(0x20d0)
> +#define GEN7_GT_MODE				_MMIO(0x7008)
> +#define   GEN6_WIZ_HASHING(hi, lo)		(((hi) << 9) | ((lo) << 7))
> +#define   GEN6_WIZ_HASHING_8x8			GEN6_WIZ_HASHING(0, 0)
> +#define   GEN6_WIZ_HASHING_8x4			GEN6_WIZ_HASHING(0, 1)
> +#define   GEN6_WIZ_HASHING_16x4			GEN6_WIZ_HASHING(1, 0)
> +#define   GEN6_WIZ_HASHING_MASK			GEN6_WIZ_HASHING(1, 1)
> +#define   GEN6_TD_FOUR_ROW_DISPATCH_DISABLE	(1 << 5)
> +#define   GEN9_IZ_HASHING_MASK(slice)		(0x3 << ((slice) * 2))
> +#define   GEN9_IZ_HASHING(slice, val)		((val) << ((slice) * 2))
>  
>  /* chicken reg for WaConextSwitchWithConcurrentTLBInvalidate */
> -#define GEN9_CSFE_CHICKEN1_RCS _MMIO(0x20D4)
> -#define   GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE (1 << 2)
> -#define   GEN11_ENABLE_32_PLANE_MODE (1 << 7)
> +#define GEN9_CSFE_CHICKEN1_RCS			_MMIO(0x20D4)
> +#define   GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE	(1 << 2)
> +#define   GEN11_ENABLE_32_PLANE_MODE		(1 << 7)
>  
> -#define SCCGCTL94DC		_MMIO(0x94dc)
> -#define   CG3DDISURB		REG_BIT(14)
> +#define SCCGCTL94DC				_MMIO(0x94dc)
> +#define   CG3DDISURB				REG_BIT(14)
>  
> -#define MLTICTXCTL		_MMIO(0xb170)
> -#define   TDONRENDER		REG_BIT(2)
> +#define MLTICTXCTL				_MMIO(0xb170)
> +#define   TDONRENDER				REG_BIT(2)
>  
> -#define L3SQCREG1_CCS0		_MMIO(0xb200)
> -#define   FLUSHALLNONCOH	REG_BIT(5)
> +#define L3SQCREG1_CCS0				_MMIO(0xb200)
> +#define   FLUSHALLNONCOH			REG_BIT(5)
>  
>  /* WaClearTdlStateAckDirtyBits */
> -#define GEN8_STATE_ACK		_MMIO(0x20F0)
> -#define GEN9_STATE_ACK_SLICE1	_MMIO(0x20F8)
> -#define GEN9_STATE_ACK_SLICE2	_MMIO(0x2100)
> -#define   GEN9_STATE_ACK_TDL0 (1 << 12)
> -#define   GEN9_STATE_ACK_TDL1 (1 << 13)
> -#define   GEN9_STATE_ACK_TDL2 (1 << 14)
> -#define   GEN9_STATE_ACK_TDL3 (1 << 15)
> -#define   GEN9_SUBSLICE_TDL_ACK_BITS \
> +#define GEN8_STATE_ACK				_MMIO(0x20F0)
> +#define GEN9_STATE_ACK_SLICE1			_MMIO(0x20F8)
> +#define GEN9_STATE_ACK_SLICE2			_MMIO(0x2100)
> +#define   GEN9_STATE_ACK_TDL0			(1 << 12)
> +#define   GEN9_STATE_ACK_TDL1			(1 << 13)
> +#define   GEN9_STATE_ACK_TDL2			(1 << 14)
> +#define   GEN9_STATE_ACK_TDL3			(1 << 15)
> +#define   GEN9_SUBSLICE_TDL_ACK_BITS	\
>  	(GEN9_STATE_ACK_TDL3 | GEN9_STATE_ACK_TDL2 | \
>  	 GEN9_STATE_ACK_TDL1 | GEN9_STATE_ACK_TDL0)
>  
> -#define GFX_MODE	_MMIO(0x2520)
> -
> -#define CACHE_MODE_0	_MMIO(0x2120) /* 915+ only */
> -#define   CM0_PIPELINED_RENDER_FLUSH_DISABLE (1 << 8)
> -#define   CM0_IZ_OPT_DISABLE      (1 << 6)
> -#define   CM0_ZR_OPT_DISABLE      (1 << 5)
> -#define	  CM0_STC_EVICT_DISABLE_LRA_SNB	(1 << 5)
> -#define   CM0_DEPTH_EVICT_DISABLE (1 << 4)
> -#define   CM0_COLOR_EVICT_DISABLE (1 << 3)
> -#define   CM0_DEPTH_WRITE_DISABLE (1 << 1)
> -#define   CM0_RC_OP_FLUSH_DISABLE (1 << 0)
> -#define GFX_FLSH_CNTL	_MMIO(0x2170) /* 915+ only */
> -#define GFX_FLSH_CNTL_GEN6	_MMIO(0x101008)
> -#define   GFX_FLSH_CNTL_EN	(1 << 0)
> -
> -#define CACHE_MODE_0_GEN7	_MMIO(0x7000) /* IVB+ */
> -#define RC_OP_FLUSH_ENABLE (1 << 0)
> -#define   HIZ_RAW_STALL_OPT_DISABLE (1 << 2)
> -#define CACHE_MODE_1		_MMIO(0x7004) /* IVB+ */
> +#define GFX_MODE				_MMIO(0x2520)
> +
> +#define CACHE_MODE_0				_MMIO(0x2120) /* 915+ only */
> +#define   CM0_PIPELINED_RENDER_FLUSH_DISABLE	(1 << 8)
> +#define   CM0_IZ_OPT_DISABLE			(1 << 6)
> +#define   CM0_ZR_OPT_DISABLE			(1 << 5)
> +#define	  CM0_STC_EVICT_DISABLE_LRA_SNB		(1 << 5)
> +#define   CM0_DEPTH_EVICT_DISABLE		(1 << 4)
> +#define   CM0_COLOR_EVICT_DISABLE		(1 << 3)
> +#define   CM0_DEPTH_WRITE_DISABLE		(1 << 1)
> +#define   CM0_RC_OP_FLUSH_DISABLE		(1 << 0)
> +#define GFX_FLSH_CNTL				_MMIO(0x2170) /* 915+ only */
> +#define GFX_FLSH_CNTL_GEN6			_MMIO(0x101008)
> +#define   GFX_FLSH_CNTL_EN			(1 << 0)
> +
> +#define CACHE_MODE_0_GEN7			_MMIO(0x7000) /* IVB+ */
> +#define   RC_OP_FLUSH_ENABLE			(1 << 0)
> +#define   HIZ_RAW_STALL_OPT_DISABLE		(1 << 2)
> +#define CACHE_MODE_1				_MMIO(0x7004) /* IVB+ */
>  #define   PIXEL_SUBSPAN_COLLECT_OPT_DISABLE	(1 << 6)
>  #define   GEN8_4x4_STC_OPTIMIZATION_DISABLE	(1 << 6)
>  #define   GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE	(1 << 1)
>  
> -#define GEN6_RCS_PWR_FSM _MMIO(0x22ac)
> -#define GEN9_RCS_FE_FSM2 _MMIO(0x22a4)
> +#define GEN6_RCS_PWR_FSM			_MMIO(0x22ac)
> +#define GEN9_RCS_FE_FSM2			_MMIO(0x22a4)
>  
>  #define GEN10_CACHE_MODE_SS			_MMIO(0xe420)
>  #define   ENABLE_PREFETCH_INTO_IC		REG_BIT(3)
>  #define   FLOAT_BLEND_OPTIMIZATION_ENABLE	REG_BIT(4)
>  
>  /* Fuse readout registers for GT */
> -#define HSW_PAVP_FUSE1			_MMIO(0x911C)
> -#define   XEHP_SFC_ENABLE_MASK		REG_GENMASK(27, 24)
> -#define   HSW_F1_EU_DIS_MASK		REG_GENMASK(17, 16)
> -#define   HSW_F1_EU_DIS_10EUS		0
> -#define   HSW_F1_EU_DIS_8EUS		1
> -#define   HSW_F1_EU_DIS_6EUS		2
> -
> -#define CHV_FUSE_GT			_MMIO(VLV_DISPLAY_BASE + 0x2168)
> -#define   CHV_FGT_DISABLE_SS0		(1 << 10)
> -#define   CHV_FGT_DISABLE_SS1		(1 << 11)
> -#define   CHV_FGT_EU_DIS_SS0_R0_SHIFT	16
> -#define   CHV_FGT_EU_DIS_SS0_R0_MASK	(0xf << CHV_FGT_EU_DIS_SS0_R0_SHIFT)
> -#define   CHV_FGT_EU_DIS_SS0_R1_SHIFT	20
> -#define   CHV_FGT_EU_DIS_SS0_R1_MASK	(0xf << CHV_FGT_EU_DIS_SS0_R1_SHIFT)
> -#define   CHV_FGT_EU_DIS_SS1_R0_SHIFT	24
> -#define   CHV_FGT_EU_DIS_SS1_R0_MASK	(0xf << CHV_FGT_EU_DIS_SS1_R0_SHIFT)
> -#define   CHV_FGT_EU_DIS_SS1_R1_SHIFT	28
> -#define   CHV_FGT_EU_DIS_SS1_R1_MASK	(0xf << CHV_FGT_EU_DIS_SS1_R1_SHIFT)
> -
> -#define GEN8_FUSE2			_MMIO(0x9120)
> -#define   GEN8_F2_SS_DIS_SHIFT		21
> -#define   GEN8_F2_SS_DIS_MASK		(0x7 << GEN8_F2_SS_DIS_SHIFT)
> -#define   GEN8_F2_S_ENA_SHIFT		25
> -#define   GEN8_F2_S_ENA_MASK		(0x7 << GEN8_F2_S_ENA_SHIFT)
> -
> -#define   GEN9_F2_SS_DIS_SHIFT		20
> -#define   GEN9_F2_SS_DIS_MASK		(0xf << GEN9_F2_SS_DIS_SHIFT)
> -
> -#define   GEN10_F2_S_ENA_SHIFT		22
> -#define   GEN10_F2_S_ENA_MASK		(0x3f << GEN10_F2_S_ENA_SHIFT)
> -#define   GEN10_F2_SS_DIS_SHIFT		18
> -#define   GEN10_F2_SS_DIS_MASK		(0xf << GEN10_F2_SS_DIS_SHIFT)
> -
> -#define	GEN10_MIRROR_FUSE3		_MMIO(0x9118)
> -#define GEN10_L3BANK_PAIR_COUNT     4
> -#define GEN10_L3BANK_MASK   0x0F
> +#define HSW_PAVP_FUSE1				_MMIO(0x911C)
> +#define   XEHP_SFC_ENABLE_MASK			REG_GENMASK(27, 24)
> +#define   HSW_F1_EU_DIS_MASK			REG_GENMASK(17, 16)
> +#define   HSW_F1_EU_DIS_10EUS			0
> +#define   HSW_F1_EU_DIS_8EUS			1
> +#define   HSW_F1_EU_DIS_6EUS			2
> +
> +#define CHV_FUSE_GT				_MMIO(VLV_DISPLAY_BASE + 0x2168)
> +#define   CHV_FGT_DISABLE_SS0			(1 << 10)
> +#define   CHV_FGT_DISABLE_SS1			(1 << 11)
> +#define   CHV_FGT_EU_DIS_SS0_R0_SHIFT		16
> +#define   CHV_FGT_EU_DIS_SS0_R0_MASK		(0xf << CHV_FGT_EU_DIS_SS0_R0_SHIFT)
> +#define   CHV_FGT_EU_DIS_SS0_R1_SHIFT		20
> +#define   CHV_FGT_EU_DIS_SS0_R1_MASK		(0xf << CHV_FGT_EU_DIS_SS0_R1_SHIFT)
> +#define   CHV_FGT_EU_DIS_SS1_R0_SHIFT		24
> +#define   CHV_FGT_EU_DIS_SS1_R0_MASK		(0xf << CHV_FGT_EU_DIS_SS1_R0_SHIFT)
> +#define   CHV_FGT_EU_DIS_SS1_R1_SHIFT		28
> +#define   CHV_FGT_EU_DIS_SS1_R1_MASK		(0xf << CHV_FGT_EU_DIS_SS1_R1_SHIFT)
> +
> +#define GEN8_FUSE2				_MMIO(0x9120)
> +#define   GEN8_F2_SS_DIS_SHIFT			21
> +#define   GEN8_F2_SS_DIS_MASK			(0x7 << GEN8_F2_SS_DIS_SHIFT)
> +#define   GEN8_F2_S_ENA_SHIFT			25
> +#define   GEN8_F2_S_ENA_MASK			(0x7 << GEN8_F2_S_ENA_SHIFT)
> +
> +#define   GEN9_F2_SS_DIS_SHIFT			20
> +#define   GEN9_F2_SS_DIS_MASK			(0xf << GEN9_F2_SS_DIS_SHIFT)
> +
> +#define   GEN10_F2_S_ENA_SHIFT			22
> +#define   GEN10_F2_S_ENA_MASK			(0x3f << GEN10_F2_S_ENA_SHIFT)
> +#define   GEN10_F2_SS_DIS_SHIFT			18
> +#define   GEN10_F2_SS_DIS_MASK			(0xf << GEN10_F2_SS_DIS_SHIFT)
> +
> +#define	GEN10_MIRROR_FUSE3			_MMIO(0x9118)
> +#define   GEN10_L3BANK_PAIR_COUNT		4
> +#define   GEN10_L3BANK_MASK			0x0F
>  /* on Xe_HP the same fuses indicates mslices instead of L3 banks */
> -#define GEN12_MAX_MSLICES 4
> -#define GEN12_MEML3_EN_MASK 0x0F
> -
> -#define GEN8_EU_DISABLE0		_MMIO(0x9134)
> -#define   GEN8_EU_DIS0_S0_MASK		0xffffff
> -#define   GEN8_EU_DIS0_S1_SHIFT		24
> -#define   GEN8_EU_DIS0_S1_MASK		(0xff << GEN8_EU_DIS0_S1_SHIFT)
> -
> -#define GEN8_EU_DISABLE1		_MMIO(0x9138)
> -#define   GEN8_EU_DIS1_S1_MASK		0xffff
> -#define   GEN8_EU_DIS1_S2_SHIFT		16
> -#define   GEN8_EU_DIS1_S2_MASK		(0xffff << GEN8_EU_DIS1_S2_SHIFT)
> -
> -#define GEN8_EU_DISABLE2		_MMIO(0x913c)
> -#define   GEN8_EU_DIS2_S2_MASK		0xff
> -
> -#define GEN9_EU_DISABLE(slice)		_MMIO(0x9134 + (slice) * 0x4)
> -
> -#define GEN10_EU_DISABLE3		_MMIO(0x9140)
> -#define   GEN10_EU_DIS_SS_MASK		0xff
> -
> -#define GEN11_GT_VEBOX_VDBOX_DISABLE	_MMIO(0x9140)
> -#define   GEN11_GT_VDBOX_DISABLE_MASK	0xff
> -#define   GEN11_GT_VEBOX_DISABLE_SHIFT	16
> -#define   GEN11_GT_VEBOX_DISABLE_MASK	(0x0f << GEN11_GT_VEBOX_DISABLE_SHIFT)
> -
> -#define GEN11_EU_DISABLE _MMIO(0x9134)
> -#define GEN11_EU_DIS_MASK 0xFF
> -
> -#define GEN11_GT_SLICE_ENABLE _MMIO(0x9138)
> -#define GEN11_GT_S_ENA_MASK 0xFF
> -
> -#define GEN11_GT_SUBSLICE_DISABLE _MMIO(0x913C)
> -
> -#define GEN12_GT_GEOMETRY_DSS_ENABLE _MMIO(0x913C)
> -#define GEN12_GT_COMPUTE_DSS_ENABLE _MMIO(0x9144)
> -
> -#define XEHP_EU_ENABLE			_MMIO(0x9134)
> -#define XEHP_EU_ENA_MASK		0xFF
> -
> -#define CRSTANDVID		_MMIO(0x11100)
> -#define PXVFREQ(fstart)		_MMIO(0x11110 + (fstart) * 4)  /* P[0-15]VIDFREQ (0x1114c) (Ironlake) */
> -#define   PXVFREQ_PX_MASK	0x7f000000
> -#define   PXVFREQ_PX_SHIFT	24
> -#define VIDFREQ_BASE		_MMIO(0x11110)
> -#define VIDFREQ1		_MMIO(0x11110) /* VIDFREQ1-4 (0x1111c) (Cantiga) */
> -#define VIDFREQ2		_MMIO(0x11114)
> -#define VIDFREQ3		_MMIO(0x11118)
> -#define VIDFREQ4		_MMIO(0x1111c)
> -#define   VIDFREQ_P0_MASK	0x1f000000
> -#define   VIDFREQ_P0_SHIFT	24
> -#define   VIDFREQ_P0_CSCLK_MASK	0x00f00000
> -#define   VIDFREQ_P0_CSCLK_SHIFT 20
> -#define   VIDFREQ_P0_CRCLK_MASK	0x000f0000
> -#define   VIDFREQ_P0_CRCLK_SHIFT 16
> -#define   VIDFREQ_P1_MASK	0x00001f00
> -#define   VIDFREQ_P1_SHIFT	8
> -#define   VIDFREQ_P1_CSCLK_MASK	0x000000f0
> -#define   VIDFREQ_P1_CSCLK_SHIFT 4
> -#define   VIDFREQ_P1_CRCLK_MASK	0x0000000f
> -#define INTTOEXT_BASE_ILK	_MMIO(0x11300)
> -#define INTTOEXT_BASE		_MMIO(0x11120) /* INTTOEXT1-8 (0x1113c) */
> -#define   INTTOEXT_MAP3_SHIFT	24
> -#define   INTTOEXT_MAP3_MASK	(0x1f << INTTOEXT_MAP3_SHIFT)
> -#define   INTTOEXT_MAP2_SHIFT	16
> -#define   INTTOEXT_MAP2_MASK	(0x1f << INTTOEXT_MAP2_SHIFT)
> -#define   INTTOEXT_MAP1_SHIFT	8
> -#define   INTTOEXT_MAP1_MASK	(0x1f << INTTOEXT_MAP1_SHIFT)
> -#define   INTTOEXT_MAP0_SHIFT	0
> -#define   INTTOEXT_MAP0_MASK	(0x1f << INTTOEXT_MAP0_SHIFT)
> -#define MEMSWCTL		_MMIO(0x11170) /* Ironlake only */
> -#define   MEMCTL_CMD_MASK	0xe000
> -#define   MEMCTL_CMD_SHIFT	13
> -#define   MEMCTL_CMD_RCLK_OFF	0
> -#define   MEMCTL_CMD_RCLK_ON	1
> -#define   MEMCTL_CMD_CHFREQ	2
> -#define   MEMCTL_CMD_CHVID	3
> -#define   MEMCTL_CMD_VMMOFF	4
> -#define   MEMCTL_CMD_VMMON	5
> -#define   MEMCTL_CMD_STS	(1 << 12) /* write 1 triggers command, clears
> -					     when command complete */
> -#define   MEMCTL_FREQ_MASK	0x0f00 /* jitter, from 0-15 */
> -#define   MEMCTL_FREQ_SHIFT	8
> -#define   MEMCTL_SFCAVM		(1 << 7)
> -#define   MEMCTL_TGT_VID_MASK	0x007f
> -#define MEMIHYST		_MMIO(0x1117c)
> -#define MEMINTREN		_MMIO(0x11180) /* 16 bits */
> -#define   MEMINT_RSEXIT_EN	(1 << 8)
> -#define   MEMINT_CX_SUPR_EN	(1 << 7)
> -#define   MEMINT_CONT_BUSY_EN	(1 << 6)
> -#define   MEMINT_AVG_BUSY_EN	(1 << 5)
> -#define   MEMINT_EVAL_CHG_EN	(1 << 4)
> -#define   MEMINT_MON_IDLE_EN	(1 << 3)
> -#define   MEMINT_UP_EVAL_EN	(1 << 2)
> -#define   MEMINT_DOWN_EVAL_EN	(1 << 1)
> -#define   MEMINT_SW_CMD_EN	(1 << 0)
> -#define MEMINTRSTR		_MMIO(0x11182) /* 16 bits */
> -#define   MEM_RSEXIT_MASK	0xc000
> -#define   MEM_RSEXIT_SHIFT	14
> -#define   MEM_CONT_BUSY_MASK	0x3000
> -#define   MEM_CONT_BUSY_SHIFT	12
> -#define   MEM_AVG_BUSY_MASK	0x0c00
> -#define   MEM_AVG_BUSY_SHIFT	10
> -#define   MEM_EVAL_CHG_MASK	0x0300
> -#define   MEM_EVAL_BUSY_SHIFT	8
> -#define   MEM_MON_IDLE_MASK	0x00c0
> -#define   MEM_MON_IDLE_SHIFT	6
> -#define   MEM_UP_EVAL_MASK	0x0030
> -#define   MEM_UP_EVAL_SHIFT	4
> -#define   MEM_DOWN_EVAL_MASK	0x000c
> -#define   MEM_DOWN_EVAL_SHIFT	2
> -#define   MEM_SW_CMD_MASK	0x0003
> -#define   MEM_INT_STEER_GFX	0
> -#define   MEM_INT_STEER_CMR	1
> -#define   MEM_INT_STEER_SMI	2
> -#define   MEM_INT_STEER_SCI	3
> -#define MEMINTRSTS		_MMIO(0x11184)
> -#define   MEMINT_RSEXIT		(1 << 7)
> -#define   MEMINT_CONT_BUSY	(1 << 6)
> -#define   MEMINT_AVG_BUSY	(1 << 5)
> -#define   MEMINT_EVAL_CHG	(1 << 4)
> -#define   MEMINT_MON_IDLE	(1 << 3)
> -#define   MEMINT_UP_EVAL	(1 << 2)
> -#define   MEMINT_DOWN_EVAL	(1 << 1)
> -#define   MEMINT_SW_CMD		(1 << 0)
> -#define MEMMODECTL		_MMIO(0x11190)
> -#define   MEMMODE_BOOST_EN	(1 << 31)
> -#define   MEMMODE_BOOST_FREQ_MASK 0x0f000000 /* jitter for boost, 0-15 */
> -#define   MEMMODE_BOOST_FREQ_SHIFT 24
> -#define   MEMMODE_IDLE_MODE_MASK 0x00030000
> -#define   MEMMODE_IDLE_MODE_SHIFT 16
> -#define   MEMMODE_IDLE_MODE_EVAL 0
> -#define   MEMMODE_IDLE_MODE_CONT 1
> -#define   MEMMODE_HWIDLE_EN	(1 << 15)
> -#define   MEMMODE_SWMODE_EN	(1 << 14)
> -#define   MEMMODE_RCLK_GATE	(1 << 13)
> -#define   MEMMODE_HW_UPDATE	(1 << 12)
> -#define   MEMMODE_FSTART_MASK	0x00000f00 /* starting jitter, 0-15 */
> -#define   MEMMODE_FSTART_SHIFT	8
> -#define   MEMMODE_FMAX_MASK	0x000000f0 /* max jitter, 0-15 */
> -#define   MEMMODE_FMAX_SHIFT	4
> -#define   MEMMODE_FMIN_MASK	0x0000000f /* min jitter, 0-15 */
> -#define RCBMAXAVG		_MMIO(0x1119c)
> -#define MEMSWCTL2		_MMIO(0x1119e) /* Cantiga only */
> -#define   SWMEMCMD_RENDER_OFF	(0 << 13)
> -#define   SWMEMCMD_RENDER_ON	(1 << 13)
> -#define   SWMEMCMD_SWFREQ	(2 << 13)
> -#define   SWMEMCMD_TARVID	(3 << 13)
> -#define   SWMEMCMD_VRM_OFF	(4 << 13)
> -#define   SWMEMCMD_VRM_ON	(5 << 13)
> -#define   CMDSTS		(1 << 12)
> -#define   SFCAVM		(1 << 11)
> -#define   SWFREQ_MASK		0x0380 /* P0-7 */
> -#define   SWFREQ_SHIFT		7
> -#define   TARVID_MASK		0x001f
> -#define MEMSTAT_CTG		_MMIO(0x111a0)
> -#define RCBMINAVG		_MMIO(0x111a0)
> -#define RCUPEI			_MMIO(0x111b0)
> -#define RCDNEI			_MMIO(0x111b4)
> -#define RSTDBYCTL		_MMIO(0x111b8)
> -#define   RS1EN			(1 << 31)
> -#define   RS2EN			(1 << 30)
> -#define   RS3EN			(1 << 29)
> -#define   D3RS3EN		(1 << 28) /* Display D3 imlies RS3 */
> -#define   SWPROMORSX		(1 << 27) /* RSx promotion timers ignored */
> -#define   RCWAKERW		(1 << 26) /* Resetwarn from PCH causes wakeup */
> -#define   DPRSLPVREN		(1 << 25) /* Fast voltage ramp enable */
> -#define   GFXTGHYST		(1 << 24) /* Hysteresis to allow trunk gating */
> -#define   RCX_SW_EXIT		(1 << 23) /* Leave RSx and prevent re-entry */
> -#define   RSX_STATUS_MASK	(7 << 20)
> -#define   RSX_STATUS_ON		(0 << 20)
> -#define   RSX_STATUS_RC1	(1 << 20)
> -#define   RSX_STATUS_RC1E	(2 << 20)
> -#define   RSX_STATUS_RS1	(3 << 20)
> -#define   RSX_STATUS_RS2	(4 << 20) /* aka rc6 */
> -#define   RSX_STATUS_RSVD	(5 << 20) /* deep rc6 unsupported on ilk */
> -#define   RSX_STATUS_RS3	(6 << 20) /* rs3 unsupported on ilk */
> -#define   RSX_STATUS_RSVD2	(7 << 20)
> -#define   UWRCRSXE		(1 << 19) /* wake counter limit prevents rsx */
> -#define   RSCRP			(1 << 18) /* rs requests control on rs1/2 reqs */
> -#define   JRSC			(1 << 17) /* rsx coupled to cpu c-state */
> -#define   RS2INC0		(1 << 16) /* allow rs2 in cpu c0 */
> -#define   RS1CONTSAV_MASK	(3 << 14)
> -#define   RS1CONTSAV_NO_RS1	(0 << 14) /* rs1 doesn't save/restore context */
> -#define   RS1CONTSAV_RSVD	(1 << 14)
> -#define   RS1CONTSAV_SAVE_RS1	(2 << 14) /* rs1 saves context */
> -#define   RS1CONTSAV_FULL_RS1	(3 << 14) /* rs1 saves and restores context */
> -#define   NORMSLEXLAT_MASK	(3 << 12)
> -#define   SLOW_RS123		(0 << 12)
> -#define   SLOW_RS23		(1 << 12)
> -#define   SLOW_RS3		(2 << 12)
> -#define   NORMAL_RS123		(3 << 12)
> -#define   RCMODE_TIMEOUT	(1 << 11) /* 0 is eval interval method */
> -#define   IMPROMOEN		(1 << 10) /* promo is immediate or delayed until next idle interval (only for timeout method above) */
> -#define   RCENTSYNC		(1 << 9) /* rs coupled to cpu c-state (3/6/7) */
> -#define   STATELOCK		(1 << 7) /* locked to rs_cstate if 0 */
> -#define   RS_CSTATE_MASK	(3 << 4)
> -#define   RS_CSTATE_C367_RS1	(0 << 4)
> -#define   RS_CSTATE_C36_RS1_C7_RS2 (1 << 4)
> -#define   RS_CSTATE_RSVD	(2 << 4)
> -#define   RS_CSTATE_C367_RS2	(3 << 4)
> -#define   REDSAVES		(1 << 3) /* no context save if was idle during rs0 */
> -#define   REDRESTORES		(1 << 2) /* no restore if was idle during rs0 */
> -#define VIDCTL			_MMIO(0x111c0)
> -#define VIDSTS			_MMIO(0x111c8)
> -#define VIDSTART		_MMIO(0x111cc) /* 8 bits */
> -#define MEMSTAT_ILK		_MMIO(0x111f8)
> -#define   MEMSTAT_VID_MASK	0x7f00
> -#define   MEMSTAT_VID_SHIFT	8
> -#define   MEMSTAT_PSTATE_MASK	0x00f8
> -#define   MEMSTAT_PSTATE_SHIFT  3
> -#define   MEMSTAT_MON_ACTV	(1 << 2)
> -#define   MEMSTAT_SRC_CTL_MASK	0x0003
> -#define   MEMSTAT_SRC_CTL_CORE	0
> -#define   MEMSTAT_SRC_CTL_TRB	1
> -#define   MEMSTAT_SRC_CTL_THM	2
> -#define   MEMSTAT_SRC_CTL_STDBY 3
> -#define RCPREVBSYTUPAVG		_MMIO(0x113b8)
> -#define RCPREVBSYTDNAVG		_MMIO(0x113bc)
> -#define PMMISC			_MMIO(0x11214)
> -#define   MCPPCE_EN		(1 << 0) /* enable PM_MSG from PCH->MPC */
> -#define SDEW			_MMIO(0x1124c)
> -#define CSIEW0			_MMIO(0x11250)
> -#define CSIEW1			_MMIO(0x11254)
> -#define CSIEW2			_MMIO(0x11258)
> -#define PEW(i)			_MMIO(0x1125c + (i) * 4) /* 5 registers */
> -#define DEW(i)			_MMIO(0x11270 + (i) * 4) /* 3 registers */
> -#define MCHAFE			_MMIO(0x112c0)
> -#define CSIEC			_MMIO(0x112e0)
> -#define DMIEC			_MMIO(0x112e4)
> -#define DDREC			_MMIO(0x112e8)
> -#define PEG0EC			_MMIO(0x112ec)
> -#define PEG1EC			_MMIO(0x112f0)
> -#define GFXEC			_MMIO(0x112f4)
> -#define RPPREVBSYTUPAVG		_MMIO(0x113b8)
> -#define RPPREVBSYTDNAVG		_MMIO(0x113bc)
> -#define ECR			_MMIO(0x11600)
> -#define   ECR_GPFE		(1 << 31)
> -#define   ECR_IMONE		(1 << 30)
> -#define   ECR_CAP_MASK		0x0000001f /* Event range, 0-31 */
> -#define OGW0			_MMIO(0x11608)
> -#define OGW1			_MMIO(0x1160c)
> -#define EG0			_MMIO(0x11610)
> -#define EG1			_MMIO(0x11614)
> -#define EG2			_MMIO(0x11618)
> -#define EG3			_MMIO(0x1161c)
> -#define EG4			_MMIO(0x11620)
> -#define EG5			_MMIO(0x11624)
> -#define EG6			_MMIO(0x11628)
> -#define EG7			_MMIO(0x1162c)
> -#define PXW(i)			_MMIO(0x11664 + (i) * 4) /* 4 registers */
> -#define PXWL(i)			_MMIO(0x11680 + (i) * 8) /* 8 registers */
> -#define LCFUSE02		_MMIO(0x116c0)
> -#define   LCFUSE_HIV_MASK	0x000000ff
> -
> -#define GEN6_GT_THREAD_STATUS_REG _MMIO(0x13805c)
> -#define GEN6_GT_THREAD_STATUS_CORE_MASK 0x7
> +#define   GEN12_MAX_MSLICES			4
> +#define   GEN12_MEML3_EN_MASK			0x0F
> +
> +#define GEN8_EU_DISABLE0			_MMIO(0x9134)
> +#define   GEN8_EU_DIS0_S0_MASK			0xffffff
> +#define   GEN8_EU_DIS0_S1_SHIFT			24
> +#define   GEN8_EU_DIS0_S1_MASK			(0xff << GEN8_EU_DIS0_S1_SHIFT)
> +
> +#define GEN8_EU_DISABLE1			_MMIO(0x9138)
> +#define   GEN8_EU_DIS1_S1_MASK			0xffff
> +#define   GEN8_EU_DIS1_S2_SHIFT			16
> +#define   GEN8_EU_DIS1_S2_MASK			(0xffff << GEN8_EU_DIS1_S2_SHIFT)
> +
> +#define GEN8_EU_DISABLE2			_MMIO(0x913c)
> +#define   GEN8_EU_DIS2_S2_MASK			0xff
> +
> +#define GEN9_EU_DISABLE(slice)			_MMIO(0x9134 + (slice) * 0x4)
> +
> +#define GEN10_EU_DISABLE3			_MMIO(0x9140)
> +#define   GEN10_EU_DIS_SS_MASK			0xff
> +
> +#define GEN11_GT_VEBOX_VDBOX_DISABLE		_MMIO(0x9140)
> +#define   GEN11_GT_VDBOX_DISABLE_MASK		0xff
> +#define   GEN11_GT_VEBOX_DISABLE_SHIFT		16
> +#define   GEN11_GT_VEBOX_DISABLE_MASK		(0x0f << GEN11_GT_VEBOX_DISABLE_SHIFT)
> +
> +#define GEN11_EU_DISABLE			_MMIO(0x9134)
> +#define   GEN11_EU_DIS_MASK			0xFF
> +
> +#define GEN11_GT_SLICE_ENABLE			_MMIO(0x9138)
> +#define   GEN11_GT_S_ENA_MASK			0xFF
> +
> +#define GEN11_GT_SUBSLICE_DISABLE		_MMIO(0x913C)
> +
> +#define GEN12_GT_GEOMETRY_DSS_ENABLE		_MMIO(0x913C)
> +#define GEN12_GT_COMPUTE_DSS_ENABLE		_MMIO(0x9144)
> +
> +#define XEHP_EU_ENABLE				_MMIO(0x9134)
> +#define   XEHP_EU_ENA_MASK			0xFF
> +
> +#define CRSTANDVID				_MMIO(0x11100)
> +#define PXVFREQ(fstart)				_MMIO(0x11110 + (fstart) * 4)  /* P[0-15]VIDFREQ (0x1114c) (Ironlake) */
> +#define   PXVFREQ_PX_MASK			0x7f000000
> +#define   PXVFREQ_PX_SHIFT			24
> +#define VIDFREQ_BASE				_MMIO(0x11110)
> +#define VIDFREQ1				_MMIO(0x11110) /* VIDFREQ1-4 (0x1111c) (Cantiga) */
> +#define VIDFREQ2				_MMIO(0x11114)
> +#define VIDFREQ3				_MMIO(0x11118)
> +#define VIDFREQ4				_MMIO(0x1111c)
> +#define   VIDFREQ_P0_MASK			0x1f000000
> +#define   VIDFREQ_P0_SHIFT			24
> +#define   VIDFREQ_P0_CSCLK_MASK			0x00f00000
> +#define   VIDFREQ_P0_CSCLK_SHIFT		20
> +#define   VIDFREQ_P0_CRCLK_MASK			0x000f0000
> +#define   VIDFREQ_P0_CRCLK_SHIFT		16
> +#define   VIDFREQ_P1_MASK			0x00001f00
> +#define   VIDFREQ_P1_SHIFT			8
> +#define   VIDFREQ_P1_CSCLK_MASK			0x000000f0
> +#define   VIDFREQ_P1_CSCLK_SHIFT		4
> +#define   VIDFREQ_P1_CRCLK_MASK			0x0000000f
> +#define INTTOEXT_BASE_ILK			_MMIO(0x11300)
> +#define INTTOEXT_BASE				_MMIO(0x11120) /* INTTOEXT1-8 (0x1113c) */
> +#define   INTTOEXT_MAP3_SHIFT			24
> +#define   INTTOEXT_MAP3_MASK			(0x1f << INTTOEXT_MAP3_SHIFT)
> +#define   INTTOEXT_MAP2_SHIFT			16
> +#define   INTTOEXT_MAP2_MASK			(0x1f << INTTOEXT_MAP2_SHIFT)
> +#define   INTTOEXT_MAP1_SHIFT			8
> +#define   INTTOEXT_MAP1_MASK			(0x1f << INTTOEXT_MAP1_SHIFT)
> +#define   INTTOEXT_MAP0_SHIFT			0
> +#define   INTTOEXT_MAP0_MASK			(0x1f << INTTOEXT_MAP0_SHIFT)
> +#define MEMSWCTL				_MMIO(0x11170) /* Ironlake only */
> +#define   MEMCTL_CMD_MASK			0xe000
> +#define   MEMCTL_CMD_SHIFT			13
> +#define   MEMCTL_CMD_RCLK_OFF			0
> +#define   MEMCTL_CMD_RCLK_ON			1
> +#define   MEMCTL_CMD_CHFREQ			2
> +#define   MEMCTL_CMD_CHVID			3
> +#define   MEMCTL_CMD_VMMOFF			4
> +#define   MEMCTL_CMD_VMMON			5
> +#define   MEMCTL_CMD_STS			(1 << 12) /* write 1 triggers command, clears
> +							     when command complete */
> +#define   MEMCTL_FREQ_MASK			0x0f00 /* jitter, from 0-15 */
> +#define   MEMCTL_FREQ_SHIFT			8
> +#define   MEMCTL_SFCAVM				(1 << 7)
> +#define   MEMCTL_TGT_VID_MASK			0x007f
> +#define MEMIHYST				_MMIO(0x1117c)
> +#define MEMINTREN				_MMIO(0x11180) /* 16 bits */
> +#define   MEMINT_RSEXIT_EN			(1 << 8)
> +#define   MEMINT_CX_SUPR_EN			(1 << 7)
> +#define   MEMINT_CONT_BUSY_EN			(1 << 6)
> +#define   MEMINT_AVG_BUSY_EN			(1 << 5)
> +#define   MEMINT_EVAL_CHG_EN			(1 << 4)
> +#define   MEMINT_MON_IDLE_EN			(1 << 3)
> +#define   MEMINT_UP_EVAL_EN			(1 << 2)
> +#define   MEMINT_DOWN_EVAL_EN			(1 << 1)
> +#define   MEMINT_SW_CMD_EN			(1 << 0)
> +#define MEMINTRSTR				_MMIO(0x11182) /* 16 bits */
> +#define   MEM_RSEXIT_MASK			0xc000
> +#define   MEM_RSEXIT_SHIFT			14
> +#define   MEM_CONT_BUSY_MASK			0x3000
> +#define   MEM_CONT_BUSY_SHIFT			12
> +#define   MEM_AVG_BUSY_MASK			0x0c00
> +#define   MEM_AVG_BUSY_SHIFT			10
> +#define   MEM_EVAL_CHG_MASK			0x0300
> +#define   MEM_EVAL_BUSY_SHIFT			8
> +#define   MEM_MON_IDLE_MASK			0x00c0
> +#define   MEM_MON_IDLE_SHIFT			6
> +#define   MEM_UP_EVAL_MASK			0x0030
> +#define   MEM_UP_EVAL_SHIFT			4
> +#define   MEM_DOWN_EVAL_MASK			0x000c
> +#define   MEM_DOWN_EVAL_SHIFT			2
> +#define   MEM_SW_CMD_MASK			0x0003
> +#define   MEM_INT_STEER_GFX			0
> +#define   MEM_INT_STEER_CMR			1
> +#define   MEM_INT_STEER_SMI			2
> +#define   MEM_INT_STEER_SCI			3
> +#define MEMINTRSTS				_MMIO(0x11184)
> +#define   MEMINT_RSEXIT				(1 << 7)
> +#define   MEMINT_CONT_BUSY			(1 << 6)
> +#define   MEMINT_AVG_BUSY			(1 << 5)
> +#define   MEMINT_EVAL_CHG			(1 << 4)
> +#define   MEMINT_MON_IDLE			(1 << 3)
> +#define   MEMINT_UP_EVAL			(1 << 2)
> +#define   MEMINT_DOWN_EVAL			(1 << 1)
> +#define   MEMINT_SW_CMD				(1 << 0)
> +#define MEMMODECTL				_MMIO(0x11190)
> +#define   MEMMODE_BOOST_EN			(1 << 31)
> +#define   MEMMODE_BOOST_FREQ_MASK		0x0f000000 /* jitter for boost, 0-15 */
> +#define   MEMMODE_BOOST_FREQ_SHIFT		24
> +#define   MEMMODE_IDLE_MODE_MASK		0x00030000
> +#define   MEMMODE_IDLE_MODE_SHIFT		16
> +#define   MEMMODE_IDLE_MODE_EVAL		0
> +#define   MEMMODE_IDLE_MODE_CONT		1
> +#define   MEMMODE_HWIDLE_EN			(1 << 15)
> +#define   MEMMODE_SWMODE_EN			(1 << 14)
> +#define   MEMMODE_RCLK_GATE			(1 << 13)
> +#define   MEMMODE_HW_UPDATE			(1 << 12)
> +#define   MEMMODE_FSTART_MASK			0x00000f00 /* starting jitter, 0-15 */
> +#define   MEMMODE_FSTART_SHIFT			8
> +#define   MEMMODE_FMAX_MASK			0x000000f0 /* max jitter, 0-15 */
> +#define   MEMMODE_FMAX_SHIFT			4
> +#define   MEMMODE_FMIN_MASK			0x0000000f /* min jitter, 0-15 */
> +#define RCBMAXAVG				_MMIO(0x1119c)
> +#define MEMSWCTL2				_MMIO(0x1119e) /* Cantiga only */
> +#define   SWMEMCMD_RENDER_OFF			(0 << 13)
> +#define   SWMEMCMD_RENDER_ON			(1 << 13)
> +#define   SWMEMCMD_SWFREQ			(2 << 13)
> +#define   SWMEMCMD_TARVID			(3 << 13)
> +#define   SWMEMCMD_VRM_OFF			(4 << 13)
> +#define   SWMEMCMD_VRM_ON			(5 << 13)
> +#define   CMDSTS				(1 << 12)
> +#define   SFCAVM				(1 << 11)
> +#define   SWFREQ_MASK				0x0380 /* P0-7 */
> +#define   SWFREQ_SHIFT				7
> +#define   TARVID_MASK				0x001f
> +#define MEMSTAT_CTG				_MMIO(0x111a0)
> +#define RCBMINAVG				_MMIO(0x111a0)
> +#define RCUPEI					_MMIO(0x111b0)
> +#define RCDNEI					_MMIO(0x111b4)
> +#define RSTDBYCTL				_MMIO(0x111b8)
> +#define   RS1EN					(1 << 31)
> +#define   RS2EN					(1 << 30)
> +#define   RS3EN					(1 << 29)
> +#define   D3RS3EN				(1 << 28) /* Display D3 imlies RS3 */
> +#define   SWPROMORSX				(1 << 27) /* RSx promotion timers ignored */
> +#define   RCWAKERW				(1 << 26) /* Resetwarn from PCH causes wakeup */
> +#define   DPRSLPVREN				(1 << 25) /* Fast voltage ramp enable */
> +#define   GFXTGHYST				(1 << 24) /* Hysteresis to allow trunk gating */
> +#define   RCX_SW_EXIT				(1 << 23) /* Leave RSx and prevent re-entry */
> +#define   RSX_STATUS_MASK			(7 << 20)
> +#define   RSX_STATUS_ON				(0 << 20)
> +#define   RSX_STATUS_RC1			(1 << 20)
> +#define   RSX_STATUS_RC1E			(2 << 20)
> +#define   RSX_STATUS_RS1			(3 << 20)
> +#define   RSX_STATUS_RS2			(4 << 20) /* aka rc6 */
> +#define   RSX_STATUS_RSVD			(5 << 20) /* deep rc6 unsupported on ilk */
> +#define   RSX_STATUS_RS3			(6 << 20) /* rs3 unsupported on ilk */
> +#define   RSX_STATUS_RSVD2			(7 << 20)
> +#define   UWRCRSXE				(1 << 19) /* wake counter limit prevents rsx */
> +#define   RSCRP					(1 << 18) /* rs requests control on rs1/2 reqs */
> +#define   JRSC					(1 << 17) /* rsx coupled to cpu c-state */
> +#define   RS2INC0				(1 << 16) /* allow rs2 in cpu c0 */
> +#define   RS1CONTSAV_MASK			(3 << 14)
> +#define   RS1CONTSAV_NO_RS1			(0 << 14) /* rs1 doesn't save/restore context */
> +#define   RS1CONTSAV_RSVD			(1 << 14)
> +#define   RS1CONTSAV_SAVE_RS1			(2 << 14) /* rs1 saves context */
> +#define   RS1CONTSAV_FULL_RS1			(3 << 14) /* rs1 saves and restores context */
> +#define   NORMSLEXLAT_MASK			(3 << 12)
> +#define   SLOW_RS123				(0 << 12)
> +#define   SLOW_RS23				(1 << 12)
> +#define   SLOW_RS3				(2 << 12)
> +#define   NORMAL_RS123				(3 << 12)
> +#define   RCMODE_TIMEOUT			(1 << 11) /* 0 is eval interval method */
> +#define   IMPROMOEN				(1 << 10) /* promo is immediate or delayed until next idle interval (only for timeout method above) */
> +#define   RCENTSYNC				(1 << 9) /* rs coupled to cpu c-state (3/6/7) */
> +#define   STATELOCK				(1 << 7) /* locked to rs_cstate if 0 */
> +#define   RS_CSTATE_MASK			(3 << 4)
> +#define   RS_CSTATE_C367_RS1			(0 << 4)
> +#define   RS_CSTATE_C36_RS1_C7_RS2		(1 << 4)
> +#define   RS_CSTATE_RSVD			(2 << 4)
> +#define   RS_CSTATE_C367_RS2			(3 << 4)
> +#define   REDSAVES				(1 << 3) /* no context save if was idle during rs0 */
> +#define   REDRESTORES				(1 << 2) /* no restore if was idle during rs0 */
> +#define VIDCTL					_MMIO(0x111c0)
> +#define VIDSTS					_MMIO(0x111c8)
> +#define VIDSTART				_MMIO(0x111cc) /* 8 bits */
> +#define MEMSTAT_ILK				_MMIO(0x111f8)
> +#define   MEMSTAT_VID_MASK			0x7f00
> +#define   MEMSTAT_VID_SHIFT			8
> +#define   MEMSTAT_PSTATE_MASK			0x00f8
> +#define   MEMSTAT_PSTATE_SHIFT			3
> +#define   MEMSTAT_MON_ACTV			(1 << 2)
> +#define   MEMSTAT_SRC_CTL_MASK			0x0003
> +#define   MEMSTAT_SRC_CTL_CORE			0
> +#define   MEMSTAT_SRC_CTL_TRB			1
> +#define   MEMSTAT_SRC_CTL_THM			2
> +#define   MEMSTAT_SRC_CTL_STDBY			3
> +#define RCPREVBSYTUPAVG				_MMIO(0x113b8)
> +#define RCPREVBSYTDNAVG				_MMIO(0x113bc)
> +#define PMMISC					_MMIO(0x11214)
> +#define   MCPPCE_EN				(1 << 0) /* enable PM_MSG from PCH->MPC */
> +#define SDEW					_MMIO(0x1124c)
> +#define CSIEW0					_MMIO(0x11250)
> +#define CSIEW1					_MMIO(0x11254)
> +#define CSIEW2					_MMIO(0x11258)
> +#define PEW(i)					_MMIO(0x1125c + (i) * 4) /* 5 registers */
> +#define DEW(i)					_MMIO(0x11270 + (i) * 4) /* 3 registers */
> +#define MCHAFE					_MMIO(0x112c0)
> +#define CSIEC					_MMIO(0x112e0)
> +#define DMIEC					_MMIO(0x112e4)
> +#define DDREC					_MMIO(0x112e8)
> +#define PEG0EC					_MMIO(0x112ec)
> +#define PEG1EC					_MMIO(0x112f0)
> +#define GFXEC					_MMIO(0x112f4)
> +#define RPPREVBSYTUPAVG				_MMIO(0x113b8)
> +#define RPPREVBSYTDNAVG				_MMIO(0x113bc)
> +#define ECR					_MMIO(0x11600)
> +#define   ECR_GPFE				(1 << 31)
> +#define   ECR_IMONE				(1 << 30)
> +#define   ECR_CAP_MASK				0x0000001f /* Event range, 0-31 */
> +#define OGW0					_MMIO(0x11608)
> +#define OGW1					_MMIO(0x1160c)
> +#define EG0					_MMIO(0x11610)
> +#define EG1					_MMIO(0x11614)
> +#define EG2					_MMIO(0x11618)
> +#define EG3					_MMIO(0x1161c)
> +#define EG4					_MMIO(0x11620)
> +#define EG5					_MMIO(0x11624)
> +#define EG6					_MMIO(0x11628)
> +#define EG7					_MMIO(0x1162c)
> +#define PXW(i)					_MMIO(0x11664 + (i) * 4) /* 4 registers */
> +#define PXWL(i)					_MMIO(0x11680 + (i) * 8) /* 8 registers */
> +#define LCFUSE02				_MMIO(0x116c0)
> +#define   LCFUSE_HIV_MASK			0x000000ff
> +
> +#define GEN6_GT_THREAD_STATUS_REG		_MMIO(0x13805c)
> +#define   GEN6_GT_THREAD_STATUS_CORE_MASK	0x7
>  
>  /*
>   * Logical Context regs
> @@ -768,24 +768,24 @@
>   * - GT1 size just indicates how much of render context
>   *   doesn't need saving on GT1
>   */
> -#define CXT_SIZE		_MMIO(0x21a0)
> -#define GEN6_CXT_POWER_SIZE(cxt_reg)	(((cxt_reg) >> 24) & 0x3f)
> -#define GEN6_CXT_RING_SIZE(cxt_reg)	(((cxt_reg) >> 18) & 0x3f)
> -#define GEN6_CXT_RENDER_SIZE(cxt_reg)	(((cxt_reg) >> 12) & 0x3f)
> -#define GEN6_CXT_EXTENDED_SIZE(cxt_reg)	(((cxt_reg) >> 6) & 0x3f)
> -#define GEN6_CXT_PIPELINE_SIZE(cxt_reg)	(((cxt_reg) >> 0) & 0x3f)
> -#define GEN6_CXT_TOTAL_SIZE(cxt_reg)	(GEN6_CXT_RING_SIZE(cxt_reg) + \
> -					GEN6_CXT_EXTENDED_SIZE(cxt_reg) + \
> -					GEN6_CXT_PIPELINE_SIZE(cxt_reg))
> -#define GEN7_CXT_SIZE		_MMIO(0x21a8)
> -#define GEN7_CXT_POWER_SIZE(ctx_reg)	(((ctx_reg) >> 25) & 0x7f)
> -#define GEN7_CXT_RING_SIZE(ctx_reg)	(((ctx_reg) >> 22) & 0x7)
> -#define GEN7_CXT_RENDER_SIZE(ctx_reg)	(((ctx_reg) >> 16) & 0x3f)
> -#define GEN7_CXT_EXTENDED_SIZE(ctx_reg)	(((ctx_reg) >> 9) & 0x7f)
> -#define GEN7_CXT_GT1_SIZE(ctx_reg)	(((ctx_reg) >> 6) & 0x7)
> -#define GEN7_CXT_VFSTATE_SIZE(ctx_reg)	(((ctx_reg) >> 0) & 0x3f)
> -#define GEN7_CXT_TOTAL_SIZE(ctx_reg)	(GEN7_CXT_EXTENDED_SIZE(ctx_reg) + \
> -					 GEN7_CXT_VFSTATE_SIZE(ctx_reg))
> +#define CXT_SIZE				_MMIO(0x21a0)
> +#define   GEN6_CXT_POWER_SIZE(cxt_reg)		(((cxt_reg) >> 24) & 0x3f)
> +#define   GEN6_CXT_RING_SIZE(cxt_reg)		(((cxt_reg) >> 18) & 0x3f)
> +#define   GEN6_CXT_RENDER_SIZE(cxt_reg)		(((cxt_reg) >> 12) & 0x3f)
> +#define   GEN6_CXT_EXTENDED_SIZE(cxt_reg)	(((cxt_reg) >> 6) & 0x3f)
> +#define   GEN6_CXT_PIPELINE_SIZE(cxt_reg)	(((cxt_reg) >> 0) & 0x3f)
> +#define   GEN6_CXT_TOTAL_SIZE(cxt_reg)		(GEN6_CXT_RING_SIZE(cxt_reg) + \
> +						GEN6_CXT_EXTENDED_SIZE(cxt_reg) + \
> +						GEN6_CXT_PIPELINE_SIZE(cxt_reg))
> +#define GEN7_CXT_SIZE				_MMIO(0x21a8)
> +#define   GEN7_CXT_POWER_SIZE(ctx_reg)		(((ctx_reg) >> 25) & 0x7f)
> +#define   GEN7_CXT_RING_SIZE(ctx_reg)		(((ctx_reg) >> 22) & 0x7)
> +#define   GEN7_CXT_RENDER_SIZE(ctx_reg)		(((ctx_reg) >> 16) & 0x3f)
> +#define   GEN7_CXT_EXTENDED_SIZE(ctx_reg)	(((ctx_reg) >> 9) & 0x7f)
> +#define   GEN7_CXT_GT1_SIZE(ctx_reg)		(((ctx_reg) >> 6) & 0x7)
> +#define   GEN7_CXT_VFSTATE_SIZE(ctx_reg)	(((ctx_reg) >> 0) & 0x3f)
> +#define   GEN7_CXT_TOTAL_SIZE(ctx_reg)		(GEN7_CXT_EXTENDED_SIZE(ctx_reg) + \
> +						 GEN7_CXT_VFSTATE_SIZE(ctx_reg))
>  
>  enum {
>  	INTEL_ADVANCED_CONTEXT = 0,
> @@ -801,210 +801,210 @@ enum {
>  	FAULT_AND_CONTINUE /* Unsupported */
>  };
>  
> -#define CTX_GTT_ADDRESS_MASK GENMASK(31, 12)
> -#define GEN8_CTX_VALID (1 << 0)
> -#define GEN8_CTX_FORCE_PD_RESTORE (1 << 1)
> -#define GEN8_CTX_FORCE_RESTORE (1 << 2)
> -#define GEN8_CTX_L3LLC_COHERENT (1 << 5)
> -#define GEN8_CTX_PRIVILEGE (1 << 8)
> -#define GEN8_CTX_ADDRESSING_MODE_SHIFT 3
> -
> -#define GEN8_CTX_ID_SHIFT 32
> -#define GEN8_CTX_ID_WIDTH 21
> -#define GEN11_SW_CTX_ID_SHIFT 37
> -#define GEN11_SW_CTX_ID_WIDTH 11
> -#define GEN11_ENGINE_CLASS_SHIFT 61
> -#define GEN11_ENGINE_CLASS_WIDTH 3
> -#define GEN11_ENGINE_INSTANCE_SHIFT 48
> -#define GEN11_ENGINE_INSTANCE_WIDTH 6
> -
> -#define XEHP_SW_CTX_ID_SHIFT 39
> -#define XEHP_SW_CTX_ID_WIDTH 16
> -#define XEHP_SW_COUNTER_SHIFT 58
> -#define XEHP_SW_COUNTER_WIDTH 6
> -
> -#define UNSLCGCTL9440			_MMIO(0x9440)
> -#define   GAMTLBOACS_CLKGATE_DIS	REG_BIT(28)
> -#define   GAMTLBVDBOX5_CLKGATE_DIS	REG_BIT(27)
> -#define   GAMTLBVDBOX6_CLKGATE_DIS	REG_BIT(26)
> -#define   GAMTLBVDBOX3_CLKGATE_DIS	REG_BIT(24)
> -#define   GAMTLBVDBOX4_CLKGATE_DIS	REG_BIT(23)
> -#define   GAMTLBVDBOX7_CLKGATE_DIS	REG_BIT(22)
> -#define   GAMTLBVDBOX2_CLKGATE_DIS	REG_BIT(21)
> -#define   GAMTLBVDBOX0_CLKGATE_DIS	REG_BIT(17)
> -#define   GAMTLBKCR_CLKGATE_DIS		REG_BIT(16)
> -#define   GAMTLBGUC_CLKGATE_DIS		REG_BIT(15)
> -#define   GAMTLBBLT_CLKGATE_DIS		REG_BIT(14)
> -#define   GAMTLBVDBOX1_CLKGATE_DIS	REG_BIT(6)
> -
> -#define UNSLCGCTL9444			_MMIO(0x9444)
> -#define   GAMTLBGFXA0_CLKGATE_DIS	REG_BIT(30)
> -#define   GAMTLBGFXA1_CLKGATE_DIS	REG_BIT(29)
> -#define   GAMTLBCOMPA0_CLKGATE_DIS	REG_BIT(28)
> -#define   GAMTLBCOMPA1_CLKGATE_DIS	REG_BIT(27)
> -#define   GAMTLBCOMPB0_CLKGATE_DIS	REG_BIT(26)
> -#define   GAMTLBCOMPB1_CLKGATE_DIS	REG_BIT(25)
> -#define   GAMTLBCOMPC0_CLKGATE_DIS	REG_BIT(24)
> -#define   GAMTLBCOMPC1_CLKGATE_DIS	REG_BIT(23)
> -#define   GAMTLBCOMPD0_CLKGATE_DIS	REG_BIT(22)
> -#define   GAMTLBCOMPD1_CLKGATE_DIS	REG_BIT(21)
> -#define   GAMTLBMERT_CLKGATE_DIS	REG_BIT(20)
> -#define   GAMTLBVEBOX3_CLKGATE_DIS	REG_BIT(19)
> -#define   GAMTLBVEBOX2_CLKGATE_DIS	REG_BIT(18)
> -#define   GAMTLBVEBOX1_CLKGATE_DIS	REG_BIT(17)
> -#define   GAMTLBVEBOX0_CLKGATE_DIS	REG_BIT(16)
> -#define   LTCDD_CLKGATE_DIS		REG_BIT(10)
> -
> -#define SLICE_UNIT_LEVEL_CLKGATE	_MMIO(0x94d4)
> -#define  SARBUNIT_CLKGATE_DIS		(1 << 5)
> -#define  RCCUNIT_CLKGATE_DIS		(1 << 7)
> -#define  MSCUNIT_CLKGATE_DIS		(1 << 10)
> -#define  NODEDSS_CLKGATE_DIS		REG_BIT(12)
> -#define  L3_CLKGATE_DIS			REG_BIT(16)
> -#define  L3_CR2X_CLKGATE_DIS		REG_BIT(17)
> -
> -#define SUBSLICE_UNIT_LEVEL_CLKGATE	_MMIO(0x9524)
> -#define   DSS_ROUTER_CLKGATE_DIS	REG_BIT(28)
> -#define   GWUNIT_CLKGATE_DIS		REG_BIT(16)
> -
> -#define SUBSLICE_UNIT_LEVEL_CLKGATE2	_MMIO(0x9528)
> -#define  CPSSUNIT_CLKGATE_DIS		REG_BIT(9)
> -
> -#define SSMCGCTL9530			_MMIO(0x9530)
> -#define   RTFUNIT_CLKGATE_DIS		REG_BIT(18)
> -
> -#define UNSLICE_UNIT_LEVEL_CLKGATE	_MMIO(0x9434)
> -#define   VFUNIT_CLKGATE_DIS		REG_BIT(20)
> -#define   TSGUNIT_CLKGATE_DIS		REG_BIT(17) /* XEHPSDV */
> -#define   CG3DDISCFEG_CLKGATE_DIS	REG_BIT(17) /* DG2 */
> -#define   GAMEDIA_CLKGATE_DIS		REG_BIT(11)
> -#define   HSUNIT_CLKGATE_DIS		REG_BIT(8)
> -#define   VSUNIT_CLKGATE_DIS		REG_BIT(3)
> -
> -#define UNSLICE_UNIT_LEVEL_CLKGATE2	_MMIO(0x94e4)
> -#define   VSUNIT_CLKGATE_DIS_TGL	REG_BIT(19)
> -#define   PSDUNIT_CLKGATE_DIS		REG_BIT(5)
> -
> -#define INF_UNIT_LEVEL_CLKGATE		_MMIO(0x9560)
> -#define   CGPSF_CLKGATE_DIS		(1 << 3)
> -
> -#define GEN11_GT_INTR_DW0		_MMIO(0x190018)
> -#define  GEN11_CSME			(31)
> -#define  GEN11_GUNIT			(28)
> -#define  GEN11_GUC			(25)
> -#define  GEN11_WDPERF			(20)
> -#define  GEN11_KCR			(19)
> -#define  GEN11_GTPM			(16)
> -#define  GEN11_BCS			(15)
> -#define  GEN11_RCS0			(0)
> -
> -#define GEN11_GT_INTR_DW1		_MMIO(0x19001c)
> -#define  GEN11_VECS(x)			(31 - (x))
> -#define  GEN11_VCS(x)			(x)
> -
> -#define GEN11_GT_INTR_DW(x)		_MMIO(0x190018 + ((x) * 4))
> -
> -#define GEN11_INTR_IDENTITY_REG0	_MMIO(0x190060)
> -#define GEN11_INTR_IDENTITY_REG1	_MMIO(0x190064)
> -#define  GEN11_INTR_DATA_VALID		(1 << 31)
> -#define  GEN11_INTR_ENGINE_CLASS(x)	(((x) & GENMASK(18, 16)) >> 16)
> -#define  GEN11_INTR_ENGINE_INSTANCE(x)	(((x) & GENMASK(25, 20)) >> 20)
> -#define  GEN11_INTR_ENGINE_INTR(x)	((x) & 0xffff)
> +#define   CTX_GTT_ADDRESS_MASK			GENMASK(31, 12)
> +#define   GEN8_CTX_VALID			(1 << 0)
> +#define   GEN8_CTX_FORCE_PD_RESTORE		(1 << 1)
> +#define   GEN8_CTX_FORCE_RESTORE		(1 << 2)
> +#define   GEN8_CTX_L3LLC_COHERENT		(1 << 5)
> +#define   GEN8_CTX_PRIVILEGE			(1 << 8)
> +#define   GEN8_CTX_ADDRESSING_MODE_SHIFT	3
> +
> +#define   GEN8_CTX_ID_SHIFT			32
> +#define   GEN8_CTX_ID_WIDTH			21
> +#define   GEN11_SW_CTX_ID_SHIFT			37
> +#define   GEN11_SW_CTX_ID_WIDTH			11
> +#define   GEN11_ENGINE_CLASS_SHIFT		61
> +#define   GEN11_ENGINE_CLASS_WIDTH		3
> +#define   GEN11_ENGINE_INSTANCE_SHIFT		48
> +#define   GEN11_ENGINE_INSTANCE_WIDTH		6
> +
> +#define   XEHP_SW_CTX_ID_SHIFT			39
> +#define   XEHP_SW_CTX_ID_WIDTH			16
> +#define   XEHP_SW_COUNTER_SHIFT			58
> +#define   XEHP_SW_COUNTER_WIDTH			6
> +
> +#define UNSLCGCTL9440				_MMIO(0x9440)
> +#define   GAMTLBOACS_CLKGATE_DIS		REG_BIT(28)
> +#define   GAMTLBVDBOX5_CLKGATE_DIS		REG_BIT(27)
> +#define   GAMTLBVDBOX6_CLKGATE_DIS		REG_BIT(26)
> +#define   GAMTLBVDBOX3_CLKGATE_DIS		REG_BIT(24)
> +#define   GAMTLBVDBOX4_CLKGATE_DIS		REG_BIT(23)
> +#define   GAMTLBVDBOX7_CLKGATE_DIS		REG_BIT(22)
> +#define   GAMTLBVDBOX2_CLKGATE_DIS		REG_BIT(21)
> +#define   GAMTLBVDBOX0_CLKGATE_DIS		REG_BIT(17)
> +#define   GAMTLBKCR_CLKGATE_DIS			REG_BIT(16)
> +#define   GAMTLBGUC_CLKGATE_DIS			REG_BIT(15)
> +#define   GAMTLBBLT_CLKGATE_DIS			REG_BIT(14)
> +#define   GAMTLBVDBOX1_CLKGATE_DIS		REG_BIT(6)
> +
> +#define UNSLCGCTL9444				_MMIO(0x9444)
> +#define   GAMTLBGFXA0_CLKGATE_DIS		REG_BIT(30)
> +#define   GAMTLBGFXA1_CLKGATE_DIS		REG_BIT(29)
> +#define   GAMTLBCOMPA0_CLKGATE_DIS		REG_BIT(28)
> +#define   GAMTLBCOMPA1_CLKGATE_DIS		REG_BIT(27)
> +#define   GAMTLBCOMPB0_CLKGATE_DIS		REG_BIT(26)
> +#define   GAMTLBCOMPB1_CLKGATE_DIS		REG_BIT(25)
> +#define   GAMTLBCOMPC0_CLKGATE_DIS		REG_BIT(24)
> +#define   GAMTLBCOMPC1_CLKGATE_DIS		REG_BIT(23)
> +#define   GAMTLBCOMPD0_CLKGATE_DIS		REG_BIT(22)
> +#define   GAMTLBCOMPD1_CLKGATE_DIS		REG_BIT(21)
> +#define   GAMTLBMERT_CLKGATE_DIS		REG_BIT(20)
> +#define   GAMTLBVEBOX3_CLKGATE_DIS		REG_BIT(19)
> +#define   GAMTLBVEBOX2_CLKGATE_DIS		REG_BIT(18)
> +#define   GAMTLBVEBOX1_CLKGATE_DIS		REG_BIT(17)
> +#define   GAMTLBVEBOX0_CLKGATE_DIS		REG_BIT(16)
> +#define   LTCDD_CLKGATE_DIS			REG_BIT(10)
> +
> +#define SLICE_UNIT_LEVEL_CLKGATE		_MMIO(0x94d4)
> +#define   SARBUNIT_CLKGATE_DIS			(1 << 5)
> +#define   RCCUNIT_CLKGATE_DIS			(1 << 7)
> +#define   MSCUNIT_CLKGATE_DIS			(1 << 10)
> +#define   NODEDSS_CLKGATE_DIS			REG_BIT(12)
> +#define   L3_CLKGATE_DIS				REG_BIT(16)
> +#define   L3_CR2X_CLKGATE_DIS			REG_BIT(17)
> +
> +#define SUBSLICE_UNIT_LEVEL_CLKGATE		_MMIO(0x9524)
> +#define   DSS_ROUTER_CLKGATE_DIS		REG_BIT(28)
> +#define   GWUNIT_CLKGATE_DIS			REG_BIT(16)
> +
> +#define SUBSLICE_UNIT_LEVEL_CLKGATE2		_MMIO(0x9528)
> +#define   CPSSUNIT_CLKGATE_DIS			REG_BIT(9)
> +
> +#define SSMCGCTL9530				_MMIO(0x9530)
> +#define   RTFUNIT_CLKGATE_DIS			REG_BIT(18)
> +
> +#define UNSLICE_UNIT_LEVEL_CLKGATE		_MMIO(0x9434)
> +#define   VFUNIT_CLKGATE_DIS			REG_BIT(20)
> +#define   TSGUNIT_CLKGATE_DIS			REG_BIT(17) /* XEHPSDV */
> +#define   CG3DDISCFEG_CLKGATE_DIS		REG_BIT(17) /* DG2 */
> +#define   GAMEDIA_CLKGATE_DIS			REG_BIT(11)
> +#define   HSUNIT_CLKGATE_DIS			REG_BIT(8)
> +#define   VSUNIT_CLKGATE_DIS			REG_BIT(3)
> +
> +#define UNSLICE_UNIT_LEVEL_CLKGATE2		_MMIO(0x94e4)
> +#define   VSUNIT_CLKGATE_DIS_TGL		REG_BIT(19)
> +#define   PSDUNIT_CLKGATE_DIS			REG_BIT(5)
> +
> +#define INF_UNIT_LEVEL_CLKGATE			_MMIO(0x9560)
> +#define   CGPSF_CLKGATE_DIS			(1 << 3)
> +
> +#define GEN11_GT_INTR_DW0			_MMIO(0x190018)
> +#define   GEN11_CSME				(31)
> +#define   GEN11_GUNIT				(28)
> +#define   GEN11_GUC				(25)
> +#define   GEN11_WDPERF				(20)
> +#define   GEN11_KCR				(19)
> +#define   GEN11_GTPM				(16)
> +#define   GEN11_BCS				(15)
> +#define   GEN11_RCS0				(0)
> +
> +#define GEN11_GT_INTR_DW1			_MMIO(0x19001c)
> +#define   GEN11_VECS(x)				(31 - (x))
> +#define   GEN11_VCS(x)				(x)
> +
> +#define GEN11_GT_INTR_DW(x)			_MMIO(0x190018 + ((x) * 4))
> +
> +#define GEN11_INTR_IDENTITY_REG0		_MMIO(0x190060)
> +#define GEN11_INTR_IDENTITY_REG1		_MMIO(0x190064)
> +#define   GEN11_INTR_DATA_VALID			(1 << 31)
> +#define   GEN11_INTR_ENGINE_CLASS(x)		(((x) & GENMASK(18, 16)) >> 16)
> +#define   GEN11_INTR_ENGINE_INSTANCE(x)		(((x) & GENMASK(25, 20)) >> 20)
> +#define   GEN11_INTR_ENGINE_INTR(x)		((x) & 0xffff)
>  /* irq instances for OTHER_CLASS */
> -#define OTHER_GUC_INSTANCE	0
> -#define OTHER_GTPM_INSTANCE	1
> -#define OTHER_KCR_INSTANCE	4
> -
> -#define GEN11_INTR_IDENTITY_REG(x)	_MMIO(0x190060 + ((x) * 4))
> -
> -#define GEN11_IIR_REG0_SELECTOR		_MMIO(0x190070)
> -#define GEN11_IIR_REG1_SELECTOR		_MMIO(0x190074)
> -
> -#define GEN11_IIR_REG_SELECTOR(x)	_MMIO(0x190070 + ((x) * 4))
> -
> -#define GEN11_RENDER_COPY_INTR_ENABLE	_MMIO(0x190030)
> -#define GEN11_VCS_VECS_INTR_ENABLE	_MMIO(0x190034)
> -#define GEN11_GUC_SG_INTR_ENABLE	_MMIO(0x190038)
> -#define GEN11_GPM_WGBOXPERF_INTR_ENABLE	_MMIO(0x19003c)
> -#define GEN11_CRYPTO_RSVD_INTR_ENABLE	_MMIO(0x190040)
> -#define GEN11_GUNIT_CSME_INTR_ENABLE	_MMIO(0x190044)
> -
> -#define GEN11_RCS0_RSVD_INTR_MASK	_MMIO(0x190090)
> -#define GEN11_BCS_RSVD_INTR_MASK	_MMIO(0x1900a0)
> -#define GEN11_VCS0_VCS1_INTR_MASK	_MMIO(0x1900a8)
> -#define GEN11_VCS2_VCS3_INTR_MASK	_MMIO(0x1900ac)
> -#define GEN12_VCS4_VCS5_INTR_MASK	_MMIO(0x1900b0)
> -#define GEN12_VCS6_VCS7_INTR_MASK	_MMIO(0x1900b4)
> -#define GEN11_VECS0_VECS1_INTR_MASK	_MMIO(0x1900d0)
> -#define GEN12_VECS2_VECS3_INTR_MASK	_MMIO(0x1900d4)
> -#define GEN11_GUC_SG_INTR_MASK		_MMIO(0x1900e8)
> -#define GEN11_GPM_WGBOXPERF_INTR_MASK	_MMIO(0x1900ec)
> -#define GEN11_CRYPTO_RSVD_INTR_MASK	_MMIO(0x1900f0)
> -#define GEN11_GUNIT_CSME_INTR_MASK	_MMIO(0x1900f4)
> -
> -#define   ENGINE1_MASK			REG_GENMASK(31, 16)
> -#define   ENGINE0_MASK			REG_GENMASK(15, 0)
> -
> -#define GEN7_FF_SLICE_CS_CHICKEN1	_MMIO(0x20e0)
> -#define   GEN9_FFSC_PERCTX_PREEMPT_CTRL	(1 << 14)
> +#define   OTHER_GUC_INSTANCE			0
> +#define   OTHER_GTPM_INSTANCE			1
> +#define   OTHER_KCR_INSTANCE			4
> +
> +#define GEN11_INTR_IDENTITY_REG(x)		_MMIO(0x190060 + ((x) * 4))
> +
> +#define GEN11_IIR_REG0_SELECTOR			_MMIO(0x190070)
> +#define GEN11_IIR_REG1_SELECTOR			_MMIO(0x190074)
> +
> +#define GEN11_IIR_REG_SELECTOR(x)		_MMIO(0x190070 + ((x) * 4))
> +
> +#define GEN11_RENDER_COPY_INTR_ENABLE		_MMIO(0x190030)
> +#define GEN11_VCS_VECS_INTR_ENABLE		_MMIO(0x190034)
> +#define GEN11_GUC_SG_INTR_ENABLE		_MMIO(0x190038)
> +#define GEN11_GPM_WGBOXPERF_INTR_ENABLE		_MMIO(0x19003c)
> +#define GEN11_CRYPTO_RSVD_INTR_ENABLE		_MMIO(0x190040)
> +#define GEN11_GUNIT_CSME_INTR_ENABLE		_MMIO(0x190044)
> +
> +#define GEN11_RCS0_RSVD_INTR_MASK		_MMIO(0x190090)
> +#define GEN11_BCS_RSVD_INTR_MASK		_MMIO(0x1900a0)
> +#define GEN11_VCS0_VCS1_INTR_MASK		_MMIO(0x1900a8)
> +#define GEN11_VCS2_VCS3_INTR_MASK		_MMIO(0x1900ac)
> +#define GEN12_VCS4_VCS5_INTR_MASK		_MMIO(0x1900b0)
> +#define GEN12_VCS6_VCS7_INTR_MASK		_MMIO(0x1900b4)
> +#define GEN11_VECS0_VECS1_INTR_MASK		_MMIO(0x1900d0)
> +#define GEN12_VECS2_VECS3_INTR_MASK		_MMIO(0x1900d4)
> +#define GEN11_GUC_SG_INTR_MASK			_MMIO(0x1900e8)
> +#define GEN11_GPM_WGBOXPERF_INTR_MASK		_MMIO(0x1900ec)
> +#define GEN11_CRYPTO_RSVD_INTR_MASK		_MMIO(0x1900f0)
> +#define GEN11_GUNIT_CSME_INTR_MASK		_MMIO(0x1900f4)
> +
> +#define   ENGINE1_MASK				REG_GENMASK(31, 16)
> +#define   ENGINE0_MASK				REG_GENMASK(15, 0)
> +
> +#define GEN7_FF_SLICE_CS_CHICKEN1		_MMIO(0x20e0)
> +#define   GEN9_FFSC_PERCTX_PREEMPT_CTRL		(1 << 14)
>  
>  #define FF_SLICE_CS_CHICKEN2			_MMIO(0x20e4)
> -#define  GEN9_TSG_BARRIER_ACK_DISABLE		(1 << 8)
> -#define  GEN9_POOLED_EU_LOAD_BALANCING_FIX_DISABLE  (1 << 10)
> +#define   GEN9_TSG_BARRIER_ACK_DISABLE		(1 << 8)
> +#define   GEN9_POOLED_EU_LOAD_BALANCING_FIX_DISABLE	(1 << 10)
>  
> -#define GEN9_CS_DEBUG_MODE1		_MMIO(0x20ec)
> -#define   FF_DOP_CLOCK_GATE_DISABLE	REG_BIT(1)
> -#define GEN9_CTX_PREEMPT_REG		_MMIO(0x2248)
> -#define   GEN12_DISABLE_POSH_BUSY_FF_DOP_CG REG_BIT(11)
> +#define GEN9_CS_DEBUG_MODE1			_MMIO(0x20ec)
> +#define   FF_DOP_CLOCK_GATE_DISABLE		REG_BIT(1)
> +#define GEN9_CTX_PREEMPT_REG			_MMIO(0x2248)
> +#define   GEN12_DISABLE_POSH_BUSY_FF_DOP_CG	REG_BIT(11)
>  
> -#define GEN12_CS_DEBUG_MODE1_CCCSUNIT_BE_COMMON		_MMIO(0x20EC)
> -#define   GEN12_REPLAY_MODE_GRANULARITY			REG_BIT(0)
> +#define GEN12_CS_DEBUG_MODE1_CCCSUNIT_BE_COMMON	_MMIO(0x20EC)
> +#define   GEN12_REPLAY_MODE_GRANULARITY		REG_BIT(0)
>  
> -#define GEN8_CS_CHICKEN1		_MMIO(0x2580)
> -#define GEN9_PREEMPT_3D_OBJECT_LEVEL		(1 << 0)
> -#define GEN9_PREEMPT_GPGPU_LEVEL(hi, lo)	(((hi) << 2) | ((lo) << 1))
> -#define GEN9_PREEMPT_GPGPU_MID_THREAD_LEVEL	GEN9_PREEMPT_GPGPU_LEVEL(0, 0)
> -#define GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL	GEN9_PREEMPT_GPGPU_LEVEL(0, 1)
> -#define GEN9_PREEMPT_GPGPU_COMMAND_LEVEL	GEN9_PREEMPT_GPGPU_LEVEL(1, 0)
> -#define GEN9_PREEMPT_GPGPU_LEVEL_MASK		GEN9_PREEMPT_GPGPU_LEVEL(1, 1)
> +#define GEN8_CS_CHICKEN1			_MMIO(0x2580)
> +#define   GEN9_PREEMPT_3D_OBJECT_LEVEL		(1 << 0)
> +#define   GEN9_PREEMPT_GPGPU_LEVEL(hi, lo)	(((hi) << 2) | ((lo) << 1))
> +#define   GEN9_PREEMPT_GPGPU_MID_THREAD_LEVEL	GEN9_PREEMPT_GPGPU_LEVEL(0, 0)
> +#define   GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL	GEN9_PREEMPT_GPGPU_LEVEL(0, 1)
> +#define   GEN9_PREEMPT_GPGPU_COMMAND_LEVEL	GEN9_PREEMPT_GPGPU_LEVEL(1, 0)
> +#define   GEN9_PREEMPT_GPGPU_LEVEL_MASK		GEN9_PREEMPT_GPGPU_LEVEL(1, 1)
>  
>  /* GEN7 chicken */
>  #define GEN7_COMMON_SLICE_CHICKEN1		_MMIO(0x7010)
> -  #define GEN7_CSC1_RHWO_OPT_DISABLE_IN_RCC	(1 << 10)
> -  #define GEN9_RHWO_OPTIMIZATION_DISABLE	(1 << 14)
> +#define   GEN7_CSC1_RHWO_OPT_DISABLE_IN_RCC	(1 << 10)
> +#define   GEN9_RHWO_OPTIMIZATION_DISABLE	(1 << 14)
>  
> -#define COMMON_SLICE_CHICKEN2					_MMIO(0x7014)
> -  #define GEN9_PBE_COMPRESSED_HASH_SELECTION			(1 << 13)
> -  #define GEN9_DISABLE_GATHER_AT_SET_SHADER_COMMON_SLICE	(1 << 12)
> -  #define GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION		(1 << 8)
> -  #define GEN8_CSC2_SBE_VUE_CACHE_CONSERVATIVE			(1 << 0)
> +#define COMMON_SLICE_CHICKEN2			_MMIO(0x7014)
> +#define   GEN9_PBE_COMPRESSED_HASH_SELECTION	(1 << 13)
> +#define   GEN9_DISABLE_GATHER_AT_SET_SHADER_COMMON_SLICE	(1 << 12)
> +#define   GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION	(1 << 8)
> +#define   GEN8_CSC2_SBE_VUE_CACHE_CONSERVATIVE	(1 << 0)
>  
> -#define GEN8_L3CNTLREG	_MMIO(0x7034)
> -  #define GEN8_ERRDETBCTRL (1 << 9)
> +#define GEN8_L3CNTLREG				_MMIO(0x7034)
> +#define   GEN8_ERRDETBCTRL			(1 << 9)
>  
> -#define GEN11_COMMON_SLICE_CHICKEN3			_MMIO(0x7304)
> +#define GEN11_COMMON_SLICE_CHICKEN3		_MMIO(0x7304)
>  #define   DG1_FLOAT_POINT_BLEND_OPT_STRICT_MODE_EN	REG_BIT(12)
> -#define   XEHP_DUAL_SIMD8_SEQ_MERGE_DISABLE		REG_BIT(12)
> -#define   GEN11_BLEND_EMB_FIX_DISABLE_IN_RCC		REG_BIT(11)
> -#define   GEN12_DISABLE_CPS_AWARE_COLOR_PIPE		REG_BIT(9)
> +#define   XEHP_DUAL_SIMD8_SEQ_MERGE_DISABLE	REG_BIT(12)
> +#define   GEN11_BLEND_EMB_FIX_DISABLE_IN_RCC	REG_BIT(11)
> +#define   GEN12_DISABLE_CPS_AWARE_COLOR_PIPE	REG_BIT(9)
>  
> -#define HIZ_CHICKEN					_MMIO(0x7018)
> -# define CHV_HZ_8X8_MODE_IN_1X				REG_BIT(15)
> -# define DG1_HZ_READ_SUPPRESSION_OPTIMIZATION_DISABLE   REG_BIT(14)
> +#define HIZ_CHICKEN				_MMIO(0x7018)
> +# define CHV_HZ_8X8_MODE_IN_1X			REG_BIT(15)
> +# define DG1_HZ_READ_SUPPRESSION_OPTIMIZATION_DISABLE	REG_BIT(14)
>  # define BDW_HIZ_POWER_COMPILER_CLOCK_GATING_DISABLE	REG_BIT(3)
>  
>  #define GEN9_SLICE_COMMON_ECO_CHICKEN0		_MMIO(0x7308)
> -#define  DISABLE_PIXEL_MASK_CAMMING		(1 << 14)
> +#define   DISABLE_PIXEL_MASK_CAMMING		(1 << 14)
>  
>  #define GEN9_SLICE_COMMON_ECO_CHICKEN1		_MMIO(0x731c)
>  #define   GEN11_STATE_CACHE_REDIRECT_TO_CS	(1 << 11)
>  
>  #define GEN7_SARCHKMD				_MMIO(0xB000)
> -#define GEN7_DISABLE_DEMAND_PREFETCH		(1 << 31)
> -#define GEN7_DISABLE_SAMPLER_PREFETCH           (1 << 30)
> +#define   GEN7_DISABLE_DEMAND_PREFETCH		(1 << 31)
> +#define   GEN7_DISABLE_SAMPLER_PREFETCH		(1 << 30)
>  
>  #define GEN7_L3SQCREG1				_MMIO(0xB010)
> -#define  VLV_B0_WA_L3SQCREG1_VALUE		0x00D30000
> +#define   VLV_B0_WA_L3SQCREG1_VALUE		0x00D30000
>  
>  #define GEN8_L3SQCREG1				_MMIO(0xB100)
>  /*
> @@ -1013,13 +1013,13 @@ enum {
>   * fine and matches the formulas for all other platforms. A BSpec change
>   * request has been filed to clarify this.
>   */
> -#define  L3_GENERAL_PRIO_CREDITS(x)		(((x) >> 1) << 19)
> -#define  L3_HIGH_PRIO_CREDITS(x)		(((x) >> 1) << 14)
> -#define  L3_PRIO_CREDITS_MASK			((0x1f << 19) | (0x1f << 14))
> +#define   L3_GENERAL_PRIO_CREDITS(x)		(((x) >> 1) << 19)
> +#define   L3_HIGH_PRIO_CREDITS(x)		(((x) >> 1) << 14)
> +#define   L3_PRIO_CREDITS_MASK			((0x1f << 19) | (0x1f << 14))
>  
>  #define GEN7_L3CNTLREG1				_MMIO(0xB01C)
> -#define  GEN7_WA_FOR_GEN7_L3_CONTROL			0x3C47FF8C
> -#define  GEN7_L3AGDIS				(1 << 19)
> +#define   GEN7_WA_FOR_GEN7_L3_CONTROL			0x3C47FF8C
> +#define   GEN7_L3AGDIS				(1 << 19)
>  #define GEN7_L3CNTLREG2				_MMIO(0xB020)
>  #define GEN7_L3CNTLREG3				_MMIO(0xB024)
>  
> @@ -1029,16 +1029,16 @@ enum {
>  #define   GEN11_I2M_WRITE_DISABLE		(1 << 28)
>  
>  #define GEN7_L3SQCREG4				_MMIO(0xb034)
> -#define  L3SQ_URB_READ_CAM_MATCH_DISABLE	(1 << 27)
> +#define   L3SQ_URB_READ_CAM_MATCH_DISABLE	(1 << 27)
>  
> -#define GEN11_SCRATCH2					_MMIO(0xb140)
> -#define  GEN11_COHERENT_PARTIAL_WRITE_MERGE_ENABLE	(1 << 19)
> +#define GEN11_SCRATCH2				_MMIO(0xb140)
> +#define   GEN11_COHERENT_PARTIAL_WRITE_MERGE_ENABLE	(1 << 19)
>  
>  #define GEN8_L3SQCREG4				_MMIO(0xb118)
> -#define  GEN11_LQSC_CLEAN_EVICT_DISABLE		(1 << 6)
> -#define  GEN8_LQSC_RO_PERF_DIS			(1 << 27)
> -#define  GEN8_LQSC_FLUSH_COHERENT_LINES		(1 << 21)
> -#define  GEN8_LQSQ_NONIA_COHERENT_ATOMICS_ENABLE REG_BIT(22)
> +#define   GEN11_LQSC_CLEAN_EVICT_DISABLE	(1 << 6)
> +#define   GEN8_LQSC_RO_PERF_DIS			(1 << 27)
> +#define   GEN8_LQSC_FLUSH_COHERENT_LINES	(1 << 21)
> +#define   GEN8_LQSQ_NONIA_COHERENT_ATOMICS_ENABLE	REG_BIT(22)
>  
>  #define GEN11_L3SQCREG5				_MMIO(0xb158)
>  #define   L3_PWM_TIMER_INIT_VAL_MASK		REG_GENMASK(9, 0)
> @@ -1049,14 +1049,14 @@ enum {
>  /* GEN8 chicken */
>  #define HDC_CHICKEN0				_MMIO(0x7300)
>  #define ICL_HDC_MODE				_MMIO(0xE5F4)
> -#define  HDC_FORCE_CSR_NON_COHERENT_OVR_DISABLE	(1 << 15)
> -#define  HDC_FENCE_DEST_SLM_DISABLE		(1 << 14)
> -#define  HDC_DONOT_FETCH_MEM_WHEN_MASKED	(1 << 11)
> -#define  HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT	(1 << 5)
> -#define  HDC_FORCE_NON_COHERENT			(1 << 4)
> -#define  HDC_BARRIER_PERFORMANCE_DISABLE	(1 << 10)
> -
> -#define GEN12_HDC_CHICKEN0					_MMIO(0xE5F0)
> +#define   HDC_FORCE_CSR_NON_COHERENT_OVR_DISABLE	(1 << 15)
> +#define   HDC_FENCE_DEST_SLM_DISABLE		(1 << 14)
> +#define   HDC_DONOT_FETCH_MEM_WHEN_MASKED	(1 << 11)
> +#define   HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT	(1 << 5)
> +#define   HDC_FORCE_NON_COHERENT		(1 << 4)
> +#define   HDC_BARRIER_PERFORMANCE_DISABLE	(1 << 10)
> +
> +#define GEN12_HDC_CHICKEN0			_MMIO(0xE5F0)
>  #define   LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK	REG_GENMASK(13, 11)
>  
>  #define SARB_CHICKEN1				_MMIO(0xe90c)
> @@ -1073,68 +1073,68 @@ enum {
>  
>  /* WaCatErrorRejectionIssue */
>  #define GEN7_SQ_CHICKEN_MBCUNIT_CONFIG		_MMIO(0x9030)
> -#define  GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB	(1 << 11)
> +#define   GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB	(1 << 11)
>  
>  #define HSW_SCRATCH1				_MMIO(0xb038)
> -#define  HSW_SCRATCH1_L3_DATA_ATOMICS_DISABLE	(1 << 27)
> +#define   HSW_SCRATCH1_L3_DATA_ATOMICS_DISABLE	(1 << 27)
>  
> -#define BDW_SCRATCH1					_MMIO(0xb11c)
> -#define  GEN9_LBS_SLA_RETRY_TIMER_DECREMENT_ENABLE	(1 << 2)
> +#define BDW_SCRATCH1				_MMIO(0xb11c)
> +#define   GEN9_LBS_SLA_RETRY_TIMER_DECREMENT_ENABLE	(1 << 2)
>  
> -#define VFLSKPD				_MMIO(0x62a8)
> -#define   DIS_OVER_FETCH_CACHE		REG_BIT(1)
> -#define   DIS_MULT_MISS_RD_SQUASH	REG_BIT(0)
> +#define VFLSKPD					_MMIO(0x62a8)
> +#define   DIS_OVER_FETCH_CACHE			REG_BIT(1)
> +#define   DIS_MULT_MISS_RD_SQUASH		REG_BIT(0)
>  
> -#define FF_MODE2			_MMIO(0x6604)
> -#define   FF_MODE2_GS_TIMER_MASK	REG_GENMASK(31, 24)
> -#define   FF_MODE2_GS_TIMER_224		REG_FIELD_PREP(FF_MODE2_GS_TIMER_MASK, 224)
> -#define   FF_MODE2_TDS_TIMER_MASK	REG_GENMASK(23, 16)
> -#define   FF_MODE2_TDS_TIMER_128	REG_FIELD_PREP(FF_MODE2_TDS_TIMER_MASK, 4)
> +#define FF_MODE2				_MMIO(0x6604)
> +#define   FF_MODE2_GS_TIMER_MASK		REG_GENMASK(31, 24)
> +#define   FF_MODE2_GS_TIMER_224			REG_FIELD_PREP(FF_MODE2_GS_TIMER_MASK, 224)
> +#define   FF_MODE2_TDS_TIMER_MASK		REG_GENMASK(23, 16)
> +#define   FF_MODE2_TDS_TIMER_128		REG_FIELD_PREP(FF_MODE2_TDS_TIMER_MASK, 4)
>  
> -#define  RC6_LOCATION				_MMIO(0xD40)
> -#define	   RC6_CTX_IN_DRAM			(1 << 0)
> -#define  RC6_CTX_BASE				_MMIO(0xD48)
> +#define RC6_LOCATION				_MMIO(0xD40)
> +#define	  RC6_CTX_IN_DRAM			(1 << 0)
> +#define RC6_CTX_BASE				_MMIO(0xD48)
>  #define    RC6_CTX_BASE_MASK			0xFFFFFFF0
> -#define  FORCEWAKE				_MMIO(0xA18C)
> -#define  FORCEWAKE_VLV				_MMIO(0x1300b0)
> -#define  FORCEWAKE_ACK_VLV			_MMIO(0x1300b4)
> -#define  FORCEWAKE_MEDIA_VLV			_MMIO(0x1300b8)
> -#define  FORCEWAKE_ACK_MEDIA_VLV		_MMIO(0x1300bc)
> -#define  FORCEWAKE_ACK_HSW			_MMIO(0x130044)
> -#define  FORCEWAKE_ACK				_MMIO(0x130090)
> -#define  VLV_GTLC_WAKE_CTRL			_MMIO(0x130090)
> +#define FORCEWAKE				_MMIO(0xA18C)
> +#define FORCEWAKE_VLV				_MMIO(0x1300b0)
> +#define FORCEWAKE_ACK_VLV			_MMIO(0x1300b4)
> +#define FORCEWAKE_MEDIA_VLV			_MMIO(0x1300b8)
> +#define FORCEWAKE_ACK_MEDIA_VLV			_MMIO(0x1300bc)
> +#define FORCEWAKE_ACK_HSW			_MMIO(0x130044)
> +#define FORCEWAKE_ACK				_MMIO(0x130090)
> +#define VLV_GTLC_WAKE_CTRL			_MMIO(0x130090)
>  #define   VLV_GTLC_RENDER_CTX_EXISTS		(1 << 25)
>  #define   VLV_GTLC_MEDIA_CTX_EXISTS		(1 << 24)
>  #define   VLV_GTLC_ALLOWWAKEREQ			(1 << 0)
>  
> -#define  VLV_GTLC_PW_STATUS			_MMIO(0x130094)
> +#define VLV_GTLC_PW_STATUS			_MMIO(0x130094)
>  #define   VLV_GTLC_ALLOWWAKEACK			(1 << 0)
>  #define   VLV_GTLC_ALLOWWAKEERR			(1 << 1)
>  #define   VLV_GTLC_PW_MEDIA_STATUS_MASK		(1 << 5)
>  #define   VLV_GTLC_PW_RENDER_STATUS_MASK	(1 << 7)
> -#define  FORCEWAKE_MT				_MMIO(0xa188) /* multi-threaded */
> -#define  FORCEWAKE_MEDIA_GEN9			_MMIO(0xa270)
> -#define  FORCEWAKE_MEDIA_VDBOX_GEN11(n)		_MMIO(0xa540 + (n) * 4)
> -#define  FORCEWAKE_MEDIA_VEBOX_GEN11(n)		_MMIO(0xa560 + (n) * 4)
> -#define  FORCEWAKE_RENDER_GEN9			_MMIO(0xa278)
> -#define  FORCEWAKE_GT_GEN9			_MMIO(0xa188)
> -#define  FORCEWAKE_ACK_MEDIA_GEN9		_MMIO(0x0D88)
> -#define  FORCEWAKE_ACK_MEDIA_VDBOX_GEN11(n)	_MMIO(0x0D50 + (n) * 4)
> -#define  FORCEWAKE_ACK_MEDIA_VEBOX_GEN11(n)	_MMIO(0x0D70 + (n) * 4)
> -#define  FORCEWAKE_ACK_RENDER_GEN9		_MMIO(0x0D84)
> -#define  FORCEWAKE_ACK_GT_GEN9			_MMIO(0x130044)
> +#define FORCEWAKE_MT				_MMIO(0xa188) /* multi-threaded */
> +#define FORCEWAKE_MEDIA_GEN9			_MMIO(0xa270)
> +#define FORCEWAKE_MEDIA_VDBOX_GEN11(n)		_MMIO(0xa540 + (n) * 4)
> +#define FORCEWAKE_MEDIA_VEBOX_GEN11(n)		_MMIO(0xa560 + (n) * 4)
> +#define FORCEWAKE_RENDER_GEN9			_MMIO(0xa278)
> +#define FORCEWAKE_GT_GEN9			_MMIO(0xa188)
> +#define FORCEWAKE_ACK_MEDIA_GEN9		_MMIO(0x0D88)
> +#define FORCEWAKE_ACK_MEDIA_VDBOX_GEN11(n)	_MMIO(0x0D50 + (n) * 4)
> +#define FORCEWAKE_ACK_MEDIA_VEBOX_GEN11(n)	_MMIO(0x0D70 + (n) * 4)
> +#define FORCEWAKE_ACK_RENDER_GEN9		_MMIO(0x0D84)
> +#define FORCEWAKE_ACK_GT_GEN9			_MMIO(0x130044)
>  #define   FORCEWAKE_KERNEL			BIT(0)
>  #define   FORCEWAKE_USER			BIT(1)
>  #define   FORCEWAKE_KERNEL_FALLBACK		BIT(15)
> -#define  FORCEWAKE_MT_ACK			_MMIO(0x130040)
> -#define  ECOBUS					_MMIO(0xa180)
> +#define FORCEWAKE_MT_ACK			_MMIO(0x130040)
> +#define ECOBUS					_MMIO(0xa180)
>  #define    FORCEWAKE_MT_ENABLE			(1 << 5)
> -#define  VLV_SPAREG2H				_MMIO(0xA194)
> -#define  GEN9_PWRGT_DOMAIN_STATUS		_MMIO(0xA2A0)
> +#define VLV_SPAREG2H				_MMIO(0xA194)
> +#define GEN9_PWRGT_DOMAIN_STATUS		_MMIO(0xA2A0)
>  #define   GEN9_PWRGT_MEDIA_STATUS_MASK		(1 << 0)
>  #define   GEN9_PWRGT_RENDER_STATUS_MASK		(1 << 1)
>  
> -#define  GTFIFODBG				_MMIO(0x120000)
> +#define GTFIFODBG				_MMIO(0x120000)
>  #define    GT_FIFO_SBDEDICATE_FREE_ENTRY_CHV	(0x1f << 20)
>  #define    GT_FIFO_FREE_ENTRIES_CHV		(0x7f << 13)
>  #define    GT_FIFO_SBDROPERR			(1 << 6)
> @@ -1145,35 +1145,35 @@ enum {
>  #define    GT_FIFO_IAWRERR			(1 << 1)
>  #define    GT_FIFO_IARDERR			(1 << 0)
>  
> -#define  GTFIFOCTL				_MMIO(0x120008)
> +#define GTFIFOCTL				_MMIO(0x120008)
>  #define    GT_FIFO_FREE_ENTRIES_MASK		0x7f
>  #define    GT_FIFO_NUM_RESERVED_ENTRIES		20
>  #define    GT_FIFO_CTL_BLOCK_ALL_POLICY_STALL	(1 << 12)
>  #define    GT_FIFO_CTL_RC6_POLICY_STALL		(1 << 11)
>  
> -#define  HSW_IDICR				_MMIO(0x9008)
> +#define HSW_IDICR				_MMIO(0x9008)
>  #define    IDIHASHMSK(x)			(((x) & 0x3f) << 16)
>  
>  #define GEN6_UCGCTL1				_MMIO(0x9400)
> -# define GEN6_GAMUNIT_CLOCK_GATE_DISABLE		(1 << 22)
> -# define GEN6_EU_TCUNIT_CLOCK_GATE_DISABLE		(1 << 16)
> -# define GEN6_BLBUNIT_CLOCK_GATE_DISABLE		(1 << 5)
> -# define GEN6_CSUNIT_CLOCK_GATE_DISABLE			(1 << 7)
> +# define GEN6_GAMUNIT_CLOCK_GATE_DISABLE	(1 << 22)
> +# define GEN6_EU_TCUNIT_CLOCK_GATE_DISABLE	(1 << 16)
> +# define GEN6_BLBUNIT_CLOCK_GATE_DISABLE	(1 << 5)
> +# define GEN6_CSUNIT_CLOCK_GATE_DISABLE		(1 << 7)
>  
>  #define GEN6_UCGCTL2				_MMIO(0x9404)
> -# define GEN6_VFUNIT_CLOCK_GATE_DISABLE			(1 << 31)
> -# define GEN7_VDSUNIT_CLOCK_GATE_DISABLE		(1 << 30)
> -# define GEN7_TDLUNIT_CLOCK_GATE_DISABLE		(1 << 22)
> -# define GEN6_RCZUNIT_CLOCK_GATE_DISABLE		(1 << 13)
> -# define GEN6_RCPBUNIT_CLOCK_GATE_DISABLE		(1 << 12)
> -# define GEN6_RCCUNIT_CLOCK_GATE_DISABLE		(1 << 11)
> +# define GEN6_VFUNIT_CLOCK_GATE_DISABLE		(1 << 31)
> +# define GEN7_VDSUNIT_CLOCK_GATE_DISABLE	(1 << 30)
> +# define GEN7_TDLUNIT_CLOCK_GATE_DISABLE	(1 << 22)
> +# define GEN6_RCZUNIT_CLOCK_GATE_DISABLE	(1 << 13)
> +# define GEN6_RCPBUNIT_CLOCK_GATE_DISABLE	(1 << 12)
> +# define GEN6_RCCUNIT_CLOCK_GATE_DISABLE	(1 << 11)
>  
>  #define GEN6_UCGCTL3				_MMIO(0x9408)
> -# define GEN6_OACSUNIT_CLOCK_GATE_DISABLE		(1 << 20)
> +# define GEN6_OACSUNIT_CLOCK_GATE_DISABLE	(1 << 20)
>  
>  #define GEN7_UCGCTL4				_MMIO(0x940c)
> -#define  GEN7_L3BANK2X_CLOCK_GATE_DISABLE	(1 << 25)
> -#define  GEN8_EU_GAUNIT_CLOCK_GATE_DISABLE	(1 << 14)
> +#define   GEN7_L3BANK2X_CLOCK_GATE_DISABLE	(1 << 25)
> +#define   GEN8_EU_GAUNIT_CLOCK_GATE_DISABLE	(1 << 14)
>  
>  #define GEN6_RCGCTL1				_MMIO(0x9410)
>  #define GEN6_RCGCTL2				_MMIO(0x9414)
> @@ -1182,7 +1182,7 @@ enum {
>  #define GEN8_UCGCTL6				_MMIO(0x9430)
>  #define   GEN8_GAPSUNIT_CLOCK_GATE_DISABLE	(1 << 24)
>  #define   GEN8_SDEUNIT_CLOCK_GATE_DISABLE	(1 << 14)
> -#define   GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ (1 << 28)
> +#define   GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ	(1 << 28)
>  
>  #define UNSLCGCTL9430				_MMIO(0x9430)
>  #define   MSQDUNIT_CLKGATE_DIS			REG_BIT(3)
> @@ -1290,30 +1290,30 @@ enum {
>  #define GEN6_PMIMR				_MMIO(0x44024) /* rps_lock */
>  #define GEN6_PMIIR				_MMIO(0x44028)
>  #define GEN6_PMIER				_MMIO(0x4402C)
> -#define  GEN6_PM_MBOX_EVENT			(1 << 25)
> -#define  GEN6_PM_THERMAL_EVENT			(1 << 24)
> +#define   GEN6_PM_MBOX_EVENT			(1 << 25)
> +#define   GEN6_PM_THERMAL_EVENT			(1 << 24)
>  
>  /*
>   * For Gen11 these are in the upper word of the GPM_WGBOXPERF
>   * registers. Shifting is handled on accessing the imr and ier.
>   */
> -#define  GEN6_PM_RP_DOWN_TIMEOUT		(1 << 6)
> -#define  GEN6_PM_RP_UP_THRESHOLD		(1 << 5)
> -#define  GEN6_PM_RP_DOWN_THRESHOLD		(1 << 4)
> -#define  GEN6_PM_RP_UP_EI_EXPIRED		(1 << 2)
> -#define  GEN6_PM_RP_DOWN_EI_EXPIRED		(1 << 1)
> -#define  GEN6_PM_RPS_EVENTS			(GEN6_PM_RP_UP_EI_EXPIRED   | \
> +#define   GEN6_PM_RP_DOWN_TIMEOUT		(1 << 6)
> +#define   GEN6_PM_RP_UP_THRESHOLD		(1 << 5)
> +#define   GEN6_PM_RP_DOWN_THRESHOLD		(1 << 4)
> +#define   GEN6_PM_RP_UP_EI_EXPIRED		(1 << 2)
> +#define   GEN6_PM_RP_DOWN_EI_EXPIRED		(1 << 1)
> +#define   GEN6_PM_RPS_EVENTS			(GEN6_PM_RP_UP_EI_EXPIRED   | \
>  						 GEN6_PM_RP_UP_THRESHOLD    | \
>  						 GEN6_PM_RP_DOWN_EI_EXPIRED | \
>  						 GEN6_PM_RP_DOWN_THRESHOLD  | \
>  						 GEN6_PM_RP_DOWN_TIMEOUT)
>  
>  #define GEN7_GT_SCRATCH(i)			_MMIO(0x4F100 + (i) * 4)
> -#define GEN7_GT_SCRATCH_REG_NUM			8
> +#define   GEN7_GT_SCRATCH_REG_NUM		8
>  
> -#define VLV_GTLC_SURVIVABILITY_REG              _MMIO(0x130098)
> -#define VLV_GFX_CLK_STATUS_BIT			(1 << 3)
> -#define VLV_GFX_CLK_FORCE_ON_BIT		(1 << 2)
> +#define VLV_GTLC_SURVIVABILITY_REG		_MMIO(0x130098)
> +#define   VLV_GFX_CLK_STATUS_BIT		(1 << 3)
> +#define   VLV_GFX_CLK_FORCE_ON_BIT		(1 << 2)
>  
>  #define GEN6_GT_GFX_RC6_LOCKED			_MMIO(0x138104)
>  #define VLV_COUNTER_CONTROL			_MMIO(0x138104)
> @@ -1331,55 +1331,55 @@ enum {
>  #define VLV_RENDER_C0_COUNT			_MMIO(0x138118)
>  #define VLV_MEDIA_C0_COUNT			_MMIO(0x13811C)
>  
> -#define GEN6_GT_CORE_STATUS		_MMIO(0x138060)
> -#define   GEN6_CORE_CPD_STATE_MASK	(7 << 4)
> -#define   GEN6_RCn_MASK			7
> -#define   GEN6_RC0			0
> -#define   GEN6_RC3			2
> -#define   GEN6_RC6			3
> -#define   GEN6_RC7			4
> -
> -#define GEN8_GT_SLICE_INFO		_MMIO(0x138064)
> -#define   GEN8_LSLICESTAT_MASK		0x7
> -
> -#define CHV_POWER_SS0_SIG1		_MMIO(0xa720)
> -#define CHV_POWER_SS1_SIG1		_MMIO(0xa728)
> -#define   CHV_SS_PG_ENABLE		(1 << 1)
> -#define   CHV_EU08_PG_ENABLE		(1 << 9)
> -#define   CHV_EU19_PG_ENABLE		(1 << 17)
> -#define   CHV_EU210_PG_ENABLE		(1 << 25)
> -
> -#define CHV_POWER_SS0_SIG2		_MMIO(0xa724)
> -#define CHV_POWER_SS1_SIG2		_MMIO(0xa72c)
> -#define   CHV_EU311_PG_ENABLE		(1 << 1)
> -
> -#define GEN9_SLICE_PGCTL_ACK(slice)	_MMIO(0x804c + (slice) * 0x4)
> -#define GEN10_SLICE_PGCTL_ACK(slice)	_MMIO(0x804c + ((slice) / 3) * 0x34 + \
> -					      ((slice) % 3) * 0x4)
> -#define   GEN9_PGCTL_SLICE_ACK		(1 << 0)
> -#define   GEN9_PGCTL_SS_ACK(subslice)	(1 << (2 + (subslice) * 2))
> -#define   GEN10_PGCTL_VALID_SS_MASK(slice) ((slice) == 0 ? 0x7F : 0x1F)
> -
> -#define GEN9_SS01_EU_PGCTL_ACK(slice)	_MMIO(0x805c + (slice) * 0x8)
> -#define GEN10_SS01_EU_PGCTL_ACK(slice)	_MMIO(0x805c + ((slice) / 3) * 0x30 + \
> -					      ((slice) % 3) * 0x8)
> -#define GEN9_SS23_EU_PGCTL_ACK(slice)	_MMIO(0x8060 + (slice) * 0x8)
> -#define GEN10_SS23_EU_PGCTL_ACK(slice)	_MMIO(0x8060 + ((slice) / 3) * 0x30 + \
> -					      ((slice) % 3) * 0x8)
> -#define   GEN9_PGCTL_SSA_EU08_ACK	(1 << 0)
> -#define   GEN9_PGCTL_SSA_EU19_ACK	(1 << 2)
> -#define   GEN9_PGCTL_SSA_EU210_ACK	(1 << 4)
> -#define   GEN9_PGCTL_SSA_EU311_ACK	(1 << 6)
> -#define   GEN9_PGCTL_SSB_EU08_ACK	(1 << 8)
> -#define   GEN9_PGCTL_SSB_EU19_ACK	(1 << 10)
> -#define   GEN9_PGCTL_SSB_EU210_ACK	(1 << 12)
> -#define   GEN9_PGCTL_SSB_EU311_ACK	(1 << 14)
> +#define GEN6_GT_CORE_STATUS			_MMIO(0x138060)
> +#define   GEN6_CORE_CPD_STATE_MASK		(7 << 4)
> +#define   GEN6_RCn_MASK				7
> +#define   GEN6_RC0				0
> +#define   GEN6_RC3				2
> +#define   GEN6_RC6				3
> +#define   GEN6_RC7				4
> +
> +#define GEN8_GT_SLICE_INFO			_MMIO(0x138064)
> +#define   GEN8_LSLICESTAT_MASK			0x7
> +
> +#define CHV_POWER_SS0_SIG1			_MMIO(0xa720)
> +#define CHV_POWER_SS1_SIG1			_MMIO(0xa728)
> +#define   CHV_SS_PG_ENABLE			(1 << 1)
> +#define   CHV_EU08_PG_ENABLE			(1 << 9)
> +#define   CHV_EU19_PG_ENABLE			(1 << 17)
> +#define   CHV_EU210_PG_ENABLE			(1 << 25)
> +
> +#define CHV_POWER_SS0_SIG2			_MMIO(0xa724)
> +#define CHV_POWER_SS1_SIG2			_MMIO(0xa72c)
> +#define   CHV_EU311_PG_ENABLE			(1 << 1)
> +
> +#define GEN9_SLICE_PGCTL_ACK(slice)		_MMIO(0x804c + (slice) * 0x4)
> +#define GEN10_SLICE_PGCTL_ACK(slice)		_MMIO(0x804c + ((slice) / 3) * 0x34 + \
> +						      ((slice) % 3) * 0x4)
> +#define   GEN9_PGCTL_SLICE_ACK			(1 << 0)
> +#define   GEN9_PGCTL_SS_ACK(subslice)		(1 << (2 + (subslice) * 2))
> +#define   GEN10_PGCTL_VALID_SS_MASK(slice)	((slice) == 0 ? 0x7F : 0x1F)
> +
> +#define GEN9_SS01_EU_PGCTL_ACK(slice)		_MMIO(0x805c + (slice) * 0x8)
> +#define GEN10_SS01_EU_PGCTL_ACK(slice)		_MMIO(0x805c + ((slice) / 3) * 0x30 + \
> +						      ((slice) % 3) * 0x8)
> +#define GEN9_SS23_EU_PGCTL_ACK(slice)		_MMIO(0x8060 + (slice) * 0x8)
> +#define GEN10_SS23_EU_PGCTL_ACK(slice)		_MMIO(0x8060 + ((slice) / 3) * 0x30 + \
> +						      ((slice) % 3) * 0x8)
> +#define   GEN9_PGCTL_SSA_EU08_ACK		(1 << 0)
> +#define   GEN9_PGCTL_SSA_EU19_ACK		(1 << 2)
> +#define   GEN9_PGCTL_SSA_EU210_ACK		(1 << 4)
> +#define   GEN9_PGCTL_SSA_EU311_ACK		(1 << 6)
> +#define   GEN9_PGCTL_SSB_EU08_ACK		(1 << 8)
> +#define   GEN9_PGCTL_SSB_EU19_ACK		(1 << 10)
> +#define   GEN9_PGCTL_SSB_EU210_ACK		(1 << 12)
> +#define   GEN9_PGCTL_SSB_EU311_ACK		(1 << 14)
>  
>  #define GEN7_MISCCPCTL				_MMIO(0x9424)
>  #define   GEN7_DOP_CLOCK_GATE_ENABLE		(1 << 0)
>  #define   GEN8_DOP_CLOCK_GATE_CFCLK_ENABLE	(1 << 2)
>  #define   GEN8_DOP_CLOCK_GATE_GUC_ENABLE	(1 << 4)
> -#define   GEN8_DOP_CLOCK_GATE_MEDIA_ENABLE     (1 << 6)
> +#define   GEN8_DOP_CLOCK_GATE_MEDIA_ENABLE	(1 << 6)
>  
>  #define GEN8_GARBCNTL				_MMIO(0xB004)
>  #define   GEN9_GAPS_TSV_CREDIT_DISABLE		(1 << 7)
> @@ -1391,37 +1391,37 @@ enum {
>  #define   GEN11_BANK_HASH_ADDR_EXCL_MASK	(0x7f << 5)
>  #define   GEN11_BANK_HASH_ADDR_EXCL_BIT0	(1 << 5)
>  
> -#define GEN10_DFR_RATIO_EN_AND_CHICKEN	_MMIO(0x9550)
> -#define   DFR_DISABLE			(1 << 9)
> +#define GEN10_DFR_RATIO_EN_AND_CHICKEN		_MMIO(0x9550)
> +#define   DFR_DISABLE				(1 << 9)
>  
>  #define GEN11_GACB_PERF_CTRL			_MMIO(0x4B80)
>  #define   GEN11_HASH_CTRL_MASK			(0x3 << 12 | 0xf << 0)
>  #define   GEN11_HASH_CTRL_BIT0			(1 << 0)
>  #define   GEN11_HASH_CTRL_BIT4			(1 << 12)
>  
> -#define GEN11_LSN_UNSLCVC				_MMIO(0xB43C)
> +#define GEN11_LSN_UNSLCVC			_MMIO(0xB43C)
>  #define   GEN11_LSN_UNSLCVC_GAFS_HALF_CL2_MAXALLOC	(1 << 9)
>  #define   GEN11_LSN_UNSLCVC_GAFS_HALF_SF_MAXALLOC	(1 << 7)
>  
> -#define GEN10_SAMPLER_MODE		_MMIO(0xE18C)
> +#define GEN10_SAMPLER_MODE			_MMIO(0xE18C)
>  #define   ENABLE_SMALLPL			REG_BIT(15)
>  #define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
>  
> -#define GEN7_L3LOG(slice, i)		_MMIO(0xB070 + (slice) * 0x200 + (i) * 4)
> -#define GEN7_L3LOG_SIZE			0x80
> +#define GEN7_L3LOG(slice, i)			_MMIO(0xB070 + (slice) * 0x200 + (i) * 4)
> +#define   GEN7_L3LOG_SIZE			0x80
>  
> -#define GEN7_HALF_SLICE_CHICKEN1	_MMIO(0xe100) /* IVB GT1 + VLV */
> -#define GEN7_HALF_SLICE_CHICKEN1_GT2	_MMIO(0xf100)
> +#define GEN7_HALF_SLICE_CHICKEN1		_MMIO(0xe100) /* IVB GT1 + VLV */
> +#define GEN7_HALF_SLICE_CHICKEN1_GT2		_MMIO(0xf100)
>  #define   GEN7_MAX_PS_THREAD_DEP		(8 << 12)
>  #define   GEN7_SINGLE_SUBSCAN_DISPATCH_ENABLE	(1 << 10)
>  #define   GEN7_SBE_SS_CACHE_DISPATCH_PORT_SHARING_DISABLE	(1 << 4)
>  #define   GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE	(1 << 3)
>  
> -#define GEN9_HALF_SLICE_CHICKEN5	_MMIO(0xe188)
> -#define   GEN9_DG_MIRROR_FIX_ENABLE	(1 << 5)
> -#define   GEN9_CCS_TLB_PREFETCH_ENABLE	(1 << 3)
> +#define GEN9_HALF_SLICE_CHICKEN5		_MMIO(0xe188)
> +#define   GEN9_DG_MIRROR_FIX_ENABLE		(1 << 5)
> +#define   GEN9_CCS_TLB_PREFETCH_ENABLE		(1 << 3)
>  
> -#define GEN8_ROW_CHICKEN		_MMIO(0xe4f0)
> +#define GEN8_ROW_CHICKEN			_MMIO(0xe4f0)
>  #define   FLOW_CONTROL_ENABLE			REG_BIT(15)
>  #define   UGM_BACKUP_MODE			REG_BIT(13)
>  #define   MDQ_ARBITRATION_MODE			REG_BIT(12)
> @@ -1445,79 +1445,79 @@ enum {
>  #define   MAXREQS_PER_BANK			REG_GENMASK(39 - 32, 37 - 32)
>  #define   DISABLE_128B_EVICTION_COMMAND_UDW	REG_BIT(36 - 32)
>  
> -#define GEN7_ROW_CHICKEN2_GT2		_MMIO(0xf4f4)
> -#define   DOP_CLOCK_GATING_DISABLE	(1 << 0)
> -#define   PUSH_CONSTANT_DEREF_DISABLE	(1 << 8)
> +#define GEN7_ROW_CHICKEN2_GT2			_MMIO(0xf4f4)
> +#define   DOP_CLOCK_GATING_DISABLE		(1 << 0)
> +#define   PUSH_CONSTANT_DEREF_DISABLE		(1 << 8)
>  #define   GEN11_TDL_CLOCK_GATING_FIX_DISABLE	(1 << 1)
>  
> -#define GEN9_ROW_CHICKEN4				_MMIO(0xe48c)
> -#define   GEN12_DISABLE_GRF_CLEAR			REG_BIT(13)
> -#define   XEHP_DIS_BBL_SYSPIPE				REG_BIT(11)
> -#define   GEN12_DISABLE_TDL_PUSH			REG_BIT(9)
> -#define   GEN11_DIS_PICK_2ND_EU				REG_BIT(7)
> +#define GEN9_ROW_CHICKEN4			_MMIO(0xe48c)
> +#define   GEN12_DISABLE_GRF_CLEAR		REG_BIT(13)
> +#define   XEHP_DIS_BBL_SYSPIPE			REG_BIT(11)
> +#define   GEN12_DISABLE_TDL_PUSH		REG_BIT(9)
> +#define   GEN11_DIS_PICK_2ND_EU			REG_BIT(7)
>  #define   GEN12_DISABLE_HDR_PAST_PAYLOAD_HOLD_FIX	REG_BIT(4)
>  
> -#define HSW_ROW_CHICKEN3		_MMIO(0xe49c)
> -#define  HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE    (1 << 6)
> +#define HSW_ROW_CHICKEN3			_MMIO(0xe49c)
> +#define   HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE	(1 << 6)
>  
> -#define HALF_SLICE_CHICKEN2		_MMIO(0xe180)
> -#define   GEN8_ST_PO_DISABLE		(1 << 13)
> +#define HALF_SLICE_CHICKEN2			_MMIO(0xe180)
> +#define   GEN8_ST_PO_DISABLE			(1 << 13)
>  
> -#define HALF_SLICE_CHICKEN3		_MMIO(0xe184)
> -#define   HSW_SAMPLE_C_PERFORMANCE	(1 << 9)
> -#define   GEN8_CENTROID_PIXEL_OPT_DIS	(1 << 8)
> +#define HALF_SLICE_CHICKEN3			_MMIO(0xe184)
> +#define   HSW_SAMPLE_C_PERFORMANCE		(1 << 9)
> +#define   GEN8_CENTROID_PIXEL_OPT_DIS		(1 << 8)
>  #define   GEN9_DISABLE_OCL_OOB_SUPPRESS_LOGIC	(1 << 5)
> -#define   GEN8_SAMPLER_POWER_BYPASS_DIS	(1 << 1)
> +#define   GEN8_SAMPLER_POWER_BYPASS_DIS		(1 << 1)
>  
> -#define GEN9_HALF_SLICE_CHICKEN7	_MMIO(0xe194)
> +#define GEN9_HALF_SLICE_CHICKEN7		_MMIO(0xe194)
>  #define   DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA	REG_BIT(15)
>  #define   GEN9_SAMPLER_HASH_COMPRESSED_READ_ADDR	REG_BIT(8)
> -#define   GEN9_ENABLE_YV12_BUGFIX			REG_BIT(4)
> -#define   GEN9_ENABLE_GPGPU_PREEMPTION			REG_BIT(2)
> +#define   GEN9_ENABLE_YV12_BUGFIX		REG_BIT(4)
> +#define   GEN9_ENABLE_GPGPU_PREEMPTION		REG_BIT(2)
>  
>  /* MOCS (Memory Object Control State) registers */
> -#define GEN9_LNCFCMOCS(i)	_MMIO(0xb020 + (i) * 4)	/* L3 Cache Control */
> -#define GEN9_LNCFCMOCS_REG_COUNT	32
> -
> -#define __GEN9_RCS0_MOCS0	0xc800
> -#define GEN9_GFX_MOCS(i)	_MMIO(__GEN9_RCS0_MOCS0 + (i) * 4)
> -#define __GEN9_VCS0_MOCS0	0xc900
> -#define GEN9_MFX0_MOCS(i)	_MMIO(__GEN9_VCS0_MOCS0 + (i) * 4)
> -#define __GEN9_VCS1_MOCS0	0xca00
> -#define GEN9_MFX1_MOCS(i)	_MMIO(__GEN9_VCS1_MOCS0 + (i) * 4)
> -#define __GEN9_VECS0_MOCS0	0xcb00
> -#define GEN9_VEBOX_MOCS(i)	_MMIO(__GEN9_VECS0_MOCS0 + (i) * 4)
> -#define __GEN9_BCS0_MOCS0	0xcc00
> -#define GEN9_BLT_MOCS(i)	_MMIO(__GEN9_BCS0_MOCS0 + (i) * 4)
> -#define __GEN11_VCS2_MOCS0	0x10000
> -#define GEN11_MFX2_MOCS(i)	_MMIO(__GEN11_VCS2_MOCS0 + (i) * 4)
> -
> -#define GEN9_SCRATCH_LNCF1		_MMIO(0xb008)
> -#define   GEN9_LNCF_NONIA_COHERENT_ATOMICS_ENABLE REG_BIT(0)
> -
> -#define GEN9_SCRATCH1			_MMIO(0xb11c)
> -#define   EVICTION_PERF_FIX_ENABLE	REG_BIT(8)
> -
> -#define GEN10_SCRATCH_LNCF2		_MMIO(0xb0a0)
> -#define   PMFLUSHDONE_LNICRSDROP	(1 << 20)
> -#define   PMFLUSH_GAPL3UNBLOCK		(1 << 21)
> -#define   PMFLUSHDONE_LNEBLK		(1 << 22)
> -
> -#define XEHP_L3NODEARBCFG		_MMIO(0xb0b4)
> -#define   XEHP_LNESPARE			REG_BIT(19)
> -
> -#define GEN12_GLOBAL_MOCS(i)	_MMIO(0x4000 + (i) * 4) /* Global MOCS regs */
> +#define GEN9_LNCFCMOCS(i)			_MMIO(0xb020 + (i) * 4)	/* L3 Cache Control */
> +#define   GEN9_LNCFCMOCS_REG_COUNT		32
> +
> +#define __GEN9_RCS0_MOCS0			0xc800
> +#define GEN9_GFX_MOCS(i)			_MMIO(__GEN9_RCS0_MOCS0 + (i) * 4)
> +#define __GEN9_VCS0_MOCS0			0xc900
> +#define GEN9_MFX0_MOCS(i)			_MMIO(__GEN9_VCS0_MOCS0 + (i) * 4)
> +#define __GEN9_VCS1_MOCS0			0xca00
> +#define GEN9_MFX1_MOCS(i)			_MMIO(__GEN9_VCS1_MOCS0 + (i) * 4)
> +#define __GEN9_VECS0_MOCS0			0xcb00
> +#define GEN9_VEBOX_MOCS(i)			_MMIO(__GEN9_VECS0_MOCS0 + (i) * 4)
> +#define __GEN9_BCS0_MOCS0			0xcc00
> +#define GEN9_BLT_MOCS(i)			_MMIO(__GEN9_BCS0_MOCS0 + (i) * 4)
> +#define __GEN11_VCS2_MOCS0			0x10000
> +#define GEN11_MFX2_MOCS(i)			_MMIO(__GEN11_VCS2_MOCS0 + (i) * 4)
> +
> +#define GEN9_SCRATCH_LNCF1			_MMIO(0xb008)
> +#define   GEN9_LNCF_NONIA_COHERENT_ATOMICS_ENABLE	REG_BIT(0)
> +
> +#define GEN9_SCRATCH1				_MMIO(0xb11c)
> +#define   EVICTION_PERF_FIX_ENABLE		REG_BIT(8)
> +
> +#define GEN10_SCRATCH_LNCF2			_MMIO(0xb0a0)
> +#define   PMFLUSHDONE_LNICRSDROP		(1 << 20)
> +#define   PMFLUSH_GAPL3UNBLOCK			(1 << 21)
> +#define   PMFLUSHDONE_LNEBLK			(1 << 22)
> +
> +#define XEHP_L3NODEARBCFG			_MMIO(0xb0b4)
> +#define   XEHP_LNESPARE				REG_BIT(19)
> +
> +#define GEN12_GLOBAL_MOCS(i)			_MMIO(0x4000 + (i) * 4) /* Global MOCS regs */
>  
>  /* gamt regs */
> -#define GEN8_L3_LRA_1_GPGPU _MMIO(0x4dd4)
> -#define   GEN8_L3_LRA_1_GPGPU_DEFAULT_VALUE_BDW  0x67F1427F /* max/min for LRA1/2 */
> -#define   GEN8_L3_LRA_1_GPGPU_DEFAULT_VALUE_CHV  0x5FF101FF /* max/min for LRA1/2 */
> -#define   GEN9_L3_LRA_1_GPGPU_DEFAULT_VALUE_SKL  0x67F1427F /*    "        " */
> -#define   GEN9_L3_LRA_1_GPGPU_DEFAULT_VALUE_BXT  0x5FF101FF /*    "        " */
> -
> -#define MMCD_MISC_CTRL		_MMIO(0x4ddc) /* skl+ */
> -#define  MMCD_PCLA		(1 << 31)
> -#define  MMCD_HOTSPOT_EN	(1 << 27)
> +#define GEN8_L3_LRA_1_GPGPU			_MMIO(0x4dd4)
> +#define   GEN8_L3_LRA_1_GPGPU_DEFAULT_VALUE_BDW	0x67F1427F /* max/min for LRA1/2 */
> +#define   GEN8_L3_LRA_1_GPGPU_DEFAULT_VALUE_CHV	0x5FF101FF /* max/min for LRA1/2 */
> +#define   GEN9_L3_LRA_1_GPGPU_DEFAULT_VALUE_SKL	0x67F1427F /*    "        " */
> +#define   GEN9_L3_LRA_1_GPGPU_DEFAULT_VALUE_BXT	0x5FF101FF /*    "        " */
> +
> +#define MMCD_MISC_CTRL				_MMIO(0x4ddc) /* skl+ */
> +#define   MMCD_PCLA				(1 << 31)
> +#define   MMCD_HOTSPOT_EN			(1 << 27)
>  
>  #define SLICE_COMMON_ECO_CHICKEN1		_MMIO(0x731C)
>  #define   MSC_MSAA_REODER_BUF_BYPASS_DISABLE	REG_BIT(14)
> -- 
> 2.34.1
> 
