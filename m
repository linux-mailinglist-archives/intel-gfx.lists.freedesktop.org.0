Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D76177755
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 14:41:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E88886E8A2;
	Tue,  3 Mar 2020 13:41:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C2A66E8A2
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 13:41:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 05:41:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="286990913"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Mar 2020 05:41:23 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id C26465C1D7C; Tue,  3 Mar 2020 15:40:07 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200303130748.1416073-1-chris@chris-wilson.co.uk>
References: <20200303130748.1416073-1-chris@chris-wilson.co.uk>
Date: Tue, 03 Mar 2020 15:40:07 +0200
Message-ID: <871rq97e14.fsf@gaia.fi.intel.com>
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
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_requests.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> index 8a5054f21bf8..436412d07689 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> @@ -147,24 +147,31 @@ long intel_gt_retire_requests_timeout(struct intel_gt *gt, long timeout)
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
> +				if (!mutex_trylock(&tl->mutex)) {

If you can't take it, it must be active and for the retirement
advancement we can bail out early.

Or is there something else with a sampled try?

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
>  		/* Resume iteration after dropping lock */

You either fixed this comment with this patch.
Or that the comment remains a highly confusing.

>  		list_safe_reset_next(tl, tn, link);
>  		if (atomic_dec_and_test(&tl->active_count))
>  			list_del(&tl->link);

We have the timelines lock and the above seems safe
wtithout the actual mutex.

But the comment is still hauting me.
-Mika

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
