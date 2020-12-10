Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF192D5638
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 10:13:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76E1B6EA3D;
	Thu, 10 Dec 2020 09:13:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADE136EA3D
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 09:13:21 +0000 (UTC)
IronPort-SDR: t7iN7MmcI+LgcYAPsClCqOiKaHBSdpI0nIwKzM1LxFb8YpiOxaqgLaN4ILUx9G0SS9O4OS7zUK
 twa+LLCbVLQw==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="161275156"
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="161275156"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 01:13:20 -0800
IronPort-SDR: EJ0/0VlYMj0czR9obUkBF2apldJ0By0vC2z3zFot1kyjmNnhjYBFT34jU25CFeyBRk3jDvT0ef
 y5MeJJ3rGnWw==
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="371444511"
Received: from ggiordax-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.87.181])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 01:13:18 -0800
MIME-Version: 1.0
In-Reply-To: <20201209070307.2304-12-sean.z.huang@intel.com>
References: <20201209070307.2304-1-sean.z.huang@intel.com>
 <20201209070307.2304-12-sean.z.huang@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160759159521.5062.6020207187950987766@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Thu, 10 Dec 2020 11:13:15 +0200
Subject: Re: [Intel-gfx] [RFC-v3 11/13] drm/i915/uapi: introduce
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
Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>, Joonas@freedesktop.org,
 Matthew@freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Huang, Sean Z (2020-12-09 09:03:05)
> From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>

The patch authorship is still recorded wrong.

'git am' should always be used for importing patches to retain the
correct authorship.

Regards, Joonas

> Same old gem_create but with now with extensions support. This is needed
> to support various upcoming usecases. For now we use the extensions
> mechanism to support PAVP.
> 
> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Joonas Lahtinen joonas.lahtinen@linux.intel.com
> Cc: Matthew Auld matthew.auld@intel.com
> Cc: Telukuntla Sreedhar <sreedhar.telukuntla@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.c |  2 +-
>  drivers/gpu/drm/i915/i915_gem.c | 42 ++++++++++++++++++++++++++++-
>  include/uapi/drm/i915_drm.h     | 47 +++++++++++++++++++++++++++++++++
>  3 files changed, 89 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index af06c85e6ba7..3dbda949bf71 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -1733,7 +1733,7 @@ static const struct drm_ioctl_desc i915_ioctls[] = {
>         DRM_IOCTL_DEF_DRV(I915_GEM_THROTTLE, i915_gem_throttle_ioctl, DRM_RENDER_ALLOW),
>         DRM_IOCTL_DEF_DRV(I915_GEM_ENTERVT, drm_noop, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
>         DRM_IOCTL_DEF_DRV(I915_GEM_LEAVEVT, drm_noop, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
> -       DRM_IOCTL_DEF_DRV(I915_GEM_CREATE, i915_gem_create_ioctl, DRM_RENDER_ALLOW),
> +       DRM_IOCTL_DEF_DRV(I915_GEM_CREATE_EXT, i915_gem_create_ioctl, DRM_RENDER_ALLOW),
>         DRM_IOCTL_DEF_DRV(I915_GEM_PREAD, i915_gem_pread_ioctl, DRM_RENDER_ALLOW),
>         DRM_IOCTL_DEF_DRV(I915_GEM_PWRITE, i915_gem_pwrite_ioctl, DRM_RENDER_ALLOW),
>         DRM_IOCTL_DEF_DRV(I915_GEM_MMAP, i915_gem_mmap_ioctl, DRM_RENDER_ALLOW),
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 58276694c848..41698a823737 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -53,6 +53,7 @@
>  #include "i915_drv.h"
>  #include "i915_trace.h"
>  #include "i915_vgpu.h"
> +#include "i915_user_extensions.h"
>  
>  #include "intel_pm.h"
>  
> @@ -260,6 +261,35 @@ i915_gem_dumb_create(struct drm_file *file,
>                                &args->size, &args->handle);
>  }
>  
> +struct create_ext {
> +        struct drm_i915_private *i915;
> +};
> +
> +static int __create_setparam(struct drm_i915_gem_object_param *args,
> +                                                       struct create_ext *ext_data)
> +{
> +       if (!(args->param & I915_OBJECT_PARAM)) {
> +               DRM_DEBUG("Missing I915_OBJECT_PARAM namespace\n");
> +               return -EINVAL;
> +       }
> +
> +       return -EINVAL;
> +}
> +
> +static int create_setparam(struct i915_user_extension __user *base, void *data)
> +{
> +       struct drm_i915_gem_create_ext_setparam ext;
> +
> +       if (copy_from_user(&ext, base, sizeof(ext)))
> +               return -EFAULT;
> +
> +       return __create_setparam(&ext.param, data);
> +}
> +
> +static const i915_user_extension_fn create_extensions[] = {
> +       [I915_GEM_CREATE_EXT_SETPARAM] = create_setparam,
> +};
> +
>  /**
>   * Creates a new mm object and returns a handle to it.
>   * @dev: drm device pointer
> @@ -271,10 +301,20 @@ i915_gem_create_ioctl(struct drm_device *dev, void *data,
>                       struct drm_file *file)
>  {
>         struct drm_i915_private *i915 = to_i915(dev);
> -       struct drm_i915_gem_create *args = data;
> +       struct create_ext ext_data = { .i915 = i915 };
> +       struct drm_i915_gem_create_ext *args = data;
> +       int ret;
>  
>         i915_gem_flush_free_objects(i915);
>  
> +       ret = i915_user_extensions(u64_to_user_ptr(args->extensions),
> +                                  create_extensions,
> +                                  ARRAY_SIZE(create_extensions),
> +                                  &ext_data);
> +       if (ret)
> +               return ret;
> +
> +
>         return i915_gem_create(file,
>                                intel_memory_region_by_type(i915,
>                                                            INTEL_MEMORY_SYSTEM),
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 6edcb2b6c708..e918ccc81c74 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -391,6 +391,7 @@ typedef struct _drm_i915_sarea {
>  #define DRM_IOCTL_I915_GEM_ENTERVT     DRM_IO(DRM_COMMAND_BASE + DRM_I915_GEM_ENTERVT)
>  #define DRM_IOCTL_I915_GEM_LEAVEVT     DRM_IO(DRM_COMMAND_BASE + DRM_I915_GEM_LEAVEVT)
>  #define DRM_IOCTL_I915_GEM_CREATE      DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_CREATE, struct drm_i915_gem_create)
> +#define DRM_IOCTL_I915_GEM_CREATE_EXT   DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_CREATE, struct drm_i915_gem_create_ext)
>  #define DRM_IOCTL_I915_GEM_PREAD       DRM_IOW (DRM_COMMAND_BASE + DRM_I915_GEM_PREAD, struct drm_i915_gem_pread)
>  #define DRM_IOCTL_I915_GEM_PWRITE      DRM_IOW (DRM_COMMAND_BASE + DRM_I915_GEM_PWRITE, struct drm_i915_gem_pwrite)
>  #define DRM_IOCTL_I915_GEM_MMAP                DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_MMAP, struct drm_i915_gem_mmap)
> @@ -728,6 +729,27 @@ struct drm_i915_gem_create {
>         __u32 pad;
>  };
>  
> +struct drm_i915_gem_create_ext {
> +       /**
> +        * Requested size for the object.
> +        *
> +        * The (page-aligned) allocated size for the object will be returned.
> +        */
> +       __u64 size;
> +       /**
> +        * Returned handle for the object.
> +        *
> +        * Object handles are nonzero.
> +        */
> +       __u32 handle;
> +       __u32 pad;
> +#define I915_GEM_CREATE_EXT_SETPARAM (1u << 0)
> +#define I915_GEM_CREATE_EXT_FLAGS_UNKNOWN \
> +       (-(I915_GEM_CREATE_EXT_SETPARAM << 1))
> +       __u64 extensions;
> +
> +};
> +
>  struct drm_i915_gem_pread {
>         /** Handle for the object being read. */
>         __u32 handle;
> @@ -1698,6 +1720,31 @@ struct drm_i915_gem_context_param {
>         __u64 value;
>  };
>  
> +struct drm_i915_gem_object_param {
> +       /* Object handle (0 for I915_GEM_CREATE_EXT_SETPARAM) */
> +       __u32 handle;
> +
> +       /* Data pointer size */
> +       __u32 size;
> +
> +/*
> + * I915_OBJECT_PARAM:
> + *
> + * Select object namespace for the param.
> + */
> +#define I915_OBJECT_PARAM  (1ull<<32)
> +
> +       __u64 param;
> +
> +       /* Data value or pointer */
> +       __u64 data;
> +};
> +
> +struct drm_i915_gem_create_ext_setparam {
> +       struct i915_user_extension base;
> +       struct drm_i915_gem_object_param param;
> +};
> +
>  /**
>   * Context SSEU programming
>   *
> -- 
> 2.17.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
