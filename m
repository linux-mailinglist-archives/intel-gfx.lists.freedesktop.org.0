Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E191C8597
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 11:22:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A8E96E962;
	Thu,  7 May 2020 09:22:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA41B6E962
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 09:22:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21136200-1500050 for multiple; Thu, 07 May 2020 10:22:22 +0100
MIME-Version: 1.0
In-Reply-To: <20200507091714.GA244488@mwanda>
References: <20200507091714.GA244488@mwanda>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <158884334054.927.12810366487224692579@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 07 May 2020 10:22:20 +0100
Subject: Re: [Intel-gfx] [bug report] drm/i915: Use the async worker to
 avoid reclaim tainting the ggtt->mutex
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Dan Carpenter (2020-05-07 10:17:14)
> Hello Chris Wilson,
> 
> The patch e3793468b466: "drm/i915: Use the async worker to avoid
> reclaim tainting the ggtt->mutex" from Jan 30, 2020, leads to the
> following static checker warning:
> 
>         drivers/gpu/drm/i915/i915_vma.c:356 i915_vma_wait_for_bind()
>         warn: 's64max' cannot fit into 'bool'
> 
> drivers/gpu/drm/i915/i915_vma.c
>    345  int i915_vma_wait_for_bind(struct i915_vma *vma)
>    346  {
>    347          int err = 0;
>    348  
>    349          if (rcu_access_pointer(vma->active.excl.fence)) {
>    350                  struct dma_fence *fence;
>    351  
>    352                  rcu_read_lock();
>    353                  fence = dma_fence_get_rcu_safe(&vma->active.excl.fence);
>    354                  rcu_read_unlock();
>    355                  if (fence) {
>    356                          err = dma_fence_wait(fence, MAX_SCHEDULE_TIMEOUT);
>                                                             ^^^^^^^^^^^^^^^^^^^^
> The dma_fence_wait() takes a bool, not a timeout value.

Fortuitously becomes the same thing, an indefinite interruptible wait.

Accidentally fixed in a queued patch.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
