Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAAFB9E28AB
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 18:07:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77F1810EAC6;
	Tue,  3 Dec 2024 17:07:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QiGwQbgD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 943C610E250
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2024 17:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733245621; x=1764781621;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=WiNQkakVt0nPiJ2a9FPmOJnkhOs9w5dcj1QqqN6s0iQ=;
 b=QiGwQbgDMqQNyaLEVxV7vR+qDb3/g8I1gSVJ3Bv7yBA/cKka5Ksry+nI
 fDYnBlkb+tLj4Hg7Z27kQMXgRg8fxt6gzUTE9keBJrB0H8tVWRMJ4DvCb
 7bLQ7nqydMjBffUc/8QUotFw8GvJ6my1vNG6qE3F1rAYQojOuVRUQWRSS
 BTYDcD5OWptuF10l0baWBvnCwRtLawgi3gKKSJWbse0v5Ym0eeJ3dWvaz
 8Jxg1dUGFcYt9Dg/XWAylykYnIFUpHDQpfpnPOo8GT2RQqEMefr2eXpo+
 wj8z4PBtbWiVqn9Zz2ZfEfeNfqP8TyLK161PRxlhMjsTAKu8pVK28dKBS A==;
X-CSE-ConnectionGUID: Djaktm/SQ0W3GvxKNb/eug==
X-CSE-MsgGUID: a+2nXRljQDmNMG64HW0TXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="55960320"
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="55960320"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 09:07:01 -0800
X-CSE-ConnectionGUID: LijuRzHvT4Cu52IziDbQJw==
X-CSE-MsgGUID: qK8fCYKYRia3UF5NL84cYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="93905804"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa007.jf.intel.com with ESMTP; 03 Dec 2024 09:06:59 -0800
Received: from [10.245.120.199] (mwajdecz-MOBL.ger.corp.intel.com
 [10.245.120.199])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id DD7452FC5B;
 Tue,  3 Dec 2024 17:06:57 +0000 (GMT)
Message-ID: <053cc89a-0b20-4fb0-b93c-1e864a6b6f6a@intel.com>
Date: Tue, 3 Dec 2024 18:06:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6] drm/i915: Fix NULL pointer dereference in
 capture_engine
To: Eugene Kobyak <eugene.kobyak@intel.com>, intel-gfx@lists.freedesktop.org
Cc: John.C.Harrison@intel.com, andi.shyti@linux.intel.com,
 jani.nikula@linux.intel.com, stable@vger.kernel.org
References: <xmsgfynkhycw3cf56akp4he2ffg44vuratocsysaowbsnhutzi@augnqbm777at>
Content-Language: en-US
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <xmsgfynkhycw3cf56akp4he2ffg44vuratocsysaowbsnhutzi@augnqbm777at>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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



On 03.12.2024 15:54, Eugene Kobyak wrote:
> When the intel_context structure contains NULL,
> it raises a NULL pointer dereference error in drm_info().
> 
> Fixes: e8a3319c31a1 ("drm/i915: Allow error capture without a request")
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12309
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: <stable@vger.kernel.org> # v6.3+
> Signed-off-by: Eugene Kobyak <eugene.kobyak@intel.com>
> ---
> v2:
>   - return drm_info to separate condition
> v3:
>   - create separate condition which generate string if intel_context exist
> v4:
>   - rollback and add check intel_context in log condition
> v5:
>   - create separate string with guc_id if intel_context exist
> v6:
>   - print changed log if intel_context exist
> 
>  drivers/gpu/drm/i915/i915_gpu_error.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 135ded17334e..d88cefb889c3 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1643,9 +1643,21 @@ capture_engine(struct intel_engine_cs *engine,
>  		return NULL;
>  
>  	intel_engine_get_hung_entity(engine, &ce, &rq);
> -	if (rq && !i915_request_started(rq))
> -		drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",
> -			 engine->name, rq->fence.context, rq->fence.seqno, ce->guc_id.id);
> +	if (rq && !i915_request_started(rq)) {
> +		/*
> +		* We want to know also what is the gcu_id of the context,

typo: guc_id

> +		* but if we don't have the context reference, then skip
> +		* printing it.
> +		*/

but IMO this comment is redundant as it's quite obvious that without
context pointer you can't print guc_id member

> +		if (ce)
> +			drm_info(&engine->gt->i915->drm,
> +				"Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",
> +				engine->name, rq->fence.context, rq->fence.seqno, ce->guc_id.id);
> +		else
> +			drm_info(&engine->gt->i915->drm,
> +				"Got hung context on %s with active request %lld:%lld not yet started\n",
> +				engine->name, rq->fence.context, rq->fence.seqno);

since you are touching drm_info() where we use engine->gt then maybe
it's good time to switch to gt_info() to get better per-GT message?

> +	}
>  
>  	if (rq) {
>  		capture = intel_engine_coredump_add_request(ee, rq, ATOMIC_MAYFAIL);

