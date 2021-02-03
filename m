Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2610930D6C5
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 10:55:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 824316EA32;
	Wed,  3 Feb 2021 09:55:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A5C16EA32
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 09:55:56 +0000 (UTC)
IronPort-SDR: b8nTVTfWTGz4PyoBV4utYsXenoisx2fHaz41sbuxL+RnKz9Tzq69AEWmbHf/Qa2PswCLTd6SYR
 ESjTweSjqBQA==
X-IronPort-AV: E=McAfee;i="6000,8403,9883"; a="160776902"
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="160776902"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 01:55:55 -0800
IronPort-SDR: Q8dqxwYMbB6ziAUKstblLZjZr23/RcPHDxucxmNOhce24VOihenWZiriogfPBrvDSuypUU0dli
 //OvOATTBPNA==
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="392361649"
Received: from skhlysto-mobl1.ccr.corp.intel.com (HELO [10.252.53.233])
 ([10.252.53.233])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 01:55:54 -0800
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210202075417.28230-1-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <3bc7bc22-873f-5e26-e951-b112b2e29717@intel.com>
Date: Wed, 3 Feb 2021 11:55:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210202075417.28230-1-umesh.nerlige.ramappa@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] i915/perf: Store a mask of valid OA
 formats for a platform
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

On 02/02/2021 09:54, Umesh Nerlige Ramappa wrote:
> Validity of an OA format is checked by using a sparse array of formats
> per gen. Instead maintain a mask of supported formats for a platform in
> the perf object.
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>


Nice cleanup : Reviewed-by: Lionel Landwerlin 
<lionel.g.landwerlin@intel.com>


Thanks!


> ---
>   drivers/gpu/drm/i915/i915_perf.c       | 64 +++++++++++++++++++++++++-
>   drivers/gpu/drm/i915/i915_perf_types.h | 16 +++++++
>   2 files changed, 79 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 112ba5f2ce90..973577fcad58 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -3524,6 +3524,19 @@ static u64 oa_exponent_to_ns(struct i915_perf *perf, int exponent)
>   					     2ULL << exponent);
>   }
>   
> +static __always_inline bool
> +oa_format_valid(struct i915_perf *perf, enum drm_i915_oa_format format)
> +{
> +	return !!(perf->format_mask[__format_index(format)] &
> +		  __format_bit(format));
> +}
> +
> +static __always_inline void
> +oa_format_add(struct i915_perf *perf, enum drm_i915_oa_format format)
> +{
> +	perf->format_mask[__format_index(format)] |= __format_bit(format);
> +}
> +
>   /**
>    * read_properties_unlocked - validate + copy userspace stream open properties
>    * @perf: i915 perf instance
> @@ -3615,7 +3628,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
>   					  value);
>   				return -EINVAL;
>   			}
> -			if (!perf->oa_formats[value].size) {
> +			if (!oa_format_valid(perf, value)) {
>   				DRM_DEBUG("Unsupported OA report format %llu\n",
>   					  value);
>   				return -EINVAL;
> @@ -4259,6 +4272,53 @@ static struct ctl_table dev_root[] = {
>   	{}
>   };
>   
> +static void oa_init_supported_formats(struct i915_perf *perf)
> +{
> +	struct drm_i915_private *i915 = perf->i915;
> +	enum intel_platform platform = INTEL_INFO(i915)->platform;
> +
> +	switch (platform) {
> +	case INTEL_HASWELL:
> +		oa_format_add(perf, I915_OA_FORMAT_A13);
> +		oa_format_add(perf, I915_OA_FORMAT_A13);
> +		oa_format_add(perf, I915_OA_FORMAT_A29);
> +		oa_format_add(perf, I915_OA_FORMAT_A13_B8_C8);
> +		oa_format_add(perf, I915_OA_FORMAT_B4_C8);
> +		oa_format_add(perf, I915_OA_FORMAT_A45_B8_C8);
> +		oa_format_add(perf, I915_OA_FORMAT_B4_C8_A16);
> +		oa_format_add(perf, I915_OA_FORMAT_C4_B8);
> +		break;
> +
> +	case INTEL_BROADWELL:
> +	case INTEL_CHERRYVIEW:
> +	case INTEL_SKYLAKE:
> +	case INTEL_BROXTON:
> +	case INTEL_KABYLAKE:
> +	case INTEL_GEMINILAKE:
> +	case INTEL_COFFEELAKE:
> +	case INTEL_COMETLAKE:
> +	case INTEL_CANNONLAKE:
> +	case INTEL_ICELAKE:
> +	case INTEL_ELKHARTLAKE:
> +	case INTEL_JASPERLAKE:
> +		oa_format_add(perf, I915_OA_FORMAT_A12);
> +		oa_format_add(perf, I915_OA_FORMAT_A12_B8_C8);
> +		oa_format_add(perf, I915_OA_FORMAT_A32u40_A4u32_B8_C8);
> +		oa_format_add(perf, I915_OA_FORMAT_C4_B8);
> +		break;
> +
> +	case INTEL_TIGERLAKE:
> +	case INTEL_ROCKETLAKE:
> +	case INTEL_DG1:
> +	case INTEL_ALDERLAKE_S:
> +		oa_format_add(perf, I915_OA_FORMAT_A32u40_A4u32_B8_C8);
> +		break;
> +
> +	default:
> +		MISSING_CASE(platform);
> +	}
> +}
> +
>   /**
>    * i915_perf_init - initialize i915-perf state on module bind
>    * @i915: i915 device instance
> @@ -4408,6 +4468,8 @@ void i915_perf_init(struct drm_i915_private *i915)
>   			     500 * 1000 /* 500us */);
>   
>   		perf->i915 = i915;
> +
> +		oa_init_supported_formats(perf);
>   	}
>   }
>   
> diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
> index a36a455ae336..f81bcb533723 100644
> --- a/drivers/gpu/drm/i915/i915_perf_types.h
> +++ b/drivers/gpu/drm/i915/i915_perf_types.h
> @@ -15,6 +15,7 @@
>   #include <linux/types.h>
>   #include <linux/uuid.h>
>   #include <linux/wait.h>
> +#include <uapi/drm/i915_drm.h>
>   
>   #include "gt/intel_sseu.h"
>   #include "i915_reg.h"
> @@ -441,6 +442,21 @@ struct i915_perf {
>   	struct i915_oa_ops ops;
>   	const struct i915_oa_format *oa_formats;
>   
> +	/**
> +	 * Use a format mask to store the supported formats
> +	 * for a platform.
> +	 */
> +#define __fbits (BITS_PER_TYPE(u32))
> +#define __format_bit(__f) \
> +	BIT((__f) & (__fbits - 1))
> +
> +#define __format_index_shift (5)
> +#define __format_index(__f) \
> +	(((__f) & ~(__fbits - 1)) >> __format_index_shift)
> +
> +#define FORMAT_MASK_SIZE (((I915_OA_FORMAT_MAX - 1) / __fbits) + 1)
> +	u32 format_mask[FORMAT_MASK_SIZE];
> +
>   	atomic64_t noa_programming_delay;
>   };
>   


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
