Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 622F148971D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 12:14:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8955014A603;
	Mon, 10 Jan 2022 11:14:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 633B614A602
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 11:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641813260; x=1673349260;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ptzep6ahbhqShrFQcao0ixMXH0B7as2DhBkQ5EdTC8E=;
 b=ATOFxHesIEeuw8Z/7P9G0MEg4RH8EvPFo5/j8Lj+UGTbD2UQjetD1qx5
 Nb4kxaQngGlytNAGe8avDLTrLGIT/xY8Z0ERg4n1/Hnf/FyPmiHYmOOuH
 nn84pacasDBzlCeskSt273Xwxgi4xROqh2wPJbXLhyaJ4kzyOzMfSI32h
 XBO61wo17MKGP+uMnw7VKRxBjHkrAW7FWO0C5/q1JW+l6el2FVwOBNsTF
 Be8kuRm3fw39meFZCSkf/UJPD8yZF6lN7cRU9wXjAk1Q96UrnFznGErIb
 32jnkSXFdLoNq8XsKzKb12c98L6e5RktPQJz3rsPoYZbOMhjCxivNsXNN A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="242016404"
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="242016404"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 03:14:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="690543347"
Received: from bdoyle2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.184])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 03:14:17 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220108044055.3123418-5-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220108044055.3123418-1-matthew.d.roper@intel.com>
 <20220108044055.3123418-5-matthew.d.roper@intel.com>
Date: Mon, 10 Jan 2022 13:14:15 +0200
Message-ID: <87k0f7almg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 4/7] drm/i915: Use RING_PSMI_CTL rather
 than per-engine macros
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
> We have a parameterized macro for RING_PSMI_CTL; let's use that instead
> of the per-engine definitions where possible.
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../gpu/drm/i915/gt/intel_ring_submission.c   | 10 +++++-----
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   |  2 +-
>  drivers/gpu/drm/i915/i915_reg.h               | 19 +++++++------------
>  drivers/gpu/drm/i915/intel_pm.c               |  4 ++--
>  4 files changed, 15 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index 3e6fac0340ef..56c009ecfdf2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -1002,15 +1002,15 @@ static void gen6_bsd_submit_request(struct i915_request *request)
>  	/* Disable notification that the ring is IDLE. The GT
>  	 * will then assume that it is busy and bring it out of rc6.
>  	 */
> -	intel_uncore_write_fw(uncore, GEN6_BSD_SLEEP_PSMI_CONTROL,
> -			      _MASKED_BIT_ENABLE(GEN6_BSD_SLEEP_MSG_DISABLE));
> +	intel_uncore_write_fw(uncore, RING_PSMI_CTL(GEN6_BSD_RING_BASE),
> +			      _MASKED_BIT_ENABLE(GEN6_PSMI_SLEEP_MSG_DISABLE));
>  
>  	/* Clear the context id. Here be magic! */
>  	intel_uncore_write64_fw(uncore, GEN6_BSD_RNCID, 0x0);
>  
>  	/* Wait for the ring not to be idle, i.e. for it to wake up. */
>  	if (__intel_wait_for_register_fw(uncore,
> -					 GEN6_BSD_SLEEP_PSMI_CONTROL,
> +					 RING_PSMI_CTL(GEN6_BSD_RING_BASE),
>  					 GEN6_BSD_SLEEP_INDICATOR,
>  					 0,
>  					 1000, 0, NULL))
> @@ -1023,8 +1023,8 @@ static void gen6_bsd_submit_request(struct i915_request *request)
>  	/* Let the ring send IDLE messages to the GT again,
>  	 * and so let it sleep to conserve power when idle.
>  	 */
> -	intel_uncore_write_fw(uncore, GEN6_BSD_SLEEP_PSMI_CONTROL,
> -			      _MASKED_BIT_DISABLE(GEN6_BSD_SLEEP_MSG_DISABLE));
> +	intel_uncore_write_fw(uncore, RING_PSMI_CTL(GEN6_BSD_RING_BASE),
> +			      _MASKED_BIT_DISABLE(GEN6_PSMI_SLEEP_MSG_DISABLE));
>  
>  	intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
>  }
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 2d87dc81cd63..977619ea839a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2208,7 +2208,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		 * For DG1 this only applies to A0.
>  		 */
>  		wa_masked_en(wal,
> -			     GEN6_RC_SLEEP_PSMI_CONTROL,
> +			     RING_PSMI_CTL(RENDER_RING_BASE),
>  			     GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE |
>  			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 5b1f93112001..b227a1e58f9b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2563,6 +2563,13 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  #define GEN6_VEVSYNC	(RING_SYNC_2(VEBOX_RING_BASE))
>  #define GEN6_NOSYNC	INVALID_MMIO_REG
>  #define RING_PSMI_CTL(base)	_MMIO((base) + 0x50)
> +#define   GEN8_RC_SEMA_IDLE_MSG_DISABLE		REG_BIT(12)
> +#define   GEN8_FF_DOP_CLOCK_GATE_DISABLE	REG_BIT(10)
> +#define   GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE REG_BIT(7)
> +#define   GEN6_BSD_GO_INDICATOR			REG_BIT(4)
> +#define   GEN6_BSD_SLEEP_INDICATOR		REG_BIT(3)
> +#define   GEN6_BSD_SLEEP_FLUSH_DISABLE		REG_BIT(2)
> +#define   GEN6_PSMI_SLEEP_MSG_DISABLE		REG_BIT(0)
>  #define RING_MAX_IDLE(base)	_MMIO((base) + 0x54)
>  #define RING_HWS_PGA(base)	_MMIO((base) + 0x80)
>  #define RING_ID(base)		_MMIO((base) + 0x8c)
> @@ -3122,12 +3129,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  #define   GEN8_4x4_STC_OPTIMIZATION_DISABLE	(1 << 6)
>  #define   GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE	(1 << 1)
>  
> -#define GEN6_RC_SLEEP_PSMI_CONTROL	_MMIO(0x2050)
> -#define   GEN6_PSMI_SLEEP_MSG_DISABLE	(1 << 0)
> -#define   GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE REG_BIT(7)
> -#define   GEN8_RC_SEMA_IDLE_MSG_DISABLE	(1 << 12)
> -#define   GEN8_FF_DOP_CLOCK_GATE_DISABLE	(1 << 10)
> -
>  #define GEN6_RCS_PWR_FSM _MMIO(0x22ac)
>  #define GEN9_RCS_FE_FSM2 _MMIO(0x22a4)
>  
> @@ -3213,12 +3214,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  #define XEHP_EU_ENABLE			_MMIO(0x9134)
>  #define XEHP_EU_ENA_MASK		0xFF
>  
> -#define GEN6_BSD_SLEEP_PSMI_CONTROL	_MMIO(0x12050)
> -#define   GEN6_BSD_SLEEP_MSG_DISABLE	(1 << 0)
> -#define   GEN6_BSD_SLEEP_FLUSH_DISABLE	(1 << 2)
> -#define   GEN6_BSD_SLEEP_INDICATOR	(1 << 3)
> -#define   GEN6_BSD_GO_INDICATOR		(1 << 4)
> -
>  /* On modern GEN architectures interrupt control consists of two sets
>   * of registers. The first set pertains to the ring generating the
>   * interrupt. The second control is for the functional block generating the
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 2d0955d13776..710dee28a014 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -7654,7 +7654,7 @@ static void bdw_init_clock_gating(struct drm_i915_private *dev_priv)
>  		   intel_uncore_read(&dev_priv->uncore, GEN7_FF_THREAD_MODE) &
>  		   ~(GEN8_FF_DS_REF_CNT_FFME | GEN7_FF_VS_REF_CNT_FFME));
>  
> -	intel_uncore_write(&dev_priv->uncore, GEN6_RC_SLEEP_PSMI_CONTROL,
> +	intel_uncore_write(&dev_priv->uncore, RING_PSMI_CTL(RENDER_RING_BASE),
>  		   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));
>  
>  	/* WaDisableSDEUnitClockGating:bdw */
> @@ -7795,7 +7795,7 @@ static void chv_init_clock_gating(struct drm_i915_private *dev_priv)
>  		   ~(GEN8_FF_DS_REF_CNT_FFME | GEN7_FF_VS_REF_CNT_FFME));
>  
>  	/* WaDisableSemaphoreAndSyncFlipWait:chv */
> -	intel_uncore_write(&dev_priv->uncore, GEN6_RC_SLEEP_PSMI_CONTROL,
> +	intel_uncore_write(&dev_priv->uncore, RING_PSMI_CTL(RENDER_RING_BASE),
>  		   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));
>  
>  	/* WaDisableCSUnitClockGating:chv */

-- 
Jani Nikula, Intel Open Source Graphics Center
