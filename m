Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB6B48970B
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 12:11:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D55C214A231;
	Mon, 10 Jan 2022 11:11:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05E4B14A1EA
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 11:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641813062; x=1673349062;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ZCPHXwXiXyVAKywIenXtdWlcRYkL6OfPP8tT56njEMU=;
 b=SkBZ4TcAyPk6wMsc2AVx/r5Rsn3yfhQMOdd/yFG8ruMo99+mO1lXaa58
 z/TfbtGk8KS1GagcUBzSBG9WekINTi3C7ItYYIHu5JwRvsdCwCZF7zHKL
 bsASAsj98dIWu/LSlXPpXaKVHMH1TQH/bbeNPHPqiYG7RuFbJCAmvxLLU
 3pj5Syfv/kN85b10x0WVSQQ6nga4fcjiAqkvW2Q+/aA86HZ/rlB2N+VjL
 nkkk2XWQC0xgOXLdT9stfSPncWQk882hYCaRfTlghFRsiHYrXmbuMa9oc
 kQl5+11jD4avkw0EVhXRqLlc/ZW9U0AFdxksvKwuI/gLDJf40l9Zg/0rp g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="230544171"
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="230544171"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 03:11:01 -0800
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="690542415"
Received: from bdoyle2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.184])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 03:10:59 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220108044055.3123418-4-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220108044055.3123418-1-matthew.d.roper@intel.com>
 <20220108044055.3123418-4-matthew.d.roper@intel.com>
Date: Mon, 10 Jan 2022 13:10:56 +0200
Message-ID: <87mtk3alrz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 3/7] drm/i915: Parameterize ECOSKPD
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
> Combine the separate render and blitter register definitions into a
> single definition.  We already know we have some workarounds on an
> upcoming platform that will need to update the ECOSKPD register for
> other engines too, so this helps pave the way for that.
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c |  2 +-
>  drivers/gpu/drm/i915/gvt/handlers.c         |  4 ++--
>  drivers/gpu/drm/i915/i915_reg.h             | 14 ++++++--------
>  drivers/gpu/drm/i915/intel_pm.c             |  6 ++++--
>  4 files changed, 13 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index ab3277a3d593..2d87dc81cd63 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2536,7 +2536,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		 * they are already accustomed to from before contexts were
>  		 * enabled.
>  		 */
> -		wa_add(wal, ECOSKPD,
> +		wa_add(wal, ECOSKPD(RENDER_RING_BASE),
>  		       0, _MASKED_BIT_ENABLE(ECO_CONSTANT_BUFFER_SR_DISABLE),
>  		       0 /* XXX bit doesn't stick on Broadwater */,
>  		       true);
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> index 3938df0db188..329d30a36f4f 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -2877,9 +2877,9 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
>  
>  	MMIO_D(_MMIO(0x3c), D_ALL);
>  	MMIO_D(_MMIO(0x860), D_ALL);
> -	MMIO_D(ECOSKPD, D_ALL);
> +	MMIO_D(ECOSKPD(RENDER_RING_BASE), D_ALL);
>  	MMIO_D(_MMIO(0x121d0), D_ALL);
> -	MMIO_D(GEN6_BLITTER_ECOSKPD, D_ALL);
> +	MMIO_D(ECOSKPD(BLT_RING_BASE), D_ALL);
>  	MMIO_D(_MMIO(0x41d0), D_ALL);
>  	MMIO_D(GAC_ECO_BITS, D_ALL);
>  	MMIO_D(_MMIO(0x6200), D_ALL);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 23330faecf07..5b1f93112001 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3107,10 +3107,12 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  #define GFX_FLSH_CNTL	_MMIO(0x2170) /* 915+ only */
>  #define GFX_FLSH_CNTL_GEN6	_MMIO(0x101008)
>  #define   GFX_FLSH_CNTL_EN	(1 << 0)
> -#define ECOSKPD		_MMIO(0x21d0)
> -#define   ECO_CONSTANT_BUFFER_SR_DISABLE REG_BIT(4)
> -#define   ECO_GATING_CX_ONLY	(1 << 3)
> -#define   ECO_FLIP_DONE		(1 << 0)
> +#define ECOSKPD(base)		_MMIO((base) + 0x1d0)
> +#define   ECO_CONSTANT_BUFFER_SR_DISABLE	REG_BIT(4)
> +#define   ECO_GATING_CX_ONLY			REG_BIT(3)
> +#define   GEN6_BLITTER_FBC_NOTIFY		REG_BIT(3)
> +#define   ECO_FLIP_DONE				REG_BIT(0)
> +#define   GEN6_BLITTER_LOCK_SHIFT		16
>  
>  #define CACHE_MODE_0_GEN7	_MMIO(0x7000) /* IVB+ */
>  #define RC_OP_FLUSH_ENABLE (1 << 0)
> @@ -3120,10 +3122,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  #define   GEN8_4x4_STC_OPTIMIZATION_DISABLE	(1 << 6)
>  #define   GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE	(1 << 1)
>  
> -#define GEN6_BLITTER_ECOSKPD	_MMIO(0x221d0)
> -#define   GEN6_BLITTER_LOCK_SHIFT			16
> -#define   GEN6_BLITTER_FBC_NOTIFY			(1 << 3)
> -
>  #define GEN6_RC_SLEEP_PSMI_CONTROL	_MMIO(0x2050)
>  #define   GEN6_PSMI_SLEEP_MSG_DISABLE	(1 << 0)
>  #define   GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE REG_BIT(7)
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 8b357ec35a4a..2d0955d13776 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -7868,10 +7868,12 @@ static void gen3_init_clock_gating(struct drm_i915_private *dev_priv)
>  	intel_uncore_write(&dev_priv->uncore, D_STATE, dstate);
>  
>  	if (IS_PINEVIEW(dev_priv))
> -		intel_uncore_write(&dev_priv->uncore, ECOSKPD, _MASKED_BIT_ENABLE(ECO_GATING_CX_ONLY));
> +		intel_uncore_write(&dev_priv->uncore, ECOSKPD(RENDER_RING_BASE),
> +				   _MASKED_BIT_ENABLE(ECO_GATING_CX_ONLY));
>  
>  	/* IIR "flip pending" means done if this bit is set */
> -	intel_uncore_write(&dev_priv->uncore, ECOSKPD, _MASKED_BIT_DISABLE(ECO_FLIP_DONE));
> +	intel_uncore_write(&dev_priv->uncore, ECOSKPD(RENDER_RING_BASE),
> +			   _MASKED_BIT_DISABLE(ECO_FLIP_DONE));
>  
>  	/* interrupts should cause a wake up from C3 */
>  	intel_uncore_write(&dev_priv->uncore, INSTPM, _MASKED_BIT_ENABLE(INSTPM_AGPBUSY_INT_EN));

-- 
Jani Nikula, Intel Open Source Graphics Center
