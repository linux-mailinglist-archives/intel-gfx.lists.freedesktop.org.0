Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C0A3A44AA
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 17:09:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E2066EEA5;
	Fri, 11 Jun 2021 15:09:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E1F96EEA5
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 15:09:03 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id y7so6439938wrh.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 08:09:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=EY672yMhYAeanm3ZM3Zig55aOEiaHRdhDD9daSHIeN8=;
 b=XIhgexOvsZXV8svcwFaDzSctxWk0TuFmznIezO2Z6lg4y6tBGUozO7CKtabajeTfF6
 XnnokRoUJ7uvyEr7oIvdkiP7J3xGBnS1fPzlayk12+ciJZs9HERfgnp4fdSiv6wzGw55
 +ejLXruxqQwh6AyGzPprBBqlbIQ/oVLirnwo8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=EY672yMhYAeanm3ZM3Zig55aOEiaHRdhDD9daSHIeN8=;
 b=GQqcE4+KoNWrAEtZA7nbPsGzWWscjW9FCva3T3G7hjOBVayhxt7DL369M+pDeo/dyO
 mcbMT9lUtPnKbMBu2qLXRG5W2OLLxzwdIoAd/2rBVRBaQtGUbVHK8P13GDnggnoZigXQ
 ZBXDZmpHmaDWQ/GVD37hasU3zvjN8dKVEHVnAPHLesir1YxNIvUXMcHCRCGt/2GYt5ON
 URyb8yoKWWNDjQ+YCAaItiU+ri0GrNPTH8IVaADr8RWtyKjtOUmar0yZNTlaxqlCkMCC
 xoxOTZuCm8+tEj+wsQU6ZS8+yAKlu+Cw+cHmq9+2W+k3pzlGUzg3wZaFtt0umSzP8ysv
 pi0Q==
X-Gm-Message-State: AOAM533mCqv+cG7O2M6iDvQXE86gwtXx5PMQYtpwCdCEfdBMi+A6VmOP
 A1aGEsYFe31ZJGjvedI31HGkvQ==
X-Google-Smtp-Source: ABdhPJyuEAwwQLsuFChuy3uog0Y0WD1JUJYRWTHEZSjv688YfDvGCiVEAwkMyMKrlXJcfexOaCeIWA==
X-Received: by 2002:adf:a193:: with SMTP id u19mr4725900wru.9.1623424141650;
 Fri, 11 Jun 2021 08:09:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v7sm7371613wru.66.2021.06.11.08.09.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Jun 2021 08:09:00 -0700 (PDT)
Date: Fri, 11 Jun 2021 17:08:58 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YMN8ilDBYlzESUD4@phenom.ffwll.local>
References: <f9be43e3-4107-3742-a11b-8021b2c19e32@amd.com>
 <CAKMK7uFMEdFjUSphcyxuKMW8HfLOWQAE2iw-Fei+SRTDwUbRdQ@mail.gmail.com>
 <CAOFGe95BhZ7jXLxarL=2_zNYDydEoPJWnDWAG3aaeEJsDzR5dA@mail.gmail.com>
 <CAOFGe96KrBfvBKxcUNwths5Sigk7fk7ycLeYbgxutL3msEgfyA@mail.gmail.com>
 <CAKMK7uGqGLKFp7Obp-5xW3fPuoRmBa_0OawN-4Q-niDi147tXQ@mail.gmail.com>
 <4dc8314b-4366-2d92-4cca-1497a7c73721@amd.com>
 <CAKMK7uHhL3kepoaznCvAsx8H20sBjWQZgsnWY+zm63KgfCA4CQ@mail.gmail.com>
 <b475e546-02d5-bacf-8764-233efd784ba0@amd.com>
 <YMMt2BE7GaUt+b7v@phenom.ffwll.local>
 <3e5ddb11-6df0-1aab-19e5-811dbbca79f6@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3e5ddb11-6df0-1aab-19e5-811dbbca79f6@amd.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 0/5] dma-fence,
 i915: Stop allowing SLAB_TYPESAFE_BY_RCU for dma_fence
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
Cc: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 11, 2021 at 12:03:31PM +0200, Christian K=F6nig wrote:
> Am 11.06.21 um 11:33 schrieb Daniel Vetter:
> > On Fri, Jun 11, 2021 at 09:42:07AM +0200, Christian K=F6nig wrote:
> > > Am 11.06.21 um 09:20 schrieb Daniel Vetter:
> > > > On Fri, Jun 11, 2021 at 8:55 AM Christian K=F6nig
> > > > <christian.koenig@amd.com> wrote:
> > > > > Am 10.06.21 um 22:42 schrieb Daniel Vetter:
> > > > > > On Thu, Jun 10, 2021 at 10:10 PM Jason Ekstrand <jason@jlekstra=
nd.net> wrote:
> > > > > > > On Thu, Jun 10, 2021 at 8:35 AM Jason Ekstrand <jason@jlekstr=
and.net> wrote:
> > > > > > > > On Thu, Jun 10, 2021 at 6:30 AM Daniel Vetter <daniel.vette=
r@ffwll.ch> wrote:
> > > > > > > > > On Thu, Jun 10, 2021 at 11:39 AM Christian K=F6nig
> > > > > > > > > <christian.koenig@amd.com> wrote:
> > > > > > > > > > Am 10.06.21 um 11:29 schrieb Tvrtko Ursulin:
> > > > > > > > > > > On 09/06/2021 22:29, Jason Ekstrand wrote:
> > > > > > > > > > > > We've tried to keep it somewhat contained by doing =
most of the hard work
> > > > > > > > > > > > to prevent access of recycled objects via dma_fence=
_get_rcu_safe().
> > > > > > > > > > > > However, a quick grep of kernel sources says that, =
of the 30 instances
> > > > > > > > > > > > of dma_fence_get_rcu*, only 11 of them use dma_fenc=
e_get_rcu_safe().
> > > > > > > > > > > > It's likely there bear traps in DRM and related sub=
systems just waiting
> > > > > > > > > > > > for someone to accidentally step in them.
> > > > > > > > > > > ...because dma_fence_get_rcu_safe apears to be about =
whether the
> > > > > > > > > > > *pointer* to the fence itself is rcu protected, not a=
bout the fence
> > > > > > > > > > > object itself.
> > > > > > > > > > Yes, exactly that.
> > > > > > > > The fact that both of you think this either means that I've=
 completely
> > > > > > > > missed what's going on with RCUs here (possible but, in thi=
s case, I
> > > > > > > > think unlikely) or RCUs on dma fences should scare us all.
> > > > > > > Taking a step back for a second and ignoring SLAB_TYPESAFE_BY=
_RCU as
> > > > > > > such,  I'd like to ask a slightly different question:  What a=
re the
> > > > > > > rules about what is allowed to be done under the RCU read loc=
k and
> > > > > > > what guarantees does a driver need to provide?
> > > > > > > =

> > > > > > > I think so far that we've all agreed on the following:
> > > > > > > =

> > > > > > >     1. Freeing an unsignaled fence is ok as long as it doesn'=
t have any
> > > > > > > pending callbacks.  (Callbacks should hold a reference anyway=
).
> > > > > > > =

> > > > > > >     2. The pointer race solved by dma_fence_get_rcu_safe is r=
eal and
> > > > > > > requires the loop to sort out.
> > > > > > > =

> > > > > > > But let's say I have a dma_fence pointer that I got from, say=
, calling
> > > > > > > dma_resv_excl_fence() under rcu_read_lock().  What am I allow=
ed to do
> > > > > > > with it under the RCU lock?  What assumptions can I make?  Is=
 this
> > > > > > > code, for instance, ok?
> > > > > > > =

> > > > > > > rcu_read_lock();
> > > > > > > fence =3D dma_resv_excl_fence(obj);
> > > > > > > idle =3D !fence || test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fen=
ce->flags);
> > > > > > > rcu_read_unlock();
> > > > > > > =

> > > > > > > This code very much looks correct under the following assumpt=
ions:
> > > > > > > =

> > > > > > >     1. A valid fence pointer stays alive under the RCU read l=
ock
> > > > > > >     2. SIGNALED_BIT is set-once (it's never unset after being=
 set).
> > > > > > > =

> > > > > > > However, if it were, we wouldn't have dma_resv_test_singnaled=
(), now
> > > > > > > would we? :-)
> > > > > > > =

> > > > > > > The moment you introduce ANY dma_fence recycling that recycle=
s a
> > > > > > > dma_fence within a single RCU grace period, all your assumpti=
ons break
> > > > > > > down.  SLAB_TYPESAFE_BY_RCU is just one way that i915 does th=
is.  We
> > > > > > > also have a little i915_request recycler to try and help with=
 memory
> > > > > > > pressure scenarios in certain critical sections that also doe=
sn't
> > > > > > > respect RCU grace periods.  And, as mentioned multiple times,=
 our
> > > > > > > recycling leaks into every other driver because, thanks to i9=
15's
> > > > > > > choice, the above 4-line code snippet isn't valid ANYWHERE in=
 the
> > > > > > > kernel.
> > > > > > > =

> > > > > > > So the question I'm raising isn't so much about the rules tod=
ay.
> > > > > > > Today, we live in the wild wild west where everything is YOLO=
.  But
> > > > > > > where do we want to go?  Do we like this wild west world?  So=
 we want
> > > > > > > more consistency under the RCU read lock?  If so, what do we =
want the
> > > > > > > rules to be?
> > > > > > > =

> > > > > > > One option would be to accept the wild-west world we live in =
and say
> > > > > > > "The RCU read lock gains you nothing.  If you want to touch t=
he guts
> > > > > > > of a dma_fence, take a reference".  But, at that point, we're=
 eating
> > > > > > > two atomics for every time someone wants to look at a dma_fen=
ce.  Do
> > > > > > > we want that?
> > > > > > > =

> > > > > > > Alternatively, and this what I think Daniel and I were trying=
 to
> > > > > > > propose here, is that we place some constraints on dma_fence
> > > > > > > recycling.  Specifically that, under the RCU read lock, the f=
ence
> > > > > > > doesn't suddenly become a new fence.  All of the immutability=
 and
> > > > > > > once-mutability guarantees of various bits of dma_fence hold =
as long
> > > > > > > as you have the RCU read lock.
> > > > > > Yeah this is suboptimal. Too many potential bugs, not enough be=
nefits.
> > > > > > =

> > > > > > This entire __rcu business started so that there would be a loc=
kless
> > > > > > way to get at fences, or at least the exclusive one. That did n=
ot
> > > > > > really pan out. I think we have a few options:
> > > > > > =

> > > > > > - drop the idea of rcu/lockless dma-fence access outright. A qu=
ick
> > > > > > sequence of grabbing the lock, acquiring the dma_fence and then
> > > > > > dropping your lock again is probably plenty good. There's a lot=
 of
> > > > > > call_rcu and other stuff we could probably delete. I have no id=
ea what
> > > > > > the perf impact across all the drivers would be.
> > > > > The question is maybe not the perf impact, but rather if that is
> > > > > possible over all.
> > > > > =

> > > > > IIRC we now have some cases in TTM where RCU is mandatory and we =
simply
> > > > > don't have any other choice than using it.
> > > > Adding Thomas Hellstrom.
> > > > =

> > > > Where is that stuff? If we end up with all the dma_resv locking
> > > > complexity just for an oddball, then I think that would be rather b=
ig
> > > > bummer.
> > > This is during buffer destruction. See the call to dma_resv_copy_fenc=
es().
> > Ok yeah that's tricky.
> > =

> > The way solved this in i915 is with a trylock and punting to a worker
> > queue if the trylock fails. And the worker queue would also be flushed
> > from the shrinker (once we get there at least).
> =

> That's what we already had done here as well, but the worker is exactly w=
hat
> we wanted to avoid by this.
> =

> > So this looks fixable.
> =

> I'm not sure of that. We had really good reasons to remove the worker.

I've looked around, and I didn't see any huge changes around the
delayed_delete work. There's lots of changes on how the lru is handled to
optimize that.

And even today we still have the delayed deletion thing.

So essentially what I had in mind is instead of just ttm_bo_cleanup_refs
you first check whether the resv is individualized already, and if not do
that first.

This means there's a slight delay when a bo is deleted between when the
refcount drops, and when we actually individualize the fences.

What was the commit that removed another worker here?
-Daniel


> =

> > =

> > > But that is basically just using a dma_resv function which accesses t=
he
> > > object without taking a lock.
> > The other one I've found is the ghost object, but that one is locked
> > fully.
> > =

> > > > > > - try to make all drivers follow some stricter rules. The troub=
le is
> > > > > > that at least with radeon dma_fence callbacks aren't even very
> > > > > > reliable (that's why it has its own dma_fence_wait implementati=
on), so
> > > > > > things are wobbly anyway.
> > > > > > =

> > > > > > - live with the current situation, but radically delete all uns=
afe
> > > > > > interfaces. I.e. nothing is allowed to directly deref an rcu fe=
nce
> > > > > > pointer, everything goes through dma_fence_get_rcu_safe. The
> > > > > > kref_get_unless_zero would become an internal implementation de=
tail.
> > > > > > Our "fast" and "lockless" dma_resv fence access stays a pile of
> > > > > > seqlock, retry loop and an a conditional atomic inc + atomic de=
c. The
> > > > > > only thing that's slightly faster would be dma_resv_test_signal=
ed()
> > > > > > =

> > > > > > - I guess minimally we should rename dma_fence_get_rcu to
> > > > > > dma_fence_tryget. It has nothing to do with rcu really, and the=
 use is
> > > > > > very, very limited.
> > > > > I think what we should do is to use RCU internally in the dma_resv
> > > > > object but disallow drivers/frameworks to mess with that directly.
> > > > > =

> > > > > In other words drivers should use one of the following:
> > > > > 1. dma_resv_wait_timeout()
> > > > > 2. dma_resv_test_signaled()
> > > > > 3. dma_resv_copy_fences()
> > > > > 4. dma_resv_get_fences()
> > > > > 5. dma_resv_for_each_fence() <- to be implemented
> > > > > 6. dma_resv_for_each_fence_unlocked() <- to be implemented
> > > > > =

> > > > > Inside those functions we then make sure that we only save ways of
> > > > > accessing the RCU protected data structures.
> > > > > =

> > > > > This way we only need to make sure that those accessor functions =
are
> > > > > sane and don't need to audit every driver individually.
> > > > Yeah better encapsulation for dma_resv sounds like a good thing, le=
ast
> > > > for all the other issues we've been discussing recently. I guess yo=
ur
> > > > list is also missing the various "add/replace some more fences"
> > > > functions, but we have them already.
> > > > =

> > > > > I can tackle implementing for the dma_res_for_each_fence()/_unloc=
ked().
> > > > > Already got a large bunch of that coded out anyway.
> > > > When/where do we need ot iterate over fences unlocked? Given how mu=
ch
> > > > pain it is to get a consistent snapshot of the fences or fence state
> > > > (I've read  the dma-buf poll implementation, and it looks a bit bug=
gy
> > > > in that regard, but not sure, just as an example) and unlocked
> > > > iterator sounds very dangerous to me.
> > > This is to make implementation of the other functions easier. Current=
ly they
> > > basically each roll their own loop implementation which at least for
> > > dma_resv_test_signaled() looks a bit questionable to me.
> > > =

> > > Additionally to those we we have one more case in i915 and the unlock=
ed
> > > polling implementation which I agree is a bit questionable as well.
> > Yeah, the more I look at any of these lockless loop things the more I'm
> > worried. 90% sure the one in dma_buf_poll is broken too.
> > =

> > > My idea is to have the problematic logic in the iterator and only giv=
e back
> > > fence which have a reference and are 100% sure the right one.
> > > =

> > > Probably best if I show some code around to explain what I mean.
> > My gut feeling is that we should just try and convert them all over to
> > taking the dma_resv_lock. And if there is really a contention issue with
> > that, then either try to shrink it, or make it an rwlock or similar. But
> > just the more I read a lot of the implementations the more I see bugs a=
nd
> > have questions.
> =

> How about we abstract all that funny rcu dance inside the iterator instea=
d?
> =

> I mean when we just have one walker function which is well documented and
> understood then the rest becomes relatively easy.
> =

> Christian.
> =

> > Maybe at the end a few will be left over, and then we can look at these
> > individually in detail. Like the ttm_bo_individualize_resv situation.
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
