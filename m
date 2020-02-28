Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1991742DB
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 00:15:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DAC16F50B;
	Fri, 28 Feb 2020 23:14:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com
 [IPv6:2607:f8b0:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD8676F50B
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 23:14:54 +0000 (UTC)
Received: by mail-oi1-x242.google.com with SMTP id d62so4479219oia.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 15:14:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5361szRGxkPNQ4fI5q+ZOquUwYvf9/SKAeYnLFOLl18=;
 b=aBBngew1B46i7yJpJ446zpaAHL83xheRB++lZCiGHxq4IqoRr3577r8s7NdkdR498r
 nVmoX1JICVez52CmmdPzFB3Bdqk35HN0C6ogA405zMEhwjKEbYfAIrhUQE/n5V9YW4+3
 Juz/5QEZ4v+E652tp/UeIxPMmJXEL8k3WCgeg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5361szRGxkPNQ4fI5q+ZOquUwYvf9/SKAeYnLFOLl18=;
 b=qAdXDsBwgWNZI+VF+6W1Nf3luSJVj53RG2ufxgrTCD2wd8wa6XzSmlqtm693QEjlDs
 bmzone5KqoQN6/3aRcJ54U3viH4RNsJgq3Dr1NEAB2dzYwCYIqiHVjhvUCCZZOrCDQsb
 f5yONvS6RpwaXABtFt/YmugRmGIRkHJn5kzHjzULIKuvBfxd7lh0HgDH/Z8CViSTxgGv
 2jtl4z6nCAq1bM/qSAaRZNP+Mcbf+d2MVKSoQqNmTz0eJof9A/MUH/4Q0GvlH7CYMQ6i
 rTjH/KXSODTrqc9Lt9bL7NMH8d9E6FmvbedXRPDi1CB6c8DwqPU72c5Io3YbybEdAIyZ
 EPQA==
X-Gm-Message-State: APjAAAXtyL/OKGLb8EijQrORy3QdFtAMOxLPN5Q3AV4YIdLFZZXKn7tV
 pdIfFZEHTHkI+elWrWL5wtow4IddoDlEPlYDRMwWkA==
X-Google-Smtp-Source: APXvYqyrYdP74m6k/7EfiNC1/IlIO/0QWKliL0aY4xhw6tFuPimslxzn5V0jYv8zPyvIUgCW+HXOGVsNITL2SjvJCc0=
X-Received: by 2002:aca:d985:: with SMTP id q127mr4581976oig.132.1582931693870; 
 Fri, 28 Feb 2020 15:14:53 -0800 (PST)
MIME-Version: 1.0
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
 <20200227181522.2711142-4-daniel.vetter@ffwll.ch>
 <20200228224504.GA23961@ravnborg.org>
In-Reply-To: <20200228224504.GA23961@ravnborg.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Sat, 29 Feb 2020 00:14:42 +0100
Message-ID: <CAKMK7uHPWZ=F2EyqnM7x1GpXY_SGu3e_jGXX4cg0OGyx_+C8ig@mail.gmail.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [Intel-gfx] [PATCH 03/51] drm: add managed resources tied to
 drm_device
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Marco Felsch <m.felsch@pengutronix.de>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 28, 2020 at 11:45 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Daniel.
>
> Some nitpicks / bikeshedding below.
>
>         Sam
>
> On Thu, Feb 27, 2020 at 07:14:34PM +0100, Daniel Vetter wrote:
> > We have lots of these. And the cleanup code tends to be of dubious
> > quality. The biggest wrong pattern is that developers use devm_, which
> > ties the release action to the underlying struct device, whereas
> > all the userspace visible stuff attached to a drm_device can long
> > outlive that one (e.g. after a hotunplug while userspace has open
> > files and mmap'ed buffers). Give people what they want, but with more
> > correctness.
> >
> > Mostly copied from devres.c, with types adjusted to fit drm_device and
> > a few simplifications - I didn't (yet) copy over everything. Since
> > the types don't match code sharing looked like a hopeless endeavour.
>
> Readability had been increased if the short names was not reused.
>
> s/dr_/drmres_/
>
> But I know, this is in the bikeshedding area.
>
> >
> > For now it's only super simplified, no groups, you can't remove
> > actions (but kfree exists, we'll need that soon). Plus all specific to
> > drm_device ofc, including the logging. Which I didn't bother to make
> > compile-time optional, since none of the other drm logging is compile
> > time optional either.
> >
> > One tricky bit here is the chicken&egg between allocating your
> > drm_device structure and initiliazing it with drm_dev_init. For
> > perfect onion unwinding we'd need to have the action to kfree the
> > allocation registered before drm_dev_init registers any of its own
> > release handlers. But drm_dev_init doesn't know where exactly the
> > drm_device is emebedded into the overall structure, and by the time it
> > returns it'll all be too late. And forcing drivers to be able clean up
> > everything except the one kzalloc is silly.
> >
> > Work around this by having a very special final_kfree pointer. This
> > also avoids troubles with the list head possibly disappearing from
> > underneath us when we release all resources attached to the
> > drm_device.
> >
> > v2: Do all the kerneldoc at the end, to avoid lots of fairly pointless
> > shuffling while getting everything into shape.
> >
> > v3: Add static to add/del_dr (Neil)
> > Move typo fix to the right patch (Neil)
> >
> > v4: Enforce contract for drmm_add_final_kfree:
> >
> > Use ksize() to check that the drm_device is indeed contained somewhere
> > in the final kfree(). Because we need that or the entire managed
> > release logic blows up in a pile of use-after-frees. Motivated by a
> > discussion with Laurent.
> >
> > v5: Review from Laurent:
> > - %zu instead of casting size_t
> > - header guards
> > - sorting of includes
> > - guarding of data assignment if we didn't allocate it for a NULL
> >   pointer
> > - delete spurious newline
> > - cast void* data parameter correctly in ->release call, no idea how
> >   this even worked before
> >
> > Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Cc: Neil Armstrong <narmstrong@baylibre.com
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > ---
> >  Documentation/gpu/drm-internals.rst |   6 +
> >  drivers/gpu/drm/Makefile            |   3 +-
> >  drivers/gpu/drm/drm_drv.c           |  13 ++-
> >  drivers/gpu/drm/drm_internal.h      |   3 +
> >  drivers/gpu/drm/drm_managed.c       | 175 ++++++++++++++++++++++++++++
> >  include/drm/drm_device.h            |  12 ++
> >  include/drm/drm_managed.h           |  30 +++++
> >  include/drm/drm_print.h             |   6 +
> >  8 files changed, 246 insertions(+), 2 deletions(-)
> >  create mode 100644 drivers/gpu/drm/drm_managed.c
> >  create mode 100644 include/drm/drm_managed.h
> >
> > diff --git a/Documentation/gpu/drm-internals.rst b/Documentation/gpu/drm-internals.rst
> > index a73320576ca9..a6b6145fda78 100644
> > --- a/Documentation/gpu/drm-internals.rst
> > +++ b/Documentation/gpu/drm-internals.rst
> > @@ -132,6 +132,12 @@ be unmapped; on many devices, the ROM address decoder is shared with
> >  other BARs, so leaving it mapped could cause undesired behaviour like
> >  hangs or memory corruption.
> >
> > +Managed Resources
> > +-----------------
> > +
> > +.. kernel-doc:: drivers/gpu/drm/drm_managed.c
> > +   :doc: managed resources
> > +
> >  Bus-specific Device Registration and PCI Support
> >  ------------------------------------------------
> >
> > diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
> > index 7f72ef5e7811..183c60048307 100644
> > --- a/drivers/gpu/drm/Makefile
> > +++ b/drivers/gpu/drm/Makefile
> > @@ -17,7 +17,8 @@ drm-y       :=      drm_auth.o drm_cache.o \
> >               drm_plane.o drm_color_mgmt.o drm_print.o \
> >               drm_dumb_buffers.o drm_mode_config.o drm_vblank.o \
> >               drm_syncobj.o drm_lease.o drm_writeback.o drm_client.o \
> > -             drm_client_modeset.o drm_atomic_uapi.o drm_hdcp.o
> > +             drm_client_modeset.o drm_atomic_uapi.o drm_hdcp.o \
> > +             drm_managed.o
> >
> >  drm-$(CONFIG_DRM_LEGACY) += drm_legacy_misc.o drm_bufs.o drm_context.o drm_dma.o drm_scatter.o drm_lock.o
> >  drm-$(CONFIG_DRM_LIB_RANDOM) += lib/drm_random.o
> > diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
> > index 9fcd6ab3c154..3e5627d6eba6 100644
> > --- a/drivers/gpu/drm/drm_drv.c
> > +++ b/drivers/gpu/drm/drm_drv.c
> > @@ -629,6 +629,9 @@ int drm_dev_init(struct drm_device *dev,
> >       dev->dev = get_device(parent);
> >       dev->driver = driver;
> >
> > +     INIT_LIST_HEAD(&dev->managed.resources);
> > +     spin_lock_init(&dev->managed.lock);
> > +
> >       /* no per-device feature limits by default */
> >       dev->driver_features = ~0u;
> >
> > @@ -828,8 +831,16 @@ static void drm_dev_release(struct kref *ref)
> >               dev->driver->release(dev);
> >       } else {
> >               drm_dev_fini(dev);
> > -             kfree(dev);
> > +             if (!dev->managed.final_kfree) {
> > +                     WARN_ON(!list_empty(&dev->managed.resources));
> > +                     kfree(dev);
> > +             }
>
> This looks sub-optimal.
> We cannot be sure a driver have used drmm_add_final_kfree() if it makes
> use of drmm_.
> So we may not WARN in all relavant cases.
> Also, we cannot expect all drivers that uses devmm_ to have managed
> to get rid of their ->release call-back.

The above is purely transition code. It gets cleaned up once all
drivers call drmm_add_final_kfree(). This all disappears again, but
indeed looks like the interim state isn't quite what we want.

> So the right thing looks to me like we should move it out to be
> unconditional. Se we will WARN_ON(!list_empty(&dev->managed.resources))
> always.

Until the driver has set drmm_add_final_kfree it's actually dangerous
to use the drmm stuff. Exactly because of the use-after-free you point
out below. Hence the warning to make sure there's no release actions.
I'll shuffle this around to make sure we call kfree last for all
possible paths and make sure this bisects all correctly.

> It also looks like we do a kfree(dev); (inside {} )
> And then we access kfree() in the call to drm_managed_relase(dev) right
> after.
>
>
> >       }
> > +
> > +     drm_managed_release(dev);
> > +
> > +     if (dev->managed.final_kfree)
> > +             kfree(dev->managed.final_kfree);
> >  }
> >
> >  /**
> > diff --git a/drivers/gpu/drm/drm_internal.h b/drivers/gpu/drm/drm_internal.h
> > index aeec2e68d772..8c2628dfc6c7 100644
> > --- a/drivers/gpu/drm/drm_internal.h
> > +++ b/drivers/gpu/drm/drm_internal.h
> > @@ -89,6 +89,9 @@ void drm_prime_remove_buf_handle_locked(struct drm_prime_file_private *prime_fpr
> >  struct drm_minor *drm_minor_acquire(unsigned int minor_id);
> >  void drm_minor_release(struct drm_minor *minor);
> >
> > +/* drm_managed.c */
> > +void drm_managed_release(struct drm_device *dev);
> > +
> >  /* drm_vblank.c */
> >  void drm_vblank_disable_and_save(struct drm_device *dev, unsigned int pipe);
> >  void drm_vblank_cleanup(struct drm_device *dev);
> > diff --git a/drivers/gpu/drm/drm_managed.c b/drivers/gpu/drm/drm_managed.c
> > new file mode 100644
> > index 000000000000..a36d4604ee18
> > --- /dev/null
> > +++ b/drivers/gpu/drm/drm_managed.c
> > @@ -0,0 +1,175 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2020 Intel
> > + *
> > + * Based on drivers/base/devres.c
> > + */
> > +
> > +#include <drm/drm_managed.h>
> > +
> > +#include <linux/list.h>
> > +#include <linux/slab.h>
> > +#include <linux/spinlock.h>
> > +
> > +#include <drm/drm_device.h>
> > +#include <drm/drm_print.h>
>
> It is good practice to group the include files.
> And drm/ comes after linux/

I try to put the main header first to make sure it's stand-alone, but
I guess that works with the header check now? Do I need to do anything
to get that checked?

> > +
> > +/**
> > + * DOC: managed resources
> > + *
> > + * Inspired by struct &device managed resources, but tied to the lifetime of
> > + * struct &drm_device, which can outlive the underlying physical device, usually
> > + * when userspace has some open files and other handles to resources still open.
> > + */
> > +struct drmres_node {
> > +     struct list_head                entry;
> > +     drmres_release_t                release;
> > +     const char                      *name;
> > +     size_t                          size;
> > +};
> Excessing indent? (I know, copied from somewhere else, but...)
>
> > +
> > +struct drmres {
> > +     struct drmres_node              node;
> > +     /*
> > +      * Some archs want to perform DMA into kmalloc caches
> > +      * and need a guaranteed alignment larger than
> > +      * the alignment of a 64-bit integer.
> > +      * Thus we use ARCH_KMALLOC_MINALIGN here and get exactly the same
> > +      * buffer alignment as if it was allocated by plain kmalloc().
> > +      */
> > +     u8 __aligned(ARCH_KMALLOC_MINALIGN) data[];
> > +};
> > +
> > +void drm_managed_release(struct drm_device *dev)
> > +{
> > +     struct drmres *dr, *tmp;
> > +
> > +     drm_dbg_drmres(dev, "drmres release begin\n");
> > +     list_for_each_entry_safe(dr, tmp, &dev->managed.resources, node.entry) {
> > +             drm_dbg_drmres(dev, "REL %p %s (%zu bytes)\n",
> > +                            dr, dr->node.name, dr->node.size);
> > +
> > +             if (dr->node.release)
> > +                     dr->node.release(dev, dr->node.size ? *(void **)&dr->data : NULL);
> > +
> > +             list_del(&dr->node.entry);
> > +             kfree(dr);
> > +     }
> > +     drm_dbg_drmres(dev, "drmres release end\n");
> > +}
> > +
> > +static __always_inline struct drmres * alloc_dr(drmres_release_t release,
> > +                                             size_t size, gfp_t gfp, int nid)
> Why do we force the compiler to inline this?
> Seems a little agressive.

It's not for performance, but for kmalloc_trace_caller. No point if
our caller is always some boring function from drm_managed.c that
calls alloc_dr. If we force alloc_dr to inline, then we get the caller
of the drm_managed.c function traced as allocator. Much better.

(I stole that trick from devres.c)

I'll add a comment to explain this.

> All the two users so far uses dev_to_node(dev->dev) for the nid.
> Maybe let this function take a drm_device * and thus move the
> calculation to this function?

Copypastes like that :-) I feel somewhat meh here ...

> > +{
> > +     size_t tot_size;
> > +     struct drmres *dr;
> > +
> > +     /* We must catch any near-SIZE_MAX cases that could overflow. */
> > +     if (unlikely(check_add_overflow(sizeof(*dr), size, &tot_size)))
> > +             return NULL;
> > +
> > +     dr = kmalloc_node_track_caller(tot_size, gfp, nid);
> > +     if (unlikely(!dr))
> > +             return NULL;
> > +
> > +     memset(dr, 0, offsetof(struct drmres, data));
> > +
> > +     INIT_LIST_HEAD(&dr->node.entry);
> > +     dr->node.release = release;
> > +     dr->node.size = size;
> > +
> > +     return dr;
> > +}
> > +
> > +static void del_dr(struct drm_device *dev, struct drmres *dr)
> > +{
> > +     list_del_init(&dr->node.entry);
> > +
> > +     drm_dbg_drmres(dev, "DEL %p %s (%lu bytes)\n",
> > +                    dr, dr->node.name, (unsigned long) dr->node.size);
> > +}
> > +
> > +static void add_dr(struct drm_device *dev, struct drmres *dr)
> > +{
> > +     unsigned long flags;
> > +
> > +     spin_lock_irqsave(&dev->managed.lock, flags);
> > +     list_add(&dr->node.entry, &dev->managed.resources);
> > +     spin_unlock_irqrestore(&dev->managed.lock, flags);
> > +
> > +     drm_dbg_drmres(dev, "ADD %p %s (%lu bytes)\n",
> > +                    dr, dr->node.name, (unsigned long) dr->node.size);
> > +}
> > +
> > +void drmm_add_final_kfree(struct drm_device *dev, void *parent)
> > +{
> > +     WARN_ON(dev->managed.final_kfree);
> > +     WARN_ON(dev < (struct drm_device *) parent);
> > +     WARN_ON(dev + 1 >= (struct drm_device *) (parent + ksize(parent)));
> > +     dev->managed.final_kfree = parent;
> > +}
> > +EXPORT_SYMBOL(drmm_add_final_kfree);
> > +
> > +int __drmm_add_action(struct drm_device *dev,
> > +                   drmres_release_t action,
> > +                   void *data, const char *name)
> > +{
> > +     struct drmres *dr;
> > +     void **void_ptr;
> > +
> > +     dr = alloc_dr(action, data ? sizeof(void*) : 0,
> Hmm, data is an u8 pointer, not a void pointer.
> But this code is copied soo...
>
> > +                   GFP_KERNEL | __GFP_ZERO,
> So in this case the memset() in alloc_dr() is of no use.
> Anyway, it is zero bytes or a pointer size bytes.
> So no big deal I think.

It's actually the drmm internal part of the allocation we're clearing.
I guess we could make that conditional on __GFP_ZERO not being set,
but it's just a cacheline so feels a bit silly. We're writing that
cacheline anyway.

>
> > +                   dev_to_node(dev->dev));
> > +     if (!dr)
> > +             return -ENOMEM;
> Add empty line.
> > +     dr->node.name = name;
> > +     if (data) {
> > +             void_ptr = (void **)&dr->data;
> > +             *void_ptr = data;
> > +     }
> > +
> > +     add_dr(dev, dr);
> > +
> > +     return 0;
> > +}
> > +EXPORT_SYMBOL(__drmm_add_action);
> See rant about __ named functions in another mail.
> drmm_add_action_named(..) would be better.
>
>
> > +
> > +void *drmm_kmalloc(struct drm_device *dev, size_t size, gfp_t gfp)
> > +{
> > +     struct drmres *dr;
> > +
> > +     dr = alloc_dr(NULL, size, gfp, dev_to_node(dev->dev));
> > +     if (!dr)
> > +             return NULL;
> > +     dr->node.name = "kmalloc";
> > +
> > +     add_dr(dev, dr);
> > +
> > +     return dr->data;
> > +}
> > +EXPORT_SYMBOL(drmm_kmalloc);
> > +
> > +void drmm_kfree(struct drm_device *dev, void *data)
> > +{
> > +     struct drmres *dr_match = NULL, *dr;
> > +     unsigned long flags;
> > +
> > +     if (!data)
> > +             return;
> > +
> > +     spin_lock_irqsave(&dev->managed.lock, flags);
> > +     list_for_each_entry(dr, &dev->managed.resources, node.entry) {
> > +             if (dr->data == data) {
> > +                     dr_match = dr;
> > +                     del_dr(dev, dr_match);
> > +                     break;
> > +             }
> > +     }
> > +     spin_unlock_irqrestore(&dev->managed.lock, flags);
> > +
> > +     if (WARN_ON(!dr_match))
> > +             return;
> > +
> > +     kfree(dr_match);
> > +}
> > +EXPORT_SYMBOL(drmm_kfree);
> > diff --git a/include/drm/drm_device.h b/include/drm/drm_device.h
> > index bb60a949f416..2790c9ed614e 100644
> > --- a/include/drm/drm_device.h
> > +++ b/include/drm/drm_device.h
> > @@ -67,6 +67,18 @@ struct drm_device {
> >       /** @dev: Device structure of bus-device */
> >       struct device *dev;
> >
> > +     /**
> > +      * @managed:
> > +      *
> > +      * Managed resources linked to the lifetime of this &drm_device as
> > +      * tracked by @ref.
> > +      */
> > +     struct {
> > +             struct list_head resources;
> > +             void *final_kfree;
> > +             spinlock_t lock;
> > +     } managed;
>
> I am missing kernel-doc here.
> At least document that lock is used to guard access to resources.
> (s/lock/lock_resources/ ?)

Dunno why, but the support for name sub-structures seems to have
broken in kerneldoc. So I can type it, but it's not showing up, so I
didn't bother. Well I had it, but deleted it again. It's still
documented to work, but I have no idea what I'm doing wrong.

> > +
> >       /** @driver: DRM driver managing the device */
> >       struct drm_driver *driver;
> >
> > diff --git a/include/drm/drm_managed.h b/include/drm/drm_managed.h
> > new file mode 100644
> > index 000000000000..7b5df7d09b19
> > --- /dev/null
> > +++ b/include/drm/drm_managed.h
> > @@ -0,0 +1,30 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +
> > +#ifndef _DRM_MANAGED_H_
> > +#define _DRM_MANAGED_H_
> > +
> > +#include <linux/gfp.h>
> > +#include <linux/types.h>
> > +
> > +struct drm_device;
> > +
> > +typedef void (*drmres_release_t)(struct drm_device *dev, void *res);
> > +
> > +#define drmm_add_action(dev, action, data) \
> > +     __drmm_add_action(dev, action, data, #action)
> > +
> > +int __must_check __drmm_add_action(struct drm_device *dev,
> > +                                drmres_release_t action,
> > +                                void *data, const char *name);
> > +
> > +void drmm_add_final_kfree(struct drm_device *dev, void *parent);
> > +
> > +void *drmm_kmalloc(struct drm_device *dev, size_t size, gfp_t gfp) __malloc;
> > +static inline void *drmm_kzalloc(struct drm_device *dev, size_t size, gfp_t gfp)
> > +{
> > +     return drmm_kmalloc(dev, size, gfp | __GFP_ZERO);
> > +}
> > +
> > +void drmm_kfree(struct drm_device *dev, void *data);
> > +
> > +#endif
> > diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
> > index ca7cee8e728a..1c9417430d08 100644
> > --- a/include/drm/drm_print.h
> > +++ b/include/drm/drm_print.h
> > @@ -313,6 +313,10 @@ enum drm_debug_category {
> >        * @DRM_UT_DP: Used in the DP code.
> >        */
> >       DRM_UT_DP               = 0x100,
> > +     /**
> > +      * @DRM_UT_DRMRES: Used in the drm managed resources code.
> > +      */
> > +     DRM_UT_DRMRES           = 0x200,
> >  };
> >
> >  static inline bool drm_debug_enabled(enum drm_debug_category category)
> > @@ -442,6 +446,8 @@ void drm_dev_dbg(const struct device *dev, enum drm_debug_category category,
> >       drm_dev_dbg((drm)->dev, DRM_UT_LEASE, fmt, ##__VA_ARGS__)
> >  #define drm_dbg_dp(drm, fmt, ...)                                    \
> >       drm_dev_dbg((drm)->dev, DRM_UT_DP, fmt, ##__VA_ARGS__)
> > +#define drm_dbg_drmres(drm, fmt, ...)                                        \
> > +     drm_dev_dbg((drm)->dev, DRM_UT_DRMRES, fmt, ##__VA_ARGS__)
>
> We use drmm for all the managed stuff.
> So drm_dbg_drmm() is for me a more logical name.
> This debug printing is used only in a few spots, so no big deal.

devres also has this funny split of devres internally, but devm_ for
the functions drivers should use. So yeah this is entirely for
drm_managed.c only.
-Daniel
--
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
