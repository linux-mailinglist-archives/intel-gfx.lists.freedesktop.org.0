Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 824DA1C5E10
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 18:57:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2FF16E267;
	Tue,  5 May 2020 16:57:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C46E6E267
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 16:57:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21122187-1500050 for multiple; Tue, 05 May 2020 17:57:04 +0100
MIME-Version: 1.0
In-Reply-To: <20200505161302.21726-1-chris@chris-wilson.co.uk>
References: <20200505161302.21726-1-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Message-ID: <158869782002.927.13657529708240066064@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 05 May 2020 17:57:00 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Propagate fence->error across
 semaphores
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

Quoting Chris Wilson (2020-05-05 17:13:02)
> Replacing an inter-engine fence with a semaphore reduced the HW
> execution latency, but that comes at a cost. For normal fences, we are
> able to propagate the metadata such as errors along with the signaling.
> For semaphores, we are missing this error propagation so add it in the
> back channel we use to monitor the semaphore overload.
> 
> This raises a valid point on whether error propagation is sufficient in
> the semaphore case if it is coupled to a fatal error, such as EFAULT. It
> is not, and we should teach ourselves not to use a semaphore if we would
> chain up to an external fence whose error we must not ignore.
> 
> Fixes: ef4688497512 ("drm/i915: Propagate fence errors")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_request.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 9c5de07db47d..96a8c7a1be73 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -614,6 +614,9 @@ semaphore_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
>  
>         switch (state) {
>         case FENCE_COMPLETE:
> +               if (unlikely(fence->error))
> +                       i915_request_set_error_once(rq, fence->error);

This is just horrible. I don't like it even as a hack.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
