Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB614177846
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 15:07:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F30AE89D86;
	Tue,  3 Mar 2020 14:07:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEDA489D86
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 14:07:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 06:07:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="228919234"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga007.jf.intel.com with ESMTP; 03 Mar 2020 06:07:52 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id A07955C1D7C; Tue,  3 Mar 2020 16:06:36 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200303140009.1494819-1-chris@chris-wilson.co.uk>
References: <20200303140009.1494819-1-chris@chris-wilson.co.uk>
Date: Tue, 03 Mar 2020 16:06:36 +0200
Message-ID: <87v9nl5y8j.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Drop the timeline->mutex as we
 wait for retirement
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> As we have pinned the timeline (using tl->active_count), we can safely
> drop the tl->mutex as we wait for what we believe to be the final
> request on that timeline. This is useful for ensuring that we do not
> block the engine heartbeat by hogging the kernel_context's timeline on a
> dead GPU.
>
> References: https://gitlab.freedesktop.org/drm/intel/issues/1364
> Fixes: 058179e72e09 ("drm/i915/gt: Replace hangcheck by heartbeats")
> Fixes: f33a8a51602c ("drm/i915: Merge wait_for_timelines with retire_request")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_requests.c | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> index 8a5054f21bf8..24c99d0838af 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> @@ -147,24 +147,32 @@ long intel_gt_retire_requests_timeout(struct intel_gt *gt, long timeout)
>  
>  			fence = i915_active_fence_get(&tl->last_request);
>  			if (fence) {
> +				mutex_unlock(&tl->mutex);
> +
>  				timeout = dma_fence_wait_timeout(fence,
>  								 interruptible,
>  								 timeout);
>  				dma_fence_put(fence);
> +
> +				/* Retirement is best effort */
> +				if (!mutex_trylock(&tl->mutex)) {
> +					active_count++;
> +					goto out_active;
> +				}
>  			}
>  		}
>  
>  		if (!retire_requests(tl) || flush_submission(gt))
>  			active_count++;
> +		mutex_unlock(&tl->mutex);
>  
> -		spin_lock(&timelines->lock);
> +out_active:	spin_lock(&timelines->lock);
>  
> -		/* Resume iteration after dropping lock */
> +		/* Resume list iteration after reacquiring spinlock */

Now it is in mint.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>  		list_safe_reset_next(tl, tn, link);
>  		if (atomic_dec_and_test(&tl->active_count))
>  			list_del(&tl->link);
>  
> -		mutex_unlock(&tl->mutex);
>  
>  		/* Defer the final release to after the spinlock */
>  		if (refcount_dec_and_test(&tl->kref.refcount)) {
> -- 
> 2.25.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
