Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 087FB189F00
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 16:07:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC6836E2A0;
	Wed, 18 Mar 2020 15:07:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D33456E2A0
 for <Intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 15:07:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20604553-1500050 for multiple; Wed, 18 Mar 2020 15:07:45 +0000
MIME-Version: 1.0
In-Reply-To: <158454288525.6873.7636528424864486716@build.alporthouse.com>
References: <20200318121138.909-1-tvrtko.ursulin@linux.intel.com>
 <20200318121138.909-6-tvrtko.ursulin@linux.intel.com>
 <158453975088.6873.9360235878777457602@build.alporthouse.com>
 <3565cd32-5dd8-0d45-ee55-fb4fb51aa7bd@linux.intel.com>
 <158454197252.6873.7587021909076621666@build.alporthouse.com>
 <b1cf4682-4374-1ec6-589e-8d1e0b0acd93@linux.intel.com>
 <158454288525.6873.7636528424864486716@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <158454406359.6873.6088737267600805582@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 18 Mar 2020 15:07:43 +0000
Subject: Re: [Intel-gfx] [PATCH 05/10] drm/i915: Track runtime spent in
 unreachable intel_contexts
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

Quoting Chris Wilson (2020-03-18 14:48:05)
> We do have a notification here for the context_retire we could listen to
> instead of listening to the request idling. If we use
> 
>         i915_sw_fence_await_active(&engines->fence,
>                                    &ce->active,
>                                    I915_ACTIVE_AWAIT_ALL);
> 
> instead, then the fence will not fire until the final barrier has
> executed.
> 
> Tada!

It's close. It's still strictly firing on the pulse request signaling,
which is currently not guaranteed to be after after the context_out.
Although we can arrange that with a sentinel.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
