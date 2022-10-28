Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C441B610E12
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 12:06:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0F2210E7DF;
	Fri, 28 Oct 2022 10:06:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 591CA10E7DF
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 10:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666951565; x=1698487565;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=B9WQM0A42/18Ul8iui5EcNyi8rbckgqp6sTpXJ5v84o=;
 b=HtO63uMOML9Ez/njjndwptdt6OyT8FRmBNn9YKALkenO/VN8a6haBiFh
 0xqKWlJGjsC6MljE6PCWK559B9XO/uRhYzMNnWBmwN5wwd+6hXeQRz82D
 Kd3NdS5T78OF/hTrUrYaaEklvSN4pVbnZDF2tC5iepyn2PfcDvccu54zI
 IBX9a2bnQ3nQbLYlTiodF1kIsuJ4v4kQxgA/73fbpTyfIEL27s9ij3h3p
 TMUmJ8xWdu7WUAvISG5FwlDfEWp1RT66PgvWp56lq5XS/qJZMIiGC4B0A
 vKcSEvMe6ct+6smEu8GvFP6bD++CgjsV0fLhDT05r6LEuOd0hD6zlOOS6 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="370524562"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="370524562"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 03:06:04 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="627478915"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="627478915"
Received: from nalinset-mobl1.ger.corp.intel.com (HELO [10.213.204.34])
 ([10.213.204.34])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 03:06:02 -0700
Message-ID: <02761556-5760-de2d-0368-96938e3179e6@linux.intel.com>
Date: Fri, 28 Oct 2022 11:06:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221028093425.968648-1-andrzej.hajda@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221028093425.968648-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/guc: add CAT error handler
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi,

I can't really provide feedback on the GuC interactions so only some 
superficial comments below.

On 28/10/2022 10:34, Andrzej Hajda wrote:
> Bad GPU memory accesses can result in catastrophic error notifications
> being send from the GPU to the KMD via the GuC. Add a handler to process
> the notification by printing a kernel message and dumping the related
> engine state (if appropriate).
> Since the same CAT error can be reported twice, log only 1st one and
> assume error for the same context reported in less than 100ms after the
> 1st one is duplicated.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>   .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  1 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  2 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  3 ++
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 47 +++++++++++++++++++
>   4 files changed, 53 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> index f359bef046e0b2..f9a1c5642855e3 100644
> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> @@ -138,6 +138,7 @@ enum intel_guc_action {
>   	INTEL_GUC_ACTION_REGISTER_CONTEXT_MULTI_LRC = 0x4601,
>   	INTEL_GUC_ACTION_CLIENT_SOFT_RESET = 0x5507,
>   	INTEL_GUC_ACTION_SET_ENG_UTIL_BUFF = 0x550A,
> +	INTEL_GUC_ACTION_NOTIFY_MEMORY_CAT_ERROR = 0x6000,
>   	INTEL_GUC_ACTION_STATE_CAPTURE_NOTIFICATION = 0x8002,
>   	INTEL_GUC_ACTION_NOTIFY_FLUSH_LOG_BUFFER_TO_FILE = 0x8003,
>   	INTEL_GUC_ACTION_NOTIFY_CRASH_DUMP_POSTED = 0x8004,
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 804133df1ac9b4..61b412732d095a 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -445,6 +445,8 @@ int intel_guc_engine_failure_process_msg(struct intel_guc *guc,
>   					 const u32 *msg, u32 len);
>   int intel_guc_error_capture_process_msg(struct intel_guc *guc,
>   					const u32 *msg, u32 len);
> +int intel_guc_cat_error_process_msg(struct intel_guc *guc,
> +				    const u32 *msg, u32 len);
>   
>   struct intel_engine_cs *
>   intel_guc_lookup_engine(struct intel_guc *guc, u8 guc_class, u8 instance);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index 2b22065e87bf9a..f55f724e264407 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -1035,6 +1035,9 @@ static int ct_process_request(struct intel_guc_ct *ct, struct ct_incoming_msg *r
>   		CT_ERROR(ct, "Received GuC exception notification!\n");
>   		ret = 0;
>   		break;
> +	case INTEL_GUC_ACTION_NOTIFY_MEMORY_CAT_ERROR:
> +		ret = intel_guc_cat_error_process_msg(guc, payload, len);
> +		break;
>   	default:
>   		ret = -EOPNOTSUPP;
>   		break;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 693b07a977893d..f68ae4a0ad864d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -4659,6 +4659,53 @@ int intel_guc_engine_failure_process_msg(struct intel_guc *guc,
>   	return 0;
>   }
>   
> +int intel_guc_cat_error_process_msg(struct intel_guc *guc,
> +				    const u32 *msg, u32 len)
> +{
> +	static struct {
> +		u32 ctx_id;
> +		unsigned long after;
> +	} ratelimit;
> +	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
> +	struct drm_printer p = drm_info_printer(i915->drm.dev);
> +	struct intel_context *ce;
> +	unsigned long flags;
> +	u32 ctx_id;
> +
> +	if (unlikely(len != 1)) {
> +		drm_dbg(&i915->drm, "Invalid length %u\n", len);
> +		return -EPROTO;
> +	}
> +	ctx_id = msg[0];
> +
> +	if (ctx_id == ratelimit.ctx_id && time_is_after_jiffies(ratelimit.after))
> +		return 0;

This will be suboptimal with multi-gpu and multi-tile. Not sure if 
ratelimiting is needed, but if it is, then perhaps move the state into 
struct intel_guc?

Would it be worth counting the rate limited ones and then log how many 
were not logged when the next one is logged?

Should the condition be inverted - !time_is_after?

> +
> +	ratelimit.ctx_id = ctx_id;
> +	ratelimit.after = jiffies + msecs_to_jiffies(100);
> +
> +	if (unlikely(ctx_id == -1)) {
> +		drm_err(&i915->drm,
> +			"GPU reported catastrophic error without providing valid context\n");
> +		return 0;
> +	}
> +
> +	xa_lock_irqsave(&guc->context_lookup, flags);

The only caller seems to be a worker so just _irq I guess. 
ct_process_incoming_requests has the same issue but I haven't looked 
into other handlers called from ct_process_request.

> +	ce = g2h_context_lookup(guc, ctx_id);
> +	if (ce)
> +		intel_context_get(ce);
> +	xa_unlock_irqrestore(&guc->context_lookup, flags);
> +	if (unlikely(!ce))
> +		return -EPROTO;

EPROTO seems incorrect - message could have just been delayed and 
context deregistered I think. Probably you just need to still log the 
error just say context couldn't be resolved. GuC experts to confirm or deny.

> +
> +	drm_err(&i915->drm, "GPU reported catastrophic error associated with context %u on %s\n",
> +		ctx_id, ce->engine->name);
> +	intel_engine_dump(ce->engine, &p, "%s\n", ce->engine->name);

Same as above, when CT channel is congested this can be delayed and then 
I wonder what's the point of dumping engine state. In fact, even when CT 
is not congested the delay could be significant enough for it to be 
pointless. Another question for GuC experts I guess.

Also, check if intel_engine_dump can handle ce->engine being a virtual 
engine.

Regards,

Tvrtko

> +	intel_context_put(ce);
> +
> +	return 0;
> +}
> +
>   void intel_guc_find_hung_context(struct intel_engine_cs *engine)
>   {
>   	struct intel_guc *guc = &engine->gt->uc.guc;
