Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6ACC78AEB8
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 13:25:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DBF010E290;
	Mon, 28 Aug 2023 11:25:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D37E310E290;
 Mon, 28 Aug 2023 11:25:08 +0000 (UTC)
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id D452B6600873;
 Mon, 28 Aug 2023 12:25:06 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1693221907;
 bh=Yp7jdeCyY04l1EqN86XVk/9TxjMQ5qvhg9QJtLvBdBw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=k5IpxC8Ia5v/fqEiPNfuXbQNG0bIInAV3eq3fTeXwj4LihA3YlLtpMu0UPoVIQNRD
 BleVteOx7Q5wivd8LVac11Q2+AQySZ9rzY1c9bIq2jP82p3eyqqGwIx1Tdvj4BR88/
 eBsL/v04eHkTy0UW4O5y/U7w0C2qZyOMVYIPHyyoLU9zU/t2AyF2wlfNkx+U/AZiWj
 P0GN8fE+VToknOqoPqe4IXrdi2o22mMFXZ2kzXRilz2Udpw8jhEnCiWhrSSiAbnjjz
 9o38rwX13Ms98P90krbOaGHhI6ePIXTA2lZvuMUzHAl/u4j2IR56PT0iWcgDhiZ9Qo
 YFpf0HwnyKbbg==
Date: Mon, 28 Aug 2023 13:25:03 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Message-ID: <20230828132503.166f83d8@collabora.com>
In-Reply-To: <20230827175449.1766701-4-dmitry.osipenko@collabora.com>
References: <20230827175449.1766701-1-dmitry.osipenko@collabora.com>
 <20230827175449.1766701-4-dmitry.osipenko@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v15 03/23] drm/gem: Change locked/unlocked
 postfix of drm_gem_v/unmap() function names
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
Cc: Mark Rutland <mark.rutland@arm.com>, Emma Anholt <emma@anholt.net>,
 Peter Zijlstra <peterz@infradead.org>, dri-devel@lists.freedesktop.org,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Gerd Hoffmann <kraxel@redhat.com>, kernel@collabora.com,
 Will Deacon <will@kernel.org>, David Airlie <airlied@gmail.com>,
 Steven Price <steven.price@arm.com>, intel-gfx@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Boqun Feng <boqun.feng@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Melissa Wen <mwen@igalia.com>,
 virtualization@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Chia-I Wu <olvaffe@gmail.com>, Qiang Yu <yuq825@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, 27 Aug 2023 20:54:29 +0300
Dmitry Osipenko <dmitry.osipenko@collabora.com> wrote:

> Make drm/gem API function names consistent by having locked function
> use the _locked postfix in the name, while the unlocked variants don't
> use the _unlocked postfix. Rename drm_gem_v/unmap() function names to
> make them consistent with the rest of the API functions.
> 
> Suggested-by: Boris Brezillon <boris.brezillon@collabora.com>
> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/gpu/drm/drm_client.c                 |  6 +++---
>  drivers/gpu/drm/drm_gem.c                    | 20 ++++++++++----------
>  drivers/gpu/drm/drm_gem_framebuffer_helper.c |  6 +++---
>  drivers/gpu/drm/drm_internal.h               |  4 ++--
>  drivers/gpu/drm/drm_prime.c                  |  4 ++--
>  drivers/gpu/drm/lima/lima_sched.c            |  4 ++--
>  drivers/gpu/drm/panfrost/panfrost_dump.c     |  4 ++--
>  drivers/gpu/drm/panfrost/panfrost_perfcnt.c  |  6 +++---
>  include/drm/drm_gem.h                        |  4 ++--
>  9 files changed, 29 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_client.c b/drivers/gpu/drm/drm_client.c
> index 037e36f2049c..29306657117a 100644
> --- a/drivers/gpu/drm/drm_client.c
> +++ b/drivers/gpu/drm/drm_client.c
> @@ -265,7 +265,7 @@ void drm_client_dev_restore(struct drm_device *dev)
>  static void drm_client_buffer_delete(struct drm_client_buffer *buffer)
>  {
>  	if (buffer->gem) {
> -		drm_gem_vunmap_unlocked(buffer->gem, &buffer->map);
> +		drm_gem_vunmap(buffer->gem, &buffer->map);
>  		drm_gem_object_put(buffer->gem);
>  	}
>  
> @@ -349,7 +349,7 @@ drm_client_buffer_vmap(struct drm_client_buffer *buffer,
>  	 * fd_install step out of the driver backend hooks, to make that
>  	 * final step optional for internal users.
>  	 */
> -	ret = drm_gem_vmap_unlocked(buffer->gem, map);
> +	ret = drm_gem_vmap(buffer->gem, map);
>  	if (ret)
>  		return ret;
>  
> @@ -371,7 +371,7 @@ void drm_client_buffer_vunmap(struct drm_client_buffer *buffer)
>  {
>  	struct iosys_map *map = &buffer->map;
>  
> -	drm_gem_vunmap_unlocked(buffer->gem, map);
> +	drm_gem_vunmap(buffer->gem, map);
>  }
>  EXPORT_SYMBOL(drm_client_buffer_vunmap);
>  
> diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> index 6129b89bb366..fae5832bb0bd 100644
> --- a/drivers/gpu/drm/drm_gem.c
> +++ b/drivers/gpu/drm/drm_gem.c
> @@ -1173,7 +1173,7 @@ void drm_gem_unpin(struct drm_gem_object *obj)
>  		obj->funcs->unpin(obj);
>  }
>  
> -int drm_gem_vmap(struct drm_gem_object *obj, struct iosys_map *map)
> +int drm_gem_vmap_locked(struct drm_gem_object *obj, struct iosys_map *map)
>  {
>  	int ret;
>  
> @@ -1190,9 +1190,9 @@ int drm_gem_vmap(struct drm_gem_object *obj, struct iosys_map *map)
>  
>  	return 0;
>  }
> -EXPORT_SYMBOL(drm_gem_vmap);
> +EXPORT_SYMBOL(drm_gem_vmap_locked);
>  
> -void drm_gem_vunmap(struct drm_gem_object *obj, struct iosys_map *map)
> +void drm_gem_vunmap_locked(struct drm_gem_object *obj, struct iosys_map *map)
>  {
>  	dma_resv_assert_held(obj->resv);
>  
> @@ -1205,27 +1205,27 @@ void drm_gem_vunmap(struct drm_gem_object *obj, struct iosys_map *map)
>  	/* Always set the mapping to NULL. Callers may rely on this. */
>  	iosys_map_clear(map);
>  }
> -EXPORT_SYMBOL(drm_gem_vunmap);
> +EXPORT_SYMBOL(drm_gem_vunmap_locked);
>  
> -int drm_gem_vmap_unlocked(struct drm_gem_object *obj, struct iosys_map *map)
> +int drm_gem_vmap(struct drm_gem_object *obj, struct iosys_map *map)
>  {
>  	int ret;
>  
>  	dma_resv_lock(obj->resv, NULL);
> -	ret = drm_gem_vmap(obj, map);
> +	ret = drm_gem_vmap_locked(obj, map);
>  	dma_resv_unlock(obj->resv);
>  
>  	return ret;
>  }
> -EXPORT_SYMBOL(drm_gem_vmap_unlocked);
> +EXPORT_SYMBOL(drm_gem_vmap);
>  
> -void drm_gem_vunmap_unlocked(struct drm_gem_object *obj, struct iosys_map *map)
> +void drm_gem_vunmap(struct drm_gem_object *obj, struct iosys_map *map)
>  {
>  	dma_resv_lock(obj->resv, NULL);
> -	drm_gem_vunmap(obj, map);
> +	drm_gem_vunmap_locked(obj, map);
>  	dma_resv_unlock(obj->resv);
>  }
> -EXPORT_SYMBOL(drm_gem_vunmap_unlocked);
> +EXPORT_SYMBOL(drm_gem_vunmap);
>  
>  /**
>   * drm_gem_lock_reservations - Sets up the ww context and acquires
> diff --git a/drivers/gpu/drm/drm_gem_framebuffer_helper.c b/drivers/gpu/drm/drm_gem_framebuffer_helper.c
> index 3bdb6ba37ff4..3808f47310bf 100644
> --- a/drivers/gpu/drm/drm_gem_framebuffer_helper.c
> +++ b/drivers/gpu/drm/drm_gem_framebuffer_helper.c
> @@ -362,7 +362,7 @@ int drm_gem_fb_vmap(struct drm_framebuffer *fb, struct iosys_map *map,
>  			ret = -EINVAL;
>  			goto err_drm_gem_vunmap;
>  		}
> -		ret = drm_gem_vmap_unlocked(obj, &map[i]);
> +		ret = drm_gem_vmap(obj, &map[i]);
>  		if (ret)
>  			goto err_drm_gem_vunmap;
>  	}
> @@ -384,7 +384,7 @@ int drm_gem_fb_vmap(struct drm_framebuffer *fb, struct iosys_map *map,
>  		obj = drm_gem_fb_get_obj(fb, i);
>  		if (!obj)
>  			continue;
> -		drm_gem_vunmap_unlocked(obj, &map[i]);
> +		drm_gem_vunmap(obj, &map[i]);
>  	}
>  	return ret;
>  }
> @@ -411,7 +411,7 @@ void drm_gem_fb_vunmap(struct drm_framebuffer *fb, struct iosys_map *map)
>  			continue;
>  		if (iosys_map_is_null(&map[i]))
>  			continue;
> -		drm_gem_vunmap_unlocked(obj, &map[i]);
> +		drm_gem_vunmap(obj, &map[i]);
>  	}
>  }
>  EXPORT_SYMBOL(drm_gem_fb_vunmap);
> diff --git a/drivers/gpu/drm/drm_internal.h b/drivers/gpu/drm/drm_internal.h
> index ba12acd55139..243d9aa52881 100644
> --- a/drivers/gpu/drm/drm_internal.h
> +++ b/drivers/gpu/drm/drm_internal.h
> @@ -175,8 +175,8 @@ void drm_gem_print_info(struct drm_printer *p, unsigned int indent,
>  
>  int drm_gem_pin(struct drm_gem_object *obj);
>  void drm_gem_unpin(struct drm_gem_object *obj);
> -int drm_gem_vmap(struct drm_gem_object *obj, struct iosys_map *map);
> -void drm_gem_vunmap(struct drm_gem_object *obj, struct iosys_map *map);
> +int drm_gem_vmap_locked(struct drm_gem_object *obj, struct iosys_map *map);
> +void drm_gem_vunmap_locked(struct drm_gem_object *obj, struct iosys_map *map);
>  
>  /* drm_debugfs.c drm_debugfs_crc.c */
>  #if defined(CONFIG_DEBUG_FS)
> diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
> index 63b709a67471..57ac5623f09a 100644
> --- a/drivers/gpu/drm/drm_prime.c
> +++ b/drivers/gpu/drm/drm_prime.c
> @@ -682,7 +682,7 @@ int drm_gem_dmabuf_vmap(struct dma_buf *dma_buf, struct iosys_map *map)
>  {
>  	struct drm_gem_object *obj = dma_buf->priv;
>  
> -	return drm_gem_vmap(obj, map);
> +	return drm_gem_vmap_locked(obj, map);
>  }
>  EXPORT_SYMBOL(drm_gem_dmabuf_vmap);
>  
> @@ -698,7 +698,7 @@ void drm_gem_dmabuf_vunmap(struct dma_buf *dma_buf, struct iosys_map *map)
>  {
>  	struct drm_gem_object *obj = dma_buf->priv;
>  
> -	drm_gem_vunmap(obj, map);
> +	drm_gem_vunmap_locked(obj, map);
>  }
>  EXPORT_SYMBOL(drm_gem_dmabuf_vunmap);
>  
> diff --git a/drivers/gpu/drm/lima/lima_sched.c b/drivers/gpu/drm/lima/lima_sched.c
> index ffd91a5ee299..843487128544 100644
> --- a/drivers/gpu/drm/lima/lima_sched.c
> +++ b/drivers/gpu/drm/lima/lima_sched.c
> @@ -371,7 +371,7 @@ static void lima_sched_build_error_task_list(struct lima_sched_task *task)
>  		} else {
>  			buffer_chunk->size = lima_bo_size(bo);
>  
> -			ret = drm_gem_vmap_unlocked(&bo->base.base, &map);
> +			ret = drm_gem_vmap(&bo->base.base, &map);
>  			if (ret) {
>  				kvfree(et);
>  				goto out;
> @@ -379,7 +379,7 @@ static void lima_sched_build_error_task_list(struct lima_sched_task *task)
>  
>  			memcpy(buffer_chunk + 1, map.vaddr, buffer_chunk->size);
>  
> -			drm_gem_vunmap_unlocked(&bo->base.base, &map);
> +			drm_gem_vunmap(&bo->base.base, &map);
>  		}
>  
>  		buffer_chunk = (void *)(buffer_chunk + 1) + buffer_chunk->size;
> diff --git a/drivers/gpu/drm/panfrost/panfrost_dump.c b/drivers/gpu/drm/panfrost/panfrost_dump.c
> index e7942ac449c6..0f30bbea9895 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_dump.c
> +++ b/drivers/gpu/drm/panfrost/panfrost_dump.c
> @@ -209,7 +209,7 @@ void panfrost_core_dump(struct panfrost_job *job)
>  			goto dump_header;
>  		}
>  
> -		ret = drm_gem_vmap_unlocked(&bo->base.base, &map);
> +		ret = drm_gem_vmap(&bo->base.base, &map);
>  		if (ret) {
>  			dev_err(pfdev->dev, "Panfrost Dump: couldn't map Buffer Object\n");
>  			iter.hdr->bomap.valid = 0;
> @@ -236,7 +236,7 @@ void panfrost_core_dump(struct panfrost_job *job)
>  		vaddr = map.vaddr;
>  		memcpy(iter.data, vaddr, bo->base.base.size);
>  
> -		drm_gem_vunmap_unlocked(&bo->base.base, &map);
> +		drm_gem_vunmap(&bo->base.base, &map);
>  
>  		iter.hdr->bomap.valid = 1;
>  
> diff --git a/drivers/gpu/drm/panfrost/panfrost_perfcnt.c b/drivers/gpu/drm/panfrost/panfrost_perfcnt.c
> index ba9b6e2b2636..52befead08c6 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_perfcnt.c
> +++ b/drivers/gpu/drm/panfrost/panfrost_perfcnt.c
> @@ -106,7 +106,7 @@ static int panfrost_perfcnt_enable_locked(struct panfrost_device *pfdev,
>  		goto err_close_bo;
>  	}
>  
> -	ret = drm_gem_vmap_unlocked(&bo->base, &map);
> +	ret = drm_gem_vmap(&bo->base, &map);
>  	if (ret)
>  		goto err_put_mapping;
>  	perfcnt->buf = map.vaddr;
> @@ -165,7 +165,7 @@ static int panfrost_perfcnt_enable_locked(struct panfrost_device *pfdev,
>  	return 0;
>  
>  err_vunmap:
> -	drm_gem_vunmap_unlocked(&bo->base, &map);
> +	drm_gem_vunmap(&bo->base, &map);
>  err_put_mapping:
>  	panfrost_gem_mapping_put(perfcnt->mapping);
>  err_close_bo:
> @@ -195,7 +195,7 @@ static int panfrost_perfcnt_disable_locked(struct panfrost_device *pfdev,
>  		  GPU_PERFCNT_CFG_MODE(GPU_PERFCNT_CFG_MODE_OFF));
>  
>  	perfcnt->user = NULL;
> -	drm_gem_vunmap_unlocked(&perfcnt->mapping->obj->base.base, &map);
> +	drm_gem_vunmap(&perfcnt->mapping->obj->base.base, &map);
>  	perfcnt->buf = NULL;
>  	panfrost_gem_close(&perfcnt->mapping->obj->base.base, file_priv);
>  	panfrost_mmu_as_put(pfdev, perfcnt->mapping->mmu);
> diff --git a/include/drm/drm_gem.h b/include/drm/drm_gem.h
> index c0b13c43b459..f338f8cfacf7 100644
> --- a/include/drm/drm_gem.h
> +++ b/include/drm/drm_gem.h
> @@ -518,8 +518,8 @@ struct page **drm_gem_get_pages(struct drm_gem_object *obj);
>  void drm_gem_put_pages(struct drm_gem_object *obj, struct page **pages,
>  		bool dirty, bool accessed);
>  
> -int drm_gem_vmap_unlocked(struct drm_gem_object *obj, struct iosys_map *map);
> -void drm_gem_vunmap_unlocked(struct drm_gem_object *obj, struct iosys_map *map);
> +int drm_gem_vmap(struct drm_gem_object *obj, struct iosys_map *map);
> +void drm_gem_vunmap(struct drm_gem_object *obj, struct iosys_map *map);
>  
>  int drm_gem_objects_lookup(struct drm_file *filp, void __user *bo_handles,
>  			   int count, struct drm_gem_object ***objs_out);

