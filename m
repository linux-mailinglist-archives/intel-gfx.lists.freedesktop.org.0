Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6393534E445
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Mar 2021 11:27:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C93546E887;
	Tue, 30 Mar 2021 09:27:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E84F36E887
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Mar 2021 09:27:00 +0000 (UTC)
IronPort-SDR: tpRb+ft2Tg0l2j5KEbdNyZpuluMj+Iw8RfmxhsV1qseZJOw05WdFewYE2itMrWx9HYhlIL1wG5
 +agmzX76l7Rg==
X-IronPort-AV: E=McAfee;i="6000,8403,9938"; a="191200292"
X-IronPort-AV: E=Sophos;i="5.81,290,1610438400"; d="scan'208";a="191200292"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 02:27:00 -0700
IronPort-SDR: ih5GxoHDXjoUQyWcfLmZXHAq+E37mwwwGDozROU1xds2+gM2LjddbenVf4DCxeefO0D/ks6zd5
 QmO8xu+SfjQw==
X-IronPort-AV: E=Sophos;i="5.81,290,1610438400"; d="scan'208";a="454947767"
Received: from donalmur-mobl.ger.corp.intel.com (HELO [10.252.29.50])
 ([10.252.29.50])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 02:26:58 -0700
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210328225709.18541-1-daniele.ceraolospurio@intel.com>
 <20210328225709.18541-13-daniele.ceraolospurio@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <690d9939-ef42-386c-9f12-e38bfd7c1282@intel.com>
Date: Tue, 30 Mar 2021 10:26:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210328225709.18541-13-daniele.ceraolospurio@intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH v3 12/16] drm/i915/uapi: introduce
 drm_i915_gem_create_ext
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
Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 28/03/2021 23:57, Daniele Ceraolo Spurio wrote:
> From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> 
> Same old gem_create but with now with extensions support. This is needed
> to support various upcoming usecases. For now we use the extensions
> mechanism to support PAVP.
> 
> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Telukuntla Sreedhar <sreedhar.telukuntla@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_create.c | 41 ++++++++++++++++++-
>   drivers/gpu/drm/i915/i915_drv.c            |  2 +-
>   include/uapi/drm/i915_drm.h                | 47 ++++++++++++++++++++++
>   3 files changed, 88 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> index 45d60e3d98e3..3ad3413c459f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> @@ -7,6 +7,7 @@
>   #include "gem/i915_gem_region.h"
>   
>   #include "i915_drv.h"
> +#include "i915_user_extensions.h"
>   
>   static int
>   i915_gem_create(struct drm_file *file,
> @@ -91,6 +92,35 @@ i915_gem_dumb_create(struct drm_file *file,
>   			       &args->size, &args->handle);
>   }
>   
> +struct create_ext {
> +	struct drm_i915_private *i915;
> +};
> +
> +static int __create_setparam(struct drm_i915_gem_object_param *args,
> +			     struct create_ext *ext_data)
> +{
> +	if (!(args->param & I915_OBJECT_PARAM)) {
> +		DRM_DEBUG("Missing I915_OBJECT_PARAM namespace\n");
> +		return -EINVAL;
> +	}
> +
> +	return -EINVAL;
> +}
> +
> +static int create_setparam(struct i915_user_extension __user *base, void *data)
> +{
> +	struct drm_i915_gem_create_ext_setparam ext;
> +
> +	if (copy_from_user(&ext, base, sizeof(ext)))
> +		return -EFAULT;
> +
> +	return __create_setparam(&ext.param, data);
> +}
> +
> +static const i915_user_extension_fn create_extensions[] = {
> +	[I915_GEM_CREATE_EXT_SETPARAM] = create_setparam,
> +};
> +
>   /**
>    * Creates a new mm object and returns a handle to it.
>    * @dev: drm device pointer
> @@ -102,10 +132,19 @@ i915_gem_create_ioctl(struct drm_device *dev, void *data,
>   		      struct drm_file *file)
>   {
>   	struct drm_i915_private *i915 = to_i915(dev);
> -	struct drm_i915_gem_create *args = data;
> +	struct create_ext ext_data = { .i915 = i915 };
> +	struct drm_i915_gem_create_ext *args = data;
> +	int ret;
>   
>   	i915_gem_flush_free_objects(i915);
>   
> +	ret = i915_user_extensions(u64_to_user_ptr(args->extensions),
> +				   create_extensions,
> +				   ARRAY_SIZE(create_extensions),
> +				   &ext_data);
> +	if (ret)
> +		return ret;
> +
>   	return i915_gem_create(file,
>   			       intel_memory_region_by_type(i915,
>   							   INTEL_MEMORY_SYSTEM),
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index 02d5b2b6ee39..f13e1ca2087b 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -1707,7 +1707,7 @@ static const struct drm_ioctl_desc i915_ioctls[] = {
>   	DRM_IOCTL_DEF_DRV(I915_GEM_THROTTLE, i915_gem_throttle_ioctl, DRM_RENDER_ALLOW),
>   	DRM_IOCTL_DEF_DRV(I915_GEM_ENTERVT, drm_noop, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
>   	DRM_IOCTL_DEF_DRV(I915_GEM_LEAVEVT, drm_noop, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
> -	DRM_IOCTL_DEF_DRV(I915_GEM_CREATE, i915_gem_create_ioctl, DRM_RENDER_ALLOW),
> +	DRM_IOCTL_DEF_DRV(I915_GEM_CREATE_EXT, i915_gem_create_ioctl, DRM_RENDER_ALLOW),
>   	DRM_IOCTL_DEF_DRV(I915_GEM_PREAD, i915_gem_pread_ioctl, DRM_RENDER_ALLOW),
>   	DRM_IOCTL_DEF_DRV(I915_GEM_PWRITE, i915_gem_pwrite_ioctl, DRM_RENDER_ALLOW),
>   	DRM_IOCTL_DEF_DRV(I915_GEM_MMAP, i915_gem_mmap_ioctl, DRM_RENDER_ALLOW),
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 7a2088eccc9f..d5e502269a55 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -392,6 +392,7 @@ typedef struct _drm_i915_sarea {
>   #define DRM_IOCTL_I915_GEM_ENTERVT	DRM_IO(DRM_COMMAND_BASE + DRM_I915_GEM_ENTERVT)
>   #define DRM_IOCTL_I915_GEM_LEAVEVT	DRM_IO(DRM_COMMAND_BASE + DRM_I915_GEM_LEAVEVT)
>   #define DRM_IOCTL_I915_GEM_CREATE	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_CREATE, struct drm_i915_gem_create)
> +#define DRM_IOCTL_I915_GEM_CREATE_EXT   DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_CREATE, struct drm_i915_gem_create_ext)
>   #define DRM_IOCTL_I915_GEM_PREAD	DRM_IOW (DRM_COMMAND_BASE + DRM_I915_GEM_PREAD, struct drm_i915_gem_pread)
>   #define DRM_IOCTL_I915_GEM_PWRITE	DRM_IOW (DRM_COMMAND_BASE + DRM_I915_GEM_PWRITE, struct drm_i915_gem_pwrite)
>   #define DRM_IOCTL_I915_GEM_MMAP		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_MMAP, struct drm_i915_gem_mmap)
> @@ -729,6 +730,27 @@ struct drm_i915_gem_create {
>   	__u32 pad;
>   };
>   
> +struct drm_i915_gem_create_ext {
> +	/**
> +	 * Requested size for the object.
> +	 *
> +	 * The (page-aligned) allocated size for the object will be returned.
> +	 */
> +	__u64 size;
> +	/**
> +	 * Returned handle for the object.
> +	 *
> +	 * Object handles are nonzero.
> +	 */
> +	__u32 handle;
> +	__u32 pad;
> +#define I915_GEM_CREATE_EXT_SETPARAM (1u << 0)
> +#define I915_GEM_CREATE_EXT_FLAGS_UNKNOWN \
> +	(-(I915_GEM_CREATE_EXT_SETPARAM << 1))
> +	__u64 extensions;
> +
> +};
> +
>   struct drm_i915_gem_pread {
>   	/** Handle for the object being read. */
>   	__u32 handle;
> @@ -1720,6 +1742,31 @@ struct drm_i915_gem_context_param {
>   	__u64 value;
>   };
>   
> +struct drm_i915_gem_object_param {
> +	/* Object handle (0 for I915_GEM_CREATE_EXT_SETPARAM) */
> +	__u32 handle;
> +
> +	/* Data pointer size */
> +	__u32 size;
> +
> +/*
> + * I915_OBJECT_PARAM:
> + *
> + * Select object namespace for the param.
> + */
> +#define I915_OBJECT_PARAM  (1ull << 32)
> +
> +	__u64 param;
> +
> +	/* Data value or pointer */
> +	__u64 data;
> +};
> +
> +struct drm_i915_gem_create_ext_setparam {
> +	struct i915_user_extension base;
> +	struct drm_i915_gem_object_param param;
> +};
> +

Fwiw there were some minor uAPI changes(like using a separate ioctl) 
needed for this, as per the upstream review feedback for the placements 
extension. I think the required changes should already be incorporated here:

https://patchwork.freedesktop.org/series/86866/

>   /**
>    * Context SSEU programming
>    *
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
