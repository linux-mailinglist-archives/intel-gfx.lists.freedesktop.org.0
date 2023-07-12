Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A105750AC0
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 16:24:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5FB010E549;
	Wed, 12 Jul 2023 14:24:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D795010E549
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jul 2023 14:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689171876; x=1720707876;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=1VqxBdSsan8PU+2vBLsOmzI3F/89Fq18Nz6rxwifyRw=;
 b=HsVRPAX5kMx6zprMGilivEa0ZqGH1scfTaciQV+ojeSqsHdO0700g3vp
 FnnkbegFPRatIYHF2I7oDWn6YaKlaXI+uYPH1R6JJaPaibYUHd/v51d9Q
 M+7/OkykKvnkTBzp+gxSlvZkoyjblhzvvWVzDJve0dMZccHJ+3IDon4+f
 4l8KCUWcWHBfke/XRhsw8qsJdcTJ6E4EsLSgXzMueNkf0m4Fl6PCzKxKn
 pn7gFA6/pB7JKrzN6gUJ0TI9p5ZNTMqi/XYos/Oyj2hvrIEzGKzWKIMZy
 2uOFou4fIp5l6R939iFNFrdhrfVhpJeE0XWM/iwFcFqu36mUDp8MYYjeh Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="345213980"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="345213980"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 07:24:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="671881707"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="671881707"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.49.252])
 ([10.252.49.252])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 07:24:34 -0700
Message-ID: <0fd1ecad-c8ae-0dde-6d97-12a66cc7936b@linux.intel.com>
Date: Wed, 12 Jul 2023 16:24:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>
References: <20230627094327.134775-1-andi.shyti@linux.intel.com>
 <20230627094327.134775-4-andi.shyti@linux.intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20230627094327.134775-4-andi.shyti@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915/gt: Poll aux invalidation
 register bit on invalidation
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 6/27/2023 11:43 AM, Andi Shyti wrote:
> From: Jonathan Cavitt <jonathan.cavitt@intel.com>
>
> For platforms that use Aux CCS, wait for aux invalidation to
> complete by checking the aux invalidation register bit is
> cleared.
>
> Fixes: 972282c4cf24 ("drm/i915/gen12: Add aux table invalidate for all engines")
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v5.8+
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/gen8_engine_cs.c     | 17 +++++++++++++----
>   drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  1 +
>   2 files changed, 14 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index e10e1ad0e841f..83cddd9cb8b56 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -174,6 +174,16 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv
>   	*cs++ = AUX_INV;
>   	*cs++ = MI_NOOP;
>   
> +	*cs++ = MI_SEMAPHORE_WAIT_TOKEN |
> +		MI_SEMAPHORE_REGISTER_POLL |
> +		MI_SEMAPHORE_POLL |
> +		MI_SEMAPHORE_SAD_EQ_SDD;
> +	*cs++ = 0;
> +	*cs++ = i915_mmio_reg_offset(inv_reg) + gsi_offset;
> +	*cs++ = 0;
> +	*cs++ = 0;
> +	*cs++ = MI_NOOP;
> +
>   	return cs;
>   }
>   
> @@ -274,10 +284,9 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>   		else if (engine->class == COMPUTE_CLASS)
>   			flags &= ~PIPE_CONTROL_3D_ENGINE_FLAGS;
>   
> +		count = 8;
>   		if (!HAS_FLAT_CCS(rq->engine->i915))
> -			count = 8 + 4;
> -		else
> -			count = 8;
> +			count += 10;
>   
>   		cs = intel_ring_begin(rq, count);
>   		if (IS_ERR(cs))
> @@ -320,7 +329,7 @@ int gen12_emit_flush_xcs(struct i915_request *rq, u32 mode)
>   			aux_inv = rq->engine->mask &
>   				~GENMASK(_BCS(I915_MAX_BCS - 1), BCS0);
>   			if (aux_inv)
> -				cmd += 4;
> +				cmd += 10;
>   		}
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> index 5d143e2a8db03..02125a1db2796 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> @@ -121,6 +121,7 @@
>   #define   MI_SEMAPHORE_TARGET(engine)	((engine)<<15)
>   #define MI_SEMAPHORE_WAIT	MI_INSTR(0x1c, 2) /* GEN8+ */
>   #define MI_SEMAPHORE_WAIT_TOKEN	MI_INSTR(0x1c, 3) /* GEN12+ */
> +#define   MI_SEMAPHORE_REGISTER_POLL	(1 << 16)
>   #define   MI_SEMAPHORE_POLL		(1 << 15)
>   #define   MI_SEMAPHORE_SAD_GT_SDD	(0 << 12)
>   #define   MI_SEMAPHORE_SAD_GTE_SDD	(1 << 12)
