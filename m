Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED604B7945
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 22:28:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2FD310E539;
	Tue, 15 Feb 2022 21:28:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46B5010E539
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 21:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644960530; x=1676496530;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=m8kajn+t6BF+PH3lnovQAfO+ydU5phxczIrG1JYt5hQ=;
 b=IvMGFvdL1zDxlPgGXsp0PfpQ3Qtk0SsZ5YOhGwNLz8qXBJ5XVP8h1cjQ
 Qq5HHzsC7yAlWovei1TxKqjOvRaeJO2fIrMXEcFQf6K4GZUWpxAOBVGW9
 hPGGLueQ5dAidmvG9EvyURfOKjxZmhjm0NRsLMNzPdjb9Jqz5AkIz4dzv
 yHXANnPKSEHULbmaiYEHoNf1Zi2tRttTliWUvRjQVfA18PtzQpev1+WU2
 +nFRouDvmyh8wJCzoJwvuPe/PazUatSY/yslh45xkN8vbLFOmtbdJ6PHa
 tZNaUSLmLNn8g2ogWAW5UHs/UpbLTPnOeouTxVwtM9Ve8ZrouZsPK+0nG A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="249291270"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="249291270"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 13:28:49 -0800
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="544511051"
Received: from dbhandar-mobl1.amr.corp.intel.com (HELO msatwood-mobl)
 ([10.212.183.40])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 13:28:49 -0800
Date: Tue, 15 Feb 2022 13:28:35 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>;,
	intel-gfx@lists.freedesktop.org
Message-ID: <20220215212835.GB12259@msatwood-mobl>
References: <20220209051140.1599643-1-matthew.d.roper@intel.com>
 <20220209051140.1599643-3-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220209051140.1599643-3-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/gt: Move SFC lock bits to
 intel_engine_regs.h
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

On Tue, Feb 08, 2022 at 09:11:36PM -0800, Matt Roper wrote:
> These SFC registers were defined in an usual way, taking an engine as a
in an unusual*
> parameter rather than an engine MMIO base offset.  Let's adjust them to
> match the style used by other per-engine registers and move them to
> intel_engine_regs.h.
> 
> While doing this move, we can drop GEN12_HCP_SFC_FORCED_LOCK completely;
> it was intended for use in an early version of a hardware workaround,
> but was no longer necessary by the time the workaround was finalized.
> It is not used anywhere in the driver.
> 
after nit fix,
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_regs.h | 17 +++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 19 -------------------
>  drivers/gpu/drm/i915/gt/intel_reset.c       | 14 +++++++-------
>  3 files changed, 24 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> index e9fec6214073..cafb078cdb05 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> @@ -211,8 +211,25 @@
>  #define GEN8_RING_CS_GPR(base, n)		_MMIO((base) + 0x600 + (n) * 8)
>  #define GEN8_RING_CS_GPR_UDW(base, n)		_MMIO((base) + 0x600 + (n) * 8 + 4)
>  
> +#define GEN11_VCS_SFC_FORCED_LOCK(base)		_MMIO((base) + 0x88c)
> +#define   GEN11_VCS_SFC_FORCED_LOCK_BIT		(1 << 0)
> +#define GEN11_VCS_SFC_LOCK_STATUS(base)		_MMIO((base) + 0x890)
> +#define   GEN11_VCS_SFC_USAGE_BIT		(1 << 0)
> +#define   GEN11_VCS_SFC_LOCK_ACK_BIT		(1 << 1)
> +
> +#define GEN11_VECS_SFC_FORCED_LOCK(base)	_MMIO((base) + 0x201c)
> +#define   GEN11_VECS_SFC_FORCED_LOCK_BIT	(1 << 0)
> +#define GEN11_VECS_SFC_LOCK_ACK(base)		_MMIO((base) + 0x2018)
> +#define   GEN11_VECS_SFC_LOCK_ACK_BIT		(1 << 0)
> +#define GEN11_VECS_SFC_USAGE(base)		_MMIO((base) + 0x2014)
> +#define   GEN11_VECS_SFC_USAGE_BIT		(1 << 0)
> +
>  #define RING_HWS_PGA_GEN6(base)	_MMIO((base) + 0x2080)
>  
> +#define GEN12_HCP_SFC_LOCK_STATUS(base)		_MMIO((base) + 0x2914)
> +#define   GEN12_HCP_SFC_LOCK_ACK_BIT		REG_BIT(1)
> +#define   GEN12_HCP_SFC_USAGE_BIT		REG_BIT(0)
> +
>  #define VDBOX_CGCTL3F10(base)			_MMIO((base) + 0x3f10)
>  #define   IECPUNIT_CLKGATE_DIS			REG_BIT(22)
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index e73c706e7f0d..4cdb2cca2122 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -68,25 +68,6 @@
>  #define  GEN11_VCS_SFC_RESET_BIT(instance)	(GEN11_GRDOM_SFC0 << ((instance) >> 1))
>  #define  GEN11_VECS_SFC_RESET_BIT(instance)	(GEN11_GRDOM_SFC0 << (instance))
>  
> -#define GEN11_VCS_SFC_FORCED_LOCK(engine)	_MMIO((engine)->mmio_base + 0x88C)
> -#define   GEN11_VCS_SFC_FORCED_LOCK_BIT		(1 << 0)
> -#define GEN11_VCS_SFC_LOCK_STATUS(engine)	_MMIO((engine)->mmio_base + 0x890)
> -#define   GEN11_VCS_SFC_USAGE_BIT		(1 << 0)
> -#define   GEN11_VCS_SFC_LOCK_ACK_BIT		(1 << 1)
> -
> -#define GEN11_VECS_SFC_FORCED_LOCK(engine)	_MMIO((engine)->mmio_base + 0x201C)
> -#define   GEN11_VECS_SFC_FORCED_LOCK_BIT	(1 << 0)
> -#define GEN11_VECS_SFC_LOCK_ACK(engine)		_MMIO((engine)->mmio_base + 0x2018)
> -#define   GEN11_VECS_SFC_LOCK_ACK_BIT		(1 << 0)
> -#define GEN11_VECS_SFC_USAGE(engine)		_MMIO((engine)->mmio_base + 0x2014)
> -#define   GEN11_VECS_SFC_USAGE_BIT		(1 << 0)
> -
> -#define GEN12_HCP_SFC_FORCED_LOCK(engine)	_MMIO((engine)->mmio_base + 0x2910)
> -#define   GEN12_HCP_SFC_FORCED_LOCK_BIT		REG_BIT(0)
> -#define GEN12_HCP_SFC_LOCK_STATUS(engine)	_MMIO((engine)->mmio_base + 0x2914)
> -#define   GEN12_HCP_SFC_LOCK_ACK_BIT		REG_BIT(1)
> -#define   GEN12_HCP_SFC_USAGE_BIT			REG_BIT(0)
> -
>  #define GEN12_SFC_DONE(n)		_MMIO(0x1cc000 + (n) * 0x1000)
>  
>  #define WAIT_FOR_RC6_EXIT		_MMIO(0x20CC)
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 59beb69ff6f2..82811df7327b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -347,25 +347,25 @@ static void get_sfc_forced_lock_data(struct intel_engine_cs *engine,
>  		MISSING_CASE(engine->class);
>  		fallthrough;
>  	case VIDEO_DECODE_CLASS:
> -		sfc_lock->lock_reg = GEN11_VCS_SFC_FORCED_LOCK(engine);
> +		sfc_lock->lock_reg = GEN11_VCS_SFC_FORCED_LOCK(engine->mmio_base);
>  		sfc_lock->lock_bit = GEN11_VCS_SFC_FORCED_LOCK_BIT;
>  
> -		sfc_lock->ack_reg = GEN11_VCS_SFC_LOCK_STATUS(engine);
> +		sfc_lock->ack_reg = GEN11_VCS_SFC_LOCK_STATUS(engine->mmio_base);
>  		sfc_lock->ack_bit  = GEN11_VCS_SFC_LOCK_ACK_BIT;
>  
> -		sfc_lock->usage_reg = GEN11_VCS_SFC_LOCK_STATUS(engine);
> +		sfc_lock->usage_reg = GEN11_VCS_SFC_LOCK_STATUS(engine->mmio_base);
>  		sfc_lock->usage_bit = GEN11_VCS_SFC_USAGE_BIT;
>  		sfc_lock->reset_bit = GEN11_VCS_SFC_RESET_BIT(engine->instance);
>  
>  		break;
>  	case VIDEO_ENHANCEMENT_CLASS:
> -		sfc_lock->lock_reg = GEN11_VECS_SFC_FORCED_LOCK(engine);
> +		sfc_lock->lock_reg = GEN11_VECS_SFC_FORCED_LOCK(engine->mmio_base);
>  		sfc_lock->lock_bit = GEN11_VECS_SFC_FORCED_LOCK_BIT;
>  
> -		sfc_lock->ack_reg = GEN11_VECS_SFC_LOCK_ACK(engine);
> +		sfc_lock->ack_reg = GEN11_VECS_SFC_LOCK_ACK(engine->mmio_base);
>  		sfc_lock->ack_bit  = GEN11_VECS_SFC_LOCK_ACK_BIT;
>  
> -		sfc_lock->usage_reg = GEN11_VECS_SFC_USAGE(engine);
> +		sfc_lock->usage_reg = GEN11_VECS_SFC_USAGE(engine->mmio_base);
>  		sfc_lock->usage_bit = GEN11_VECS_SFC_USAGE_BIT;
>  		sfc_lock->reset_bit = GEN11_VECS_SFC_RESET_BIT(engine->instance);
>  
> @@ -412,7 +412,7 @@ static int gen11_lock_sfc(struct intel_engine_cs *engine,
>  		 * forced lock on the VE engine that shares the same SFC.
>  		 */
>  		if (!(intel_uncore_read_fw(uncore,
> -					   GEN12_HCP_SFC_LOCK_STATUS(engine)) &
> +					   GEN12_HCP_SFC_LOCK_STATUS(engine->mmio_base)) &
>  		      GEN12_HCP_SFC_USAGE_BIT))
>  			return 0;
>  
> -- 
> 2.34.1
> 
