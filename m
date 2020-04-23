Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC311B54FA
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 08:55:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CC716E176;
	Thu, 23 Apr 2020 06:55:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2071A6E176
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 06:55:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20991499-1500050 for multiple; Thu, 23 Apr 2020 07:38:32 +0100
MIME-Version: 1.0
In-Reply-To: <20200423062905.7615-1-chris@chris-wilson.co.uk>
References: <20200423062905.7615-1-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Message-ID: <158762391076.5423.18242362972558187330@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 23 Apr 2020 07:38:30 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Check carefully for an idle
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-04-23 07:29:05)
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
>  drivers/gpu/drm/i915/gt/intel_gt_requests.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> index dec96a731a77..1781f176886a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> @@ -26,6 +26,11 @@ static bool retire_requests(struct intel_timeline *tl)
>         return !i915_active_fence_isset(&tl->last_request);
>  }
>  
> +static bool engine_active(const struct intel_engine_cs *engine)
> +{
> +       return READ_ONCE(engine->wakeref_serial) != READ_ONCE(engine->serial);

This will be false when we have submitted but not yet retired. I was
better with checking the timeline.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
