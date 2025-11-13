Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D12C56478
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 09:32:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 786B010E358;
	Thu, 13 Nov 2025 08:32:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin.net header.i=@ursulin.net header.b="d4nEDJJG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19CE510E358
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Nov 2025 08:32:09 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id
 ffacd0b85a97d-42b2a0c18caso294419f8f.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Nov 2025 00:32:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin.net; s=google; t=1763022727; x=1763627527; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=AfukhjueqtZooUC/G//3QoUA+cHzS0R+6tZVZXxzXXs=;
 b=d4nEDJJGdSNHJubI+/9qRClBM21OaY4/Aa1aa11hZSaUicQQK51t3GA+inwMqkPLxs
 pNlpfqEASE926pJcMkaQ0/NXPQsg/A4zrmesmvptQYK0hnKXGUlX11WszFUQjiI7dQtq
 bTAxIwIwtB/01k5KN8CbNhsAh2pF5mcsgXrrzn4JUlClO/7ulONru7zm4/YHqc4ek2uv
 EPhdae4qEFKWWX3I4vj2OfUnwsF3LNVHq9zHT+Lgd1bGypoHqbhKhsJeQXZeIsfv61pR
 cSw471sskuOA9yyjVWNMZhTmxvqoT11Tlek1yXHl+OGCVbUNfHwMO/tRxT65WLYv6EUA
 3gBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763022727; x=1763627527;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=AfukhjueqtZooUC/G//3QoUA+cHzS0R+6tZVZXxzXXs=;
 b=CvA8K9z6soY+N7pOJdJEKrxZ9Amr02awZ4t+6WfoEUYNFeh1Lfhz4qYSGV2AU+HATS
 Vudavn6yoag/4Zre13NcG+J1BMzklK7AfRFhwkxtVMN68sQ1oOw6O2sHIRh85C9hSUSv
 OflweJZ63UAKX75xYQl/fUOgHyw/9p3Jvs8RwADthkzk44yvlyeB2S5r3fChHV0NXgeN
 dBrPVrqi7S6cCjlcd6ovJyqn0GdAfdY3uNBAP53r23yvwYQFqAVQni9tvaAEAS6zrkwr
 xVltolxqBZ/gIEJHdMk2nBqIoEkvZIemfV1MNEBu7ld1aLKOrC/htuPsBSxMQ71A785N
 GUMA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV+fA08bhMVnhCHhgXHBW2zOff4B4GKop0aTo+btJRyh0AngaUMyXa2jZ2TORI/rJ+rSz6D+EjRdmc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzqXxHEkU9eWUdkA0/9HmF1U1hUz7GnBHC3gCwlLyi/qjgYpbqq
 CMsOXNBMH+rvUj/DEzoD/5BL8PiJx31fpXcaHze1FmV0n7Kc+CEoYW/PgrQHpQD00ZA=
X-Gm-Gg: ASbGnctqbV8+hA9cyDl8Far0WVOouemufD1y9C6PZQcKegDrnIpmLhdYBTPzMfLQO2B
 oRoLbySxtO5aSG5AZdv6VSen8W6/akxVzatISF4BTR52Y+Uly412vcXmBeCwWBlV8KxnJVFaqiw
 RV9LM+Ui6wS35Mb45eN7oWC0Z5fBT/iJLPOP+eYU3E61AIJcWTFH+gPYvEut8ZEMi/sxrR8WNV2
 9n9arDP5IsJCIwX2eK/hJFb4+DL2D73/9K+TYNNdnlmdKeQR9SJZIs9wJ5xe87ZORcUrTeIDpE9
 aBXNhIl07bg7BP+XXf3llcYa/rgOo6OxOVHtafUd2Il/1lwgnI1hnwgWdWFlYyY8bwtWSDssnWC
 LvQOWvzHGDpC0qGU7FAvowrX3vqs0ZZ1TsPgUMZJV3OIhf3c+mfPxKe5a0JuP16csrZVkj9aTNX
 CpgmR8o7PkH976L6lwSEgEvNBXc0dy8zf3
X-Google-Smtp-Source: AGHT+IH0c2l5RRE+V35m+0cvDUuaufSmqRTK85FmE16+vXzvxBENUBvWli2MnoVwwrZQ3zZ9MhCvfw==
X-Received: by 2002:a05:6000:401e:b0:42b:3dbe:3a54 with SMTP id
 ffacd0b85a97d-42b4bb98aa5mr4746433f8f.17.1763022727108; 
 Thu, 13 Nov 2025 00:32:07 -0800 (PST)
Received: from [192.168.0.101] ([90.240.106.137])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-42b53e85cc0sm2715644f8f.17.2025.11.13.00.32.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 Nov 2025 00:32:06 -0800 (PST)
Message-ID: <4a311b00-9d69-4f0f-8b82-5f6b7c4c9a9f@ursulin.net>
Date: Thu, 13 Nov 2025 08:32:05 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 05/11] drm/i915: Use huge tmpfs mountpoint helpers
To: =?UTF-8?Q?Lo=C3=AFc_Molinari?= <loic.molinari@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Melissa Wen <mwen@igalia.com>,
 =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
 Hugh Dickins <hughd@google.com>, Baolin Wang
 <baolin.wang@linux.alibaba.com>, Andrew Morton <akpm@linux-foundation.org>,
 Al Viro <viro@zeniv.linux.org.uk>, =?UTF-8?Q?Miko=C5=82aj_Wasiak?=
 <mikolaj.wasiak@intel.com>, Christian Brauner <brauner@kernel.org>,
 Nitin Gote <nitin.r.gote@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Jonathan Corbet <corbet@lwn.net>,
 Christopher Healy <healych@amazon.com>, Matthew Wilcox
 <willy@infradead.org>, Bagas Sanjaya <bagasdotme@gmail.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linux-mm@kvack.org,
 linux-doc@vger.kernel.org, kernel@collabora.com
References: <20251110155000.2936-1-loic.molinari@collabora.com>
 <20251110155000.2936-6-loic.molinari@collabora.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20251110155000.2936-6-loic.molinari@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/11/2025 15:49, Loïc Molinari wrote:
> Make use of the new drm_gem_huge_mnt_create() and
> drm_gem_has_huge_mnt() helpers to avoid code duplication. Now that
> it's just a few lines long, the single function in i915_gemfs.c is
> moved into v3d_gem_shmem.c.
> 
> v3:
> - use huge tmpfs mountpoint in drm_device
> - move i915_gemfs.c into i915_gem_shmem.c
> 
> v4:
> - clean up mountpoint creation error handling
> 
> v5:
> - use drm_gem_has_huge_mnt() helper
> 
> v7:
> - include <drm/drm_print.h> in i915_gem_shmem.c
> 
> Signed-off-by: Loïc Molinari <loic.molinari@collabora.com>
> ---
>   drivers/gpu/drm/i915/Makefile                 |  3 +-
>   drivers/gpu/drm/i915/gem/i915_gem_shmem.c     | 48 +++++++++----
>   drivers/gpu/drm/i915/gem/i915_gemfs.c         | 71 -------------------
>   drivers/gpu/drm/i915/gem/i915_gemfs.h         | 14 ----
>   .../gpu/drm/i915/gem/selftests/huge_pages.c   | 11 +--
>   drivers/gpu/drm/i915/i915_drv.h               |  5 --
>   6 files changed, 42 insertions(+), 110 deletions(-)
>   delete mode 100644 drivers/gpu/drm/i915/gem/i915_gemfs.c
>   delete mode 100644 drivers/gpu/drm/i915/gem/i915_gemfs.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 84ec79b64960..b5a8c0a6b747 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -169,8 +169,7 @@ gem-y += \
>   	gem/i915_gem_ttm_move.o \
>   	gem/i915_gem_ttm_pm.o \
>   	gem/i915_gem_userptr.o \
> -	gem/i915_gem_wait.o \
> -	gem/i915_gemfs.o
> +	gem/i915_gem_wait.o
>   i915-y += \
>   	$(gem-y) \
>   	i915_active.o \
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> index 26dda55a07ff..9bba6f8cdee2 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -9,14 +9,16 @@
>   #include <linux/uio.h>
>   
>   #include <drm/drm_cache.h>
> +#include <drm/drm_gem.h>
> +#include <drm/drm_print.h>
>   
>   #include "gem/i915_gem_region.h"
>   #include "i915_drv.h"
>   #include "i915_gem_object.h"
>   #include "i915_gem_tiling.h"
> -#include "i915_gemfs.h"
>   #include "i915_scatterlist.h"
>   #include "i915_trace.h"
> +#include "i915_utils.h"
>   
>   /*
>    * Move folios to appropriate lru and release the batch, decrementing the
> @@ -515,9 +517,9 @@ static int __create_shmem(struct drm_i915_private *i915,
>   	if (BITS_PER_LONG == 64 && size > MAX_LFS_FILESIZE)
>   		return -E2BIG;
>   
> -	if (i915->mm.gemfs)
> -		filp = shmem_file_setup_with_mnt(i915->mm.gemfs, "i915", size,
> -						 flags);
> +	if (drm_gem_has_huge_mnt(&i915->drm))
> +		filp = shmem_file_setup_with_mnt(i915->drm.huge_mnt, "i915",
> +						 size, flags);
>   	else
>   		filp = shmem_file_setup("i915", size, flags);
>   	if (IS_ERR(filp))
> @@ -644,21 +646,41 @@ i915_gem_object_create_shmem_from_data(struct drm_i915_private *i915,
>   
>   static int init_shmem(struct intel_memory_region *mem)
>   {
> -	i915_gemfs_init(mem->i915);
> -	intel_memory_region_set_name(mem, "system");
> +	struct drm_i915_private *i915 = mem->i915;
> +	int err;
>   
> -	return 0; /* We have fallback to the kernel mnt if gemfs init failed. */
> -}
> +	/*
> +	 * By creating our own shmemfs mountpoint, we can pass in
> +	 * mount flags that better match our usecase.
> +	 *
> +	 * One example, although it is probably better with a per-file
> +	 * control, is selecting huge page allocations ("huge=within_size").
> +	 * However, we only do so on platforms which benefit from it, or to
> +	 * offset the overhead of iommu lookups, where with latter it is a net
> +	 * win even on platforms which would otherwise see some performance
> +	 * regressions such a slow reads issue on Broadwell and Skylake.
> +	 */
>   
> -static int release_shmem(struct intel_memory_region *mem)
> -{
> -	i915_gemfs_fini(mem->i915);
> -	return 0;
> +	if (GRAPHICS_VER(i915) < 11 && !i915_vtd_active(i915))
> +		goto no_thp;
> +
> +	err = drm_gem_huge_mnt_create(&i915->drm, "within_size");
> +	if (drm_gem_has_huge_mnt(&i915->drm))
> +		drm_info(&i915->drm, "Using Transparent Hugepages\n");
> +	else if (err)
> +		drm_notice(&i915->drm,
> +			   "Transparent Hugepage support is recommended for optimal performance%s\n",
> +			   GRAPHICS_VER(i915) >= 11 ? " on this platform!" :
> +						      " when IOMMU is enabled!");


Drm_gem_huge_mnt_create() will return 0, and drm_gem_has_huge_mnt() will 
return false.

So looking from the i915 perspective, when 
CONFIG_TRANSPARENT_HUGEPAGE=n, currently it will log the above notice 
message, and after the change it will not.

To preserve current behaviour it might be that "else if (err)" just 
needs to become a plan "else"?

Regards,

Tvrtko

> +
> + no_thp:
> +	intel_memory_region_set_name(mem, "system");
> +
> +	return 0; /* We have fallback to the kernel mnt if huge mnt failed. */
>   }
>   
>   static const struct intel_memory_region_ops shmem_region_ops = {
>   	.init = init_shmem,
> -	.release = release_shmem,
>   	.init_object = shmem_object_init,
>   };
>   
> diff --git a/drivers/gpu/drm/i915/gem/i915_gemfs.c b/drivers/gpu/drm/i915/gem/i915_gemfs.c
> deleted file mode 100644
> index 1f1290214031..000000000000
> --- a/drivers/gpu/drm/i915/gem/i915_gemfs.c
> +++ /dev/null
> @@ -1,71 +0,0 @@
> -// SPDX-License-Identifier: MIT
> -/*
> - * Copyright © 2017 Intel Corporation
> - */
> -
> -#include <linux/fs.h>
> -#include <linux/mount.h>
> -#include <linux/fs_context.h>
> -
> -#include <drm/drm_print.h>
> -
> -#include "i915_drv.h"
> -#include "i915_gemfs.h"
> -#include "i915_utils.h"
> -
> -void i915_gemfs_init(struct drm_i915_private *i915)
> -{
> -	struct file_system_type *type;
> -	struct fs_context *fc;
> -	struct vfsmount *gemfs;
> -	int ret;
> -
> -	/*
> -	 * By creating our own shmemfs mountpoint, we can pass in
> -	 * mount flags that better match our usecase.
> -	 *
> -	 * One example, although it is probably better with a per-file
> -	 * control, is selecting huge page allocations ("huge=within_size").
> -	 * However, we only do so on platforms which benefit from it, or to
> -	 * offset the overhead of iommu lookups, where with latter it is a net
> -	 * win even on platforms which would otherwise see some performance
> -	 * regressions such a slow reads issue on Broadwell and Skylake.
> -	 */
> -
> -	if (GRAPHICS_VER(i915) < 11 && !i915_vtd_active(i915))
> -		return;
> -
> -	if (!IS_ENABLED(CONFIG_TRANSPARENT_HUGEPAGE))
> -		goto err;
> -
> -	type = get_fs_type("tmpfs");
> -	if (!type)
> -		goto err;
> -
> -	fc = fs_context_for_mount(type, SB_KERNMOUNT);
> -	if (IS_ERR(fc))
> -		goto err;
> -	ret = vfs_parse_fs_string(fc, "source", "tmpfs");
> -	if (!ret)
> -		ret = vfs_parse_fs_string(fc, "huge", "within_size");
> -	if (!ret)
> -		gemfs = fc_mount_longterm(fc);
> -	put_fs_context(fc);
> -	if (ret)
> -		goto err;
> -
> -	i915->mm.gemfs = gemfs;
> -	drm_info(&i915->drm, "Using Transparent Hugepages\n");
> -	return;
> -
> -err:
> -	drm_notice(&i915->drm,
> -		   "Transparent Hugepage support is recommended for optimal performance%s\n",
> -		   GRAPHICS_VER(i915) >= 11 ? " on this platform!" :
> -					      " when IOMMU is enabled!");
> -}
> -
> -void i915_gemfs_fini(struct drm_i915_private *i915)
> -{
> -	kern_unmount(i915->mm.gemfs);
> -}
> diff --git a/drivers/gpu/drm/i915/gem/i915_gemfs.h b/drivers/gpu/drm/i915/gem/i915_gemfs.h
> deleted file mode 100644
> index 16d4333c9a4e..000000000000
> --- a/drivers/gpu/drm/i915/gem/i915_gemfs.h
> +++ /dev/null
> @@ -1,14 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/*
> - * Copyright © 2017 Intel Corporation
> - */
> -
> -#ifndef __I915_GEMFS_H__
> -#define __I915_GEMFS_H__
> -
> -struct drm_i915_private;
> -
> -void i915_gemfs_init(struct drm_i915_private *i915);
> -void i915_gemfs_fini(struct drm_i915_private *i915);
> -
> -#endif
> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> index bd08605a1611..2b9f7d86b46e 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> @@ -1316,7 +1316,7 @@ typedef struct drm_i915_gem_object *
>   
>   static inline bool igt_can_allocate_thp(struct drm_i915_private *i915)
>   {
> -	return i915->mm.gemfs && has_transparent_hugepage();
> +	return drm_gem_has_huge_mnt(&i915->drm);
>   }
>   
>   static struct drm_i915_gem_object *
> @@ -1761,7 +1761,8 @@ static int igt_tmpfs_fallback(void *arg)
>   	struct drm_i915_private *i915 = arg;
>   	struct i915_address_space *vm;
>   	struct i915_gem_context *ctx;
> -	struct vfsmount *gemfs = i915->mm.gemfs;
> +	struct vfsmount *huge_mnt =
> +		drm_gem_has_huge_mnt(&i915->drm) ? i915->drm.huge_mnt : NULL;
>   	struct drm_i915_gem_object *obj;
>   	struct i915_vma *vma;
>   	struct file *file;
> @@ -1782,10 +1783,10 @@ static int igt_tmpfs_fallback(void *arg)
>   	/*
>   	 * Make sure that we don't burst into a ball of flames upon falling back
>   	 * to tmpfs, which we rely on if on the off-chance we encounter a failure
> -	 * when setting up gemfs.
> +	 * when setting up a huge mountpoint.
>   	 */
>   
> -	i915->mm.gemfs = NULL;
> +	i915->drm.huge_mnt = NULL;
>   
>   	obj = i915_gem_object_create_shmem(i915, PAGE_SIZE);
>   	if (IS_ERR(obj)) {
> @@ -1819,7 +1820,7 @@ static int igt_tmpfs_fallback(void *arg)
>   out_put:
>   	i915_gem_object_put(obj);
>   out_restore:
> -	i915->mm.gemfs = gemfs;
> +	i915->drm.huge_mnt = huge_mnt;
>   
>   	i915_vm_put(vm);
>   out:
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 95f9ddf22ce4..93a5af3de334 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -141,11 +141,6 @@ struct i915_gem_mm {
>   	 */
>   	atomic_t free_count;
>   
> -	/**
> -	 * tmpfs instance used for shmem backed objects
> -	 */
> -	struct vfsmount *gemfs;
> -
>   	struct intel_memory_region *regions[INTEL_REGION_UNKNOWN];
>   
>   	struct notifier_block oom_notifier;

