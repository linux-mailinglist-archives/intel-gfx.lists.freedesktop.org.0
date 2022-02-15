Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4A84B6FF8
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 16:54:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B65210E45F;
	Tue, 15 Feb 2022 15:54:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABB0D10E45F
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 15:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644940489; x=1676476489;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=nH81K0V8HlftU2mGOQEWe6dlnIllBZ5OzAHAxV4M/DU=;
 b=nA7vLMK0poEvFrPivKZMIlVYJOjMj9AKtW7TSfJj0T1i6kjDiRmFsW3X
 6vJg/VO/GPQ/UU4eA/Fvpt0AVv2OR1WUarFnKmVMgm7ELGXv0Sy9dmGi3
 qH1L4o9BdC048bZVGy/wMuq0vc5JfqOyBVVsHNqRhoULOblZi3hb386oJ
 2OA7zGJiJbXJuy5/WZGimhS24jzCrjmUZqzOMUGL+9S36l2c8CRra6X+L
 HfWiA9mBcOfetqALxdLylc/Fp5fHAMhG2a8xDecr/hAdwZY3oSYOL35/j
 vR/r0HH2aA0ZbQdzn7XVcUnKT0d4xb1COFxst+58smNxCCnYT2p34isYv Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="250323094"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="250323094"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 07:54:49 -0800
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="624869193"
Received: from jkoratik-mobl2.amr.corp.intel.com (HELO [10.212.80.80])
 ([10.212.80.80])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 07:54:48 -0800
Message-ID: <de1a91cf-9366-2c93-9159-3e31313db53a@linux.intel.com>
Date: Tue, 15 Feb 2022 15:54:46 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220214173810.2108975-1-jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220214173810.2108975-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/lrc: move lrc_get_runtime() to
 intel_lrc.c
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


On 14/02/2022 17:38, Jani Nikula wrote:
> Move the static inline next to the only caller.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

> ---
>   drivers/gpu/drm/i915/gt/intel_context_sseu.c |  1 +
>   drivers/gpu/drm/i915/gt/intel_lrc.c          | 11 +++++++++++
>   drivers/gpu/drm/i915/gt/intel_lrc.h          | 11 -----------
>   drivers/gpu/drm/i915/i915_perf.c             |  1 +
>   4 files changed, 13 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_sseu.c b/drivers/gpu/drm/i915/gt/intel_context_sseu.c
> index e86d8255feec..ece16c2b5b8e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_sseu.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context_sseu.c
> @@ -9,6 +9,7 @@
>   #include "intel_engine_pm.h"
>   #include "intel_gpu_commands.h"
>   #include "intel_lrc.h"
> +#include "intel_lrc_reg.h"
>   #include "intel_ring.h"
>   #include "intel_sseu.h"
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 8189bc8a16ec..5b107b698b65 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1720,6 +1720,17 @@ static void st_update_runtime_underflow(struct intel_context *ce, s32 dt)
>   #endif
>   }
>   
> +static u32 lrc_get_runtime(const struct intel_context *ce)
> +{
> +	/*
> +	 * We can use either ppHWSP[16] which is recorded before the context
> +	 * switch (and so excludes the cost of context switches) or use the
> +	 * value from the context image itself, which is saved/restored earlier
> +	 * and so includes the cost of the save.
> +	 */
> +	return READ_ONCE(ce->lrc_reg_state[CTX_TIMESTAMP]);
> +}
> +
>   void lrc_update_runtime(struct intel_context *ce)
>   {
>   	u32 old;
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h b/drivers/gpu/drm/i915/gt/intel_lrc.h
> index 7f697845c4cf..2af85a15a370 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.h
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
> @@ -9,7 +9,6 @@
>   #include <linux/types.h>
>   
>   #include "intel_context.h"
> -#include "intel_lrc_reg.h"
>   
>   struct drm_i915_gem_object;
>   struct intel_engine_cs;
> @@ -68,15 +67,5 @@ void lrc_check_regs(const struct intel_context *ce,
>   		    const char *when);
>   
>   void lrc_update_runtime(struct intel_context *ce);
> -static inline u32 lrc_get_runtime(const struct intel_context *ce)
> -{
> -	/*
> -	 * We can use either ppHWSP[16] which is recorded before the context
> -	 * switch (and so excludes the cost of context switches) or use the
> -	 * value from the context image itself, which is saved/restored earlier
> -	 * and so includes the cost of the save.
> -	 */
> -	return READ_ONCE(ce->lrc_reg_state[CTX_TIMESTAMP]);
> -}
>   
>   #endif /* __INTEL_LRC_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 36f1325baa7d..00fb40029f43 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -206,6 +206,7 @@
>   #include "gt/intel_gt_clock_utils.h"
>   #include "gt/intel_gt_regs.h"
>   #include "gt/intel_lrc.h"
> +#include "gt/intel_lrc_reg.h"
>   #include "gt/intel_ring.h"
>   
>   #include "i915_drv.h"
