Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF7521BAAB
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 18:20:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 903EB6EC82;
	Fri, 10 Jul 2020 16:20:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A52F6EC82
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 16:20:12 +0000 (UTC)
IronPort-SDR: gEr8OEj5rsdxz7t6Q8BT1OwAhA41GXY7bj/4ZA0O/Y5QUPC3qD053Y9uCE649PynydWE8D+wqa
 V7Egn9BofncQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="148234343"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="148234343"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 09:20:09 -0700
IronPort-SDR: IwmrLj3CU38bZaJQ+ic56P8TZH6if377ofQtqdoavzLZbkG65htaT8R9MHSYPQbwxoMdKQoiw1
 5uEGsgkxH3cw==
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="428608572"
Received: from unknown (HELO [10.252.44.180]) ([10.252.44.180])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 09:20:08 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200710115757.290984-1-matthew.auld@intel.com>
 <20200710115757.290984-36-matthew.auld@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <0fb0ce75-f1bd-91b3-0846-156ddec1cfa1@linux.intel.com>
Date: Fri, 10 Jul 2020 17:20:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200710115757.290984-36-matthew.auld@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 35/60] drm/i915/query: Expose memory regions
 through the query uAPI
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 10/07/2020 12:57, Matthew Auld wrote:
> From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
> 
> Returns the available memory region areas supported by the HW.
> 
> Signed-off-by: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 12 ++++-
>   drivers/gpu/drm/i915/gem/i915_gem_stolen.h |  3 ++
>   drivers/gpu/drm/i915/i915_drv.c            |  2 +-
>   drivers/gpu/drm/i915/i915_pci.c            |  2 +-
>   drivers/gpu/drm/i915/i915_query.c          | 62 ++++++++++++++++++++++
>   drivers/gpu/drm/i915/intel_memory_region.c | 32 ++++++-----
>   drivers/gpu/drm/i915/intel_memory_region.h | 38 +++++++------
>   include/uapi/drm/i915_drm.h                | 58 ++++++++++++++++++++
>   8 files changed, 172 insertions(+), 37 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> index e0f21f12d3ce..6704877fbda8 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> @@ -646,11 +646,19 @@ _i915_gem_object_create_stolen(struct intel_memory_region *mem,
>   	return obj;
>   }
>   
> +struct intel_memory_region *i915_stolen_region(struct drm_i915_private *i915)
> +{
> +	if (HAS_LMEM(i915))
> +		return i915->mm.regions[INTEL_REGION_STOLEN_LMEM];
> +
> +	return i915->mm.regions[INTEL_REGION_STOLEN_SMEM];
> +}

The split of the stolen region to lmem and smem should be a separate 
patch I think.

> +
>   struct drm_i915_gem_object *
>   i915_gem_object_create_stolen(struct drm_i915_private *i915,
>   			      resource_size_t size)
>   {
> -	return i915_gem_object_create_region(i915->mm.regions[INTEL_REGION_STOLEN],
> +	return i915_gem_object_create_region(i915_stolen_region(i915),
>   					     size, I915_BO_ALLOC_CONTIGUOUS);
>   }
>   
> @@ -690,7 +698,7 @@ i915_gem_object_create_stolen_for_preallocated(struct drm_i915_private *i915,
>   					       resource_size_t stolen_offset,
>   					       resource_size_t size)
>   {
> -	struct intel_memory_region *mem = i915->mm.regions[INTEL_REGION_STOLEN];
> +	struct intel_memory_region *mem = i915_stolen_region(i915);
>   	struct drm_i915_gem_object *obj;
>   	struct drm_mm_node *stolen;
>   	int ret;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
> index e15c0adad8af..a19110a1b75a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
> @@ -22,6 +22,9 @@ int i915_gem_stolen_insert_node_in_range(struct drm_i915_private *dev_priv,
>   void i915_gem_stolen_remove_node(struct drm_i915_private *dev_priv,
>   				 struct drm_mm_node *node);
>   struct intel_memory_region *i915_gem_stolen_setup(struct drm_i915_private *i915);
> +
> +struct intel_memory_region *i915_stolen_region(struct drm_i915_private *i915);
> +
>   struct drm_i915_gem_object *
>   i915_gem_object_create_stolen(struct drm_i915_private *dev_priv,
>   			      resource_size_t size);
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index 5473bfe9126c..39826b98fac2 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -963,7 +963,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   		if (INTEL_GEN(i915) >= 9 && i915_selftest.live < 0 &&
>   		    i915->params.fake_lmem_start) {
>   			mkwrite_device_info(i915)->memory_regions =
> -				REGION_SMEM | REGION_LMEM | REGION_STOLEN;
> +				REGION_SMEM | REGION_LMEM | REGION_STOLEN_SMEM;
>   			mkwrite_device_info(i915)->is_dgfx = true;
>   			GEM_BUG_ON(!HAS_LMEM(i915));
>   			GEM_BUG_ON(!IS_DGFX(i915));
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index d5e27202d150..e132fdffa432 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -154,7 +154,7 @@
>   	.page_sizes = I915_GTT_PAGE_SIZE_4K
>   
>   #define GEN_DEFAULT_REGIONS \
> -	.memory_regions = REGION_SMEM | REGION_STOLEN
> +	.memory_regions = REGION_SMEM | REGION_STOLEN_SMEM
>   
>   #define I830_FEATURES \
>   	GEN(2), \
> diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
> index fed337ad7b68..d4ca040c528b 100644
> --- a/drivers/gpu/drm/i915/i915_query.c
> +++ b/drivers/gpu/drm/i915/i915_query.c
> @@ -419,11 +419,73 @@ static int query_perf_config(struct drm_i915_private *i915,
>   	}
>   }
>   
> +static int query_memregion_info(struct drm_i915_private *dev_priv,
> +				struct drm_i915_query_item *query_item)
> +{
> +	struct drm_i915_query_memory_regions __user *query_ptr =
> +		u64_to_user_ptr(query_item->data_ptr);
> +	struct drm_i915_memory_region_info __user *info_ptr =
> +		&query_ptr->regions[0];
> +	struct drm_i915_memory_region_info info = { };
> +	struct drm_i915_query_memory_regions query;
> +	u32 total_length;
> +	int ret, i;
> +
> +	if (query_item->flags != 0)
> +		return -EINVAL;
> +
> +	total_length = sizeof(query);
> +	for (i = 0; i < ARRAY_SIZE(dev_priv->mm.regions); ++i) {
> +		struct intel_memory_region *region = dev_priv->mm.regions[i];
> +
> +		if (!region)
> +			continue;
> +
> +		total_length += sizeof(info);
> +	}
> +
> +	ret = copy_query_item(&query, sizeof(query), total_length, query_item);
> +	if (ret != 0)
> +		return ret;
> +
> +	if (query.num_regions)
> +		return -EINVAL;
> +
> +	for (i = 0; i < ARRAY_SIZE(query.rsvd); ++i) {
> +		if (query.rsvd[i])
> +			return  -EINVAL;
> +	}
> +
> +	for (i = 0; i < ARRAY_SIZE(dev_priv->mm.regions); ++i) {
> +		struct intel_memory_region *region = dev_priv->mm.regions[i];
> +
> +		if (!region)
> +			continue;
> +
> +		info.region.memory_class = region->type;
> +		info.region.memory_instance = region->instance;
> +		info.probed_size = region->total;
> +		info.unallocated_size = region->avail;
> +
> +		if (__copy_to_user(info_ptr, &info, sizeof(info)))
> +			return -EFAULT;
> +
> +		query.num_regions++;
> +		info_ptr++;
> +	}
> +
> +	if (__copy_to_user(query_ptr, &query, sizeof(query)))
> +		return -EFAULT;
> +
> +	return total_length;
> +}
> +
>   static int (* const i915_query_funcs[])(struct drm_i915_private *dev_priv,
>   					struct drm_i915_query_item *query_item) = {
>   	query_topology_info,
>   	query_engine_info,
>   	query_perf_config,
> +	query_memregion_info,
>   };
>   
>   int i915_query_ioctl(struct drm_device *dev, void *data, struct drm_file *file)
> diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
> index 2943c7778d5e..b9eb1a42dd3a 100644
> --- a/drivers/gpu/drm/i915/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/intel_memory_region.c
> @@ -6,14 +6,19 @@
>   #include "intel_memory_region.h"
>   #include "i915_drv.h"
>   
> -/* XXX: Hysterical raisins. BIT(inst) needs to just be (inst) at some point. */
> -#define REGION_MAP(type, inst) \
> -	BIT((type) + INTEL_MEMORY_TYPE_SHIFT) | BIT(inst)
> -
> -const u32 intel_region_map[] = {
> -	[INTEL_REGION_SMEM] = REGION_MAP(INTEL_MEMORY_SYSTEM, 0),
> -	[INTEL_REGION_LMEM] = REGION_MAP(INTEL_MEMORY_LOCAL, 0),
> -	[INTEL_REGION_STOLEN] = REGION_MAP(INTEL_MEMORY_STOLEN, 0),
> +const struct intel_memory_region_info intel_region_map[] = {
> +       [INTEL_REGION_SMEM] = {
> +               .class = INTEL_MEMORY_SYSTEM,
> +               .instance = 0,
> +       },
> +       [INTEL_REGION_LMEM] = {
> +               .class = INTEL_MEMORY_LOCAL,
> +               .instance = 0,
> +       },
> +       [INTEL_REGION_STOLEN_SMEM] = {
> +               .class = INTEL_MEMORY_STOLEN_SYSTEM,
> +               .instance = 0,
> +       },
>   };
>   
>   struct intel_memory_region *
> @@ -257,17 +262,18 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
>   
>   	for (i = 0; i < ARRAY_SIZE(i915->mm.regions); i++) {
>   		struct intel_memory_region *mem = ERR_PTR(-ENODEV);
> -		u32 type;
> +		u16 type, instance;
>   
>   		if (!HAS_REGION(i915, BIT(i)))
>   			continue;
>   
> -		type = MEMORY_TYPE_FROM_REGION(intel_region_map[i]);
> +		type = intel_region_map[i].class;
> +		instance = intel_region_map[i].instance;
>   		switch (type) {
>   		case INTEL_MEMORY_SYSTEM:
>   			mem = i915_gem_shmem_setup(i915);
>   			break;
> -		case INTEL_MEMORY_STOLEN:
> +		case INTEL_MEMORY_STOLEN_SYSTEM:
>   			mem = i915_gem_stolen_setup(i915);
>   			break;
>   		case INTEL_MEMORY_LOCAL:
> @@ -283,9 +289,9 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
>   			goto out_cleanup;
>   		}
>   
> -		mem->id = intel_region_map[i];
> +		mem->id = i;
>   		mem->type = type;
> -		mem->instance = MEMORY_INSTANCE_FROM_REGION(intel_region_map[i]);
> +		mem->instance = instance;
>   
>   		i915->mm.regions[i] = mem;
>   	}
> diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
> index 232490d89a83..c047cf7c5e7c 100644
> --- a/drivers/gpu/drm/i915/intel_memory_region.h
> +++ b/drivers/gpu/drm/i915/intel_memory_region.h
> @@ -11,6 +11,7 @@
>   #include <linux/mutex.h>
>   #include <linux/io-mapping.h>
>   #include <drm/drm_mm.h>
> +#include <drm/i915_drm.h>
>   
>   #include "i915_buddy.h"
>   
> @@ -19,30 +20,25 @@ struct drm_i915_gem_object;
>   struct intel_memory_region;
>   struct sg_table;
>   
> -/**
> - *  Base memory type
> - */
>   enum intel_memory_type {
> -	INTEL_MEMORY_SYSTEM = 0,
> -	INTEL_MEMORY_LOCAL,
> -	INTEL_MEMORY_STOLEN,
> +	INTEL_MEMORY_SYSTEM = I915_MEMORY_CLASS_SYSTEM,
> +	INTEL_MEMORY_LOCAL = I915_MEMORY_CLASS_DEVICE,
> +	INTEL_MEMORY_STOLEN_SYSTEM = I915_MEMORY_CLASS_STOLEN_SYSTEM,
> +	INTEL_MEMORY_STOLEN_LOCAL = I915_MEMORY_CLASS_STOLEN_DEVICE,
>   };
>   
>   enum intel_region_id {
>   	INTEL_REGION_SMEM = 0,
>   	INTEL_REGION_LMEM,
> -	INTEL_REGION_STOLEN,
> +	INTEL_REGION_STOLEN_SMEM,
> +	INTEL_REGION_STOLEN_LMEM,
>   	INTEL_REGION_UNKNOWN, /* Should be last */
>   };
>   
>   #define REGION_SMEM     BIT(INTEL_REGION_SMEM)
>   #define REGION_LMEM     BIT(INTEL_REGION_LMEM)
> -#define REGION_STOLEN   BIT(INTEL_REGION_STOLEN)
> -
> -#define INTEL_MEMORY_TYPE_SHIFT 16
> -
> -#define MEMORY_TYPE_FROM_REGION(r) (ilog2((r) >> INTEL_MEMORY_TYPE_SHIFT))
> -#define MEMORY_INSTANCE_FROM_REGION(r) (ilog2((r) & 0xffff))
> +#define REGION_STOLEN_SMEM   BIT(INTEL_REGION_STOLEN_SMEM)
> +#define REGION_STOLEN_LMEM   BIT(INTEL_REGION_STOLEN_LMEM)
>   
>   #define I915_ALLOC_MIN_PAGE_SIZE  BIT(0)
>   #define I915_ALLOC_CONTIGUOUS     BIT(1)
> @@ -51,10 +47,12 @@ enum intel_region_id {
>   	for (id = 0; id < ARRAY_SIZE((i915)->mm.regions); id++) \
>   		for_each_if((mr) = (i915)->mm.regions[id])
>   
> -/**
> - * Memory regions encoded as type | instance
> - */
> -extern const u32 intel_region_map[];
> +struct intel_memory_region_info {
> +       u16 class;
> +       u16 instance;
> +};
> +
> +extern const struct intel_memory_region_info intel_region_map[];
>   
>   struct intel_memory_region_ops {
>   	unsigned int flags;
> @@ -89,9 +87,9 @@ struct intel_memory_region {
>   	resource_size_t total;
>   	resource_size_t avail;
>   
> -	unsigned int type;
> -	unsigned int instance;
> -	unsigned int id;
> +	u16 type;
> +	u16 instance;

Class and type could be tidied to just one.

struct intel_memory_region_info could then be used here. Or even struct 
drm_i915_gem_memory_class_instance but granted perhaps it is better to 
keep uapi and implementation separate.

> +	enum intel_region_id id;
>   	char name[8];
>   
>   	dma_addr_t remap_addr;
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 14b67cd6b54b..46baedf71cb1 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -2122,6 +2122,7 @@ struct drm_i915_query_item {
>   #define DRM_I915_QUERY_TOPOLOGY_INFO    1
>   #define DRM_I915_QUERY_ENGINE_INFO	2
>   #define DRM_I915_QUERY_PERF_CONFIG      3
> +#define DRM_I915_QUERY_MEMORY_REGIONS   4
>   /* Must be kept compact -- no holes and well documented */
>   
>   	/*
> @@ -2322,6 +2323,63 @@ struct drm_i915_query_perf_config {
>   	__u8 data[];
>   };
>   
> +enum drm_i915_gem_memory_class {
> +	I915_MEMORY_CLASS_SYSTEM = 0,
> +	I915_MEMORY_CLASS_DEVICE,
> +	I915_MEMORY_CLASS_STOLEN_SYSTEM,
> +	I915_MEMORY_CLASS_STOLEN_DEVICE,
> +};
> +
> +struct drm_i915_gem_memory_class_instance {
> +	__u16 memory_class; /* see enum drm_i915_gem_memory_class */
> +	__u16 memory_instance;
> +};
> +
> +/**
> + * struct drm_i915_memory_region_info
> + *
> + * Describes one region as known to the driver.
> + */
> +struct drm_i915_memory_region_info {
> +	/** class:instance pair encoding */
> +	struct drm_i915_gem_memory_class_instance region;
> +
> +	/** MBZ */
> +	__u32 rsvd0;
> +
> +	/** MBZ */
> +	__u64 caps;
> +
> +	/** MBZ */
> +	__u64 flags;
> +
> +	/** Memory probed by the driver (-1 = unknown) */
> +	__u64 probed_size;
> +
> +	/** Estimate of memory remaining (-1 = unknown) */
> +	__u64 unallocated_size;
> +
> +	/** MBZ */
> +	__u64 rsvd1[8];
> +};
> +
> +/**
> + * struct drm_i915_query_memory_regions
> + *
> + * Region info query enumerates all regions known to the driver by filling in
> + * an array of struct drm_i915_memory_region_info structures.
> + */
> +struct drm_i915_query_memory_regions {
> +	/** Number of supported regions */
> +	__u32 num_regions;
> +
> +	/** MBZ */
> +	__u32 rsvd[3];
> +
> +	/* Info about each supported region */
> +	struct drm_i915_memory_region_info regions[];
> +};
> +
>   #if defined(__cplusplus)
>   }
>   #endif
> 

The rest looks good to me.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
