Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 810131F655B
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 12:07:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D10D26E8D7;
	Thu, 11 Jun 2020 10:07:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 822506E8D7
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 10:07:41 +0000 (UTC)
IronPort-SDR: vt2eZ99LMW3HERMz7TZCkHyzDULqoe6dbewJb/7nLwP4E1QhoT6Sk8zt6cGCxlsi3sOcRNAvnN
 rgpDqCUTPUMw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 03:07:41 -0700
IronPort-SDR: 13TJM188qBYp7jK4vaQ0PfasfG7ygHWAercJ1sZ6XL9dY5kADlW2na4Y7GLYZFkaWbW8y7/wz+
 9zljMM7c7jZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,499,1583222400"; d="scan'208";a="350141823"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 11 Jun 2020 03:07:39 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id C11185C2CA7; Thu, 11 Jun 2020 13:05:03 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200611080140.30228-5-chris@chris-wilson.co.uk>
References: <20200611080140.30228-1-chris@chris-wilson.co.uk>
 <20200611080140.30228-5-chris@chris-wilson.co.uk>
Date: Thu, 11 Jun 2020 13:05:03 +0300
Message-ID: <87k10d9auo.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/gt: Move ilk GT workarounds
 from init_clock_gating to workarounds
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Rescue the GT workarounds from being buried inside init_clock_gating so
> that we remember to apply them after a GT reset, and that they are
> included in our verification that the workarounds are applied.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 14 ++++++++++++++
>  drivers/gpu/drm/i915/intel_pm.c             | 10 ----------
>  2 files changed, 14 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 7b4f3434eb6b..f8b9e104378e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -714,6 +714,18 @@ int intel_engine_emit_ctx_wa(struct i915_request *rq)
>  	return 0;
>  }
>  
> +static void
> +ilk_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
> +{
> +	wa_masked_en(wal,_3D_CHICKEN2, _3D_CHICKEN2_WM_READ_PIPELINED);
> +
> +	/* WaDisableRenderCachePipelinedFlush:ilk */
> +	wa_masked_en(wal, CACHE_MODE_0, CM0_PIPELINED_RENDER_FLUSH_DISABLE);
> +
> +	/* WaDisable_RenderCache_OperationalFlush:ilk */
> +	wa_masked_dis(wal, CACHE_MODE_0, RC_OP_FLUSH_ENABLE);
> +}
> +
>  static void
>  snb_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
>  {
> @@ -1195,6 +1207,8 @@ gt_init_workarounds(struct drm_i915_private *i915, struct i915_wa_list *wal)
>  		ivb_gt_workarounds_init(i915, wal);
>  	else if (IS_GEN(i915, 6))
>  		snb_gt_workarounds_init(i915, wal);
> +	else if (IS_GEN(i915, 5))
> +		ilk_gt_workarounds_init(i915, wal);
>  	else if (INTEL_GEN(i915) <= 8)
>  		return;
>  	else
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index b4bea6451418..7d82a7144a13 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -6921,16 +6921,6 @@ static void ilk_init_clock_gating(struct drm_i915_private *dev_priv)
>  	I915_WRITE(ILK_DISPLAY_CHICKEN2,
>  		   I915_READ(ILK_DISPLAY_CHICKEN2) |
>  		   ILK_ELPIN_409_SELECT);
> -	I915_WRITE(_3D_CHICKEN2,
> -		   _3D_CHICKEN2_WM_READ_PIPELINED << 16 |
> -		   _3D_CHICKEN2_WM_READ_PIPELINED);
> -
> -	/* WaDisableRenderCachePipelinedFlush:ilk */
> -	I915_WRITE(CACHE_MODE_0,
> -		   _MASKED_BIT_ENABLE(CM0_PIPELINED_RENDER_FLUSH_DISABLE));
> -
> -	/* WaDisable_RenderCache_OperationalFlush:ilk */
> -	I915_WRITE(CACHE_MODE_0, _MASKED_BIT_DISABLE(RC_OP_FLUSH_ENABLE));
>  
>  	g4x_disable_trickle_feed(dev_priv);
>  
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
