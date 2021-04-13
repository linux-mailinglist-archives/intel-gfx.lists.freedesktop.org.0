Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 043BF35DB5E
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 11:36:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D6586E29D;
	Tue, 13 Apr 2021 09:36:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 690746E29D
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 09:36:26 +0000 (UTC)
IronPort-SDR: GExAqoU/VgiK8ZVJCRAVwQUaz/Su5/wolMgklVMDDnEnjq6OSXeoos5u4tVsKieaNA4VvzW0PK
 lTuMAGRuUY6Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="194490493"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="194490493"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 02:36:25 -0700
IronPort-SDR: DJv27X234WUKdPeFeLCmtqOzJ+4UB2ARNy7diE1NKYG0TrXj9tAawaNV4/m6Pdy2P7BnazxRZA
 7kh8ZB2LNyHQ==
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="424179367"
Received: from alinapar-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.36.253])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 02:36:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210413051002.92589-6-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210413051002.92589-1-lucas.demarchi@intel.com>
 <20210413051002.92589-6-lucas.demarchi@intel.com>
Date: Tue, 13 Apr 2021 12:36:19 +0300
Message-ID: <87wnt6h6gc.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 05/12] drm/i915/gt: replace gen use in
 intel_engine_cs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 12 Apr 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> Start using the new fields graphics_version for the previous gen checks.
> Here we rename the "gen" field and replace the comparisons using it to
> start using the new GRAPHICS_VER(). Other uses of INTEL_GEN() were left
> as is for automatic conversion later.
>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 40 ++++++++++----------
>  drivers/gpu/drm/i915/gt/selftest_engine_cs.c | 18 ++++-----
>  2 files changed, 29 insertions(+), 29 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index efe935f80c1a..6dbdbde00f14 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -45,9 +45,9 @@ struct engine_info {
>  	unsigned int hw_id;
>  	u8 class;
>  	u8 instance;
> -	/* mmio bases table *must* be sorted in reverse gen order */
> +	/* mmio bases table *must* be sorted in reverse graphics_ver order */
>  	struct engine_mmio_base {
> -		u32 gen : 8;
> +		u32 graphics_ver : 8;
>  		u32 base : 24;
>  	} mmio_bases[MAX_MMIO_BASES];
>  };
> @@ -58,7 +58,7 @@ static const struct engine_info intel_engines[] = {
>  		.class = RENDER_CLASS,
>  		.instance = 0,
>  		.mmio_bases = {
> -			{ .gen = 1, .base = RENDER_RING_BASE }
> +			{ .graphics_ver = 1, .base = RENDER_RING_BASE }
>  		},
>  	},
>  	[BCS0] = {
> @@ -66,7 +66,7 @@ static const struct engine_info intel_engines[] = {
>  		.class = COPY_ENGINE_CLASS,
>  		.instance = 0,
>  		.mmio_bases = {
> -			{ .gen = 6, .base = BLT_RING_BASE }
> +			{ .graphics_ver = 6, .base = BLT_RING_BASE }
>  		},
>  	},
>  	[VCS0] = {
> @@ -74,9 +74,9 @@ static const struct engine_info intel_engines[] = {
>  		.class = VIDEO_DECODE_CLASS,
>  		.instance = 0,
>  		.mmio_bases = {
> -			{ .gen = 11, .base = GEN11_BSD_RING_BASE },
> -			{ .gen = 6, .base = GEN6_BSD_RING_BASE },
> -			{ .gen = 4, .base = BSD_RING_BASE }
> +			{ .graphics_ver = 11, .base = GEN11_BSD_RING_BASE },
> +			{ .graphics_ver = 6, .base = GEN6_BSD_RING_BASE },
> +			{ .graphics_ver = 4, .base = BSD_RING_BASE }
>  		},
>  	},
>  	[VCS1] = {
> @@ -84,8 +84,8 @@ static const struct engine_info intel_engines[] = {
>  		.class = VIDEO_DECODE_CLASS,
>  		.instance = 1,
>  		.mmio_bases = {
> -			{ .gen = 11, .base = GEN11_BSD2_RING_BASE },
> -			{ .gen = 8, .base = GEN8_BSD2_RING_BASE }
> +			{ .graphics_ver = 11, .base = GEN11_BSD2_RING_BASE },
> +			{ .graphics_ver = 8, .base = GEN8_BSD2_RING_BASE }
>  		},
>  	},
>  	[VCS2] = {
> @@ -93,7 +93,7 @@ static const struct engine_info intel_engines[] = {
>  		.class = VIDEO_DECODE_CLASS,
>  		.instance = 2,
>  		.mmio_bases = {
> -			{ .gen = 11, .base = GEN11_BSD3_RING_BASE }
> +			{ .graphics_ver = 11, .base = GEN11_BSD3_RING_BASE }
>  		},
>  	},
>  	[VCS3] = {
> @@ -101,7 +101,7 @@ static const struct engine_info intel_engines[] = {
>  		.class = VIDEO_DECODE_CLASS,
>  		.instance = 3,
>  		.mmio_bases = {
> -			{ .gen = 11, .base = GEN11_BSD4_RING_BASE }
> +			{ .graphics_ver = 11, .base = GEN11_BSD4_RING_BASE }
>  		},
>  	},
>  	[VECS0] = {
> @@ -109,8 +109,8 @@ static const struct engine_info intel_engines[] = {
>  		.class = VIDEO_ENHANCEMENT_CLASS,
>  		.instance = 0,
>  		.mmio_bases = {
> -			{ .gen = 11, .base = GEN11_VEBOX_RING_BASE },
> -			{ .gen = 7, .base = VEBOX_RING_BASE }
> +			{ .graphics_ver = 11, .base = GEN11_VEBOX_RING_BASE },
> +			{ .graphics_ver = 7, .base = VEBOX_RING_BASE }
>  		},
>  	},
>  	[VECS1] = {
> @@ -118,7 +118,7 @@ static const struct engine_info intel_engines[] = {
>  		.class = VIDEO_ENHANCEMENT_CLASS,
>  		.instance = 1,
>  		.mmio_bases = {
> -			{ .gen = 11, .base = GEN11_VEBOX2_RING_BASE }
> +			{ .graphics_ver = 11, .base = GEN11_VEBOX2_RING_BASE }
>  		},
>  	},
>  };
> @@ -146,9 +146,9 @@ u32 intel_engine_context_size(struct intel_gt *gt, u8 class)
>  
>  	switch (class) {
>  	case RENDER_CLASS:
> -		switch (INTEL_GEN(gt->i915)) {
> +		switch (GRAPHICS_VER(gt->i915)) {
>  		default:
> -			MISSING_CASE(INTEL_GEN(gt->i915));
> +			MISSING_CASE(GRAPHICS_VER(gt->i915));
>  			return DEFAULT_LR_CONTEXT_RENDER_SIZE;
>  		case 12:
>  		case 11:
> @@ -184,8 +184,8 @@ u32 intel_engine_context_size(struct intel_gt *gt, u8 class)
>  			 */
>  			cxt_size = intel_uncore_read(uncore, CXT_SIZE) + 1;
>  			drm_dbg(&gt->i915->drm,
> -				"gen%d CXT_SIZE = %d bytes [0x%08x]\n",
> -				INTEL_GEN(gt->i915), cxt_size * 64,
> +				"graphics_ver = %d CXT_SIZE = %d bytes [0x%08x]\n",
> +				GRAPHICS_VER(gt->i915), cxt_size * 64,
>  				cxt_size - 1);
>  			return round_up(cxt_size * 64, PAGE_SIZE);
>  		case 3:
> @@ -201,7 +201,7 @@ u32 intel_engine_context_size(struct intel_gt *gt, u8 class)
>  	case VIDEO_DECODE_CLASS:
>  	case VIDEO_ENHANCEMENT_CLASS:
>  	case COPY_ENGINE_CLASS:
> -		if (INTEL_GEN(gt->i915) < 8)
> +		if (GRAPHICS_VER(gt->i915) < 8)
>  			return 0;
>  		return GEN8_LR_CONTEXT_OTHER_SIZE;
>  	}
> @@ -213,7 +213,7 @@ static u32 __engine_mmio_base(struct drm_i915_private *i915,
>  	int i;
>  
>  	for (i = 0; i < MAX_MMIO_BASES; i++)
> -		if (INTEL_GEN(i915) >= bases[i].gen)
> +		if (GRAPHICS_VER(i915) >= bases[i].graphics_ver)
>  			break;
>  
>  	GEM_BUG_ON(i == MAX_MMIO_BASES);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
> index b32814a1f20b..3453eb77c498 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
> @@ -376,34 +376,34 @@ static int intel_mmio_bases_check(void *arg)
>  		u8 prev = U8_MAX;
>  
>  		for (j = 0; j < MAX_MMIO_BASES; j++) {
> -			u8 gen = info->mmio_bases[j].gen;
> +			u8 ver = info->mmio_bases[j].graphics_ver;
>  			u32 base = info->mmio_bases[j].base;
>  
> -			if (gen >= prev) {
> -				pr_err("%s(%s, class:%d, instance:%d): mmio base for gen %x is before the one for gen %x\n",
> +			if (ver >= prev) {
> +				pr_err("%s(%s, class:%d, instance:%d): mmio base for graphics ver %u is before the one for ver %u\n",
>  				       __func__,
>  				       intel_engine_class_repr(info->class),
>  				       info->class, info->instance,
> -				       prev, gen);
> +				       prev, ver);
>  				return -EINVAL;
>  			}
>  
> -			if (gen == 0)
> +			if (ver == 0)
>  				break;
>  
>  			if (!base) {
> -				pr_err("%s(%s, class:%d, instance:%d): invalid mmio base (%x) for gen %x at entry %u\n",
> +				pr_err("%s(%s, class:%d, instance:%d): invalid mmio base (%x) for graphics ver %u at entry %u\n",
>  				       __func__,
>  				       intel_engine_class_repr(info->class),
>  				       info->class, info->instance,
> -				       base, gen, j);
> +				       base, ver, j);
>  				return -EINVAL;
>  			}
>  
> -			prev = gen;
> +			prev = ver;
>  		}
>  
> -		pr_debug("%s: min gen supported for %s%d is %d\n",
> +		pr_debug("%s: min graphics version supported for %s%d is %u\n",
>  			 __func__,
>  			 intel_engine_class_repr(info->class),
>  			 info->instance,

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
