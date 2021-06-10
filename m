Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF7D3A36B0
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 23:52:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5A816E4CF;
	Thu, 10 Jun 2021 21:52:38 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA50D6E4CF;
 Thu, 10 Jun 2021 21:52:37 +0000 (UTC)
IronPort-SDR: 4L2QHjeYV9L3NFfvAUNbLSm9rbCRmv1Nmx+FH0+GCybxTFX2ejWHS+Y3+mVYi4cMziTpGFFJru
 7RViLuP/2BiQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="185784474"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="185784474"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 14:52:37 -0700
IronPort-SDR: j1SKKnCDNw1qru8rFuVbjAbaoq6ZVlsiqFYpCa5kKTaEXYiaJYenS6mNcy0AlzZb9vs77MLV0x
 u33tb+rgVmQQ==
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="486349682"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 14:52:36 -0700
Date: Thu, 10 Jun 2021 14:45:43 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: John.C.Harrison@Intel.com
Message-ID: <20210610214542.GA6812@sdutt-i7>
References: <20210610204626.2995262-1-John.C.Harrison@Intel.com>
 <20210610204626.2995262-2-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210610204626.2995262-2-John.C.Harrison@Intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/guc: Add fetch of hwconfig
 table
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
Cc: Intel-GFX@Lists.FreeDesktop.Org, DRI-Devel@Lists.FreeDesktop.Org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 10, 2021 at 01:46:24PM -0700, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> =

> Implement support for fetching the hardware description table from the
> GuC. The call is made twice - once without a destination buffer to
> query the size and then a second time to fill in the buffer.
> =

> This patch also adds a header file which lists all the attribute values
> currently defined for the table. This is included for reference as
> these are not currently used by the i915 driver itself.
> =

> Note that the table is only available on ADL-P and later platforms.
> =

> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  .../gpu/drm/i915/gt/intel_hwconfig_types.h    | 102 +++++++++++
>  .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |   1 +
>  .../gpu/drm/i915/gt/uc/abi/guc_errors_abi.h   |   4 +
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   3 +-
>  drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   2 +
>  .../gpu/drm/i915/gt/uc/intel_guc_hwconfig.c   | 167 ++++++++++++++++++
>  .../gpu/drm/i915/gt/uc/intel_guc_hwconfig.h   |  19 ++
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c         |   6 +
>  9 files changed, 304 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpu/drm/i915/gt/intel_hwconfig_types.h
>  create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
>  create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.h
> =

> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 2adb6b420c7c..8e957ca7c9f1 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -187,6 +187,7 @@ i915-y +=3D gt/uc/intel_uc.o \
>  	  gt/uc/intel_guc_log.o \
>  	  gt/uc/intel_guc_log_debugfs.o \
>  	  gt/uc/intel_guc_submission.o \
> +	  gt/uc/intel_guc_hwconfig.o \
>  	  gt/uc/intel_huc.o \
>  	  gt/uc/intel_huc_debugfs.o \
>  	  gt/uc/intel_huc_fw.o
> diff --git a/drivers/gpu/drm/i915/gt/intel_hwconfig_types.h b/drivers/gpu=
/drm/i915/gt/intel_hwconfig_types.h
> new file mode 100644
> index 000000000000..b09c0f65b93a
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gt/intel_hwconfig_types.h
> @@ -0,0 +1,102 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =A9 2020 Intel Corporation
> + */
> +
> +#ifndef _INTEL_HWCONFIG_TYPES_H_
> +#define _INTEL_HWCONFIG_TYPES_H_
> +
> +/**
> + * enum intel_hwconfig - Global definition of hwconfig table attributes
> + *
> + * Intel devices provide a KLV (Key/Length/Value) table containing
> + * the static hardware configuration for that platform.
> + * This header defines the current attribute keys for this KLV.
> + */
> +enum intel_hwconfig {
> +	INTEL_HWCONFIG_MAX_SLICES_SUPPORTED =3D 1,
> +	INTEL_HWCONFIG_MAX_DUAL_SUBSLICES_SUPPORTED,		/* 2 */
> +	INTEL_HWCONFIG_MAX_NUM_EU_PER_DSS,			/* 3 */
> +	INTEL_HWCONFIG_NUM_PIXEL_PIPES,				/* 4 */
> +	INTEL_HWCONFIG_DEPRECATED_MAX_NUM_GEOMETRY_PIPES,	/* 5 */
> +	INTEL_HWCONFIG_DEPRECATED_L3_CACHE_SIZE_IN_KB,		/* 6 */
> +	INTEL_HWCONFIG_DEPRECATED_L3_BANK_COUNT,		/* 7 */
> +	INTEL_HWCONFIG_L3_CACHE_WAYS_SIZE_IN_BYTES,		/* 8 */
> +	INTEL_HWCONFIG_L3_CACHE_WAYS_PER_SECTOR,		/* 9 */
> +	INTEL_HWCONFIG_MAX_MEMORY_CHANNELS,			/* 10 */
> +	INTEL_HWCONFIG_MEMORY_TYPE,				/* 11 */
> +	INTEL_HWCONFIG_CACHE_TYPES,                             /* 12 */
> +	INTEL_HWCONFIG_LOCAL_MEMORY_PAGE_SIZES_SUPPORTED,	/* 13 */
> +	INTEL_HWCONFIG_DEPRECATED_SLM_SIZE_IN_KB,		/* 14 */
> +	INTEL_HWCONFIG_NUM_THREADS_PER_EU,			/* 15 */
> +	INTEL_HWCONFIG_TOTAL_VS_THREADS,			/* 16 */
> +	INTEL_HWCONFIG_TOTAL_GS_THREADS,			/* 17 */
> +	INTEL_HWCONFIG_TOTAL_HS_THREADS,			/* 18 */
> +	INTEL_HWCONFIG_TOTAL_DS_THREADS,			/* 19 */
> +	INTEL_HWCONFIG_TOTAL_VS_THREADS_POCS,			/* 20 */
> +	INTEL_HWCONFIG_TOTAL_PS_THREADS,			/* 21 */
> +	INTEL_HWCONFIG_DEPRECATED_MAX_FILL_RATE,		/* 22 */
> +	INTEL_HWCONFIG_MAX_RCS,					/* 23 */
> +	INTEL_HWCONFIG_MAX_CCS,					/* 24 */
> +	INTEL_HWCONFIG_MAX_VCS,					/* 25 */
> +	INTEL_HWCONFIG_MAX_VECS,				/* 26 */
> +	INTEL_HWCONFIG_MAX_COPY_CS,				/* 27 */
> +	INTEL_HWCONFIG_DEPRECATED_URB_SIZE_IN_KB,		/* 28 */
> +	INTEL_HWCONFIG_MIN_VS_URB_ENTRIES,			/* 29 */
> +	INTEL_HWCONFIG_MAX_VS_URB_ENTRIES,			/* 30 */
> +	INTEL_HWCONFIG_MIN_PCS_URB_ENTRIES,			/* 31 */
> +	INTEL_HWCONFIG_MAX_PCS_URB_ENTRIES,			/* 32 */
> +	INTEL_HWCONFIG_MIN_HS_URB_ENTRIES,			/* 33 */
> +	INTEL_HWCONFIG_MAX_HS_URB_ENTRIES,			/* 34 */
> +	INTEL_HWCONFIG_MIN_GS_URB_ENTRIES,			/* 35 */
> +	INTEL_HWCONFIG_MAX_GS_URB_ENTRIES,			/* 36 */
> +	INTEL_HWCONFIG_MIN_DS_URB_ENTRIES,			/* 37 */
> +	INTEL_HWCONFIG_MAX_DS_URB_ENTRIES,			/* 38 */
> +	INTEL_HWCONFIG_PUSH_CONSTANT_URB_RESERVED_SIZE,		/* 39 */
> +	INTEL_HWCONFIG_POCS_PUSH_CONSTANT_URB_RESERVED_SIZE,	/* 40 */
> +	INTEL_HWCONFIG_URB_REGION_ALIGNMENT_SIZE_IN_BYTES,	/* 41 */
> +	INTEL_HWCONFIG_URB_ALLOCATION_SIZE_UNITS_IN_BYTES,	/* 42 */
> +	INTEL_HWCONFIG_MAX_URB_SIZE_CCS_IN_BYTES,		/* 43 */
> +	INTEL_HWCONFIG_VS_MIN_DEREF_BLOCK_SIZE_HANDLE_COUNT,	/* 44 */
> +	INTEL_HWCONFIG_DS_MIN_DEREF_BLOCK_SIZE_HANDLE_COUNT,	/* 45 */
> +	INTEL_HWCONFIG_NUM_RT_STACKS_PER_DSS,			/* 46 */
> +	INTEL_HWCONFIG_MAX_URB_STARTING_ADDRESS,		/* 47 */
> +	INTEL_HWCONFIG_MIN_CS_URB_ENTRIES,			/* 48 */
> +	INTEL_HWCONFIG_MAX_CS_URB_ENTRIES,			/* 49 */
> +	INTEL_HWCONFIG_L3_ALLOC_PER_BANK_URB,			/* 50 */
> +	INTEL_HWCONFIG_L3_ALLOC_PER_BANK_REST,			/* 51 */
> +	INTEL_HWCONFIG_L3_ALLOC_PER_BANK_DC,			/* 52 */
> +	INTEL_HWCONFIG_L3_ALLOC_PER_BANK_RO,			/* 53 */
> +	INTEL_HWCONFIG_L3_ALLOC_PER_BANK_Z,			/* 54 */
> +	INTEL_HWCONFIG_L3_ALLOC_PER_BANK_COLOR,			/* 55 */
> +	INTEL_HWCONFIG_L3_ALLOC_PER_BANK_UNIFIED_TILE_CACHE,	/* 56 */
> +	INTEL_HWCONFIG_L3_ALLOC_PER_BANK_COMMAND_BUFFER,	/* 57 */
> +	INTEL_HWCONFIG_L3_ALLOC_PER_BANK_RW,			/* 58 */
> +	INTEL_HWCONFIG_MAX_NUM_L3_CONFIGS,			/* 59 */
> +	INTEL_HWCONFIG_BINDLESS_SURFACE_OFFSET_BIT_COUNT,	/* 60 */
> +	INTEL_HWCONFIG_RESERVED_CCS_WAYS,			/* 61 */
> +	INTEL_HWCONFIG_CSR_SIZE_IN_MB,				/* 62 */
> +	INTEL_HWCONFIG_GEOMETRY_PIPES_PER_SLICE,		/* 63 */
> +	INTEL_HWCONFIG_L3_BANK_SIZE_IN_KB,			/* 64 */
> +	INTEL_HWCONFIG_SLM_SIZE_PER_DSS,			/* 65 */
> +	INTEL_HWCONFIG_MAX_PIXEL_FILL_RATE_PER_SLICE,		/* 66 */
> +	INTEL_HWCONFIG_MAX_PIXEL_FILL_RATE_PER_DSS,		/* 67 */
> +	INTEL_HWCONFIG_URB_SIZE_PER_SLICE_IN_KB,		/* 68 */
> +	INTEL_HWCONFIG_URB_SIZE_PER_L3_BANK_COUNT_IN_KB,	/* 69 */
> +	INTEL_HWCONFIG_MAX_SUBSLICE,				/* 70 */
> +	INTEL_HWCONFIG_MAX_EU_PER_SUBSLICE,			/* 71 */
> +	INTEL_HWCONFIG_RAMBO_L3_BANK_SIZE_IN_KB,		/* 72 */
> +	INTEL_HWCONFIG_SLM_SIZE_PER_SS_IN_KB,			/* 73 */
> +	__INTEL_HWCONFIG_LIMIT
> +};
> +
> +enum {
> +	INTEL_HWCONFIG_MEMORY_TYPE_LPDDR4 =3D 0,
> +	INTEL_HWCONFIG_MEMORY_TYPE_LPDDR5,
> +};
> +
> +#define INTEL_HWCONFIG_CACHE_TYPE_L3	BIT(0)
> +#define INTEL_HWCONFIG_CACHE_TYPE_LLC	BIT(1)
> +#define INTEL_HWCONFIG_CACHE_TYPE_EDRAM	BIT(2)
> +
> +#endif /* _INTEL_HWCONFIG_TYPES_H_ */
> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/g=
pu/drm/i915/gt/uc/abi/guc_actions_abi.h
> index 90efef8a73e4..075f56a040b7 100644
> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> @@ -19,6 +19,7 @@ enum intel_guc_action {
>  	INTEL_GUC_ACTION_EXIT_S_STATE =3D 0x502,
>  	INTEL_GUC_ACTION_SLPC_REQUEST =3D 0x3003,
>  	INTEL_GUC_ACTION_AUTHENTICATE_HUC =3D 0x4000,
> +	INTEL_GUC_ACTION_GET_HWCONFIG =3D 0x4100,
>  	INTEL_GUC_ACTION_REGISTER_COMMAND_TRANSPORT_BUFFER =3D 0x4505,
>  	INTEL_GUC_ACTION_DEREGISTER_COMMAND_TRANSPORT_BUFFER =3D 0x4506,
>  	INTEL_GUC_ACTION_LIMIT
> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_errors_abi.h b/drivers/gp=
u/drm/i915/gt/uc/abi/guc_errors_abi.h
> index 488b6061ee89..f9e2a6aaef4a 100644
> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_errors_abi.h
> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_errors_abi.h
> @@ -8,6 +8,10 @@
>  =

>  enum intel_guc_response_status {
>  	INTEL_GUC_RESPONSE_STATUS_SUCCESS =3D 0x0,
> +	INTEL_GUC_RESPONSE_NOT_SUPPORTED =3D 0x20,
> +	INTEL_GUC_RESPONSE_NO_ATTRIBUTE_TABLE =3D 0x201,
> +	INTEL_GUC_RESPONSE_NO_DECRYPTION_KEY =3D 0x202,
> +	INTEL_GUC_RESPONSE_DECRYPTION_FAILED =3D 0x204,
>  	INTEL_GUC_RESPONSE_STATUS_GENERIC_FAIL =3D 0xF000,
>  };
>  =

> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i91=
5/gt/uc/intel_guc.c
> index f147cb389a20..01839d5eb130 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -407,13 +407,14 @@ int intel_guc_send_mmio(struct intel_guc *guc, cons=
t u32 *action, u32 len,
>  	/*
>  	 * No GuC command should ever take longer than 10ms.
>  	 * Fast commands should still complete in 10us.
> +	 * Except for the hwconfig table query, which takes ~50ms.
>  	 */
>  	ret =3D __intel_wait_for_register_fw(uncore,
>  					   guc_send_reg(guc, 0),
>  					   INTEL_GUC_MSG_TYPE_MASK,
>  					   INTEL_GUC_MSG_TYPE_RESPONSE <<
>  					   INTEL_GUC_MSG_TYPE_SHIFT,
> -					   10, 10, &status);
> +					   10, 100, &status);
>  	/* If GuC explicitly returned an error, convert it to -EIO */
>  	if (!ret && !INTEL_GUC_MSG_IS_RESPONSE_SUCCESS(status))
>  		ret =3D -EIO;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i91=
5/gt/uc/intel_guc.h
> index 4abc59f6f3cd..8307de463af0 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -12,6 +12,7 @@
>  #include "intel_guc_ct.h"
>  #include "intel_guc_log.h"
>  #include "intel_guc_reg.h"
> +#include "intel_guc_hwconfig.h"
>  #include "intel_uc_fw.h"
>  #include "i915_utils.h"
>  #include "i915_vma.h"
> @@ -27,6 +28,7 @@ struct intel_guc {
>  	struct intel_uc_fw fw;
>  	struct intel_guc_log log;
>  	struct intel_guc_ct ct;
> +	struct intel_guc_hwconfig hwconfig;
>  =

>  	/* intel_guc_recv interrupt related state */
>  	spinlock_t irq_lock;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c b/drivers/gp=
u/drm/i915/gt/uc/intel_guc_hwconfig.c
> new file mode 100644
> index 000000000000..938b1edb7209
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
> @@ -0,0 +1,167 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =A9 2020 Intel Corporation
> + */
> +
> +#include "gt/intel_gt.h"
> +#include "gt/intel_hwconfig_types.h"
> +#include "i915_drv.h"
> +#include "i915_memcpy.h"
> +#include "intel_guc_hwconfig.h"
> +
> +static
> +inline struct intel_guc *hwconfig_to_guc(struct intel_guc_hwconfig *hwco=
nfig)
> +{
> +	return container_of(hwconfig, struct intel_guc, hwconfig);
> +}
> +
> +/**
> + * GuC has a blob containing hardware configuration information (hwconfi=
g).
> + * This is formatted as a simple and flexible KLV (Key/Length/Value) tab=
le.
> + *
> + * For example, a minimal version could be:
> + *   enum device_attr {
> + *     ATTR_SOME_VALUE =3D 0,
> + *     ATTR_SOME_MASK  =3D 1,
> + *   };
> + *
> + *   static const u32 hwconfig[] =3D {
> + *     ATTR_SOME_VALUE,
> + *     1,		// Value Length in DWords
> + *     8,		// Value
> + *
> + *     ATTR_SOME_MASK,
> + *     3,
> + *     0x00FFFFFFFF, 0xFFFFFFFF, 0xFF000000,
> + *   };
> + *
> + * The attribute ids are defined in a hardware spec. The current list as
> + * known to the i915 driver can be found in i915/gt/intel_guc_hwconfig_t=
ypes.h
> + */
> +
> +static int __guc_action_get_hwconfig(struct intel_guc_hwconfig *hwconfig,
> +				     u32 ggtt_offset, u32 ggtt_size)
> +{
> +	struct intel_guc *guc =3D hwconfig_to_guc(hwconfig);
> +	struct drm_i915_private *i915 =3D guc_to_gt(guc)->i915;
> +	u32 action[] =3D {
> +		INTEL_GUC_ACTION_GET_HWCONFIG,
> +		ggtt_offset,
> +		ggtt_size,
> +		(INTEL_DEVID(i915) << 16) | INTEL_REVID(i915),
> +	};
> +	int ret;
> +
> +	ret =3D intel_guc_send_mmio(guc, action, ARRAY_SIZE(action), NULL, 0);
> +	if (ret =3D=3D -ENXIO)
> +		return -ENOENT;
> +
> +	if (!ggtt_size && !ret)
> +		ret =3D -EINVAL;
> +
> +	return ret;
> +}
> +
> +static int guc_hwconfig_discover_size(struct intel_guc_hwconfig *hwconfi=
g)
> +{
> +	int ret;
> +
> +	/* Sending a query with too small a table will return the size of the t=
able */
> +	ret =3D __guc_action_get_hwconfig(hwconfig, 0, 0);
> +	if (ret < 0)
> +		return ret;
> +
> +	hwconfig->size =3D ret;
> +	return 0;
> +}
> +
> +static int guc_hwconfig_fill_buffer(struct intel_guc_hwconfig *hwconfig)
> +{
> +	struct intel_guc *guc =3D hwconfig_to_guc(hwconfig);
> +	struct drm_i915_private *i915 =3D guc_to_gt(guc)->i915;
> +	u32 ggtt_offset;
> +	int ret;
> +	struct i915_vma *vma;
> +	void *vaddr;
> +
> +	GEM_BUG_ON(!hwconfig->size);
> +
> +	ret =3D intel_guc_allocate_and_map_vma(guc, hwconfig->size, &vma, &vadd=
r);
> +	if (ret) {
> +		drm_err(&i915->drm, "HWConfig: Failed to allocate buffer: %d!\n", ret);
> +		return ret;
> +	}
> +
> +	ggtt_offset =3D intel_guc_ggtt_offset(guc, vma);
> +
> +	ret =3D __guc_action_get_hwconfig(hwconfig, ggtt_offset, hwconfig->size=
);
> +	if (ret >=3D 0)
> +		memcpy(hwconfig->ptr, vaddr, hwconfig->size);
> +
> +	i915_vma_unpin_and_release(&vma, I915_VMA_RELEASE_MAP);
> +
> +	return ret;
> +}
> +
> +static bool has_table(struct drm_i915_private *i915)
> +{
> +	if (IS_ALDERLAKE_P(i915)) {
> +		if (IS_ADLP_GT_STEP(i915, STEP_A0, STEP_A0))
> +			return 0;
> +
> +		return 1;
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * intel_guc_hwconfig_init - Initialize the HWConfig
> + *
> + * Retrieve the HWConfig table from the GuC and save it away in a local =
memory
> + * allocation. It can then be queried on demand by other users later on.
> + */
> +int intel_guc_hwconfig_init(struct intel_guc_hwconfig *hwconfig)
> +{
> +	struct intel_guc *guc =3D hwconfig_to_guc(hwconfig);
> +	struct drm_i915_private *i915 =3D guc_to_gt(guc)->i915;
> +	int ret;
> +
> +	if (!has_table(i915))
> +		return 0;
> +
> +	ret =3D guc_hwconfig_discover_size(hwconfig);
> +	if (ret)
> +		return ret;
> +
> +	hwconfig->ptr =3D kmalloc(hwconfig->size, GFP_KERNEL);
> +	if (!hwconfig->ptr) {
> +		hwconfig->size =3D 0;
> +		return -ENOMEM;
> +	}
> +
> +	ret =3D guc_hwconfig_fill_buffer(hwconfig);
> +	if (ret < 0) {
> +		kfree(hwconfig->ptr);
> +		hwconfig->size =3D 0;
> +		hwconfig->ptr =3D NULL;
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * intel_guc_hwconfig_fini - Finalize the HWConfig
> + *
> + * Free up the memory allocation holding the table.
> + */
> +void intel_guc_hwconfig_fini(struct intel_guc_hwconfig *hwconfig)
> +{
> +	if (!hwconfig->size)
> +		return;
> +
> +	kfree(hwconfig->ptr);
> +	hwconfig->size =3D 0;
> +	hwconfig->ptr =3D NULL;
> +}
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.h b/drivers/gp=
u/drm/i915/gt/uc/intel_guc_hwconfig.h
> new file mode 100644
> index 000000000000..91e96d88d713
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.h
> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =A9 2020 Intel Corporation
> + */
> +
> +#ifndef _INTEL_GUC_HWCONFIG_H_
> +#define _INTEL_GUC_HWCONFIG_H_
> +
> +#include <linux/types.h>
> +
> +struct intel_guc_hwconfig {
> +	u32 size;
> +	void *ptr;
> +};
> +
> +int intel_guc_hwconfig_init(struct intel_guc_hwconfig *hwconfig);
> +void intel_guc_hwconfig_fini(struct intel_guc_hwconfig *hwconfig);
> +
> +#endif /* _INTEL_GUC_HWCONFIG_H_ */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915=
/gt/uc/intel_uc.c
> index 6d8b9233214e..b289693f9767 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -502,6 +502,10 @@ static int __uc_init_hw(struct intel_uc *uc)
>  =

>  	intel_huc_auth(huc);
>  =

> +	ret =3D intel_guc_hwconfig_init(&guc->hwconfig);

As discussed on another thread, shouldn't we move this above
guc_enable_communication() to not mix MMIO and CTB communication?

Matt

> +	if (ret)
> +		goto err_log_capture;
> +
>  	if (intel_uc_uses_guc_submission(uc))
>  		intel_guc_submission_enable(guc);
>  =

> @@ -552,6 +556,8 @@ static void __uc_fini_hw(struct intel_uc *uc)
>  	if (intel_uc_uses_guc_submission(uc))
>  		intel_guc_submission_disable(guc);
>  =

> +	intel_guc_hwconfig_fini(&guc->hwconfig);
> +
>  	__uc_sanitize(uc);
>  }
>  =

> -- =

> 2.25.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
