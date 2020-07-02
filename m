Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA272123B8
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 14:54:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F053F6EAD7;
	Thu,  2 Jul 2020 12:54:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAF5E6E22D
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 12:54:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21689467-1500050 for multiple; Thu, 02 Jul 2020 13:54:31 +0100
MIME-Version: 1.0
In-Reply-To: <159369402005.22925.1411057997531169659@build.alporthouse.com>
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
 <20200702083225.20044-4-chris@chris-wilson.co.uk>
 <d5431a01-602b-4a99-97cc-60de9a09f3c6@linux.intel.com>
 <159369402005.22925.1411057997531169659@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 02 Jul 2020 13:54:33 +0100
Message-ID: <159369447339.22925.4301703067498552205@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 04/23] drm/i915/gem: Only revoke mmap
 handlers if active
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

Quoting Chris Wilson (2020-07-02 13:47:00)
> Quoting Tvrtko Ursulin (2020-07-02 13:35:41)
> > 
> > On 02/07/2020 09:32, Chris Wilson wrote:
> > > Avoid waking up the device and taking stale locks if we know that the
> > > object is not currently mmapped. This is particularly useful as not many
> > > object are actually mmapped and so we can destroy them without waking
> > > the device up, and gives us a little more freedom of workqueue ordering
> > > during shutdown.
> > > 
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > ---
> > >   drivers/gpu/drm/i915/gem/i915_gem_mman.c | 7 +++++--
> > >   1 file changed, 5 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > > index fe27c5b344e3..522ca4f51b53 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > > @@ -516,8 +516,11 @@ void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj)
> > >    */
> > >   void i915_gem_object_release_mmap(struct drm_i915_gem_object *obj)
> > >   {
> > > -     i915_gem_object_release_mmap_gtt(obj);
> > > -     i915_gem_object_release_mmap_offset(obj);
> > > +     if (obj->userfault_count)
> > > +             i915_gem_object_release_mmap_gtt(obj);
> > > +
> > > +     if (!RB_EMPTY_ROOT(&obj->mmo.offsets))
> > > +             i915_gem_object_release_mmap_offset(obj);
> > >   }
> > >   
> > >   static struct i915_mmap_offset *
> > > 
> > 
> > Both conditions will need explaining why they are not racy.
> 
> It's an identical race even if you do take the mutex.
> 
> Thread A                Thread B
> release_mmap            create_mmap_offset
>   mutex_lock/unlock     ...
>                         mutex_lock/unlock
> 
> Thread A will only operate on a snapshot of the current state with or
> without the mutex; if Thread B is concurrently adding new mmaps, that
> may occur before after Thread A makes decision the object is clean.
> Thread A can only assess the state at that moment in time, and only
> cares enough to ensure that from its pov, it has cleared the old
> mmaps.
> 
> During free, we know there can be no concurrency (refcnt==0) and so the
> snapshot is true.

Beyond the free usecase, the serialisation of the individual releases is
coordinated by owning the backing storage operation i.e. we release
when revoking the vma under the vma->vm->mutex, and the pages under
currently the obj->mm.lock; to create a new fault mapping, the handlers
will have taken a reference to either the vma or backing store and thus
have serialised with the release. i915_gem_object_release_mmap() should
be only used on the free path, since it's usual for us to have to do
both. Now what are we doing in set-tiling? The tiling only affects ggtt
mmapings...
-Chris
> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
