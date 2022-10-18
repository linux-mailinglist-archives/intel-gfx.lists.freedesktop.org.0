Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2B16027F2
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 11:07:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ACFD10EEFA;
	Tue, 18 Oct 2022 09:07:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1314F10EEFA
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Oct 2022 09:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666084069; x=1697620069;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Fs2RQj4atCqrQz7aS0FzLB3nxMM4hMAP+RWqE5i99EY=;
 b=CSnkwpr1rO0IqVCSQDAGixxIVrnHaOlVAqVSTzByst7CdIHT9WgXkI63
 mJZqARJWS53NZMqn+vNOWszyHeGNYkH5fjDb28sggQfl37VT6a7Zf+Dba
 TpMBwACgpC1PkpWUvUWGloSRBb6GgioHPZhgD9jT/TFh8L1VYvQvd3Ptg
 CZPjauRuezpNQvWIMvPBsb0P2XK4zQchZnaCKNmdCaOZKrU/u7oI4GGoG
 CQO+N5Jz4S5Dv0gD5LTPe4Igx/71msR7pVTsh11XXoFRZoh5CN8v9+Djc
 Q1hmOC+71NuCWwyoQbRLX1dbhMC/iJ1tdnt+aPVFu/UvOYEQihz4BOADE A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="332588117"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="332588117"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 02:07:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="771114039"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="771114039"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 18 Oct 2022 02:07:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Oct 2022 12:07:45 +0300
Date: Tue, 18 Oct 2022 12:07:45 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y05s4XLPqL4mZwi1@intel.com>
References: <20221017103756.3925176-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221017103756.3925176-1-andrzej.hajda@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: use intel_uncore_rmw when
 appropriate
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 17, 2022 at 12:37:56PM +0200, Andrzej Hajda wrote:
> This patch replaces all occurences of the form
> intel_uncore_write(reg, intel_uncore_read(reg) OP val)
> with intel_uncore_rmw.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
> Apparently I have missed this pattern during refactoring.
> 
> Regards
> Andrzej
> ---
>  drivers/gpu/drm/i915/gt/intel_rps.c |   4 +-
>  drivers/gpu/drm/i915/intel_pm.c     | 190 ++++++++++------------------
>  2 files changed, 68 insertions(+), 126 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index fc23c562d9b2a7..070005dd0da476 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -625,9 +625,7 @@ static void gen5_rps_disable(struct intel_rps *rps)
>  	rgvswctl = intel_uncore_read16(uncore, MEMSWCTL);
>  
>  	/* Ack interrupts, disable EFC interrupt */
> -	intel_uncore_write(uncore, MEMINTREN,
> -			   intel_uncore_read(uncore, MEMINTREN) &
> -			   ~MEMINT_EVAL_CHG_EN);
> +	intel_uncore_rmw(uncore, MEMINTREN, MEMINT_EVAL_CHG_EN, 0);
>  	intel_uncore_write(uncore, MEMINTRSTS, MEMINT_EVAL_CHG);
>  
>  	/* Go back to the starting frequency */

Maybe split the gt stuff to a separate patch?

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 19d4a88184d7a1..4d264147ada94b 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
<snip>
> @@ -4293,14 +4272,12 @@ static void lpt_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 * disabled when not needed anymore in order to save power.
>  	 */
>  	if (HAS_PCH_LPT_LP(dev_priv))
> -		intel_uncore_write(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D,
> -			   intel_uncore_read(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D) |
> -			   PCH_LP_PARTITION_LEVEL_DISABLE);
> +		intel_uncore_rmw(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D, 0,
                                                                        ^

I'd put the newline there in these cases. That way everything we're
doing to the register value would be neatly on the same line instead
of spread around like this.

> +				 PCH_LP_PARTITION_LEVEL_DISABLE);
>  
>  	/* WADPOClockGatingDisable:hsw */
> -	intel_uncore_write(&dev_priv->uncore, TRANS_CHICKEN1(PIPE_A),
> -		   intel_uncore_read(&dev_priv->uncore, TRANS_CHICKEN1(PIPE_A)) |
> -		   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
> +	intel_uncore_rmw(&dev_priv->uncore, TRANS_CHICKEN1(PIPE_A), 0,
> +			 TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
>  }
>  
>  static void lpt_suspend_hw(struct drm_i915_private *dev_priv)
<snip>
> @@ -4532,43 +4494,37 @@ static void bdw_init_clock_gating(struct drm_i915_private *dev_priv)
>  	enum pipe pipe;
>  
>  	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
> -	intel_uncore_write(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A),
> -		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A)) |
> -		   HSW_FBCQ_DIS);
> +	intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A), 0, HSW_FBCQ_DIS);
>  
>  	/* WaSwitchSolVfFArbitrationPriority:bdw */
> -	intel_uncore_write(&dev_priv->uncore, GAM_ECOCHK, intel_uncore_read(&dev_priv->uncore, GAM_ECOCHK) | HSW_ECOCHK_ARB_PRIO_SOL);
> +	intel_uncore_rmw(&dev_priv->uncore, GAM_ECOCHK, 0, HSW_ECOCHK_ARB_PRIO_SOL);
>  
>  	/* WaPsrDPAMaskVBlankInSRD:bdw */
> -	intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR1_1,
> -		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR1_1) | DPA_MASK_VBLANK_SRD);
> +	intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PAR1_1, 0, DPA_MASK_VBLANK_SRD);
>  
>  	for_each_pipe(dev_priv, pipe) {
>  		/* WaPsrDPRSUnmaskVBlankInSRD:bdw */
> -		intel_uncore_write(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe),
> -			   intel_uncore_read(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe)) |
> -			   BDW_DPRS_MASK_VBLANK_SRD);
> +		intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe), 0,
> +				 BDW_DPRS_MASK_VBLANK_SRD);
>  	}
>  
>  	/* WaVSRefCountFullforceMissDisable:bdw */
>  	/* WaDSRefCountFullforceMissDisable:bdw */
> -	intel_uncore_write(&dev_priv->uncore, GEN7_FF_THREAD_MODE,
> -		   intel_uncore_read(&dev_priv->uncore, GEN7_FF_THREAD_MODE) &
> -		   ~(GEN8_FF_DS_REF_CNT_FFME | GEN7_FF_VS_REF_CNT_FFME));
> +	intel_uncore_rmw(&dev_priv->uncore, GEN7_FF_THREAD_MODE,
> +			 (GEN8_FF_DS_REF_CNT_FFME | GEN7_FF_VS_REF_CNT_FFME), 0);

Useless parens there. Ditto in the other copy.

This stuff really doesn't belong here anyway. I thought someone would have
hoisted all the gt stuff into a more appropriate place by now. But I guess
not.

Rest of the patch looked ok to me.

-- 
Ville Syrjälä
Intel
