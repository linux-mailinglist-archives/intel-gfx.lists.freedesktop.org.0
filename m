Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CEB48973E
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 12:20:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB08D14A710;
	Mon, 10 Jan 2022 11:20:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6871114A70F
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 11:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641813656; x=1673349656;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=MO5RkgTsAp8EwuBCEzQfgaz62HqVVkaIq4I2h93B39A=;
 b=a+p4eIr+nao/K77DcPK2I4ZftNXN6H4Z9FKLJBHPioXTgU2jyfbkQZUa
 bitVY7x5psuDGPYEoSwrYwIxC8WxeaZJ+mqCHAFU3g2uLx9YRxRamqPAE
 4My8K4KmkCtgMi4VI0xGRCbF4LvoDC1F1ja41L9JUVjOPCpc+9ire9sUS
 JX1Vj1xRSVXSH46Q/1JYBLcjnw5sqD7xEC3BiGetz6RPL4VW1gzb96pB7
 OX8IDsVGlXhzOShLTD1co1ikEaZb4RzZlvvtlHrxCdl/83P0B0WzlIROF
 iUOgOxc2CGP1+WbwZnEeNpaD6mkA0PF7nLxDuCZ0lNJVLBTIYkSEAp1Nm A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="223186156"
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="223186156"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 03:20:55 -0800
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="514641168"
Received: from bdoyle2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.184])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 03:20:54 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220108044055.3123418-2-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220108044055.3123418-1-matthew.d.roper@intel.com>
 <20220108044055.3123418-2-matthew.d.roper@intel.com>
Date: Mon, 10 Jan 2022 13:20:51 +0200
Message-ID: <87czkzalbg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 1/7] drm/i915: Use parameterized GPR
 register definitions everywhere
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

On Fri, 07 Jan 2022, Matt Roper <matthew.d.roper@intel.com> wrote:
> Since we have an engine-parameterized macro GEN8_RING_CS_GPR, let's use
> that in place of the HSW_CS_GPR and BCS_GPR register definitions.
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_cmd_parser.c | 68 ++++++++++++++------------
>  drivers/gpu/drm/i915/i915_reg.h        |  8 ---
>  2 files changed, 36 insertions(+), 40 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
> index e0403ce9ce69..20191a32478a 100644
> --- a/drivers/gpu/drm/i915/i915_cmd_parser.c
> +++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
> @@ -591,6 +591,10 @@ struct drm_i915_reg_descriptor {
>  	{ .addr = _reg(idx) }, \
>  	{ .addr = _reg ## _UDW(idx) }
>  
> +#define REG64_BASE_IDX(_reg, base, idx) \
> +	{ .addr = _reg(base, idx) }, \
> +	{ .addr = _reg ## _UDW(base, idx) }
> +
>  static const struct drm_i915_reg_descriptor gen7_render_regs[] = {
>  	REG64(GPGPU_THREADS_DISPATCHED),
>  	REG64(HS_INVOCATION_COUNT),
> @@ -636,22 +640,22 @@ static const struct drm_i915_reg_descriptor gen7_render_regs[] = {
>  };
>  
>  static const struct drm_i915_reg_descriptor hsw_render_regs[] = {
> -	REG64_IDX(HSW_CS_GPR, 0),
> -	REG64_IDX(HSW_CS_GPR, 1),
> -	REG64_IDX(HSW_CS_GPR, 2),
> -	REG64_IDX(HSW_CS_GPR, 3),
> -	REG64_IDX(HSW_CS_GPR, 4),
> -	REG64_IDX(HSW_CS_GPR, 5),
> -	REG64_IDX(HSW_CS_GPR, 6),
> -	REG64_IDX(HSW_CS_GPR, 7),
> -	REG64_IDX(HSW_CS_GPR, 8),
> -	REG64_IDX(HSW_CS_GPR, 9),
> -	REG64_IDX(HSW_CS_GPR, 10),
> -	REG64_IDX(HSW_CS_GPR, 11),
> -	REG64_IDX(HSW_CS_GPR, 12),
> -	REG64_IDX(HSW_CS_GPR, 13),
> -	REG64_IDX(HSW_CS_GPR, 14),
> -	REG64_IDX(HSW_CS_GPR, 15),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 0),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 1),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 2),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 3),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 4),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 5),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 6),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 7),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 8),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 9),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 10),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 11),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 12),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 13),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 14),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 15),
>  	REG32(HSW_SCRATCH1,
>  	      .mask = ~HSW_SCRATCH1_L3_DATA_ATOMICS_DISABLE,
>  	      .value = 0),
> @@ -674,22 +678,22 @@ static const struct drm_i915_reg_descriptor gen9_blt_regs[] = {
>  	REG32(BCS_SWCTRL),
>  	REG64_IDX(RING_TIMESTAMP, BLT_RING_BASE),
>  	REG32_IDX(RING_CTX_TIMESTAMP, BLT_RING_BASE),
> -	REG64_IDX(BCS_GPR, 0),
> -	REG64_IDX(BCS_GPR, 1),
> -	REG64_IDX(BCS_GPR, 2),
> -	REG64_IDX(BCS_GPR, 3),
> -	REG64_IDX(BCS_GPR, 4),
> -	REG64_IDX(BCS_GPR, 5),
> -	REG64_IDX(BCS_GPR, 6),
> -	REG64_IDX(BCS_GPR, 7),
> -	REG64_IDX(BCS_GPR, 8),
> -	REG64_IDX(BCS_GPR, 9),
> -	REG64_IDX(BCS_GPR, 10),
> -	REG64_IDX(BCS_GPR, 11),
> -	REG64_IDX(BCS_GPR, 12),
> -	REG64_IDX(BCS_GPR, 13),
> -	REG64_IDX(BCS_GPR, 14),
> -	REG64_IDX(BCS_GPR, 15),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 0),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 1),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 2),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 3),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 4),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 5),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 6),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 7),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 8),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 9),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 10),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 11),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 12),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 13),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 14),
> +	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 15),
>  };
>  
>  #undef REG64
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index e20e832162b4..86e459010465 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -599,10 +599,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  #define   BCS_SRC_Y REG_BIT(0)
>  #define   BCS_DST_Y REG_BIT(1)
>  
> -/* There are 16 GPR registers */
> -#define BCS_GPR(n)	_MMIO(0x22600 + (n) * 8)
> -#define BCS_GPR_UDW(n)	_MMIO(0x22600 + (n) * 8 + 4)
> -
>  #define GPGPU_THREADS_DISPATCHED        _MMIO(0x2290)
>  #define GPGPU_THREADS_DISPATCHED_UDW	_MMIO(0x2290 + 4)
>  #define HS_INVOCATION_COUNT             _MMIO(0x2300)
> @@ -646,10 +642,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  #define GEN7_GPGPU_DISPATCHDIMY         _MMIO(0x2504)
>  #define GEN7_GPGPU_DISPATCHDIMZ         _MMIO(0x2508)
>  
> -/* There are the 16 64-bit CS General Purpose Registers */
> -#define HSW_CS_GPR(n)                   _MMIO(0x2600 + (n) * 8)
> -#define HSW_CS_GPR_UDW(n)               _MMIO(0x2600 + (n) * 8 + 4)
> -
>  #define GEN7_OACONTROL _MMIO(0x2360)
>  #define  GEN7_OACONTROL_CTX_MASK	    0xFFFFF000
>  #define  GEN7_OACONTROL_TIMER_PERIOD_MASK   0x3F

-- 
Jani Nikula, Intel Open Source Graphics Center
