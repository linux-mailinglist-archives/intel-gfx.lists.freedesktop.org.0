Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0974B48C6CD
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 16:10:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C7FC10E18C;
	Wed, 12 Jan 2022 15:10:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1F3210E18C
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 15:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642000198; x=1673536198;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5WpaAuSNRh+RBUAMiWfjgtVncoyvnOHheSgp5SpFt54=;
 b=XEcz3p7pEtgqBsv4cV/6wYBMrbGmihCGaJ01KCeof+ioigkEIkkT86lz
 C6yOx+WKVSDENJEO1BZqMJ4qUIf4wFrZkD7aCi/BURDmYkHmdOgVNkK7J
 MaPT/M6CmXnuNNzANiVoZyfjxkcKLcQmKqI2J4PteaNPnJEexd0iGCgS4
 F+GDyoQalZR65KaAzVwt7hsbG0VIwPiv/BJNhXicMTRnoo78Z3Wkw90cb
 qhkxWv4OyPemiIR1wsU4XvQzWXuDC/TGgRtwCXrD1GKEDc4di9P8RvHxH
 WP7d75ABl/pg6J5njkMJ0MQyzIO5bHBcCxH8xOjO5DQeiq/JeqwUZ3hTH g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="223734342"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="223734342"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 07:09:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="620216703"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga002.fm.intel.com with SMTP; 12 Jan 2022 07:09:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Jan 2022 17:09:55 +0200
Date: Wed, 12 Jan 2022 17:09:55 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <Yd7vQ3uSLisEwnxq@intel.com>
References: <20220111051600.3429104-1-matthew.d.roper@intel.com>
 <20220111051600.3429104-4-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220111051600.3429104-4-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 03/11] drm/i915: Parameterize ECOSKPD
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 10, 2022 at 09:15:52PM -0800, Matt Roper wrote:
> Combine the separate render and blitter register definitions into a
> single definition.  We already know we have some workarounds on an
> upcoming platform that will need to update the ECOSKPD register for
> other engines too, so this helps pave the way for that.
> 
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
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
> index 3ef332833c4c..a4c9d2005c46 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2858,10 +2858,12 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
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

This looks messy. The register contents are (mostly?) unique for
each engine, so this is making it rather hard to see which register
takes which bits. I think we should at least group the bits clearly
based on which engine they belong to.

>  
>  #define CACHE_MODE_0_GEN7	_MMIO(0x7000) /* IVB+ */
>  #define RC_OP_FLUSH_ENABLE (1 << 0)
> @@ -2871,10 +2873,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
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
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
