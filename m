Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C581890C9F
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 22:42:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 795BE112403;
	Thu, 28 Mar 2024 21:42:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GYaEfC9f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E4C8112403
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 21:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711662126; x=1743198126;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=GdM8iyCBCEtEbwA3wYQm5zBPRkbjPU+2Od2i1k7Ea10=;
 b=GYaEfC9fLry7kJvMPx0HeMoP/NgGzzjW+7NGnlLxApgW741+ls5GeDHZ
 cEjYYJ955VJBdSnNHe0DVPf8zdXsyGWtcQV8w+MDkM3f1x2Zyxptw6xT8
 b59VzIrfB1PR5oS8y5+hYa292P2TellMCSD9/O6Xw517nImdLeQ7JvVPo
 EmCL6QiTOCmDbnfmUlh9lEdDd4X6r1FPiOYi2Rm149DVZHsHbjiSQaTVW
 Tu6UnSS+0XvoNQSp/ZsufT0xWnMzvhV7WEdXix7wbJYHcuvJAQUMPmgJY
 FlDMjCDkMeP5wxw9uaDvwx0W7rQQGU3iFq9a/zdONCG7JhKTQr/x9LUtt g==;
X-CSE-ConnectionGUID: 9kJWGnJCSXGftrruMRl0xA==
X-CSE-MsgGUID: 5EL0Hji0RUea30NwHmW3SQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6680043"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6680043"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 14:42:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="21454527"
Received: from unknown (HELO intel.com) ([10.247.118.221])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 14:42:02 -0700
Date: Thu, 28 Mar 2024 22:41:55 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, kernel test robot <lkp@intel.com>,
 Dan Carpenter <dan.carpenter@linaro.org>,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 John Harrison <John.C.Harrison@intel.com>
Subject: Re: [PATCH] drm/i915/guc: Remove bogus null check
Message-ID: <ZgXkI8tw91z_2RYL@ashyti-mobl2.lan>
References: <20240328213107.90632-1-rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240328213107.90632-1-rodrigo.vivi@intel.com>
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

Hi Rodrigo,

On Thu, Mar 28, 2024 at 05:31:07PM -0400, Rodrigo Vivi wrote:
> This null check is bogus because we are already using 'ce' stuff
> in many places before this function is called.
> 
> Having this here is useless and confuses static analyzer tools
> that can see:
> 
> struct intel_engine_cs *engine = ce->engine;
> 
> before this check, in the same function.
> 
> Fixes: cec82816d0d0 ("drm/i915/guc: Use context hints for GT frequency")

there is no need to have the Fixes tag here.

> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Closes: https://lore.kernel.org/r/202403101225.7AheJhZJ-lkp@intel.com/
> Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 01d0ec1b30f2..24a82616f844 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -2677,7 +2677,7 @@ static int guc_context_policy_init_v70(struct intel_context *ce, bool loop)
>  	execution_quantum = engine->props.timeslice_duration_ms * 1000;
>  	preemption_timeout = engine->props.preempt_timeout_ms * 1000;
>  
> -	if (ce && (ce->flags & BIT(CONTEXT_LOW_LATENCY)))
> +	if (ce->flags & BIT(CONTEXT_LOW_LATENCY))

We could keep the check but make it earlier.

Thanks,
Andi

>  		slpc_ctx_freq_req |= SLPC_CTX_FREQ_REQ_IS_COMPUTE;
>  
>  	__guc_context_policy_start_klv(&policy, ce->guc_id.id);
> -- 
> 2.44.0
