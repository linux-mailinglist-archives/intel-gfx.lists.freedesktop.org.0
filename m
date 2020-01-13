Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3E1139312
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 15:05:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B22B89E7C;
	Mon, 13 Jan 2020 14:05:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58C3289E7C
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 14:05:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19862287-1500050 for multiple; Mon, 13 Jan 2020 14:05:23 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200113140407.1856468-1-chris@chris-wilson.co.uk>
References: <20200113140407.1856468-1-chris@chris-wilson.co.uk>
Message-ID: <157892432115.27314.1909500564236150161@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 13 Jan 2020 14:05:21 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Preemptive timeline retirement
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

Quoting Chris Wilson (2020-01-13 14:04:07)
> Currently, we only retire the oldest request on the timeline before
> allocating the next, but only if there is a spare request. However,
> since we rearranged the locking, e.g.  commit df9f85d8582e ("drm/i915:
> Serialise i915_active_fence_set() with itself"), we no longer benefit
> from keeping the active chain intact underneath the struct_mutex. As
> such, retire all completed requests in the client's timeline before
> creating the next, trying to keep our memory and resource usage tight
> and ideally only penalising the heavy users.
> 
> References: df9f85d8582e ("drm/i915: Serialise i915_active_fence_set() with itself")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_request.c | 44 ++++-------------------------
>  1 file changed, 5 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 9ed0d3bc7249..5743edb50688 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -558,21 +558,12 @@ request_alloc_slow(struct intel_timeline *tl, gfp_t gfp)
>  {
>         struct i915_request *rq;
>  
> -       if (list_empty(&tl->requests))
> -               goto out;
> +       if (gfpflags_allow_blocking(gfp))

I am an idiot.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
