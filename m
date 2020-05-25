Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E176D1E0FE4
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 15:53:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CAAA89E3B;
	Mon, 25 May 2020 13:53:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BDB489E3B
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2020 13:53:42 +0000 (UTC)
IronPort-SDR: SXzFeqJkZOr7Xw6HVICN2vi7zHo3Ob2ZNmFsMZyor7SNk08pIQuOoYIDT7WcnAuD86LMUdKEQR
 5ZrBvsd+LOEA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 06:53:41 -0700
IronPort-SDR: WWYxPlYVTekEU+7s9glBBrNklAzxHLpwjlz+ZL6iMOR6YBs98+IwuNs7FCbyKm3t1e1JB7fppU
 ZsgxmvZYnB+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,433,1583222400"; d="scan'208";a="413516993"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 25 May 2020 06:53:40 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 97C0D5C2C45; Mon, 25 May 2020 16:51:18 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200525075347.582-2-chris@chris-wilson.co.uk>
References: <20200525075347.582-1-chris@chris-wilson.co.uk>
 <20200525075347.582-2-chris@chris-wilson.co.uk>
Date: Mon, 25 May 2020 16:51:18 +0300
Message-ID: <87imgkt961.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/12] drm/i915/gt: Cancel the flush worker
 more thoroughly
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

> Since the worker may rearm, we currently are only guaranteed to flush
> the work if we cancel the timer. If the work was running at the time we
> try and cancel it, we will wait for it to complete, but it may leave
> items in the pool and requeue the work. If we rearrange the immediate
> discard of the pool then cancel the work, we know that the work cannot
> rearm and so our flush will be final.
>
> <0> [314.146044] i915_mod-1321    2.... 299799443us : intel_gt_fini_buffer_pool: intel_gt_fini_buffer_pool:227 GEM_BUG_ON(!list_empty(&pool->cache_list[n]))
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
> index 1495054a4305..418ae184cecf 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
> @@ -212,8 +212,9 @@ void intel_gt_flush_buffer_pool(struct intel_gt *gt)
>  {
>  	struct intel_gt_buffer_pool *pool = &gt->buffer_pool;
>  
> -	if (cancel_delayed_work_sync(&pool->work))
> +	do {
>  		pool_free_imm(pool);
> +	} while (cancel_delayed_work_sync(&pool->work));

Yeah changing of order makes sense. If you want
a guarantee that the finit goes as you expect, you
could add two cancel_delayed_work_sync and assert
that the final one return false.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>  }
>  
>  void intel_gt_fini_buffer_pool(struct intel_gt *gt)
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
