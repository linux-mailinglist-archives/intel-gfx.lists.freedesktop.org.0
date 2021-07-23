Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA1B3D356A
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 09:39:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13F4E6E288;
	Fri, 23 Jul 2021 07:38:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8D4A6E288
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 07:38:57 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id n11so242863wmd.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 00:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=LxDxtYebL8rZUifJJESgLOGQxPah0aMeG52OAVh1eUg=;
 b=CurWy6ncw2xXbrXV+2XtV2eqLoQO1OCIdo8IhOoR4ZBRpnXjEOTnQ7x7C07f7gHftY
 ClOc27vqhBtzfwWcJRRCsgq4R7osNCrZknBxUQz0dxCqq2QO7CwRYuO93bU+5NHC510i
 HyhflFtOoeHRRAiN6q5ivqQIHApoEkerqj32s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=LxDxtYebL8rZUifJJESgLOGQxPah0aMeG52OAVh1eUg=;
 b=JzzSCTvIZfT4VYuglBFdNtA0i0/sWc/mwylPdZb3CTzJByRN695MnwDrfsFRJl8W1h
 U9tAspriYM4y7dRgQGpBZnDY5uKr495ehSa0tTB1tmc4Y+26xAl8h/qinHc8Ep6HkZVG
 Me3G8+vfeJlFpSNgE6tweyW9IMw/OoagmyHRcUu9hqL1JzmQN2/0h9PWQTURagDiPmqe
 eKQ5Yf37ARDlnIa8ZIL1um2W06huzyaJjPPRwQKppZvtq5o153dvaezbfm41+3xjWWy2
 /JHQKeLBZUKMzj0ZQv2SjV7p7t31jgCrVt4+gjfa5o1P3so1hMmPt+pjO/z8fPvn6k6I
 2IOQ==
X-Gm-Message-State: AOAM530FVG2oi+EWywosRRJE6jiruJs4X5yTIeOfwTpX1KjqbxG1lh/I
 3i/Sb1pHf4ZGx1yBi1sagFKmsw==
X-Google-Smtp-Source: ABdhPJxMC+q3KZhUmG62Xu1rH+/g2ZN+o3RahF+ZJWc8c4cSQQqe5FosbpBOo8ufAJH+pbTwguXD5A==
X-Received: by 2002:a05:600c:511d:: with SMTP id
 o29mr12500113wms.26.1627025936467; 
 Fri, 23 Jul 2021 00:38:56 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f2sm31937414wrq.69.2021.07.23.00.38.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jul 2021 00:38:55 -0700 (PDT)
Date: Fri, 23 Jul 2021 09:38:54 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <YPpyDmUn2y3voyH/@phenom.ffwll.local>
References: <20210713205153.1896059-1-daniel.vetter@ffwll.ch>
 <20210713205153.1896059-5-daniel.vetter@ffwll.ch>
 <583f682a-bc0b-54a0-442d-487a500bcb1c@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <583f682a-bc0b-54a0-442d-487a500bcb1c@suse.de>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH v4 4/4] drm/vgem: use shmem helpers
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Melissa Wen <melissa.srw@gmail.com>, John Stultz <john.stultz@linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Sumit Semwal <sumit.semwal@linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 22, 2021 at 08:50:48PM +0200, Thomas Zimmermann wrote:
> Hi
> =

> Am 13.07.21 um 22:51 schrieb Daniel Vetter:
> > Aside from deleting lots of code the real motivation here is to switch
> > the mmap over to VM_PFNMAP, to be more consistent with what real gpu
> > drivers do. They're all VM_PFNMP, which means get_user_pages doesn't
> > work, and even if you try and there's a struct page behind that,
> > touching it and mucking around with its refcount can upset drivers
> > real bad.
> > =

> > v2: Review from Thomas:
> > - sort #include
> > - drop more dead code that I didn't spot somehow
> > =

> > v3: select DRM_GEM_SHMEM_HELPER to make it build (intel-gfx-ci)
> > =

> > v4: I got tricked by 0cf2ef46c6c0 ("drm/shmem-helper: Use cached
> > mappings by default"), and we need WC in vgem because vgem doesn't
> > have explicit begin/end cpu access ioctls.
> > =

> > Also add a comment why exactly vgem has to use wc.
> > =

> > v5: Don't set obj->base.funcs, it will default to drm_gem_shmem_funcs
> > (Thomas)
> > =

> > v6: vgem also needs an MMU for remapping
> > =

> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
> > Cc: John Stultz <john.stultz@linaro.org>
> > Cc: Sumit Semwal <sumit.semwal@linaro.org>
> > Cc: "Christian K=F6nig" <christian.koenig@amd.com>
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Melissa Wen <melissa.srw@gmail.com>
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/Kconfig         |   5 +-
> >   drivers/gpu/drm/vgem/vgem_drv.c | 315 ++------------------------------
> >   2 files changed, 15 insertions(+), 305 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> > index 314eefa39892..28f7d2006e8b 100644
> > --- a/drivers/gpu/drm/Kconfig
> > +++ b/drivers/gpu/drm/Kconfig
> > @@ -272,7 +272,8 @@ source "drivers/gpu/drm/kmb/Kconfig"
> >   config DRM_VGEM
> >   	tristate "Virtual GEM provider"
> > -	depends on DRM
> > +	depends on DRM && MMU
> > +	select DRM_GEM_SHMEM_HELPER
> >   	help
> >   	  Choose this option to get a virtual graphics memory manager,
> >   	  as used by Mesa's software renderer for enhanced performance.
> > @@ -280,7 +281,7 @@ config DRM_VGEM
> >   config DRM_VKMS
> >   	tristate "Virtual KMS (EXPERIMENTAL)"
> > -	depends on DRM
> > +	depends on DRM && MMU
> >   	select DRM_KMS_HELPER
> >   	select DRM_GEM_SHMEM_HELPER
> >   	select CRC32
> > diff --git a/drivers/gpu/drm/vgem/vgem_drv.c b/drivers/gpu/drm/vgem/vge=
m_drv.c
> > index bf38a7e319d1..ba410ba6b7f7 100644
> > --- a/drivers/gpu/drm/vgem/vgem_drv.c
> > +++ b/drivers/gpu/drm/vgem/vgem_drv.c
> > @@ -38,6 +38,7 @@
> >   #include <drm/drm_drv.h>
> >   #include <drm/drm_file.h>
> > +#include <drm/drm_gem_shmem_helper.h>
> >   #include <drm/drm_ioctl.h>
> >   #include <drm/drm_managed.h>
> >   #include <drm/drm_prime.h>
> > @@ -50,87 +51,11 @@
> >   #define DRIVER_MAJOR	1
> >   #define DRIVER_MINOR	0
> > -static const struct drm_gem_object_funcs vgem_gem_object_funcs;
> > -
> >   static struct vgem_device {
> >   	struct drm_device drm;
> >   	struct platform_device *platform;
> >   } *vgem_device;
> > -static void vgem_gem_free_object(struct drm_gem_object *obj)
> > -{
> > -	struct drm_vgem_gem_object *vgem_obj =3D to_vgem_bo(obj);
> > -
> > -	kvfree(vgem_obj->pages);
> > -	mutex_destroy(&vgem_obj->pages_lock);
> > -
> > -	if (obj->import_attach)
> > -		drm_prime_gem_destroy(obj, vgem_obj->table);
> > -
> > -	drm_gem_object_release(obj);
> > -	kfree(vgem_obj);
> > -}
> > -
> > -static vm_fault_t vgem_gem_fault(struct vm_fault *vmf)
> > -{
> > -	struct vm_area_struct *vma =3D vmf->vma;
> > -	struct drm_vgem_gem_object *obj =3D vma->vm_private_data;
> > -	/* We don't use vmf->pgoff since that has the fake offset */
> > -	unsigned long vaddr =3D vmf->address;
> > -	vm_fault_t ret =3D VM_FAULT_SIGBUS;
> > -	loff_t num_pages;
> > -	pgoff_t page_offset;
> > -	page_offset =3D (vaddr - vma->vm_start) >> PAGE_SHIFT;
> > -
> > -	num_pages =3D DIV_ROUND_UP(obj->base.size, PAGE_SIZE);
> > -
> > -	if (page_offset >=3D num_pages)
> > -		return VM_FAULT_SIGBUS;
> > -
> > -	mutex_lock(&obj->pages_lock);
> > -	if (obj->pages) {
> > -		get_page(obj->pages[page_offset]);
> > -		vmf->page =3D obj->pages[page_offset];
> > -		ret =3D 0;
> > -	}
> > -	mutex_unlock(&obj->pages_lock);
> > -	if (ret) {
> > -		struct page *page;
> > -
> > -		page =3D shmem_read_mapping_page(
> > -					file_inode(obj->base.filp)->i_mapping,
> > -					page_offset);
> > -		if (!IS_ERR(page)) {
> > -			vmf->page =3D page;
> > -			ret =3D 0;
> > -		} else switch (PTR_ERR(page)) {
> > -			case -ENOSPC:
> > -			case -ENOMEM:
> > -				ret =3D VM_FAULT_OOM;
> > -				break;
> > -			case -EBUSY:
> > -				ret =3D VM_FAULT_RETRY;
> > -				break;
> > -			case -EFAULT:
> > -			case -EINVAL:
> > -				ret =3D VM_FAULT_SIGBUS;
> > -				break;
> > -			default:
> > -				WARN_ON(PTR_ERR(page));
> > -				ret =3D VM_FAULT_SIGBUS;
> > -				break;
> > -		}
> > -
> > -	}
> > -	return ret;
> > -}
> > -
> > -static const struct vm_operations_struct vgem_gem_vm_ops =3D {
> > -	.fault =3D vgem_gem_fault,
> > -	.open =3D drm_gem_vm_open,
> > -	.close =3D drm_gem_vm_close,
> > -};
> > -
> >   static int vgem_open(struct drm_device *dev, struct drm_file *file)
> >   {
> >   	struct vgem_file *vfile;
> > @@ -159,81 +84,6 @@ static void vgem_postclose(struct drm_device *dev, =
struct drm_file *file)
> >   	kfree(vfile);
> >   }
> > -static struct drm_vgem_gem_object *__vgem_gem_create(struct drm_device=
 *dev,
> > -						unsigned long size)
> > -{
> > -	struct drm_vgem_gem_object *obj;
> > -	int ret;
> > -
> > -	obj =3D kzalloc(sizeof(*obj), GFP_KERNEL);
> > -	if (!obj)
> > -		return ERR_PTR(-ENOMEM);
> > -
> > -	obj->base.funcs =3D &vgem_gem_object_funcs;
> > -
> > -	ret =3D drm_gem_object_init(dev, &obj->base, roundup(size, PAGE_SIZE)=
);
> > -	if (ret) {
> > -		kfree(obj);
> > -		return ERR_PTR(ret);
> > -	}
> > -
> > -	mutex_init(&obj->pages_lock);
> > -
> > -	return obj;
> > -}
> > -
> > -static void __vgem_gem_destroy(struct drm_vgem_gem_object *obj)
> > -{
> > -	drm_gem_object_release(&obj->base);
> > -	kfree(obj);
> > -}
> > -
> > -static struct drm_gem_object *vgem_gem_create(struct drm_device *dev,
> > -					      struct drm_file *file,
> > -					      unsigned int *handle,
> > -					      unsigned long size)
> > -{
> > -	struct drm_vgem_gem_object *obj;
> > -	int ret;
> > -
> > -	obj =3D __vgem_gem_create(dev, size);
> > -	if (IS_ERR(obj))
> > -		return ERR_CAST(obj);
> > -
> > -	ret =3D drm_gem_handle_create(file, &obj->base, handle);
> > -	if (ret) {
> > -		drm_gem_object_put(&obj->base);
> > -		return ERR_PTR(ret);
> > -	}
> > -
> > -	return &obj->base;
> > -}
> > -
> > -static int vgem_gem_dumb_create(struct drm_file *file, struct drm_devi=
ce *dev,
> > -				struct drm_mode_create_dumb *args)
> > -{
> > -	struct drm_gem_object *gem_object;
> > -	u64 pitch, size;
> > -
> > -	pitch =3D args->width * DIV_ROUND_UP(args->bpp, 8);
> > -	size =3D args->height * pitch;
> > -	if (size =3D=3D 0)
> > -		return -EINVAL;
> > -
> > -	gem_object =3D vgem_gem_create(dev, file, &args->handle, size);
> > -	if (IS_ERR(gem_object))
> > -		return PTR_ERR(gem_object);
> > -
> > -	args->size =3D gem_object->size;
> > -	args->pitch =3D pitch;
> > -
> > -	drm_gem_object_put(gem_object);
> > -
> > -	DRM_DEBUG("Created object of size %llu\n", args->size);
> > -
> > -	return 0;
> > -}
> > -
> >   static struct drm_ioctl_desc vgem_ioctls[] =3D {
> >   	DRM_IOCTL_DEF_DRV(VGEM_FENCE_ATTACH, vgem_fence_attach_ioctl, DRM_RE=
NDER_ALLOW),
> >   	DRM_IOCTL_DEF_DRV(VGEM_FENCE_SIGNAL, vgem_fence_signal_ioctl, DRM_RE=
NDER_ALLOW),
> > @@ -266,159 +116,23 @@ static const struct file_operations vgem_driver_=
fops =3D {
> >   	.release	=3D drm_release,
> >   };
> > -static struct page **vgem_pin_pages(struct drm_vgem_gem_object *bo)
> > -{
> > -	mutex_lock(&bo->pages_lock);
> > -	if (bo->pages_pin_count++ =3D=3D 0) {
> > -		struct page **pages;
> > -
> > -		pages =3D drm_gem_get_pages(&bo->base);
> > -		if (IS_ERR(pages)) {
> > -			bo->pages_pin_count--;
> > -			mutex_unlock(&bo->pages_lock);
> > -			return pages;
> > -		}
> > -
> > -		bo->pages =3D pages;
> > -	}
> > -	mutex_unlock(&bo->pages_lock);
> > -
> > -	return bo->pages;
> > -}
> > -
> > -static void vgem_unpin_pages(struct drm_vgem_gem_object *bo)
> > +static struct drm_gem_object *vgem_gem_create_object(struct drm_device=
 *dev, size_t size)
> >   {
> > -	mutex_lock(&bo->pages_lock);
> > -	if (--bo->pages_pin_count =3D=3D 0) {
> > -		drm_gem_put_pages(&bo->base, bo->pages, true, true);
> > -		bo->pages =3D NULL;
> > -	}
> > -	mutex_unlock(&bo->pages_lock);
> > -}
> > +	struct drm_gem_shmem_object *obj;
> > -static int vgem_prime_pin(struct drm_gem_object *obj)
> > -{
> > -	struct drm_vgem_gem_object *bo =3D to_vgem_bo(obj);
> > -	long n_pages =3D obj->size >> PAGE_SHIFT;
> > -	struct page **pages;
> > -
> > -	pages =3D vgem_pin_pages(bo);
> > -	if (IS_ERR(pages))
> > -		return PTR_ERR(pages);
> > +	obj =3D kzalloc(sizeof(*obj), GFP_KERNEL);
> > +	if (!obj)
> > +		return NULL;
> > -	/* Flush the object from the CPU cache so that importers can rely
> > -	 * on coherent indirect access via the exported dma-address.
> > +	/*
> > +	 * vgem doesn't have any begin/end cpu access ioctls, therefore must =
use
> > +	 * coherent memory or dma-buf sharing just wont work.
> >   	 */
> > -	drm_clflush_pages(pages, n_pages);
> =

> Instead of shoehorning GEM SHMEM to get caching right (patch 2) have you
> considered to set your own GEM funcs object for vgem. All function pointe=
rs
> would point to SHMEM functions, except for pin, which would be
> drm_gem_shmem_pin() + drm_clflush_pages(). If this works, I think it would
> be much preferable to the current patch 2. You can override the default G=
EM
> functions from within vgem_gem_create_object().

The thing is: shmem helpers currently get the caching wrong for wc. vgem
is just the messenger.

Also, get_pages + drm_clflush is not actually guaranteed to be enough
across platforms. It is enough on intel x86 cpus (and I think all modern
amd x86 cpus, but not some earlier ones from way back), but not in general
across the board.
-Daniel

> =

> Best regards
> Thomas
> =

> =

> > -
> > -	return 0;
> > -}
> > -
> > -static void vgem_prime_unpin(struct drm_gem_object *obj)
> > -{
> > -	struct drm_vgem_gem_object *bo =3D to_vgem_bo(obj);
> > -
> > -	vgem_unpin_pages(bo);
> > -}
> > -
> > -static struct sg_table *vgem_prime_get_sg_table(struct drm_gem_object =
*obj)
> > -{
> > -	struct drm_vgem_gem_object *bo =3D to_vgem_bo(obj);
> > -
> > -	return drm_prime_pages_to_sg(obj->dev, bo->pages, bo->base.size >> PA=
GE_SHIFT);
> > -}
> > -
> > -static struct drm_gem_object* vgem_prime_import(struct drm_device *dev,
> > -						struct dma_buf *dma_buf)
> > -{
> > -	struct vgem_device *vgem =3D container_of(dev, typeof(*vgem), drm);
> > -
> > -	return drm_gem_prime_import_dev(dev, dma_buf, &vgem->platform->dev);
> > -}
> > -
> > -static struct drm_gem_object *vgem_prime_import_sg_table(struct drm_de=
vice *dev,
> > -			struct dma_buf_attachment *attach, struct sg_table *sg)
> > -{
> > -	struct drm_vgem_gem_object *obj;
> > -	int npages;
> > -
> > -	obj =3D __vgem_gem_create(dev, attach->dmabuf->size);
> > -	if (IS_ERR(obj))
> > -		return ERR_CAST(obj);
> > -
> > -	npages =3D PAGE_ALIGN(attach->dmabuf->size) / PAGE_SIZE;
> > -
> > -	obj->table =3D sg;
> > -	obj->pages =3D kvmalloc_array(npages, sizeof(struct page *), GFP_KERN=
EL);
> > -	if (!obj->pages) {
> > -		__vgem_gem_destroy(obj);
> > -		return ERR_PTR(-ENOMEM);
> > -	}
> > +	obj->map_wc =3D true;
> > -	obj->pages_pin_count++; /* perma-pinned */
> > -	drm_prime_sg_to_page_array(obj->table, obj->pages, npages);
> >   	return &obj->base;
> >   }
> > -static int vgem_prime_vmap(struct drm_gem_object *obj, struct dma_buf_=
map *map)
> > -{
> > -	struct drm_vgem_gem_object *bo =3D to_vgem_bo(obj);
> > -	long n_pages =3D obj->size >> PAGE_SHIFT;
> > -	struct page **pages;
> > -	void *vaddr;
> > -
> > -	pages =3D vgem_pin_pages(bo);
> > -	if (IS_ERR(pages))
> > -		return PTR_ERR(pages);
> > -
> > -	vaddr =3D vmap(pages, n_pages, 0, pgprot_writecombine(PAGE_KERNEL));
> > -	if (!vaddr)
> > -		return -ENOMEM;
> > -	dma_buf_map_set_vaddr(map, vaddr);
> > -
> > -	return 0;
> > -}
> > -
> > -static void vgem_prime_vunmap(struct drm_gem_object *obj, struct dma_b=
uf_map *map)
> > -{
> > -	struct drm_vgem_gem_object *bo =3D to_vgem_bo(obj);
> > -
> > -	vunmap(map->vaddr);
> > -	vgem_unpin_pages(bo);
> > -}
> > -
> > -static int vgem_prime_mmap(struct drm_gem_object *obj,
> > -			   struct vm_area_struct *vma)
> > -{
> > -	int ret;
> > -
> > -	if (obj->size < vma->vm_end - vma->vm_start)
> > -		return -EINVAL;
> > -
> > -	if (!obj->filp)
> > -		return -ENODEV;
> > -
> > -	ret =3D call_mmap(obj->filp, vma);
> > -	if (ret)
> > -		return ret;
> > -
> > -	vma_set_file(vma, obj->filp);
> > -	vma->vm_flags |=3D VM_DONTEXPAND | VM_DONTDUMP;
> > -	vma->vm_page_prot =3D pgprot_writecombine(vm_get_page_prot(vma->vm_fl=
ags));
> > -
> > -	return 0;
> > -}
> > -
> > -static const struct drm_gem_object_funcs vgem_gem_object_funcs =3D {
> > -	.free =3D vgem_gem_free_object,
> > -	.pin =3D vgem_prime_pin,
> > -	.unpin =3D vgem_prime_unpin,
> > -	.get_sg_table =3D vgem_prime_get_sg_table,
> > -	.vmap =3D vgem_prime_vmap,
> > -	.vunmap =3D vgem_prime_vunmap,
> > -	.vm_ops =3D &vgem_gem_vm_ops,
> > -};
> > -
> >   static const struct drm_driver vgem_driver =3D {
> >   	.driver_features		=3D DRIVER_GEM | DRIVER_RENDER,
> >   	.open				=3D vgem_open,
> > @@ -427,13 +141,8 @@ static const struct drm_driver vgem_driver =3D {
> >   	.num_ioctls 			=3D ARRAY_SIZE(vgem_ioctls),
> >   	.fops				=3D &vgem_driver_fops,
> > -	.dumb_create			=3D vgem_gem_dumb_create,
> > -
> > -	.prime_handle_to_fd =3D drm_gem_prime_handle_to_fd,
> > -	.prime_fd_to_handle =3D drm_gem_prime_fd_to_handle,
> > -	.gem_prime_import =3D vgem_prime_import,
> > -	.gem_prime_import_sg_table =3D vgem_prime_import_sg_table,
> > -	.gem_prime_mmap =3D vgem_prime_mmap,
> > +	DRM_GEM_SHMEM_DRIVER_OPS,
> > +	.gem_create_object		=3D vgem_gem_create_object,
> >   	.name	=3D DRIVER_NAME,
> >   	.desc	=3D DRIVER_DESC,
> > =

> =

> -- =

> Thomas Zimmermann
> Graphics Driver Developer
> SUSE Software Solutions Germany GmbH
> Maxfeldstr. 5, 90409 N=FCrnberg, Germany
> (HRB 36809, AG N=FCrnberg)
> Gesch=E4ftsf=FChrer: Felix Imend=F6rffer
> =





-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
