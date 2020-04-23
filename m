Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 255531B5E16
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 16:43:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BCE56E84D;
	Thu, 23 Apr 2020 14:42:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C9236E84D
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 14:42:56 +0000 (UTC)
IronPort-SDR: dCBMFo2Aj+cBlPD0v0Ekc56uPaKePMjXlHs9YaUTzi7VkKFYLXQ9gz0fy5cfYpr70xq3QNz0Jq
 IstYFAJGOACw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 07:42:55 -0700
IronPort-SDR: 8ZYmxwnqm6T6m7x5zWCjphz2LX7pWhxqpAiYR5cS84XOWADx2zL8nnEamjOHZtVe+aiN04hTVj
 RCphVJ1Iyo+w==
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="430344748"
Received: from dytagah-mobl.amr.corp.intel.com (HELO [10.252.51.48])
 ([10.252.51.48])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 07:42:54 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200423085940.28168-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <36568a32-3411-f502-b3e2-e79c722d278c@linux.intel.com>
Date: Thu, 23 Apr 2020 15:42:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200423085940.28168-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [CI 1/2] drm/i915/gt: Check carefully for an idle
 engine in wait-for-idle
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 23/04/2020 09:59, Chris Wilson wrote:
> intel_gt_wait_for_idle() tries to wait until all the outstanding requests
> are retired and the GPU is idle. As a side effect of retiring requests,
> we may submit more work to flush any pm barriers, and so the
> wait-for-idle tries to flush the background pm work and catch the new
> requests. However, if the work completed in the background before we
> were able to flush, it would queue the extra barrier request without us
> noticing -- and so we would return from wait-for-idle with one request
> remaining. (This breaks e.g. record_default_state where we need to wait
> until that barrier is retired, and it may slow suspend down by causing
> us to wait on the background retirement worker as opposed to immediately
> retiring the barrier.)
> 
> However, since we track if there has been a submission since the engine
> pm barrier, we can very quickly detect if the idle barrier is still
> outstanding.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1763
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt_requests.c | 15 ++++++++++++---
>   1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> index dec96a731a77..16ff47c83bd5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> @@ -26,6 +26,11 @@ static bool retire_requests(struct intel_timeline *tl)
>   	return !i915_active_fence_isset(&tl->last_request);
>   }
>   
> +static bool engine_active(const struct intel_engine_cs *engine)
> +{
> +	return !list_empty(&engine->kernel_context->timeline->requests);
> +}
> +
>   static bool flush_submission(struct intel_gt *gt)
>   {
>   	struct intel_engine_cs *engine;
> @@ -37,8 +42,13 @@ static bool flush_submission(struct intel_gt *gt)
>   
>   	for_each_engine(engine, gt, id) {
>   		intel_engine_flush_submission(engine);
> -		active |= flush_work(&engine->retire_work);
> -		active |= flush_delayed_work(&engine->wakeref.work);
> +
> +		/* Flush the background retirement and idle barriers */
> +		flush_work(&engine->retire_work);
> +		flush_delayed_work(&engine->wakeref.work);
> +
> +		/* Is the idle barrier still outstanding? */
> +		active |= engine_active(engine);
>   	}
>   
>   	return active;
> @@ -173,7 +183,6 @@ out_active:	spin_lock(&timelines->lock);
>   		if (atomic_dec_and_test(&tl->active_count))
>   			list_del(&tl->link);
>   
> -
>   		/* Defer the final release to after the spinlock */
>   		if (refcount_dec_and_test(&tl->kref.refcount)) {
>   			GEM_BUG_ON(atomic_read(&tl->active_count));
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
