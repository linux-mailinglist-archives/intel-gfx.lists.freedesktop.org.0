Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1491F7A2F
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 16:56:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B63B96E057;
	Fri, 12 Jun 2020 14:56:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 534646E057
 for <Intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 14:56:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21477258-1500050 for multiple; Fri, 12 Jun 2020 15:55:56 +0100
MIME-Version: 1.0
In-Reply-To: <20200612144451.9081-1-tvrtko.ursulin@linux.intel.com>
References: <20200612144451.9081-1-tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159197375511.30615.9988513440576782142@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 12 Jun 2020 15:55:55 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Move test flush to
 outside vm->mutex
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

Quoting Tvrtko Ursulin (2020-06-12 15:44:51)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> As per our locking rules it is not allowed to wait on requests while
> holding locks. In this case we were trying to idle the GPU while holding
> the vm->mutex.

Synchronous eviction would like to have a word.

> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/selftests/i915_gem_evict.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
> index 028baae9631f..67f4497c8224 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
> @@ -498,8 +498,6 @@ static int igt_evict_contexts(void *arg)
>  
>         mutex_lock(&ggtt->vm.mutex);
>  out_locked:
> -       if (igt_flush_test(i915))
> -               err = -EIO;
>         while (reserved) {
>                 struct reserved *next = reserved->next;
>  
> @@ -513,6 +511,9 @@ static int igt_evict_contexts(void *arg)
>         mutex_unlock(&ggtt->vm.mutex);
>         intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>  
> +       if (igt_flush_test(i915))
> +               err = -EIO;

The patch is ok, since the manual drm_mm_node reservations are not used
by the GTT, but the reason is a bit specious.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
