Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B52A9DB811
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 13:57:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6DDF10E44B;
	Thu, 28 Nov 2024 12:57:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OuCy7DTD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE3DF10E44B
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2024 12:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732798673; x=1764334673;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Rc1jniLwfDacdCCZS/qWEci6UT8XbtcHIyW5IGT8lmM=;
 b=OuCy7DTDXMfZa0uJOQW5F64wteb5DGlu/kt/midyPjgS2qMk3VzJygqL
 QnnOzjTC1UsW47F35JgLOIEPKOr2gZL+9tsP7tXicxZZ+IhPQOsvPctXv
 NEwvamfZ+Ce2fuGygbXvuK8M6q7PrvXP+1orRVXUyVZiIjr/YPIxqgwgj
 iS6Uge9XDkhygdBYmBoaht/OUsunbkMJ+f5IWKOvfot7WzI7VADA3j0S7
 8N/8chGF3xBiMGn3ZDuqeup3DQVUMWb/MQ2CFA5mUq799NvWMBlvUEJQv
 eHREAwAX7Gj5ng3UW/2yCdbfzTzh8oWJ0x9LzkFLMqD5S1ZVIbli8/LHS g==;
X-CSE-ConnectionGUID: BuJRrDTSRiq5K8ePWiJdZg==
X-CSE-MsgGUID: /eJ8hytDQ161OuENORfF3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="33172538"
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="33172538"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 04:57:53 -0800
X-CSE-ConnectionGUID: u6zZre43SXWAwv94m3NSOQ==
X-CSE-MsgGUID: WYpuNAiySNqjAJFwusxHkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="92037931"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 04:57:48 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Eugene Kobyak <eugene.kobyak@intel.com>, intel-gfx@lists.freedesktop.org
Cc: John.C.Harrison@intel.com, andi.shyti@linux.intel.com
Subject: Re: [PATCH v3] drm/i915: Fixed NULL pointer dereference in
 capture_engine
In-Reply-To: <etwgucaj4hu7buvrvzgxkhxjtl526qd6fdyfmxzsdacphrg667@nrd35hese3t5>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <etwgucaj4hu7buvrvzgxkhxjtl526qd6fdyfmxzsdacphrg667@nrd35hese3t5>
Date: Thu, 28 Nov 2024 14:57:46 +0200
Message-ID: <874j3r8qid.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 25 Nov 2024, Eugene Kobyak <eugene.kobyak@intel.com> wrote:
> When the intel_context structure contains NULL,
> it raises a NULL pointer dereference error in drm_info().
>
> Fixes: e8a3319c31a1 ("drm/i915: Allow error capture without a request")
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12309
>

Superfluous newline in the middle of commit trailers.

Please use the imperative mood in the subject, i.e. s/Fixed/Fix/.

BR,
Jani.

> Signed-off-by: Eugene Kobyak <eugene.kobyak@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_gpu_error.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 135ded17334e..1c614c74c2cf 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1643,9 +1643,16 @@ capture_engine(struct intel_engine_cs *engine,
>  		return NULL;
>  
>  	intel_engine_get_hung_entity(engine, &ce, &rq);
> -	if (rq && !i915_request_started(rq))
> -		drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",
> -			 engine->name, rq->fence.context, rq->fence.seqno, ce->guc_id.id);
> +	if (rq && !i915_request_started(rq)) {
> +		char guc_id[9];
> +		if (ce)
> +			scnprintf(guc_id, sizeof(guc_id), "[0x%04X]", ce->guc_id.id);
> +		else
> +			scnprintf(guc_id, sizeof(guc_id), " ");
> +
> +		drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld%s not yet started\n",
> +			 engine->name, rq->fence.context, rq->fence.seqno, guc_id);
> +	}
>  
>  	if (rq) {
>  		capture = intel_engine_coredump_add_request(ee, rq, ATOMIC_MAYFAIL);

-- 
Jani Nikula, Intel
