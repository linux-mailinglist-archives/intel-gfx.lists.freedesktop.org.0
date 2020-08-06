Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B7E23D9AB
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Aug 2020 13:09:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3300089A4B;
	Thu,  6 Aug 2020 11:09:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D7D089A4B
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Aug 2020 11:09:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22049134-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 06 Aug 2020 12:09:02 +0100
MIME-Version: 1.0
In-Reply-To: <20200806105954.7766-1-chris@chris-wilson.co.uk>
References: <20200806105954.7766-1-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 06 Aug 2020 12:09:00 +0100
Message-ID: <159671214055.25811.7745491625586595870@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [CI] drm/i915/gem: Reduce context termination list
 iteration guard to RCU
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

Quoting Chris Wilson (2020-08-06 11:59:54)
> As we now protect the timeline list using RCU, we can drop the
> timeline->mutex for guarding the list iteration during context close, as
> we are searching for an inflight request. Any new request will see the
> context is banned and not be submitted. In doing so, pull the checks for
> a concurrent submission of the request (notably the
> i915_request_completed()) under the engine spinlock, to fully serialise
> with __i915_request_submit()). That is in the case of preempt-to-busy
> where the request may be completed during the __i915_request_submit(),
> we need to be careful that we sample the request status after
> serialising so that we don't miss the request the engine is actually
> submitting.
> 
> Fixes: 4a3174152147 ("drm/i915/gem: Refine occupancy test in kill_context()")
> References: d22d2d073ef8 ("drm/i915: Protect i915_request_await_start from early waits") # rcu protection of timeline->requests
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/1622
Also
References: https://gitlab.freedesktop.org/drm/intel/-/issues/2158
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
