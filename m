Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4B63B2AB9
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 10:50:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 143726EB1E;
	Thu, 24 Jun 2021 08:50:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25F136EB1E
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 08:50:36 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id df12so7427716edb.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 01:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=oxdoHUsK0W5Vkc6v3ozAbG6S64dO7oMqRlfcZ1AR5Tw=;
 b=NicX0IdNFdFOpyxOhMQXp4qAOrdMPdvlwAt/x0UhEr5no/+goCP7lHZQX38SYfkevW
 WoqIhd9NpuB/K4curfvqPLF9BTfFLp9S+AHgBuupUsos8ptvAEZsQGv2tIZ1amK4uMw5
 NOwM0SSf7Zk6C8Q3I8bg0cKGPkr3fZVjMrDYk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=oxdoHUsK0W5Vkc6v3ozAbG6S64dO7oMqRlfcZ1AR5Tw=;
 b=fHKGOi/CBXy2sY1p5g49VFBf3lKKN+PFfy2AjwnxyuKKMHw77NDNlqFxiQKddxSn6+
 +iQJKMd3PJlkgKr15To0E1nqrQEVEO6W+5fGZW2sDN7qiTIZDUzco2DOuLM+eGPJsByF
 0bI0k33V2PzxK8Ywv0vD8r5VDuA+rSi/b9Me27r0APqphVftyY4T/ki3uaP2TGJi78WN
 8ey41PHrBSh/Nx8kR473alfAD+IjAxg7PcqtWqYexO1SkCtLMhTkKiDPd6uJkrESBTj+
 MOLzZezPBCQs1i1h0gvp153yNgxI7/q5aVwecq8XnjRP22hX9QzefoRKVUPbmk7Zgkyp
 fUOw==
X-Gm-Message-State: AOAM533C0V07dNjF0Db5bbNkTuXn9vhf6u/i7kWN7OQ9I/HOsLyJ6PZK
 XzAxZmTrkDnVem+rpPK5+k97wCajcVSD/Q==
X-Google-Smtp-Source: ABdhPJyBRUQfxKQ3f4GipFfrx1iREWz9mi+9hN9U3K0t0vPSIX1B/kuj2aIDuKtsPpm1guWBk4a1dw==
X-Received: by 2002:a05:6402:6d3:: with SMTP id
 n19mr5789270edy.248.1624524634711; 
 Thu, 24 Jun 2021 01:50:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j22sm925778ejt.11.2021.06.24.01.50.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Jun 2021 01:50:34 -0700 (PDT)
Date: Thu, 24 Jun 2021 10:50:32 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <YNRHWIaGX1f9OZff@phenom.ffwll.local>
References: <20210623172706.315165-1-matthew.auld@intel.com>
 <YNOISja0iGhcdomF@phenom.ffwll.local>
 <CAM0jSHNRP5kvKSBqM3ALJSP3JH8EKWvSo289yRW9xfqd=t3-UQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM0jSHNRP5kvKSBqM3ALJSP3JH8EKWvSo289yRW9xfqd=t3-UQ@mail.gmail.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915: add back the avail tracking
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 23, 2021 at 08:35:30PM +0100, Matthew Auld wrote:
> On Wed, 23 Jun 2021 at 20:15, Daniel Vetter <daniel@ffwll.ch> wrote:
> >
> > On Wed, Jun 23, 2021 at 06:27:06PM +0100, Matthew Auld wrote:
> > > Looks like it got lost along the way, so add it back. This is needed =
for
> > > the region query uAPI where we want to report a snapshot of how much
> > > lmem is available.
> > >
> > > This time around let's push it directly into the allocator, which
> > > simplifies things, like not having to care about internal fragmentati=
on,
> > > or having to remember to track things for all possible interfaces that
> > > might want to allocate or reserve pages.
> > >
> > > v2(Thomas): add some more kernel doc
> > >
> > > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > > Cc: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> > > Reviewed-by: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> >
> > Since this is uapi, do umds use this? Or just igt?
> >
> > Please record both the umd user for this and the igts that verifies this
> > is not nonsense to the commit message. We need to be much better with
> > keeping records for our uapi additions, there's been some really badly
> > justified uapi in the past that turned out to be for testcases only.
> =

> For the userspace justification, I pinged you and Jason about that in
> the previous thread, since it's not completely clear if real userspace
> even cares about this. I can maybe just limit it to debugfs?

Sorry I missed that ping. If it's just for igt then debugfs should be good
enough. Otherwise I'd do a quick check on the internal code repos and
maybe ping Jason on irc if he misses this, just in case we've overlooked
something.
-Daniel

> =

> > -Daniel
> >
> > > ---
> > >  drivers/gpu/drm/i915/i915_buddy.c             |  6 ++++++
> > >  drivers/gpu/drm/i915/i915_buddy.h             |  1 +
> > >  drivers/gpu/drm/i915/i915_debugfs.c           |  5 +++--
> > >  drivers/gpu/drm/i915/i915_query.c             |  2 +-
> > >  drivers/gpu/drm/i915/i915_ttm_buddy_manager.c | 13 +++++++++++++
> > >  drivers/gpu/drm/i915/i915_ttm_buddy_manager.h |  2 ++
> > >  drivers/gpu/drm/i915/intel_memory_region.c    | 15 +++++++++++++++
> > >  drivers/gpu/drm/i915/intel_memory_region.h    |  4 ++++
> > >  8 files changed, 45 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_buddy.c b/drivers/gpu/drm/i915=
/i915_buddy.c
> > > index 29dd7d0310c1..27cd2487a18f 100644
> > > --- a/drivers/gpu/drm/i915/i915_buddy.c
> > > +++ b/drivers/gpu/drm/i915/i915_buddy.c
> > > @@ -80,6 +80,7 @@ int i915_buddy_init(struct i915_buddy_mm *mm, u64 s=
ize, u64 chunk_size)
> > >       size =3D round_down(size, chunk_size);
> > >
> > >       mm->size =3D size;
> > > +     mm->avail =3D size;
> > >       mm->chunk_size =3D chunk_size;
> > >       mm->max_order =3D ilog2(size) - ilog2(chunk_size);
> > >
> > > @@ -159,6 +160,8 @@ void i915_buddy_fini(struct i915_buddy_mm *mm)
> > >               i915_block_free(mm, mm->roots[i]);
> > >       }
> > >
> > > +     GEM_WARN_ON(mm->avail !=3D mm->size);
> > > +
> > >       kfree(mm->roots);
> > >       kfree(mm->free_list);
> > >       kmem_cache_destroy(mm->slab_blocks);
> > > @@ -235,6 +238,7 @@ void i915_buddy_free(struct i915_buddy_mm *mm,
> > >                    struct i915_buddy_block *block)
> > >  {
> > >       GEM_BUG_ON(!i915_buddy_block_is_allocated(block));
> > > +     mm->avail +=3D i915_buddy_block_size(mm, block);
> > >       __i915_buddy_free(mm, block);
> > >  }
> > >
> > > @@ -288,6 +292,7 @@ i915_buddy_alloc(struct i915_buddy_mm *mm, unsign=
ed int order)
> > >       }
> > >
> > >       mark_allocated(block);
> > > +     mm->avail -=3D i915_buddy_block_size(mm, block);
> > >       kmemleak_update_trace(block);
> > >       return block;
> > >
> > > @@ -373,6 +378,7 @@ int i915_buddy_alloc_range(struct i915_buddy_mm *=
mm,
> > >                       }
> > >
> > >                       mark_allocated(block);
> > > +                     mm->avail -=3D i915_buddy_block_size(mm, block);
> > >                       list_add_tail(&block->link, &allocated);
> > >                       continue;
> > >               }
> > > diff --git a/drivers/gpu/drm/i915/i915_buddy.h b/drivers/gpu/drm/i915=
/i915_buddy.h
> > > index 37f8c42071d1..feb7c1bb6244 100644
> > > --- a/drivers/gpu/drm/i915/i915_buddy.h
> > > +++ b/drivers/gpu/drm/i915/i915_buddy.h
> > > @@ -70,6 +70,7 @@ struct i915_buddy_mm {
> > >       /* Must be at least PAGE_SIZE */
> > >       u64 chunk_size;
> > >       u64 size;
> > > +     u64 avail;
> > >  };
> > >
> > >  static inline u64
> > > diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i9=
15/i915_debugfs.c
> > > index cc745751ac53..4765f220469e 100644
> > > --- a/drivers/gpu/drm/i915/i915_debugfs.c
> > > +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> > > @@ -246,8 +246,9 @@ static int i915_gem_object_info(struct seq_file *=
m, void *data)
> > >                  atomic_read(&i915->mm.free_count),
> > >                  i915->mm.shrink_memory);
> > >       for_each_memory_region(mr, i915, id)
> > > -             seq_printf(m, "%s: total:%pa, available:%pa bytes\n",
> > > -                        mr->name, &mr->total, &mr->avail);
> > > +             seq_printf(m, "%s: total:%pa, available:%llu bytes\n",
> > > +                        mr->name, &mr->total,
> > > +                        intel_memory_region_get_avail(mr));
> > >
> > >       return 0;
> > >  }
> > > diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915=
/i915_query.c
> > > index e49da36c62fb..f10dcea94ac9 100644
> > > --- a/drivers/gpu/drm/i915/i915_query.c
> > > +++ b/drivers/gpu/drm/i915/i915_query.c
> > > @@ -465,7 +465,7 @@ static int query_memregion_info(struct drm_i915_p=
rivate *i915,
> > >               info.region.memory_class =3D mr->type;
> > >               info.region.memory_instance =3D mr->instance;
> > >               info.probed_size =3D mr->total;
> > > -             info.unallocated_size =3D mr->avail;
> > > +             info.unallocated_size =3D intel_memory_region_get_avail=
(mr);
> > >
> > >               if (__copy_to_user(info_ptr, &info, sizeof(info)))
> > >                       return -EFAULT;
> > > diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c b/drivers/=
gpu/drm/i915/i915_ttm_buddy_manager.c
> > > index fc7ad5c035b8..562d11edc5e4 100644
> > > --- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> > > +++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> > > @@ -246,3 +246,16 @@ int i915_ttm_buddy_man_reserve(struct ttm_resour=
ce_manager *man,
> > >       return ret;
> > >  }
> > >
> > > +/**
> > > + * i915_ttm_buddy_man_avail - Get the currently available size
> > > + * @man: The buddy allocator ttm manager
> > > + *
> > > + * Return: The available size in bytes
> > > + */
> > > +u64 i915_ttm_buddy_man_get_avail(struct ttm_resource_manager *man)
> > > +{
> > > +     struct i915_ttm_buddy_manager *bman =3D to_buddy_manager(man);
> > > +     struct i915_buddy_mm *mm =3D &bman->mm;
> > > +
> > > +     return mm->avail;
> > > +}
> > > diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.h b/drivers/=
gpu/drm/i915/i915_ttm_buddy_manager.h
> > > index 26026213e20a..39f5b1a4c3e7 100644
> > > --- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.h
> > > +++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.h
> > > @@ -53,4 +53,6 @@ int i915_ttm_buddy_man_fini(struct ttm_device *bdev,
> > >  int i915_ttm_buddy_man_reserve(struct ttm_resource_manager *man,
> > >                              u64 start, u64 size);
> > >
> > > +u64 i915_ttm_buddy_man_get_avail(struct ttm_resource_manager *man);
> > > +
> > >  #endif
> > > diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu=
/drm/i915/intel_memory_region.c
> > > index df59f884d37c..d5edf088be48 100644
> > > --- a/drivers/gpu/drm/i915/intel_memory_region.c
> > > +++ b/drivers/gpu/drm/i915/intel_memory_region.c
> > > @@ -132,6 +132,21 @@ void intel_memory_region_set_name(struct intel_m=
emory_region *mem,
> > >       va_end(ap);
> > >  }
> > >
> > > +/**
> > > + * intel_memory_region_get_avail - Get the currently available size =
for the
> > > + * region
> > > + * @mr: The memory region
> > > + *
> > > + * Return: The available size in bytes
> > > + */
> > > +u64 intel_memory_region_get_avail(struct intel_memory_region *mr)
> > > +{
> > > +     if (mr->type =3D=3D INTEL_MEMORY_LOCAL)
> > > +             return i915_ttm_buddy_man_get_avail(mr->region_private);
> > > +
> > > +     return mr->avail;
> > > +}
> > > +
> > >  static void __intel_memory_region_destroy(struct kref *kref)
> > >  {
> > >       struct intel_memory_region *mem =3D
> > > diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu=
/drm/i915/intel_memory_region.h
> > > index 2be8433d373a..6f7a073d5a70 100644
> > > --- a/drivers/gpu/drm/i915/intel_memory_region.h
> > > +++ b/drivers/gpu/drm/i915/intel_memory_region.h
> > > @@ -74,6 +74,7 @@ struct intel_memory_region {
> > >       resource_size_t io_start;
> > >       resource_size_t min_page_size;
> > >       resource_size_t total;
> > > +     /* Do not access directly. Use the accessor instead. */
> > >       resource_size_t avail;
> > >
> > >       u16 type;
> > > @@ -125,4 +126,7 @@ intel_memory_region_set_name(struct intel_memory_=
region *mem,
> > >  int intel_memory_region_reserve(struct intel_memory_region *mem,
> > >                               resource_size_t offset,
> > >                               resource_size_t size);
> > > +
> > > +u64 intel_memory_region_get_avail(struct intel_memory_region *mem);
> > > +
> > >  #endif
> > > --
> > > 2.26.3
> > >
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> >
> > --
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
