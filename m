Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FED22123A6
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 14:47:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 796276E250;
	Thu,  2 Jul 2020 12:47:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 131D16E250
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 12:47:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21689406-1500050 for multiple; Thu, 02 Jul 2020 13:46:58 +0100
MIME-Version: 1.0
In-Reply-To: <d5431a01-602b-4a99-97cc-60de9a09f3c6@linux.intel.com>
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
 <20200702083225.20044-4-chris@chris-wilson.co.uk>
 <d5431a01-602b-4a99-97cc-60de9a09f3c6@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 02 Jul 2020 13:47:00 +0100
Message-ID: <159369402005.22925.1411057997531169659@build.alporthouse.com>
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

Quoting Tvrtko Ursulin (2020-07-02 13:35:41)
> 
> On 02/07/2020 09:32, Chris Wilson wrote:
> > Avoid waking up the device and taking stale locks if we know that the
> > object is not currently mmapped. This is particularly useful as not many
> > object are actually mmapped and so we can destroy them without waking
> > the device up, and gives us a little more freedom of workqueue ordering
> > during shutdown.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/gem/i915_gem_mman.c | 7 +++++--
> >   1 file changed, 5 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > index fe27c5b344e3..522ca4f51b53 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > @@ -516,8 +516,11 @@ void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj)
> >    */
> >   void i915_gem_object_release_mmap(struct drm_i915_gem_object *obj)
> >   {
> > -     i915_gem_object_release_mmap_gtt(obj);
> > -     i915_gem_object_release_mmap_offset(obj);
> > +     if (obj->userfault_count)
> > +             i915_gem_object_release_mmap_gtt(obj);
> > +
> > +     if (!RB_EMPTY_ROOT(&obj->mmo.offsets))
> > +             i915_gem_object_release_mmap_offset(obj);
> >   }
> >   
> >   static struct i915_mmap_offset *
> > 
> 
> Both conditions will need explaining why they are not racy.

It's an identical race even if you do take the mutex.

Thread A		Thread B
release_mmap		create_mmap_offset
  mutex_lock/unlock	...
  			mutex_lock/unlock

Thread A will only operate on a snapshot of the current state with or
without the mutex; if Thread B is concurrently adding new mmaps, that
may occur before after Thread A makes decision the object is clean.
Thread A can only assess the state at that moment in time, and only
cares enough to ensure that from its pov, it has cleared the old
mmaps.

During free, we know there can be no concurrency (refcnt==0) and so the
snapshot is true.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
