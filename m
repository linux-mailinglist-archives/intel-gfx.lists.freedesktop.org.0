Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2636B489725
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 12:15:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5387F14A62D;
	Mon, 10 Jan 2022 11:15:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11FAC14A62C
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 11:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641813352; x=1673349352;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=rJ21ertlI+iDPqec34pjALcxQmFfRje/L2EBAgN35rw=;
 b=bGczgIrsoxPZIYupSaINhvSdGKrd9pe03t/Qd/9jA6B4jnN8W1UZTQMt
 DmTOz//gVWMstdK6+OHwPQeABZr2mLZ/2PsLxc8Wji5LyS7BCFW/B7e15
 sU3QmVo6D9PWR/eaeU3gf0+Qgs9/NgtWx1RTbrlkpYGZjWAgJJLAmpeUM
 B3Y8o/cBaC9V41u40cNwOU+U1UGck2I6Wh8WF/w1pgJJFbq2lCQ/GGqvF
 kZL4ZpBCIP1YHEs4cEXqjhhZmpYY1/VjOTIhLDPFNkXxojfhtvc/lrPPz
 BhG924wVfAKpWbt+F3NyAG1q1+dGvPNbsdvemR6HOXOnY6bFKof5UPDxB w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="243156200"
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="243156200"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 03:15:51 -0800
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="474095362"
Received: from bdoyle2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.184])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 03:15:50 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220108044055.3123418-6-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220108044055.3123418-1-matthew.d.roper@intel.com>
 <20220108044055.3123418-6-matthew.d.roper@intel.com>
Date: Mon, 10 Jan 2022 13:15:47 +0200
Message-ID: <87h7abaljw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 5/7] drm/i915: Replace GFX_MODE_GEN7 with
 RING_MODE_GEN7
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
> It's preferable to use parameterized register macros where possible.
>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 +-
>  drivers/gpu/drm/i915/gvt/mmio_context.c     | 4 ++--
>  drivers/gpu/drm/i915/i915_reg.h             | 1 -
>  3 files changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 977619ea839a..895939a941d6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2423,7 +2423,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  	if (GRAPHICS_VER(i915) == 7) {
>  		/* WaBCSVCSTlbInvalidationMode:ivb,vlv,hsw */
>  		wa_masked_en(wal,
> -			     GFX_MODE_GEN7,
> +			     RING_MODE_GEN7(RENDER_RING_BASE),
>  			     GFX_TLB_INVALIDATE_EXPLICIT | GFX_REPLAY_MODE);
>  
>  		/* WaDisable_RenderCache_OperationalFlush:ivb,vlv,hsw */
> diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.c b/drivers/gpu/drm/i915/gvt/mmio_context.c
> index f776c470914d..abc81cdc9e5d 100644
> --- a/drivers/gpu/drm/i915/gvt/mmio_context.c
> +++ b/drivers/gpu/drm/i915/gvt/mmio_context.c
> @@ -44,7 +44,7 @@
>  
>  /* Raw offset is appened to each line for convenience. */
>  static struct engine_mmio gen8_engine_mmio_list[] __cacheline_aligned = {
> -	{RCS0, GFX_MODE_GEN7, 0xffff, false}, /* 0x229c */
> +	{RCS0, RING_MODE_GEN7(RENDER_RING_BASE), 0xffff, false}, /* 0x229c */
>  	{RCS0, GEN9_CTX_PREEMPT_REG, 0x0, false}, /* 0x2248 */
>  	{RCS0, HWSTAM, 0x0, false}, /* 0x2098 */
>  	{RCS0, INSTPM, 0xffff, true}, /* 0x20c0 */
> @@ -76,7 +76,7 @@ static struct engine_mmio gen8_engine_mmio_list[] __cacheline_aligned = {
>  };
>  
>  static struct engine_mmio gen9_engine_mmio_list[] __cacheline_aligned = {
> -	{RCS0, GFX_MODE_GEN7, 0xffff, false}, /* 0x229c */
> +	{RCS0, RING_MODE_GEN7(RENDER_RING_BASE), 0xffff, false}, /* 0x229c */
>  	{RCS0, GEN9_CTX_PREEMPT_REG, 0x0, false}, /* 0x2248 */
>  	{RCS0, HWSTAM, 0x0, false}, /* 0x2098 */
>  	{RCS0, INSTPM, 0xffff, true}, /* 0x20c0 */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index b227a1e58f9b..7f0168ba55f2 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2918,7 +2918,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  	 GEN9_STATE_ACK_TDL1 | GEN9_STATE_ACK_TDL0)
>  
>  #define GFX_MODE	_MMIO(0x2520)
> -#define GFX_MODE_GEN7	_MMIO(0x229c)
>  #define RING_MODE_GEN7(base)	_MMIO((base) + 0x29c)
>  #define   GFX_RUN_LIST_ENABLE		(1 << 15)
>  #define   GFX_INTERRUPT_STEERING	(1 << 14)

-- 
Jani Nikula, Intel Open Source Graphics Center
