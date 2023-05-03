Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9746F4FCA
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 07:41:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8C6E10E010;
	Wed,  3 May 2023 05:41:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 231ED10E010
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 05:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683092481; x=1714628481;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:from:subject:cc:to:message-id:date;
 bh=yxhlf8OJTnjUX8RhEDa2/4ynBvV1T9iW+Z0p+EyULrU=;
 b=j9ekiLkiK32oNEdD9NbTfhryN/Go8eCloRITxEA2LrKpfjxZzxw+eUR8
 KA2n24L55WJ1MGCudnRg0/LJBb38nwf22Q6Lw9sHJR2unZi5jP87khN0k
 S9k+6vCbIN4NffVyDmA+kKv58FutDw1NKXwxCxES1nwaBheP2YhmIUG5B
 +ckHephDAItuu+yVmOI9q4bBnJ462N1nn6U8tVnJcpkekRN+ATYwR9Onq
 o6FQDHacZnM8HbujKBf/Vi79x3cn1eRTJFOkN7VCczLG8lJvHWtUMxtho
 7Thsc2HHt1BbFpSg3W9zH05CMbutE//WsgwiUOT9gG663SZTIbV+HdSaG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="411722942"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="411722942"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 22:41:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="673950043"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="673950043"
Received: from ajgorman-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.12.125])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 22:41:17 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230502205744.1067094-1-jordan.l.justen@intel.com>
References: <20230502205744.1067094-1-jordan.l.justen@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Jordan Justen <jordan.l.justen@intel.com>, intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <168309246907.7324.16585705318101149558@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Wed, 03 May 2023 08:41:09 +0300
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uapi: Add
 DRM_I915_QUERY_GEM_CREATE_EXTENSIONS query item
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jordan,

This approach was specifically NACKed in the PAT index thread so please
at least mark any such series as RFC if they are intended to facilitate
further dialog on the topic.

I've still not seen any explanation why this would be needed at this specif=
ic
case for the PAT index setting feature. Repeating here: You should be able
to detect missing extension by trying to use it. Just because PXP has some
issues on that front doesn't mean we'll change the practices for all other
interfaces.

We should instead spend the time considering a better solution for PXP and
see how that can be implemented for the drm/xe driver.

Regards, Joonas

Quoting Jordan Justen (2023-05-02 23:57:44)
> Cc: Fei Yang <fei.yang@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Signed-off-by: Jordan Justen <jordan.l.justen@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_create.c | 30 ++++++++++++++++++
>  drivers/gpu/drm/i915/gem/i915_gem_create.h |  2 ++
>  drivers/gpu/drm/i915/i915_query.c          | 36 ++++++++++++++++++++++
>  include/uapi/drm/i915_drm.h                |  2 ++
>  4 files changed, 70 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm=
/i915/gem/i915_gem_create.c
> index bfe1dbda4cb7..56342a352599 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> @@ -399,6 +399,36 @@ static const i915_user_extension_fn create_extension=
s[] =3D {
>         [I915_GEM_CREATE_EXT_PROTECTED_CONTENT] =3D ext_set_protected,
>  };
> =20
> +/**
> + * Fills buffer will known create_ext extensions
> + * @buffer: buffer to fill with extensions
> + * @buffer_size: size of the buffer in bytes
> + *
> + * If @buffer_size is 0, then @buffer is not accessed, and the
> + * required buffer size is returned.
> + *
> + * If @buffer_size !=3D 0, but not large enough, then -EINVAL is
> + * returned.
> + *
> + * If @buffer_size is large enough, then @buffer will be filled as a
> + * u64 array of extension names.
> + */
> +int
> +i915_gem_create_ext_get_extensions(void *buffer, size_t buffer_size)
> +{
> +       unsigned int i;
> +
> +       if (buffer_size =3D=3D 0)
> +               return ARRAY_SIZE(create_extensions) * sizeof(u64);
> +       else if (buffer_size < (ARRAY_SIZE(create_extensions) * sizeof(u6=
4)))
> +               return -EINVAL;
> +
> +       for (i =3D 0; i < ARRAY_SIZE(create_extensions); i++)
> +               ((u64*)buffer)[i] =3D i;
> +
> +       return ARRAY_SIZE(create_extensions) * sizeof(u64);
> +}
> +
>  /**
>   * i915_gem_create_ext_ioctl - Creates a new mm object and returns a han=
dle to it.
>   * @dev: drm device pointer
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.h b/drivers/gpu/drm=
/i915/gem/i915_gem_create.h
> index 9536aa906001..e7ebef308038 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_create.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.h
> @@ -14,4 +14,6 @@ int i915_gem_dumb_create(struct drm_file *file_priv,
>                          struct drm_device *dev,
>                          struct drm_mode_create_dumb *args);
> =20
> +int i915_gem_create_ext_get_extensions(void *buffer, size_t buffer_size);
> +
>  #endif /* __I915_GEM_CREATE_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i91=
5_query.c
> index 00871ef99792..f360f76516de 100644
> --- a/drivers/gpu/drm/i915/i915_query.c
> +++ b/drivers/gpu/drm/i915/i915_query.c
> @@ -9,6 +9,7 @@
>  #include "i915_drv.h"
>  #include "i915_perf.h"
>  #include "i915_query.h"
> +#include "gem/i915_gem_create.h"
>  #include "gt/intel_engine_user.h"
>  #include <uapi/drm/i915_drm.h>
> =20
> @@ -551,6 +552,40 @@ static int query_hwconfig_blob(struct drm_i915_priva=
te *i915,
>         return hwconfig->size;
>  }
> =20
> +static int query_gem_create_extensions(struct drm_i915_private *i915,
> +                                      struct drm_i915_query_item *query_=
item)
> +{
> +       void *buffer;
> +       int buffer_size, fill_size;
> +
> +       buffer_size =3D i915_gem_create_ext_get_extensions(NULL, 0);
> +
> +       if (query_item->length =3D=3D 0)
> +               return buffer_size;
> +
> +       if (query_item->length < buffer_size)
> +               return -EINVAL;
> +
> +       buffer =3D kzalloc(buffer_size, GFP_KERNEL);
> +       if (!buffer)
> +               return -ENOMEM;
> +
> +       fill_size =3D i915_gem_create_ext_get_extensions(buffer, buffer_s=
ize);
> +       if (fill_size !=3D buffer_size) {
> +               kfree(buffer);
> +               return -EINVAL;
> +       }
> +
> +       if (copy_to_user(u64_to_user_ptr(query_item->data_ptr),
> +                        buffer, buffer_size)) {
> +               kfree(buffer);
> +               return -EFAULT;
> +       }
> +
> +       kfree(buffer);
> +       return buffer_size;
> +}
> +
>  static int (* const i915_query_funcs[])(struct drm_i915_private *dev_pri=
v,
>                                         struct drm_i915_query_item *query=
_item) =3D {
>         query_topology_info,
> @@ -559,6 +594,7 @@ static int (* const i915_query_funcs[])(struct drm_i9=
15_private *dev_priv,
>         query_memregion_info,
>         query_hwconfig_blob,
>         query_geometry_subslices,
> +       query_gem_create_extensions,
>  };
> =20
>  int i915_query_ioctl(struct drm_device *dev, void *data, struct drm_file=
 *file)
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index dba7c5a5b25e..46be28ee3795 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -2963,6 +2963,7 @@ struct drm_i915_query_item {
>          *  - %DRM_I915_QUERY_MEMORY_REGIONS (see struct drm_i915_query_m=
emory_regions)
>          *  - %DRM_I915_QUERY_HWCONFIG_BLOB (see `GuC HWCONFIG blob uAPI`)
>          *  - %DRM_I915_QUERY_GEOMETRY_SUBSLICES (see struct drm_i915_que=
ry_topology_info)
> +        *  - %DRM_I915_QUERY_GEM_CREATE_EXTENSIONS (u64 array of known D=
RM_I915_GEM_CREATE_EXT extensions)
>          */
>         __u64 query_id;
>  #define DRM_I915_QUERY_TOPOLOGY_INFO           1
> @@ -2971,6 +2972,7 @@ struct drm_i915_query_item {
>  #define DRM_I915_QUERY_MEMORY_REGIONS          4
>  #define DRM_I915_QUERY_HWCONFIG_BLOB           5
>  #define DRM_I915_QUERY_GEOMETRY_SUBSLICES      6
> +#define DRM_I915_QUERY_GEM_CREATE_EXTENSIONS   7
>  /* Must be kept compact -- no holes and well documented */
> =20
>         /**
> --=20
> 2.39.2
>=20
