Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 949F03A31D1
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 19:12:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CEDE6EDBF;
	Thu, 10 Jun 2021 17:12:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D78E6EDBF
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 17:12:01 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id f2so3135753wri.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 10:12:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=7kduZg97SbS02Ym/C/UZB/KiOxPjWnSmTjfIS2kFScw=;
 b=K4c3l8PqEDgFZbw+CnyWJa2XfFd2VOo9p2/gABYxV5qKfcepRzRyAsgsxbt/C4E49i
 toCa8mF53vfZSOVZ8Y3W1/UYjRO1++lbwZfNY2nImc895IE0Xx1+PL/ujjSkCHKCyrNS
 vgO87HdAUR7rPGesdnWT5Zf088i33vnDuKYEU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=7kduZg97SbS02Ym/C/UZB/KiOxPjWnSmTjfIS2kFScw=;
 b=o9xZA0AgGc7ROk6/hj/27X0RHZA4gVwXfU3X99e5BPReHGpR6QRAa6daY1U9rBNZrJ
 Tq/iooQocrdCepaJXL+LMpPMWfqtldlPGvXNGk5bAALXR+Oa6Zitu1JVsuCRh7e+xTLI
 or3GC2hFVxd7vpn9VjOi2lZsBUy4P97NXOSI66SZEBRBGD3H0qY1mrTnvB7n/KRaZFVG
 YWoTs74N4Jh4M8kEhJxq7d6dex71abK0Cn74FYAn5FIzBRMx7SfycSfwBPFvhqMzZwgU
 c74heKFePsExMfWCb5u0i/GJz4G1+JBRdfBXrhU1kuM0F64VCdhACORlm4odLd5e1fCP
 WOpA==
X-Gm-Message-State: AOAM533sNu5YuUzYET+fvQ8H/L5ruzjmALYsDvKB1OvwuxL5q/llRp3t
 JWW5Q5ZblqtQ1cbm5rAOMulf1A==
X-Google-Smtp-Source: ABdhPJw8MlxuLHHMwM5ymCXRMt0SiPMX2jjq9aqImHWzzi79pngXHh84da6dh8qqctJQ18BtmR6/QA==
X-Received: by 2002:a5d:6dae:: with SMTP id u14mr6854626wrs.148.1623345119694; 
 Thu, 10 Jun 2021 10:11:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n8sm3392328wmi.16.2021.06.10.10.11.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Jun 2021 10:11:59 -0700 (PDT)
Date: Thu, 10 Jun 2021 19:11:57 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YMJH3Xne7LUse5gN@phenom.ffwll.local>
References: <20210609212959.471209-1-jason@jlekstrand.net>
 <20210609212959.471209-6-jason@jlekstrand.net>
 <ea36431d-521a-c1c0-59e5-a196f55c28dd@amd.com>
 <CAOFGe97+JK9-HLsVrXdvm45Qk721utwpHyy8xpqR7uRCpZm5ig@mail.gmail.com>
 <CAKMK7uGsQ3BWomCQtvrSygb-nc19LpAz2RFjsBzw-E_17tq8BA@mail.gmail.com>
 <CAOFGe947JR3tBLb-4istEX2XNU7pp4+sjgpGYGSXLWEuCcR27g@mail.gmail.com>
 <CAKMK7uFQNbOA_ijVRFrudCxNN9iqqkohq=USEG3ipcOGJHNg1g@mail.gmail.com>
 <caca6152-2931-5bce-a193-11fdf42e291e@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <caca6152-2931-5bce-a193-11fdf42e291e@amd.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 5/5] DONOTMERGE: dma-buf: Get rid of
 dma_fence_get_rcu_safe
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel GFX <intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 10, 2021 at 06:54:13PM +0200, Christian K=F6nig wrote:
> Am 10.06.21 um 18:37 schrieb Daniel Vetter:
> > On Thu, Jun 10, 2021 at 6:24 PM Jason Ekstrand <jason@jlekstrand.net> w=
rote:
> > > On Thu, Jun 10, 2021 at 10:13 AM Daniel Vetter <daniel.vetter@ffwll.c=
h> wrote:
> > > > On Thu, Jun 10, 2021 at 3:59 PM Jason Ekstrand <jason@jlekstrand.ne=
t> wrote:
> > > > > On Thu, Jun 10, 2021 at 1:51 AM Christian K=F6nig
> > > > > <christian.koenig@amd.com> wrote:
> > > > > > Am 09.06.21 um 23:29 schrieb Jason Ekstrand:
> > > > > > > This helper existed to handle the weird corner-cases caused b=
y using
> > > > > > > SLAB_TYPESAFE_BY_RCU for backing dma_fence.  Now that no one =
is using
> > > > > > > that anymore (i915 was the only real user), dma_fence_get_rcu=
 is
> > > > > > > sufficient.  The one slightly annoying thing we have to deal =
with here
> > > > > > > is that dma_fence_get_rcu_safe did an rcu_dereference as well=
 as a
> > > > > > > SLAB_TYPESAFE_BY_RCU-safe dma_fence_get_rcu.  This means each=
 call site
> > > > > > > ends up being 3 lines instead of 1.
> > > > > > That's an outright NAK.
> > > > > > =

> > > > > > The loop in dma_fence_get_rcu_safe is necessary because the und=
erlying
> > > > > > fence object can be replaced while taking the reference.
> > > > > Right.  I had missed a bit of that when I first read through it. =
 I
> > > > > see the need for the loop now.  But there are some other tricky b=
its
> > > > > in there besides just the loop.
> > > > I thought that's what the kref_get_unless_zero was for in
> > > > dma_fence_get_rcu? Otherwise I guess I'm not seeing why still have
> > > > dma_fence_get_rcu around, since that should either be a kref_get or
> > > > it's just unsafe to call it ...
> > > AFAICT, dma_fence_get_rcu is unsafe unless you somehow know that it's
> > > your fence and it's never recycled.
> > > =

> > > Where the loop comes in is if you have someone come along, under the
> > > RCU write lock or not, and swap out the pointer and unref it while
> > > you're trying to fetch it.  In this case, if you just write the three
> > > lines I duplicated throughout this patch, you'll end up with NULL if
> > > you (partially) lose the race.  The loop exists to ensure that you get
> > > either the old pointer or the new pointer and you only ever get NULL
> > > if somewhere during the mess, the pointer actually gets set to NULL.
> > It's not that easy. At least not for dma_resv.
> > =

> > The thing is, you can't just go in and replace the write fence with
> > something else. There's supposed to be some ordering here (how much we
> > actually still follow that or not is a bit another question, that I'm
> > trying to answer with an audit of lots of drivers), which means if you
> > replace e.g. the exclusive fence, the previous fence will _not_ just
> > get freed. Because the next exclusive fence needs to wait for that to
> > finish first.
> > =

> > Conceptually the refcount will _only_ go to 0 once all later
> > dependencies have seen it get signalled, and once the fence itself has
> > been signalled.
> =

> I think that's the point where it breaks.
> =

> See IIRC radeon for example doesn't keep unsignaled fences around when
> nobody is interested in them. And I think noveau does it that way as well.
> =

> So for example you can have the following
> 1. Submission to 3D ring, this creates fence A.
> 2. Fence A is put as en exclusive fence in a dma_resv object.
> 3. Submission to 3D ring, this creates fence B.
> 4. Fence B is replacing fence A as the exclusive fence in the dma_resv
> object.
> =

> Fence A is replaced and therefore destroyed while it is not even close to=
 be
> signaled. But the replacement is perfectly ok, since fence B is submitted=
 to
> the same ring.
> =

> When somebody would use dma_fence_get_rcu on the exclusive fence and get
> NULL it would fail to wait for the submissions. You don't really need the
> SLAB_TYPESAFE_BY_RCU for this to blow up in your face.

Uh that's wild ...

I thought that's impossible, but in dma_fence_release() we only complain
if there's both waiters and the fence isn't signalled yet. I had no idea.

> We could change that rule of curse, amdgpu for example is always keeping
> fences around until they are signaled. But IIRC that's how it was for rad=
eon
> like forever.

Yeah I think we could, but then we need to do a few things:
- document that defactor only get_rcu_safe is ok to use
- delete get_rcu, it's not really a safe thing to do anywhere

-Daniel

> =

> Regards,
> Christian.
> =

> >   A signalled fence might as well not exist, so if
> > that's what  happened in that tiny window, then yes a legal scenario
> > is the following:
> > =

> > thread A:
> > - rcu_dereference(resv->exclusive_fence);
> > =

> > thread B:
> > - dma_fence signals, retires, drops refcount to 0
> > - sets the exclusive fence to NULL
> > - creates a new dma_fence
> > - sets the exclusive fence to that new fence
> > =

> > thread A:
> > - kref_get_unless_zero fails, we report that the exclusive fence slot i=
s NULL
> > =

> > Ofc normally we're fully pipeline, and we lazily clear slots, so no
> > one ever writes the fence ptr to NULL. But conceptually it's totally
> > fine, and an indistinguishable sequence of events from the point of
> > view of thread A.
> > =

> > Ergo dma_fence_get_rcu is enough. If it's not, we've screwed up really
> > big time. The only reason you need _unsafe is if you have
> > typesafe_by_rcu, or maybe if you yolo your fence ordering a bit much
> > and break the DAG property in a few cases.
> > =

> > > I agree with Christian that that part of dma_fence_get_rcu_safe needs
> > > to stay.  I was missing that until I did my giant "let's walk through
> > > the code" e-mail.
> > Well if I'm wrong there's a _ton_ of broken code in upstream right
> > now, even in dma-buf/dma-resv.c. We're using dma_fence_get_rcu a lot.
> > =

> > Also the timing is all backwards: get_rcu_safe was added as a fix for
> > when i915 made its dma_fence typesafe_by_rcu. We didn't have any need
> > for this beforehand. So I'm really not quite buying this story here
> > yet you're all trying to sell me on.
> > -Daniel
> > =

> > > --Jason
> > > =

> > > > > > This is completely unrelated to SLAB_TYPESAFE_BY_RCU. See the
> > > > > > dma_fence_chain usage for reference.
> > > > > > =

> > > > > > What you can remove is the sequence number handling in dma-buf.=
 That
> > > > > > should make adding fences quite a bit quicker.
> > > > > I'll look at that and try to understand what's going on there.
> > > > Hm I thought the seqlock was to make sure we have a consistent set =
of
> > > > fences across exclusive and all shared slot. Not to protect against
> > > > the fence disappearing due to typesafe_by_rcu.
> > > > -Daniel
> > > > =

> > > > > --Jason
> > > > > =

> > > > > > Regards,
> > > > > > Christian.
> > > > > > =

> > > > > > > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > > > > > > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > > > > > > Cc: Christian K=F6nig <christian.koenig@amd.com>
> > > > > > > Cc: Matthew Auld <matthew.auld@intel.com>
> > > > > > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > > > > ---
> > > > > > >    drivers/dma-buf/dma-fence-chain.c         |  8 ++--
> > > > > > >    drivers/dma-buf/dma-resv.c                |  4 +-
> > > > > > >    drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c |  4 +-
> > > > > > >    drivers/gpu/drm/i915/i915_active.h        |  4 +-
> > > > > > >    drivers/gpu/drm/i915/i915_vma.c           |  4 +-
> > > > > > >    include/drm/drm_syncobj.h                 |  4 +-
> > > > > > >    include/linux/dma-fence.h                 | 50 -----------=
------------
> > > > > > >    include/linux/dma-resv.h                  |  4 +-
> > > > > > >    8 files changed, 23 insertions(+), 59 deletions(-)
> > > > > > > =

> > > > > > > diff --git a/drivers/dma-buf/dma-fence-chain.c b/drivers/dma-=
buf/dma-fence-chain.c
> > > > > > > index 7d129e68ac701..46dfc7d94d8ed 100644
> > > > > > > --- a/drivers/dma-buf/dma-fence-chain.c
> > > > > > > +++ b/drivers/dma-buf/dma-fence-chain.c
> > > > > > > @@ -15,15 +15,17 @@ static bool dma_fence_chain_enable_signal=
ing(struct dma_fence *fence);
> > > > > > >     * dma_fence_chain_get_prev - use RCU to get a reference t=
o the previous fence
> > > > > > >     * @chain: chain node to get the previous node from
> > > > > > >     *
> > > > > > > - * Use dma_fence_get_rcu_safe to get a reference to the prev=
ious fence of the
> > > > > > > - * chain node.
> > > > > > > + * Use rcu_dereference and dma_fence_get_rcu to get a refere=
nce to the
> > > > > > > + * previous fence of the chain node.
> > > > > > >     */
> > > > > > >    static struct dma_fence *dma_fence_chain_get_prev(struct d=
ma_fence_chain *chain)
> > > > > > >    {
> > > > > > >        struct dma_fence *prev;
> > > > > > > =

> > > > > > >        rcu_read_lock();
> > > > > > > -     prev =3D dma_fence_get_rcu_safe(&chain->prev);
> > > > > > > +     prev =3D rcu_dereference(chain->prev);
> > > > > > > +     if (prev)
> > > > > > > +             prev =3D dma_fence_get_rcu(prev);
> > > > > > >        rcu_read_unlock();
> > > > > > >        return prev;
> > > > > > >    }
> > > > > > > diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma=
-resv.c
> > > > > > > index f26c71747d43a..cfe0db3cca292 100644
> > > > > > > --- a/drivers/dma-buf/dma-resv.c
> > > > > > > +++ b/drivers/dma-buf/dma-resv.c
> > > > > > > @@ -376,7 +376,9 @@ int dma_resv_copy_fences(struct dma_resv =
*dst, struct dma_resv *src)
> > > > > > >                dst_list =3D NULL;
> > > > > > >        }
> > > > > > > =

> > > > > > > -     new =3D dma_fence_get_rcu_safe(&src->fence_excl);
> > > > > > > +     new =3D rcu_dereference(src->fence_excl);
> > > > > > > +     if (new)
> > > > > > > +             new =3D dma_fence_get_rcu(new);
> > > > > > >        rcu_read_unlock();
> > > > > > > =

> > > > > > >        src_list =3D dma_resv_shared_list(dst);
> > > > > > > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c b/driv=
ers/gpu/drm/amd/amdgpu/amdgpu_fence.c
> > > > > > > index 72d9b92b17547..0aeb6117f3893 100644
> > > > > > > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c
> > > > > > > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c
> > > > > > > @@ -161,7 +161,9 @@ int amdgpu_fence_emit(struct amdgpu_ring =
*ring, struct dma_fence **f,
> > > > > > >                struct dma_fence *old;
> > > > > > > =

> > > > > > >                rcu_read_lock();
> > > > > > > -             old =3D dma_fence_get_rcu_safe(ptr);
> > > > > > > +             old =3D rcu_dereference(*ptr);
> > > > > > > +             if (old)
> > > > > > > +                     old =3D dma_fence_get_rcu(old);
> > > > > > >                rcu_read_unlock();
> > > > > > > =

> > > > > > >                if (old) {
> > > > > > > diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu=
/drm/i915/i915_active.h
> > > > > > > index d0feda68b874f..bd89cfc806ca5 100644
> > > > > > > --- a/drivers/gpu/drm/i915/i915_active.h
> > > > > > > +++ b/drivers/gpu/drm/i915/i915_active.h
> > > > > > > @@ -103,7 +103,9 @@ i915_active_fence_get(struct i915_active_=
fence *active)
> > > > > > >        struct dma_fence *fence;
> > > > > > > =

> > > > > > >        rcu_read_lock();
> > > > > > > -     fence =3D dma_fence_get_rcu_safe(&active->fence);
> > > > > > > +     fence =3D rcu_dereference(active->fence);
> > > > > > > +     if (fence)
> > > > > > > +             fence =3D dma_fence_get_rcu(fence);
> > > > > > >        rcu_read_unlock();
> > > > > > > =

> > > > > > >        return fence;
> > > > > > > diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/dr=
m/i915/i915_vma.c
> > > > > > > index 0f227f28b2802..ed0388d99197e 100644
> > > > > > > --- a/drivers/gpu/drm/i915/i915_vma.c
> > > > > > > +++ b/drivers/gpu/drm/i915/i915_vma.c
> > > > > > > @@ -351,7 +351,9 @@ int i915_vma_wait_for_bind(struct i915_vm=
a *vma)
> > > > > > >                struct dma_fence *fence;
> > > > > > > =

> > > > > > >                rcu_read_lock();
> > > > > > > -             fence =3D dma_fence_get_rcu_safe(&vma->active.e=
xcl.fence);
> > > > > > > +             fence =3D rcu_dereference(vma->active.excl.fenc=
e);
> > > > > > > +             if (fence)
> > > > > > > +                     fence =3D dma_fence_get_rcu(fence);
> > > > > > >                rcu_read_unlock();
> > > > > > >                if (fence) {
> > > > > > >                        err =3D dma_fence_wait(fence, MAX_SCHE=
DULE_TIMEOUT);
> > > > > > > diff --git a/include/drm/drm_syncobj.h b/include/drm/drm_sync=
obj.h
> > > > > > > index 6cf7243a1dc5e..6c45d52988bcc 100644
> > > > > > > --- a/include/drm/drm_syncobj.h
> > > > > > > +++ b/include/drm/drm_syncobj.h
> > > > > > > @@ -105,7 +105,9 @@ drm_syncobj_fence_get(struct drm_syncobj =
*syncobj)
> > > > > > >        struct dma_fence *fence;
> > > > > > > =

> > > > > > >        rcu_read_lock();
> > > > > > > -     fence =3D dma_fence_get_rcu_safe(&syncobj->fence);
> > > > > > > +     fence =3D rcu_dereference(syncobj->fence);
> > > > > > > +     if (fence)
> > > > > > > +             fence =3D dma_fence_get_rcu(syncobj->fence);
> > > > > > >        rcu_read_unlock();
> > > > > > > =

> > > > > > >        return fence;
> > > > > > > diff --git a/include/linux/dma-fence.h b/include/linux/dma-fe=
nce.h
> > > > > > > index 6ffb4b2c63715..f4a2ab2b1ae46 100644
> > > > > > > --- a/include/linux/dma-fence.h
> > > > > > > +++ b/include/linux/dma-fence.h
> > > > > > > @@ -307,56 +307,6 @@ static inline struct dma_fence *dma_fenc=
e_get_rcu(struct dma_fence *fence)
> > > > > > >                return NULL;
> > > > > > >    }
> > > > > > > =

> > > > > > > -/**
> > > > > > > - * dma_fence_get_rcu_safe  - acquire a reference to an RCU t=
racked fence
> > > > > > > - * @fencep: pointer to fence to increase refcount of
> > > > > > > - *
> > > > > > > - * Function returns NULL if no refcount could be obtained, o=
r the fence.
> > > > > > > - * This function handles acquiring a reference to a fence th=
at may be
> > > > > > > - * reallocated within the RCU grace period (such as with SLA=
B_TYPESAFE_BY_RCU),
> > > > > > > - * so long as the caller is using RCU on the pointer to the =
fence.
> > > > > > > - *
> > > > > > > - * An alternative mechanism is to employ a seqlock to protec=
t a bunch of
> > > > > > > - * fences, such as used by struct dma_resv. When using a seq=
lock,
> > > > > > > - * the seqlock must be taken before and checked after a refe=
rence to the
> > > > > > > - * fence is acquired (as shown here).
> > > > > > > - *
> > > > > > > - * The caller is required to hold the RCU read lock.
> > > > > > > - */
> > > > > > > -static inline struct dma_fence *
> > > > > > > -dma_fence_get_rcu_safe(struct dma_fence __rcu **fencep)
> > > > > > > -{
> > > > > > > -     do {
> > > > > > > -             struct dma_fence *fence;
> > > > > > > -
> > > > > > > -             fence =3D rcu_dereference(*fencep);
> > > > > > > -             if (!fence)
> > > > > > > -                     return NULL;
> > > > > > > -
> > > > > > > -             if (!dma_fence_get_rcu(fence))
> > > > > > > -                     continue;
> > > > > > > -
> > > > > > > -             /* The atomic_inc_not_zero() inside dma_fence_g=
et_rcu()
> > > > > > > -              * provides a full memory barrier upon success =
(such as now).
> > > > > > > -              * This is paired with the write barrier from a=
ssigning
> > > > > > > -              * to the __rcu protected fence pointer so that=
 if that
> > > > > > > -              * pointer still matches the current fence, we =
know we
> > > > > > > -              * have successfully acquire a reference to it.=
 If it no
> > > > > > > -              * longer matches, we are holding a reference t=
o some other
> > > > > > > -              * reallocated pointer. This is possible if the=
 allocator
> > > > > > > -              * is using a freelist like SLAB_TYPESAFE_BY_RC=
U where the
> > > > > > > -              * fence remains valid for the RCU grace period=
, but it
> > > > > > > -              * may be reallocated. When using such allocato=
rs, we are
> > > > > > > -              * responsible for ensuring the reference we ge=
t is to
> > > > > > > -              * the right fence, as below.
> > > > > > > -              */
> > > > > > > -             if (fence =3D=3D rcu_access_pointer(*fencep))
> > > > > > > -                     return rcu_pointer_handoff(fence);
> > > > > > > -
> > > > > > > -             dma_fence_put(fence);
> > > > > > > -     } while (1);
> > > > > > > -}
> > > > > > > -
> > > > > > >    #ifdef CONFIG_LOCKDEP
> > > > > > >    bool dma_fence_begin_signalling(void);
> > > > > > >    void dma_fence_end_signalling(bool cookie);
> > > > > > > diff --git a/include/linux/dma-resv.h b/include/linux/dma-res=
v.h
> > > > > > > index 562b885cf9c3d..a38c021f379af 100644
> > > > > > > --- a/include/linux/dma-resv.h
> > > > > > > +++ b/include/linux/dma-resv.h
> > > > > > > @@ -248,7 +248,9 @@ dma_resv_get_excl_unlocked(struct dma_res=
v *obj)
> > > > > > >                return NULL;
> > > > > > > =

> > > > > > >        rcu_read_lock();
> > > > > > > -     fence =3D dma_fence_get_rcu_safe(&obj->fence_excl);
> > > > > > > +     fence =3D rcu_dereference(obj->fence_excl);
> > > > > > > +     if (fence)
> > > > > > > +             fence =3D dma_fence_get_rcu(fence);
> > > > > > >        rcu_read_unlock();
> > > > > > > =

> > > > > > >        return fence;
> > > > =

> > > > =

> > > > --
> > > > Daniel Vetter
> > > > Software Engineer, Intel Corporation
> > > > https://nam11.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2F=
blog.ffwll.ch%2F&amp;data=3D04%7C01%7Cchristian.koenig%40amd.com%7C950d2a5b=
7a2541d8826b08d92c2e1f5a%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63758=
9398891140393%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiL=
CJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3DtmXfib41sZCvL3S9sQsOSmYQhz=
7ikSTk6xtRP7xabdI%3D&amp;reserved=3D0
> > =

> > =

> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
