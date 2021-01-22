Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDA8300A71
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 18:59:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D119B89DED;
	Fri, 22 Jan 2021 17:59:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29C0D89DED
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 17:59:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23674701-1500050 for multiple; Fri, 22 Jan 2021 17:59:37 +0000
MIME-Version: 1.0
In-Reply-To: <CAM0jSHOQjzjCiBfgUEAnM2vcAgWo39BDUah1==JA2BDm5xPPEQ@mail.gmail.com>
References: <20210122173546.531842-1-matthew.auld@intel.com>
 <20210122173546.531842-2-matthew.auld@intel.com>
 <161133740725.24506.13068861174088432415@build.alporthouse.com>
 <CAM0jSHOQjzjCiBfgUEAnM2vcAgWo39BDUah1==JA2BDm5xPPEQ@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 22 Jan 2021 17:59:37 +0000
Message-ID: <161133837742.24506.11464372107959456279@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: consolidate 2big error
 checking for object sizes
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2021-01-22 17:54:16)
> On Fri, 22 Jan 2021 at 17:43, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Quoting Matthew Auld (2021-01-22 17:35:46)
> > > Throw it into a simple helper, and throw a warning if we encounter an
> > > object which has been initialised with an object size that exceeds our
> > > limit of INT_MAX pages.
> > >
> > > Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c  |  9 +------
> > >  drivers/gpu/drm/i915/gem/i915_gem_object.c  |  2 ++
> > >  drivers/gpu/drm/i915/gem/i915_gem_object.h  | 26 +++++++++++++++++++++
> > >  drivers/gpu/drm/i915/gem/i915_gem_region.c  | 12 +---------
> > >  drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 16 +------------
> > >  5 files changed, 31 insertions(+), 34 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> > > index dc11497f830b..5cc8a0b2387f 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> > > @@ -244,14 +244,7 @@ struct drm_gem_object *i915_gem_prime_import(struct drm_device *dev,
> > >                 }
> > >         }
> > >
> > > -       /*
> > > -        * XXX: There is a prevalence of the assumption that we fit the
> > > -        * object's page count inside a 32bit _signed_ variable. Let's document
> > > -        * this and catch if we ever need to fix it. In the meantime, if you do
> > > -        * spot such a local variable, please consider fixing!
> > > -        */
> > > -
> > > -       if (dma_buf->size >> PAGE_SHIFT > INT_MAX)
> > > +       if (i915_gem_object_size_2big(dma_buf->size))
> > >                 return ERR_PTR(-E2BIG);
> > >
> > >         /* need to attach */
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > > index 70f798405f7f..d3702ea8c6aa 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > > @@ -62,6 +62,8 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
> > >                           const struct drm_i915_gem_object_ops *ops,
> > >                           struct lock_class_key *key)
> > >  {
> > > +       GEM_CHECK_SIZE_OVERFLOW(obj->base.size);
> > > +
> > >         __mutex_init(&obj->mm.lock, ops->name ?: "obj->mm.lock", key);
> > >
> > >         spin_lock_init(&obj->vma.lock);
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > index d0ae834d787a..d9cef56533ca 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > @@ -16,6 +16,32 @@
> > >  #include "i915_gem_gtt.h"
> > >  #include "i915_vma_types.h"
> > >
> > > +/*
> > > + * XXX: There is a prevalence of the assumption that we fit the
> > > + * object's page count inside a 32bit _signed_ variable. Let's document
> > > + * this and catch if we ever need to fix it. In the meantime, if you do
> > > + * spot such a local variable, please consider fixing!
> > > + *
> > > + * Aside from our own locals (for which we have no excuse!):
> > > + * - sg_table embeds unsigned int for num_pages
> > > + * - get_user_pages*() mixed ints with longs
> > > + */
> > > +#define GEM_CHECK_SIZE_OVERFLOW(sz) \
> > > +       GEM_WARN_ON((sz) >> PAGE_SHIFT > INT_MAX)
> > > +
> > > +static inline bool i915_gem_object_size_2big(u64 size)
> > > +{
> > > +       struct drm_i915_gem_object *obj;
> > > +
> > > +       if (size >> PAGE_SHIFT > INT_MAX)
> > > +               return true;
> >
> > Macro here^
> >
> > Make it easy to grep, everybody gets a warning as a reminder to fix it.
> > And a prize to whoever does manage to trigger the warning.
> 
> But this code is user triggable, like with igt("create-massive")? What
> am I missing?

GEM_WARN_ON() only emits a warning in debug builds, and we try very hard
not to let that be enabled in production.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
