Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 868EE139337
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 15:12:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1FD26E0B9;
	Mon, 13 Jan 2020 14:12:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB46A89EA3
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 14:12:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19862374-1500050 for multiple; Mon, 13 Jan 2020 14:12:12 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200113140715.1868017-1-chris@chris-wilson.co.uk>
References: <20200113140407.1856468-1-chris@chris-wilson.co.uk>
 <20200113140715.1868017-1-chris@chris-wilson.co.uk>
Message-ID: <157892472988.27314.12207020919416356123@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 13 Jan 2020 14:12:09 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: More proactive timeline
 retirement before new requests
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

Quoting Chris Wilson (2020-01-13 14:07:15)
> @@ -1344,28 +1330,6 @@ void i915_request_add(struct i915_request *rq)
>         __i915_request_queue(rq, &attr);
>         local_bh_enable(); /* Kick the execlists tasklet if just scheduled */
>  
> -       /*
> -        * In typical scenarios, we do not expect the previous request on
> -        * the timeline to be still tracked by timeline->last_request if it
> -        * has been completed. If the completed request is still here, that
> -        * implies that request retirement is a long way behind submission,
> -        * suggesting that we haven't been retiring frequently enough from
> -        * the combination of retire-before-alloc, waiters and the background
> -        * retirement worker. So if the last request on this timeline was
> -        * already completed, do a catch up pass, flushing the retirement queue
> -        * up to this client. Since we have now moved the heaviest operations
> -        * during retirement onto secondary workers, such as freeing objects
> -        * or contexts, retiring a bunch of requests is mostly list management
> -        * (and cache misses), and so we should not be overly penalizing this
> -        * client by performing excess work, though we may still performing
> -        * work on behalf of others -- but instead we should benefit from
> -        * improved resource management. (Well, that's the theory at least.)
> -        */
> -       if (prev &&
> -           i915_request_completed(prev) &&
> -           rcu_access_pointer(prev->timeline) == tl)
> -               i915_request_retire_upto(prev);

Hmm, the argument in favour of retiring after submitting the request is still
reasonable, i.e. try not to add latency before the next request.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
