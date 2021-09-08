Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 256E340373D
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 11:47:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33BF06E171;
	Wed,  8 Sep 2021 09:46:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD7D56E094;
 Wed,  8 Sep 2021 09:46:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="281453529"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="281453529"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 02:46:56 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="465456862"
Received: from eoinwals-mobl.ger.corp.intel.com (HELO [10.213.233.175])
 ([10.213.233.175])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 02:46:52 -0700
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Szymon Morek <szymon.morek@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Aravind Iddamsetty <aravind.iddamsetty@intel.com>
References: <20210907171916.2548047-1-matthew.d.roper@intel.com>
 <20210907171916.2548047-2-matthew.d.roper@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <bee0eae1-d451-8fdb-ef73-71739abd4aba@linux.intel.com>
Date: Wed, 8 Sep 2021 10:46:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210907171916.2548047-2-matthew.d.roper@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915/xehp: Define compute class and
 engine
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


On 07/09/2021 18:19, Matt Roper wrote:
> Introduce a Compute Command Streamer (CCS), which has access to
> the media and GPGPU pipelines (but not the 3D pipeline).
> 
> To begin with, define the compute class/engine common functions, based
> on the existing render ones.
> 
> Bspec: 46167, 45544
> Original-patch-by: Michel Thierry
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> Cc: Szymon Morek <szymon.morek@intel.com>
> UMD (compute): https://github.com/intel/compute-runtime/pull/451
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 28 ++++++++++++++++++++
>   drivers/gpu/drm/i915/gt/intel_engine_types.h |  9 ++++++-
>   drivers/gpu/drm/i915/gt/intel_engine_user.c  |  5 +++-
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h  | 13 +++++----
>   drivers/gpu/drm/i915/i915_reg.h              |  8 ++++++
>   include/uapi/drm/i915_drm.h                  |  1 +
>   6 files changed, 57 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 332efea696a5..69944bd8c19d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -153,6 +153,34 @@ static const struct engine_info intel_engines[] = {
>   			{ .graphics_ver = 12, .base = XEHP_VEBOX4_RING_BASE }
>   		},
>   	},
> +	[CCS0] = {
> +		.class = COMPUTE_CLASS,
> +		.instance = 0,
> +		.mmio_bases = {
> +			{ .graphics_ver = 12, .base = GEN12_COMPUTE0_RING_BASE }
> +		}
> +	},
> +	[CCS1] = {
> +		.class = COMPUTE_CLASS,
> +		.instance = 1,
> +		.mmio_bases = {
> +			{ .graphics_ver = 12, .base = GEN12_COMPUTE1_RING_BASE }
> +		}
> +	},
> +	[CCS2] = {
> +		.class = COMPUTE_CLASS,
> +		.instance = 2,
> +		.mmio_bases = {
> +			{ .graphics_ver = 12, .base = GEN12_COMPUTE2_RING_BASE }
> +		}
> +	},
> +	[CCS3] = {
> +		.class = COMPUTE_CLASS,
> +		.instance = 3,
> +		.mmio_bases = {
> +			{ .graphics_ver = 12, .base = GEN12_COMPUTE3_RING_BASE }
> +		}
> +	},
>   };
>   
>   /**
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index bfbfe53c23dd..dcb9d8b2362a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -33,7 +33,8 @@
>   #define VIDEO_ENHANCEMENT_CLASS	2
>   #define COPY_ENGINE_CLASS	3
>   #define OTHER_CLASS		4
> -#define MAX_ENGINE_CLASS	4
> +#define COMPUTE_CLASS		5
> +#define MAX_ENGINE_CLASS	5
>   #define MAX_ENGINE_INSTANCE	7
>   
>   #define I915_MAX_SLICES	3
> @@ -95,6 +96,7 @@ struct i915_ctx_workarounds {
>   
>   #define I915_MAX_VCS	8
>   #define I915_MAX_VECS	4
> +#define I915_MAX_CCS	4
>   
>   /*
>    * Engine IDs definitions.
> @@ -117,6 +119,11 @@ enum intel_engine_id {
>   	VECS2,
>   	VECS3,
>   #define _VECS(n) (VECS0 + (n))
> +	CCS0,
> +	CCS1,
> +	CCS2,
> +	CCS3,
> +#define _CCS(n) (CCS0 + (n))
>   	I915_NUM_ENGINES
>   #define INVALID_ENGINE ((enum intel_engine_id)-1)
>   };
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> index 8f8bea08e734..d981621a7c30 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> @@ -47,6 +47,7 @@ static const u8 uabi_classes[] = {
>   	[COPY_ENGINE_CLASS] = I915_ENGINE_CLASS_COPY,
>   	[VIDEO_DECODE_CLASS] = I915_ENGINE_CLASS_VIDEO,
>   	[VIDEO_ENHANCEMENT_CLASS] = I915_ENGINE_CLASS_VIDEO_ENHANCE,
> +	[COMPUTE_CLASS] = I915_ENGINE_CLASS_COMPUTE,
>   };
>   
>   static int engine_cmp(void *priv, const struct list_head *A,
> @@ -139,6 +140,7 @@ const char *intel_engine_class_repr(u8 class)
>   		[COPY_ENGINE_CLASS] = "bcs",
>   		[VIDEO_DECODE_CLASS] = "vcs",
>   		[VIDEO_ENHANCEMENT_CLASS] = "vecs",
> +		[COMPUTE_CLASS] = "ccs",
>   	};
>   
>   	if (class >= ARRAY_SIZE(uabi_names) || !uabi_names[class])
> @@ -162,6 +164,7 @@ static int legacy_ring_idx(const struct legacy_ring *ring)
>   		[COPY_ENGINE_CLASS] = { BCS0, 1 },
>   		[VIDEO_DECODE_CLASS] = { VCS0, I915_MAX_VCS },
>   		[VIDEO_ENHANCEMENT_CLASS] = { VECS0, I915_MAX_VECS },
> +		[COMPUTE_CLASS] = { CCS0, I915_MAX_CCS },
>   	};
>   
>   	if (GEM_DEBUG_WARN_ON(ring->class >= ARRAY_SIZE(map)))
> @@ -190,7 +193,7 @@ static void add_legacy_ring(struct legacy_ring *ring,
>   void intel_engines_driver_register(struct drm_i915_private *i915)
>   {
>   	struct legacy_ring ring = {};
> -	u8 uabi_instances[4] = {};
> +	u8 uabi_instances[5] = {};
>   	struct list_head *it, *next;
>   	struct rb_node **p, *prev;
>   	LIST_HEAD(engines);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> index fa4be13c8854..3f9007e4e895 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> @@ -45,8 +45,8 @@
>   #define GUC_VIDEO_CLASS			1
>   #define GUC_VIDEOENHANCE_CLASS		2
>   #define GUC_BLITTER_CLASS		3
> -#define GUC_RESERVED_CLASS		4
> -#define GUC_LAST_ENGINE_CLASS		GUC_RESERVED_CLASS
> +#define GUC_COMPUTE_CLASS		4
> +#define GUC_LAST_ENGINE_CLASS		GUC_COMPUTE_CLASS
>   #define GUC_MAX_ENGINE_CLASSES		16
>   #define GUC_MAX_INSTANCES_PER_CLASS	32
>   
> @@ -154,17 +154,20 @@ static inline u8 engine_class_to_guc_class(u8 class)
>   	BUILD_BUG_ON(GUC_BLITTER_CLASS != COPY_ENGINE_CLASS);
>   	BUILD_BUG_ON(GUC_VIDEO_CLASS != VIDEO_DECODE_CLASS);
>   	BUILD_BUG_ON(GUC_VIDEOENHANCE_CLASS != VIDEO_ENHANCEMENT_CLASS);
> +	BUILD_BUG_ON(GUC_COMPUTE_CLASS != (COMPUTE_CLASS - 1));
>   	GEM_BUG_ON(class > MAX_ENGINE_CLASS || class == OTHER_CLASS);
>   
> -	return class;
> +	/* the GuC arrays don't include OTHER_CLASS */
> +	return class < OTHER_CLASS ? class : class - 1;
>   }
>   
>   static inline u8 guc_class_to_engine_class(u8 guc_class)
>   {
> +	BUILD_BUG_ON(GUC_COMPUTE_CLASS != OTHER_CLASS);

In engine_class_to_guc_class we have:

	BUILD_BUG_ON(GUC_COMPUTE_CLASS != (COMPUTE_CLASS - 1));

Maybe there's a reason why two "flavours" are used, like to convey 
something semantically? (I know the value is the same, it's just a bit 
confusing.)

Overall I would perhaps consider tables for both transformations. Not 
because of runtime concerns since neither seem on a hot path, but to 
avoid a "table" (of sorts) expressed with BUILD_BUG_ONs, followed by 
transform functions. Table would simply express both in one block.

> +	BUILD_BUG_ON(GUC_LAST_ENGINE_CLASS != (MAX_ENGINE_CLASS - 1));
>   	GEM_BUG_ON(guc_class > GUC_LAST_ENGINE_CLASS);
> -	GEM_BUG_ON(guc_class == GUC_RESERVED_CLASS);
>   
> -	return guc_class;
> +	return guc_class < GUC_COMPUTE_CLASS ? guc_class : guc_class + 1;
>   }
>   
>   /* Work item for submitting workloads into work queue of GuC. */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c2853cc005ee..33d6aa0b07c1 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2528,6 +2528,10 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>   #define GEN11_VEBOX2_RING_BASE		0x1d8000
>   #define XEHP_VEBOX3_RING_BASE		0x1e8000
>   #define XEHP_VEBOX4_RING_BASE		0x1f8000
> +#define GEN12_COMPUTE0_RING_BASE	0x1a000
> +#define GEN12_COMPUTE1_RING_BASE	0x1c000
> +#define GEN12_COMPUTE2_RING_BASE	0x1e000
> +#define GEN12_COMPUTE3_RING_BASE	0x26000
>   #define BLT_RING_BASE		0x22000
>   #define RING_TAIL(base)		_MMIO((base) + 0x30)
>   #define RING_HEAD(base)		_MMIO((base) + 0x34)
> @@ -8100,6 +8104,10 @@ enum {
>   #define  GEN11_KCR			(19)
>   #define  GEN11_GTPM			(16)
>   #define  GEN11_BCS			(15)
> +#define  GEN12_CCS3			(7)
> +#define  GEN12_CCS2			(6)
> +#define  GEN12_CCS1			(5)
> +#define  GEN12_CCS0			(4)
>   #define  GEN11_RCS0			(0)
>   
>   #define GEN11_GT_INTR_DW1		_MMIO(0x19001c)
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index bde5860b3686..9540f33523d8 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -166,6 +166,7 @@ enum drm_i915_gem_engine_class {
>   	I915_ENGINE_CLASS_COPY		= 1,
>   	I915_ENGINE_CLASS_VIDEO		= 2,
>   	I915_ENGINE_CLASS_VIDEO_ENHANCE	= 3,
> +	I915_ENGINE_CLASS_COMPUTE	= 4,
>   
>   	/* should be kept compact */
>   
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
