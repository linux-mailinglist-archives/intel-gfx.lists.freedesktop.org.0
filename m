Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAE53B20DC
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 21:15:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FD956E983;
	Wed, 23 Jun 2021 19:15:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF5626E983
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 19:15:25 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id s15so4937735edt.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 12:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=SJtmy4e6z0t+KBo5fmJCrPAITiQcu7+wowAWzZYvmA0=;
 b=iqejyg0K778lupNLyjvZMY9b/o9EMcg3ll6cZ5AZqJlkfJi7RBJub9FfDvYQfSI+P+
 KWdIKJcMNmd2Z9+n5G1oifkVXKlcYr5R1YNaGhW4srAJk+uIrErFyA2IPt0Q15U3gnog
 /4535VueDXenleso4cQQ2uYaD+8esnaCJTpRs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=SJtmy4e6z0t+KBo5fmJCrPAITiQcu7+wowAWzZYvmA0=;
 b=ggmB2m5mbNhuo7cjqsuia8/vWB/Izy/lnRLItS7rl5w3gSc6hRWQCzaJ9jPTNiux3M
 T1I78RVKdxztxXVJ7xAlJDBfPP2pua7ZuXvfqDTQlK72+TaSQRXfwadbZqojkuaApv5C
 mccly4/w8E2ChrR2xktjoZ28vc2UQs2nAK8etQVA+vkIdZAMZ3h4+tfPOaUwDc4BqU17
 yXlC3Nb6LPFfJsqCT72NAJmo/mjwO41e4vcogegnB3iYFJV1gxEj2fjLB7/Ja5tS9p6t
 w37xkkIeJFIEwVLl8ch8YRh6E5SDpDiLynmmk8jIcdITtktH3ZLUNMkQ92/fAQBwbE4m
 GD2A==
X-Gm-Message-State: AOAM530BBabq9vscmsvb2UFG7+VqD/f7I0djV+c9rXJJHk5LNOYRcu6D
 XXbnJgHmdF242QxhuLCSHpFREg==
X-Google-Smtp-Source: ABdhPJwK16gzIoXUwYwM2+cQ51sZidjbAAauZeozsmM70FoAu+W0Aoa8wMVAii1vfmP+xUuw+HfC+A==
X-Received: by 2002:a05:6402:2551:: with SMTP id
 l17mr1801868edb.15.1624475724397; 
 Wed, 23 Jun 2021 12:15:24 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id jy6sm258230ejc.21.2021.06.23.12.15.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Jun 2021 12:15:23 -0700 (PDT)
Date: Wed, 23 Jun 2021 21:15:22 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <YNOISja0iGhcdomF@phenom.ffwll.local>
References: <20210623172706.315165-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210623172706.315165-1-matthew.auld@intel.com>
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
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 23, 2021 at 06:27:06PM +0100, Matthew Auld wrote:
> Looks like it got lost along the way, so add it back. This is needed for
> the region query uAPI where we want to report a snapshot of how much
> lmem is available.
> =

> This time around let's push it directly into the allocator, which
> simplifies things, like not having to care about internal fragmentation,
> or having to remember to track things for all possible interfaces that
> might want to allocate or reserve pages.
> =

> v2(Thomas): add some more kernel doc
> =

> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> Reviewed-by: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>

Since this is uapi, do umds use this? Or just igt?

Please record both the umd user for this and the igts that verifies this
is not nonsense to the commit message. We need to be much better with
keeping records for our uapi additions, there's been some really badly
justified uapi in the past that turned out to be for testcases only.
-Daniel

> ---
>  drivers/gpu/drm/i915/i915_buddy.c             |  6 ++++++
>  drivers/gpu/drm/i915/i915_buddy.h             |  1 +
>  drivers/gpu/drm/i915/i915_debugfs.c           |  5 +++--
>  drivers/gpu/drm/i915/i915_query.c             |  2 +-
>  drivers/gpu/drm/i915/i915_ttm_buddy_manager.c | 13 +++++++++++++
>  drivers/gpu/drm/i915/i915_ttm_buddy_manager.h |  2 ++
>  drivers/gpu/drm/i915/intel_memory_region.c    | 15 +++++++++++++++
>  drivers/gpu/drm/i915/intel_memory_region.h    |  4 ++++
>  8 files changed, 45 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_buddy.c b/drivers/gpu/drm/i915/i91=
5_buddy.c
> index 29dd7d0310c1..27cd2487a18f 100644
> --- a/drivers/gpu/drm/i915/i915_buddy.c
> +++ b/drivers/gpu/drm/i915/i915_buddy.c
> @@ -80,6 +80,7 @@ int i915_buddy_init(struct i915_buddy_mm *mm, u64 size,=
 u64 chunk_size)
>  	size =3D round_down(size, chunk_size);
>  =

>  	mm->size =3D size;
> +	mm->avail =3D size;
>  	mm->chunk_size =3D chunk_size;
>  	mm->max_order =3D ilog2(size) - ilog2(chunk_size);
>  =

> @@ -159,6 +160,8 @@ void i915_buddy_fini(struct i915_buddy_mm *mm)
>  		i915_block_free(mm, mm->roots[i]);
>  	}
>  =

> +	GEM_WARN_ON(mm->avail !=3D mm->size);
> +
>  	kfree(mm->roots);
>  	kfree(mm->free_list);
>  	kmem_cache_destroy(mm->slab_blocks);
> @@ -235,6 +238,7 @@ void i915_buddy_free(struct i915_buddy_mm *mm,
>  		     struct i915_buddy_block *block)
>  {
>  	GEM_BUG_ON(!i915_buddy_block_is_allocated(block));
> +	mm->avail +=3D i915_buddy_block_size(mm, block);
>  	__i915_buddy_free(mm, block);
>  }
>  =

> @@ -288,6 +292,7 @@ i915_buddy_alloc(struct i915_buddy_mm *mm, unsigned i=
nt order)
>  	}
>  =

>  	mark_allocated(block);
> +	mm->avail -=3D i915_buddy_block_size(mm, block);
>  	kmemleak_update_trace(block);
>  	return block;
>  =

> @@ -373,6 +378,7 @@ int i915_buddy_alloc_range(struct i915_buddy_mm *mm,
>  			}
>  =

>  			mark_allocated(block);
> +			mm->avail -=3D i915_buddy_block_size(mm, block);
>  			list_add_tail(&block->link, &allocated);
>  			continue;
>  		}
> diff --git a/drivers/gpu/drm/i915/i915_buddy.h b/drivers/gpu/drm/i915/i91=
5_buddy.h
> index 37f8c42071d1..feb7c1bb6244 100644
> --- a/drivers/gpu/drm/i915/i915_buddy.h
> +++ b/drivers/gpu/drm/i915/i915_buddy.h
> @@ -70,6 +70,7 @@ struct i915_buddy_mm {
>  	/* Must be at least PAGE_SIZE */
>  	u64 chunk_size;
>  	u64 size;
> +	u64 avail;
>  };
>  =

>  static inline u64
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i=
915_debugfs.c
> index cc745751ac53..4765f220469e 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -246,8 +246,9 @@ static int i915_gem_object_info(struct seq_file *m, v=
oid *data)
>  		   atomic_read(&i915->mm.free_count),
>  		   i915->mm.shrink_memory);
>  	for_each_memory_region(mr, i915, id)
> -		seq_printf(m, "%s: total:%pa, available:%pa bytes\n",
> -			   mr->name, &mr->total, &mr->avail);
> +		seq_printf(m, "%s: total:%pa, available:%llu bytes\n",
> +			   mr->name, &mr->total,
> +			   intel_memory_region_get_avail(mr));
>  =

>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i91=
5_query.c
> index e49da36c62fb..f10dcea94ac9 100644
> --- a/drivers/gpu/drm/i915/i915_query.c
> +++ b/drivers/gpu/drm/i915/i915_query.c
> @@ -465,7 +465,7 @@ static int query_memregion_info(struct drm_i915_priva=
te *i915,
>  		info.region.memory_class =3D mr->type;
>  		info.region.memory_instance =3D mr->instance;
>  		info.probed_size =3D mr->total;
> -		info.unallocated_size =3D mr->avail;
> +		info.unallocated_size =3D intel_memory_region_get_avail(mr);
>  =

>  		if (__copy_to_user(info_ptr, &info, sizeof(info)))
>  			return -EFAULT;
> diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c b/drivers/gpu/=
drm/i915/i915_ttm_buddy_manager.c
> index fc7ad5c035b8..562d11edc5e4 100644
> --- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> +++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> @@ -246,3 +246,16 @@ int i915_ttm_buddy_man_reserve(struct ttm_resource_m=
anager *man,
>  	return ret;
>  }
>  =

> +/**
> + * i915_ttm_buddy_man_avail - Get the currently available size
> + * @man: The buddy allocator ttm manager
> + *
> + * Return: The available size in bytes
> + */
> +u64 i915_ttm_buddy_man_get_avail(struct ttm_resource_manager *man)
> +{
> +	struct i915_ttm_buddy_manager *bman =3D to_buddy_manager(man);
> +	struct i915_buddy_mm *mm =3D &bman->mm;
> +
> +	return mm->avail;
> +}
> diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.h b/drivers/gpu/=
drm/i915/i915_ttm_buddy_manager.h
> index 26026213e20a..39f5b1a4c3e7 100644
> --- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.h
> +++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.h
> @@ -53,4 +53,6 @@ int i915_ttm_buddy_man_fini(struct ttm_device *bdev,
>  int i915_ttm_buddy_man_reserve(struct ttm_resource_manager *man,
>  			       u64 start, u64 size);
>  =

> +u64 i915_ttm_buddy_man_get_avail(struct ttm_resource_manager *man);
> +
>  #endif
> diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm=
/i915/intel_memory_region.c
> index df59f884d37c..d5edf088be48 100644
> --- a/drivers/gpu/drm/i915/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/intel_memory_region.c
> @@ -132,6 +132,21 @@ void intel_memory_region_set_name(struct intel_memor=
y_region *mem,
>  	va_end(ap);
>  }
>  =

> +/**
> + * intel_memory_region_get_avail - Get the currently available size for =
the
> + * region
> + * @mr: The memory region
> + *
> + * Return: The available size in bytes
> + */
> +u64 intel_memory_region_get_avail(struct intel_memory_region *mr)
> +{
> +	if (mr->type =3D=3D INTEL_MEMORY_LOCAL)
> +		return i915_ttm_buddy_man_get_avail(mr->region_private);
> +
> +	return mr->avail;
> +}
> +
>  static void __intel_memory_region_destroy(struct kref *kref)
>  {
>  	struct intel_memory_region *mem =3D
> diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm=
/i915/intel_memory_region.h
> index 2be8433d373a..6f7a073d5a70 100644
> --- a/drivers/gpu/drm/i915/intel_memory_region.h
> +++ b/drivers/gpu/drm/i915/intel_memory_region.h
> @@ -74,6 +74,7 @@ struct intel_memory_region {
>  	resource_size_t io_start;
>  	resource_size_t min_page_size;
>  	resource_size_t total;
> +	/* Do not access directly. Use the accessor instead. */
>  	resource_size_t avail;
>  =

>  	u16 type;
> @@ -125,4 +126,7 @@ intel_memory_region_set_name(struct intel_memory_regi=
on *mem,
>  int intel_memory_region_reserve(struct intel_memory_region *mem,
>  				resource_size_t offset,
>  				resource_size_t size);
> +
> +u64 intel_memory_region_get_avail(struct intel_memory_region *mem);
> +
>  #endif
> -- =

> 2.26.3
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
