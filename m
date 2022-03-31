Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 020024EE150
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 21:05:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3AD010EC17;
	Thu, 31 Mar 2022 19:05:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2500510E200
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 19:05:45 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id d7so1074010wrb.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 12:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1Yu1V/AlyoCtF/pqowv1CIN0QfTgdCKnS2O6lk9XOVw=;
 b=ac8p+IndrR7yGc7Duz1IqvPCZD0w84hxK+sdki9Uj7QS4mQRVmL8FUSjHyAoSXJc/u
 7lkd4+yLW0+LlbxePaEG/1A8XrnHHcraCJ+hzVnhVU1VPfH7FoiZf/U00P5UczTE8cz+
 sKFvMmtl/MV0jNOpONvmJO1AY1HJm1i2NQn+Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1Yu1V/AlyoCtF/pqowv1CIN0QfTgdCKnS2O6lk9XOVw=;
 b=TZeo/2KWz7Wqy3LfBxKJysqqpc6DzHfJ4Jrz8zaIvPpY6iqP0F11Soeg47gmL3yLdD
 gag5AJepGtLNebVYi8j+noiWAGEBc+lzZB6vvV4zN+7tWpZqfPZgr2vopkRuqoxvqleA
 g3AG9qSMCjci59/62aCcr2hfQUMzqoqk+kSz//uVkGwhWn+pqycmdyJjGNdYrSIU19mH
 XJmHpOvvRGj4xRjsBSWrtgCo+OZYqwhgGAeo2OOcP1m2LlitibG9tk9qvl/uJ12/xG5d
 m4ljRyQyvdCZZUJw0EkER2/8xmebNfepXf0HR+U06cGcrg4puMMUDXVR03rPRNAzYIQ7
 WoIA==
X-Gm-Message-State: AOAM532uFcI94soNyLujjkKbIzBQrLXNAJcNdOfq7KftXvxMhOOH9TOO
 l37dTN6EMQzohx9BAsr181gH6g==
X-Google-Smtp-Source: ABdhPJw7tC258WFBJNl0TQX/AGOMy2V1y8wJgtlwaebqo2onG7aedPyce1sjAvVTpRh+z5Ep4bo2Qw==
X-Received: by 2002:a5d:584a:0:b0:205:86cb:dd0e with SMTP id
 i10-20020a5d584a000000b0020586cbdd0emr4954015wrf.578.1648753543597; 
 Thu, 31 Mar 2022 12:05:43 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 h11-20020a05600c414b00b0038e4b2f0478sm1622443wmm.1.2022.03.31.12.05.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Mar 2022 12:05:43 -0700 (PDT)
Date: Thu, 31 Mar 2022 21:05:41 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <YkX7hTrEZN53MN+z@phenom.ffwll.local>
References: <20220330215311.21849-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220330215311.21849-1-matthew.s.atwood@intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH v4 RFC] drm/i915/uapi: Add
 DRM_I915_QUERY_GEOMETRY_SUBSLICES
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 vrtko.ursulin@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 30, 2022 at 02:53:11PM -0700, Matt Atwood wrote:
> Newer platforms have DSS that aren't necessarily available for both
> geometry and compute, two queries will need to exist. This introduces
> the first, when passing a valid engine class and engine instance in the
> flags returns a topology describing geometry.
> 
> v2: fix white space errors
> v3: change flags from hosting 2 8 bit numbers to holding a
> i915_engine_class_instance struct
> v4: add error if non rcs engine passed.
> 
> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> UMD (mesa): https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/14143
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_query.c | 71 ++++++++++++++++++++++---------
>  include/uapi/drm/i915_drm.h       | 26 +++++++----
>  2 files changed, 69 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
> index b5ca00cb6cf6..32be84c95956 100644
> --- a/drivers/gpu/drm/i915/i915_query.c
> +++ b/drivers/gpu/drm/i915/i915_query.c
> @@ -9,6 +9,7 @@
>  #include "i915_drv.h"
>  #include "i915_perf.h"
>  #include "i915_query.h"
> +#include "gt/intel_engine_user.h"
>  #include <uapi/drm/i915_drm.h>
>  
>  static int copy_query_item(void *query_hdr, size_t query_sz,
> @@ -28,36 +29,30 @@ static int copy_query_item(void *query_hdr, size_t query_sz,
>  	return 0;
>  }
>  
> -static int query_topology_info(struct drm_i915_private *dev_priv,
> -			       struct drm_i915_query_item *query_item)
> +static int fill_topology_info(const struct sseu_dev_info *sseu,
> +			      struct drm_i915_query_item *query_item,
> +			      const u8 *subslice_mask)
>  {
> -	const struct sseu_dev_info *sseu = &to_gt(dev_priv)->info.sseu;
>  	struct drm_i915_query_topology_info topo;
>  	u32 slice_length, subslice_length, eu_length, total_length;
>  	int ret;
>  
> -	if (query_item->flags != 0)
> -		return -EINVAL;
> +	BUILD_BUG_ON(sizeof(u8) != sizeof(sseu->slice_mask));
>  
>  	if (sseu->max_slices == 0)
>  		return -ENODEV;
>  
> -	BUILD_BUG_ON(sizeof(u8) != sizeof(sseu->slice_mask));
> -
>  	slice_length = sizeof(sseu->slice_mask);
>  	subslice_length = sseu->max_slices * sseu->ss_stride;
>  	eu_length = sseu->max_slices * sseu->max_subslices * sseu->eu_stride;
>  	total_length = sizeof(topo) + slice_length + subslice_length +
>  		       eu_length;
>  
> -	ret = copy_query_item(&topo, sizeof(topo), total_length,
> -			      query_item);
> +	ret = copy_query_item(&topo, sizeof(topo), total_length, query_item);
> +
>  	if (ret != 0)
>  		return ret;
>  
> -	if (topo.flags != 0)
> -		return -EINVAL;
> -
>  	memset(&topo, 0, sizeof(topo));
>  	topo.max_slices = sseu->max_slices;
>  	topo.max_subslices = sseu->max_subslices;
> @@ -69,27 +64,64 @@ static int query_topology_info(struct drm_i915_private *dev_priv,
>  	topo.eu_stride = sseu->eu_stride;
>  
>  	if (copy_to_user(u64_to_user_ptr(query_item->data_ptr),
> -			   &topo, sizeof(topo)))
> +			 &topo, sizeof(topo)))
>  		return -EFAULT;
>  
>  	if (copy_to_user(u64_to_user_ptr(query_item->data_ptr + sizeof(topo)),
> -			   &sseu->slice_mask, slice_length))
> +			 &sseu->slice_mask, slice_length))
>  		return -EFAULT;
>  
>  	if (copy_to_user(u64_to_user_ptr(query_item->data_ptr +
> -					   sizeof(topo) + slice_length),
> -			   sseu->subslice_mask, subslice_length))
> +					 sizeof(topo) + slice_length),
> +			 subslice_mask, subslice_length))
>  		return -EFAULT;
>  
>  	if (copy_to_user(u64_to_user_ptr(query_item->data_ptr +
> -					   sizeof(topo) +
> -					   slice_length + subslice_length),
> -			   sseu->eu_mask, eu_length))
> +					 sizeof(topo) +
> +					 slice_length + subslice_length),
> +			 sseu->eu_mask, eu_length))
>  		return -EFAULT;
>  
>  	return total_length;
>  }
>  
> +static int query_topology_info(struct drm_i915_private *dev_priv,
> +			       struct drm_i915_query_item *query_item)
> +{
> +	const struct sseu_dev_info *sseu = &to_gt(dev_priv)->info.sseu;
> +
> +	if (query_item->flags != 0)
> +		return -EINVAL;
> +
> +	return fill_topology_info(sseu, query_item, sseu->subslice_mask);
> +}
> +
> +static int query_geometry_subslices(struct drm_i915_private *i915,
> +				    struct drm_i915_query_item *query_item)
> +{
> +	const struct sseu_dev_info *sseu;
> +	struct intel_engine_cs *engine;
> +	struct i915_engine_class_instance classinstance;
> +
> +	if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 50))
> +		return -ENODEV;
> +
> +	classinstance = *((struct i915_engine_class_instance *)&query_item->flags);
> +
> +	engine = intel_engine_lookup_user(i915, (u8) classinstance.engine_class,
> +					  (u8) classinstance.engine_instance);
> +
> +	if (!engine)
> +		return -EINVAL;
> +
> +	if (engine->class != RENDER_CLASS)
> +		return -EINVAL;
> +
> +	sseu = &engine->gt->info.sseu;
> +
> +	return fill_topology_info(sseu, query_item, sseu->geometry_subslice_mask);
> +}
> +
>  static int
>  query_engine_info(struct drm_i915_private *i915,
>  		  struct drm_i915_query_item *query_item)
> @@ -508,6 +540,7 @@ static int (* const i915_query_funcs[])(struct drm_i915_private *dev_priv,
>  	query_perf_config,
>  	query_memregion_info,
>  	query_hwconfig_blob,
> +	query_geometry_subslices,
>  };
>  
>  int i915_query_ioctl(struct drm_device *dev, void *data, struct drm_file *file)
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 9ab021c4d632..c2a18afcf791 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -2690,11 +2690,12 @@ struct drm_i915_perf_oa_config {
>  struct drm_i915_query_item {
>  	/** @query_id: The id for this query */
>  	__u64 query_id;
> -#define DRM_I915_QUERY_TOPOLOGY_INFO    1
> -#define DRM_I915_QUERY_ENGINE_INFO	2
> -#define DRM_I915_QUERY_PERF_CONFIG      3
> -#define DRM_I915_QUERY_MEMORY_REGIONS   4
> -#define DRM_I915_QUERY_HWCONFIG_BLOB	5
> +#define DRM_I915_QUERY_TOPOLOGY_INFO		1
> +#define DRM_I915_QUERY_ENGINE_INFO		2
> +#define DRM_I915_QUERY_PERF_CONFIG		3
> +#define DRM_I915_QUERY_MEMORY_REGIONS		4
> +#define DRM_I915_QUERY_HWCONFIG_BLOB		5
> +#define DRM_I915_QUERY_GEOMETRY_SUBSLICES	6
>  /* Must be kept compact -- no holes and well documented */
>  
>  	/**
> @@ -2718,6 +2719,9 @@ struct drm_i915_query_item {
>  	 *	- DRM_I915_QUERY_PERF_CONFIG_LIST
>  	 *      - DRM_I915_QUERY_PERF_CONFIG_DATA_FOR_UUID
>  	 *      - DRM_I915_QUERY_PERF_CONFIG_FOR_UUID
> +	 *
> +	 * When query_id == DRM_I915_QUERY_GEOMETRY_SUBSLICES must have a valid
> +	 * i915_engine_class_instance struct.
>  	 */
>  	__u32 flags;
>  #define DRM_I915_QUERY_PERF_CONFIG_LIST          1
> @@ -2776,16 +2780,20 @@ struct drm_i915_query {
>  };
>  
>  /*

Can we please include this in the kerneldoc, and also make sure that the
queries are nicely all listed somewhere and link to each respective
information structure?

Most of the doc for queries is there now, but the presentation and linking
lacks still a lot.
-Daniel

> - * Data written by the kernel with query DRM_I915_QUERY_TOPOLOGY_INFO :
> + * Data written by the kernel with query DRM_I915_QUERY_TOPOLOGY_INFO,
> + * DRM_I915_QUERY_GEOMETRY_SUBSLICE:
>   *
>   * data: contains the 3 pieces of information :
>   *
> - * - the slice mask with one bit per slice telling whether a slice is
> - *   available. The availability of slice X can be queried with the following
> - *   formula :
> + * - For DRM_I915_QUERY_TOPOLOGY_INFO the slice mask with one bit per slice
> + *   telling whether a slice is available. The availability of slice X can be
> + *   queried with the following formula :
>   *
>   *           (data[X / 8] >> (X % 8)) & 1
>   *
> + * - For DRM_I915_QUERY_GEOMETRY_SUBSLICES Slices are equal to 1 and this field
> + *   is not used.
> + *
>   * - the subslice mask for each slice with one bit per subslice telling
>   *   whether a subslice is available. Gen12 has dual-subslices, which are
>   *   similar to two gen11 subslices. For gen12, this array represents dual-
> -- 
> 2.21.3
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
