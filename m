Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC6E1F7A75
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 17:12:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E177A6E98B;
	Fri, 12 Jun 2020 15:12:22 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC1B16E98B
 for <Intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 15:12:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21477520-1500050 for multiple; Fri, 12 Jun 2020 16:11:56 +0100
MIME-Version: 1.0
In-Reply-To: <01688915-2e53-5fc2-54df-b8a1411fcc99@linux.intel.com>
References: <20200612144451.9081-1-tvrtko.ursulin@linux.intel.com>
 <159197375511.30615.9988513440576782142@build.alporthouse.com>
 <01688915-2e53-5fc2-54df-b8a1411fcc99@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159197471578.30615.16927267874017676385@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 12 Jun 2020 16:11:55 +0100
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

Quoting Tvrtko Ursulin (2020-06-12 16:04:15)
> 
> On 12/06/2020 15:55, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-06-12 15:44:51)
> >> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >>
> >> As per our locking rules it is not allowed to wait on requests while
> >> holding locks. In this case we were trying to idle the GPU while holding
> >> the vm->mutex.
> > 
> > Synchronous eviction would like to have a word.
> > 
> >> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/selftests/i915_gem_evict.c | 5 +++--
> >>   1 file changed, 3 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
> >> index 028baae9631f..67f4497c8224 100644
> >> --- a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
> >> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
> >> @@ -498,8 +498,6 @@ static int igt_evict_contexts(void *arg)
> >>   
> >>          mutex_lock(&ggtt->vm.mutex);
> >>   out_locked:
> >> -       if (igt_flush_test(i915))
> >> -               err = -EIO;
> >>          while (reserved) {
> >>                  struct reserved *next = reserved->next;
> >>   
> >> @@ -513,6 +511,9 @@ static int igt_evict_contexts(void *arg)
> >>          mutex_unlock(&ggtt->vm.mutex);
> >>          intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> >>   
> >> +       if (igt_flush_test(i915))
> >> +               err = -EIO;
> > 
> > The patch is ok, since the manual drm_mm_node reservations are not used
> > by the GTT, but the reason is a bit specious.
> 
> We have a comment in i915_request_wait which says:
> 
>         /*
>          * We must never wait on the GPU while holding a lock as we
>          * may need to perform a GPU reset. So while we don't need to
>          * serialise wait/reset with an explicit lock, we do want
>          * lockdep to detect potential dependency cycles.
>          */

That's for a lock used by reset.

> And then there was a lockdep splat here 
> https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_6595/fi-skl-6700k2/igt@i915_selftest@live@evict.html, 
> which although uses some extra lockdep annotation patches, seemed to 
> connect the two:
> 
> <4> [258.014638] Chain exists of:
>    &gt->reset.mutex --> fs_reclaim --> &vm->mutex
> <4> [258.014640]  Possible unsafe locking scenario:
> <4> [258.014641]        CPU0                    CPU1
> <4> [258.014641]        ----                    ----
> <4> [258.014642]   lock(&vm->mutex);
> <4> [258.014642]                                lock(fs_reclaim);
> <4> [258.014643]                                lock(&vm->mutex);
> <4> [258.014644]   lock(&gt->reset.mutex);
> <4> [258.014645]
>   *** DEADLOCK ***
> <4> [258.014646] 2 locks held by i915_selftest/5153:

is false.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
