Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 919073A7193
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jun 2021 23:50:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1276889ABA;
	Mon, 14 Jun 2021 21:50:37 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4584D89ABA;
 Mon, 14 Jun 2021 21:50:36 +0000 (UTC)
IronPort-SDR: VFVYlaYzMjVfVSUvQNlHL9DoehZg77T9NJZAY9Lq//efNGveAJZxr176j/+6+g+RxJRqKTrVfP
 nG6+c8D/Ticg==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="204053931"
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="204053931"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 14:50:35 -0700
IronPort-SDR: kCUb1RNm0lpZZfumApR/6mnmgeF7Uzods5FKGS2oLPmzPobJGiaKb3QuV5UGk7BBDkqdUaVCJo
 5g72UBdt/ecg==
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="420910470"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 14:50:34 -0700
Date: Mon, 14 Jun 2021 14:43:45 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: John.C.Harrison@Intel.com
Message-ID: <20210614214345.GA12115@sdutt-i7>
References: <20210610215247.2996757-1-John.C.Harrison@Intel.com>
 <20210610215247.2996757-2-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210610215247.2996757-2-John.C.Harrison@Intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/2] tests/i915/query: Query,
 parse and validate the hwconfig table
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
Cc: IGT-Dev@Lists.FreeDesktop.Org, Intel-GFX@Lists.FreeDesktop.Org,
 Slawomir Milczarek <slawomir.milczarek@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 10, 2021 at 02:52:46PM -0700, John.C.Harrison@Intel.com wrote:
> From: Rodrigo Vivi <rodrigo.vivi@intel.com>
> =

> All the static platform configuration per SKU is moving to
> this KVL table. User Space components can query and parse
> it to find the proper hw configuration instead of having
> to hardcode it.
> =

> Add a query as both an example of how to fetch the table and to
> validate the KLV contents as much as possible.
> =

> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> Cc: Slawomir Milczarek <slawomir.milczarek@intel.com>
> ---
>  include/drm-uapi/i915_drm.h |   1 +
>  lib/intel_hwconfig_types.h  | 102 ++++++++++++++++++++++++++++
>  tests/i915/i915_query.c     | 128 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 231 insertions(+)
>  create mode 100644 lib/intel_hwconfig_types.h
> =

> diff --git a/include/drm-uapi/i915_drm.h b/include/drm-uapi/i915_drm.h
> index a1c0030c3..5c34ab759 100644
> --- a/include/drm-uapi/i915_drm.h
> +++ b/include/drm-uapi/i915_drm.h
> @@ -2233,6 +2233,7 @@ struct drm_i915_query_item {
>  #define DRM_I915_QUERY_ENGINE_INFO	2
>  #define DRM_I915_QUERY_PERF_CONFIG      3
>  #define DRM_I915_QUERY_MEMORY_REGIONS   4
> +#define DRM_I915_QUERY_HWCONFIG_TABLE   5
>  /* Must be kept compact -- no holes and well documented */
>  =

>  	/**
> diff --git a/lib/intel_hwconfig_types.h b/lib/intel_hwconfig_types.h
> new file mode 100644
> index 000000000..8aa875de9
> --- /dev/null
> +++ b/lib/intel_hwconfig_types.h
> @@ -0,0 +1,102 @@
> +// SPDX-License-Identifier: MIT
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
> diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
> index 29b938e9c..eef4afb05 100644
> --- a/tests/i915/i915_query.c
> +++ b/tests/i915/i915_query.c
> @@ -22,6 +22,7 @@
>   */
>  =

>  #include "igt.h"
> +#include "intel_hwconfig_types.h"
>  =

>  #include <limits.h>
>  =

> @@ -724,6 +725,130 @@ static void engines(int fd)
>  	free(engines);
>  }
>  =

> +static const char * const hwconfig_keys[] =3D {
> +	[INTEL_HWCONFIG_MAX_SLICES_SUPPORTED] =3D "Maximum number of Slices",
> +	[INTEL_HWCONFIG_MAX_DUAL_SUBSLICES_SUPPORTED] =3D "Maximum number of DS=
S",
> +	[INTEL_HWCONFIG_MAX_NUM_EU_PER_DSS] =3D "Maximum number of EUs per DSS",
> +	[INTEL_HWCONFIG_NUM_PIXEL_PIPES] =3D "Pixel Pipes",
> +	[INTEL_HWCONFIG_DEPRECATED_MAX_NUM_GEOMETRY_PIPES] =3D "[DEPRECATED] Ge=
ometry Pipes",
> +	[INTEL_HWCONFIG_DEPRECATED_L3_CACHE_SIZE_IN_KB] =3D "[DEPRECATED] L3 Si=
ze (in KB)",
> +	[INTEL_HWCONFIG_DEPRECATED_L3_BANK_COUNT] =3D "[DEPRECATED] L3 Bank Cou=
nt",
> +	[INTEL_HWCONFIG_L3_CACHE_WAYS_SIZE_IN_BYTES] =3D "L3 Cache Ways Size (i=
n bytes)",
> +	[INTEL_HWCONFIG_L3_CACHE_WAYS_PER_SECTOR] =3D "L3 Cache Ways Per Sector=
",
> +	[INTEL_HWCONFIG_MAX_MEMORY_CHANNELS] =3D "Memory Channels",
> +	[INTEL_HWCONFIG_MEMORY_TYPE] =3D "Memory type",
> +	[INTEL_HWCONFIG_CACHE_TYPES] =3D "Cache types",
> +	[INTEL_HWCONFIG_LOCAL_MEMORY_PAGE_SIZES_SUPPORTED] =3D "Local memory pa=
ge size",
> +	[INTEL_HWCONFIG_DEPRECATED_SLM_SIZE_IN_KB] =3D "[DEPRECATED] SLM Size (=
in KB)",
> +	[INTEL_HWCONFIG_NUM_THREADS_PER_EU] =3D "Num thread per EU",
> +	[INTEL_HWCONFIG_TOTAL_VS_THREADS] =3D "Maximum Vertex Shader threads",
> +	[INTEL_HWCONFIG_TOTAL_GS_THREADS] =3D "Maximum Geometry Shader threads",
> +	[INTEL_HWCONFIG_TOTAL_HS_THREADS] =3D "Maximum Hull Shader threads",
> +	[INTEL_HWCONFIG_TOTAL_DS_THREADS] =3D "Maximum Domain Shader threads",
> +	[INTEL_HWCONFIG_TOTAL_VS_THREADS_POCS] =3D "Maximum Vertex Shader Threa=
ds for POCS",
> +	[INTEL_HWCONFIG_TOTAL_PS_THREADS] =3D "Maximum Pixel Shader Threads",
> +	[INTEL_HWCONFIG_DEPRECATED_MAX_FILL_RATE] =3D "[DEPRECATED] Maximum pix=
el rate for Fill",
> +	[INTEL_HWCONFIG_MAX_RCS] =3D "MaxRCS",
> +	[INTEL_HWCONFIG_MAX_CCS] =3D "MaxCCS",
> +	[INTEL_HWCONFIG_MAX_VCS] =3D "MaxVCS",
> +	[INTEL_HWCONFIG_MAX_VECS] =3D "MaxVECS",
> +	[INTEL_HWCONFIG_MAX_COPY_CS] =3D "MaxCopyCS",
> +	[INTEL_HWCONFIG_DEPRECATED_URB_SIZE_IN_KB] =3D "[DEPRECATED] URB Size (=
in KB)",
> +	[INTEL_HWCONFIG_MIN_VS_URB_ENTRIES] =3D "The minimum number of VS URB e=
ntries.",
> +	[INTEL_HWCONFIG_MAX_VS_URB_ENTRIES] =3D "The maximum number of VS URB e=
ntries.",
> +	[INTEL_HWCONFIG_MIN_PCS_URB_ENTRIES] =3D "The minimum number of PCS URB=
 entries",
> +	[INTEL_HWCONFIG_MAX_PCS_URB_ENTRIES] =3D "The maximum number of PCS URB=
 entries",
> +	[INTEL_HWCONFIG_MIN_HS_URB_ENTRIES] =3D "The minimum number of HS URB e=
ntries",
> +	[INTEL_HWCONFIG_MAX_HS_URB_ENTRIES] =3D "The maximum number of HS URB e=
ntries",
> +	[INTEL_HWCONFIG_MIN_GS_URB_ENTRIES] =3D "The minimum number of GS URB e=
ntries",
> +	[INTEL_HWCONFIG_MAX_GS_URB_ENTRIES] =3D "The maximum number of GS URB e=
ntries",
> +	[INTEL_HWCONFIG_MIN_DS_URB_ENTRIES] =3D "The minimum number of DS URB E=
ntries",
> +	[INTEL_HWCONFIG_MAX_DS_URB_ENTRIES] =3D "The maximum number of DS URB E=
ntries",
> +	[INTEL_HWCONFIG_PUSH_CONSTANT_URB_RESERVED_SIZE] =3D "Push Constant URB=
 Reserved Size (in bytes)",
> +	[INTEL_HWCONFIG_POCS_PUSH_CONSTANT_URB_RESERVED_SIZE] =3D "POCS Push Co=
nstant URB Reserved Size (in bytes)",
> +	[INTEL_HWCONFIG_URB_REGION_ALIGNMENT_SIZE_IN_BYTES] =3D "URB Region Ali=
gnment Size (in bytes)",
> +	[INTEL_HWCONFIG_URB_ALLOCATION_SIZE_UNITS_IN_BYTES] =3D "URB Allocation=
 Size Units (in bytes)",
> +	[INTEL_HWCONFIG_MAX_URB_SIZE_CCS_IN_BYTES] =3D "Max URB Size CCS (in by=
tes)",
> +	[INTEL_HWCONFIG_VS_MIN_DEREF_BLOCK_SIZE_HANDLE_COUNT] =3D "VS Min Deref=
 BlockSize Handle Count",
> +	[INTEL_HWCONFIG_DS_MIN_DEREF_BLOCK_SIZE_HANDLE_COUNT] =3D "DS Min Deref=
 Block Size Handle Count",
> +	[INTEL_HWCONFIG_NUM_RT_STACKS_PER_DSS] =3D "Num RT Stacks Per DSS",
> +	[INTEL_HWCONFIG_MAX_URB_STARTING_ADDRESS] =3D "Max URB Starting Address=
",
> +	[INTEL_HWCONFIG_MIN_CS_URB_ENTRIES] =3D "Min CS URB Entries",
> +	[INTEL_HWCONFIG_MAX_CS_URB_ENTRIES] =3D "Max CS URB Entries",
> +	[INTEL_HWCONFIG_L3_ALLOC_PER_BANK_URB] =3D "L3 Alloc Per Bank - URB",
> +	[INTEL_HWCONFIG_L3_ALLOC_PER_BANK_REST] =3D "L3 Alloc Per Bank - Rest",
> +	[INTEL_HWCONFIG_L3_ALLOC_PER_BANK_DC] =3D "L3 Alloc Per Bank - DC",
> +	[INTEL_HWCONFIG_L3_ALLOC_PER_BANK_RO] =3D "L3 Alloc Per Bank - RO",
> +	[INTEL_HWCONFIG_L3_ALLOC_PER_BANK_Z] =3D "L3 Alloc Per Bank - Z",
> +	[INTEL_HWCONFIG_L3_ALLOC_PER_BANK_COLOR] =3D "L3 Alloc Per Bank - Color=
",
> +	[INTEL_HWCONFIG_L3_ALLOC_PER_BANK_UNIFIED_TILE_CACHE] =3D "L3 Alloc Per=
 Bank - Unified Tile Cache",
> +	[INTEL_HWCONFIG_L3_ALLOC_PER_BANK_COMMAND_BUFFER] =3D "L3 Alloc Per Ban=
k - Command Buffer",
> +	[INTEL_HWCONFIG_L3_ALLOC_PER_BANK_RW] =3D "L3 Alloc Per Bank - RW",
> +	[INTEL_HWCONFIG_MAX_NUM_L3_CONFIGS] =3D "Num L3 Configs",
> +	[INTEL_HWCONFIG_BINDLESS_SURFACE_OFFSET_BIT_COUNT] =3D "Bindless Surfac=
e Offset Bit Count",
> +	[INTEL_HWCONFIG_RESERVED_CCS_WAYS] =3D "Reserved CCS ways",
> +	[INTEL_HWCONFIG_CSR_SIZE_IN_MB] =3D "CSR Size (in MB)",
> +	[INTEL_HWCONFIG_GEOMETRY_PIPES_PER_SLICE] =3D "Geometry pipes per slice=
",
> +	[INTEL_HWCONFIG_L3_BANK_SIZE_IN_KB] =3D "L3 bank size (in KB)",
> +	[INTEL_HWCONFIG_SLM_SIZE_PER_DSS] =3D "SLM size per DSS",
> +	[INTEL_HWCONFIG_MAX_PIXEL_FILL_RATE_PER_SLICE] =3D "Max pixel fill rate=
 per slice",
> +	[INTEL_HWCONFIG_MAX_PIXEL_FILL_RATE_PER_DSS] =3D "Max pixel fill rate p=
er DSS",
> +	[INTEL_HWCONFIG_URB_SIZE_PER_SLICE_IN_KB] =3D "URB size per slice (in K=
B)",
> +	[INTEL_HWCONFIG_URB_SIZE_PER_L3_BANK_COUNT_IN_KB] =3D "URB size per L3 =
bank count (in KB)",
> +	[INTEL_HWCONFIG_MAX_SUBSLICE] =3D "Max subslices",
> +	[INTEL_HWCONFIG_MAX_EU_PER_SUBSLICE] =3D "Max EUs per subslice",
> +	[INTEL_HWCONFIG_RAMBO_L3_BANK_SIZE_IN_KB] =3D "RAMBO L3 bank size (in K=
B)",
> +	[INTEL_HWCONFIG_SLM_SIZE_PER_SS_IN_KB] =3D "SLM size per SS (in KB)",
> +};
> +
> +static void query_parse_and_validate_hwconfig_table(int i915)
> +{
> +	uint32_t *data;
> +	int i =3D 0;
> +	int len, j, max_words;
> +
> +	struct drm_i915_query_item item =3D {
> +		.query_id =3D DRM_I915_QUERY_HWCONFIG_TABLE,
> +	};
> +
> +	igt_assert(ARRAY_SIZE(hwconfig_keys) =3D=3D __INTEL_HWCONFIG_LIMIT);
> +
> +	i915_query_items(i915, &item, 1);
> +	igt_require(item.length > 0);
> +
> +	data =3D malloc(item.length);
> +	igt_assert(data);
> +	memset(data, 0, item.length);
> +	item.data_ptr =3D to_user_pointer(data);
> +
> +	i915_query_items(i915, &item, 1);
> +	igt_info("Table size =3D %d bytes\n", item.length);
> +	igt_assert(item.length > 0);
> +
> +	/* HWConfig table is a list of KLV sets */
> +	max_words =3D item.length / sizeof(uint32_t);
> +	igt_assert(max_words * sizeof(uint32_t) =3D=3D item.length);
> +	while (i < max_words) {
> +		/* Attribute ID zero is invalid */
> +		igt_assert(data[i] > 0);
> +		igt_assert(data[i] < __INTEL_HWCONFIG_LIMIT);
> +
> +		len =3D data[i+1];

Nit: space here?

> +		igt_assert(len > 0);
> +		igt_assert((i + 2 + len) <=3D max_words);
> +
> +		igt_info("[%2d] %s:", data[i], hwconfig_keys[data[i]]);
> +		for (j =3D i + 2; j < i + 1 + len; j++)
> +			igt_info(" %d,", data[j]);

Another nit, would hex be better?

With that:
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> +		igt_info(" %d\n", data[j]);
> +
> +		/* Advance to next key */
> +		i +=3D 2 + len;
> +	}
> +
> +	free(data);
> +}
> +
>  igt_main
>  {
>  	int fd =3D -1;
> @@ -783,6 +908,9 @@ igt_main
>  			engines(fd);
>  	}
>  =

> +	igt_subtest("hwconfig_table")
> +		query_parse_and_validate_hwconfig_table(fd);
> +
>  	igt_fixture {
>  		close(fd);
>  	}
> -- =

> 2.25.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
