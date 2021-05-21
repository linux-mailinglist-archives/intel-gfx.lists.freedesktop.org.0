Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D53638C441
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 12:00:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3A046F60F;
	Fri, 21 May 2021 10:00:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B1A26F60F
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 10:00:32 +0000 (UTC)
IronPort-SDR: 26twFzhien0hsPVQqWB4mcXooqLkjRrrd/ctgwpoQ+XqmbHt6AxsC4qRpBlfnbSZoRwjN/JJPi
 NF1Gbv3KdDTA==
X-IronPort-AV: E=McAfee;i="6200,9189,9990"; a="181061405"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="181061405"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2021 03:00:30 -0700
IronPort-SDR: VtPJVVK0vsFJI0vEEM1f3P1P5ZHQT7HzVz76Ts45QMpy3Pt0Vv/g4D3qZ+BUyK6Cfnbx1tqfjS
 HnFAtak2GWLg==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="474455383"
Received: from hharjula-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.38.154])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2021 03:00:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210520235334.9872-2-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210520235334.9872-1-anusha.srivatsa@intel.com>
 <20210520235334.9872-2-anusha.srivatsa@intel.com>
Date: Fri, 21 May 2021 13:00:25 +0300
Message-ID: <87tumwcsp2.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/dmc: s/DRM_ERROR/drm_err
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 20 May 2021, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> Use new format of debug messages across intel_csr.
>
> While at it, change some function definitions which now
> need dev_priv for drm_err and drm_info etc.
>
> v2: use container_of() (Jani)
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Suggested-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 42 ++++++++++++++----------
>  1 file changed, 24 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 560574dd929a..71ef6022d4af 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -400,6 +400,8 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
>  	u32 mmio_count, mmio_count_max;
>  	u8 *payload;
>  
> +	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);

Please keep the variable declarations together; typically you'd have
i915 first. Same for all cases below.

> +
>  	BUILD_BUG_ON(ARRAY_SIZE(dmc->mmioaddr) < DMC_V3_MAX_MMIO_COUNT ||
>  		     ARRAY_SIZE(dmc->mmioaddr) < DMC_V1_MAX_MMIO_COUNT);
>  
> @@ -439,28 +441,28 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
>  		header_len_bytes = dmc_header->header_len;
>  		dmc_header_size = sizeof(*v1);
>  	} else {
> -		DRM_ERROR("Unknown DMC fw header version: %u\n",
> -			  dmc_header->header_ver);
> +		drm_err(&i915->drm, "Unknown DMC fw header version: %u\n",
> +			dmc_header->header_ver);
>  		return 0;
>  	}
>  
>  	if (header_len_bytes != dmc_header_size) {
> -		DRM_ERROR("DMC firmware has wrong dmc header length "
> +		drm_err(&i915->drm, "DMC firmware has wrong dmc header length "
>  			  "(%u bytes)\n", header_len_bytes);

Please fix indentation on subsequent lines everywhere.

Otherwise, LGTM.

BR,
Jani.

>  		return 0;
>  	}
>  
>  	/* Cache the dmc header info. */
>  	if (mmio_count > mmio_count_max) {
> -		DRM_ERROR("DMC firmware has wrong mmio count %u\n", mmio_count);
> +		drm_err(&i915->drm, "DMC firmware has wrong mmio count %u\n", mmio_count);
>  		return 0;
>  	}
>  
>  	for (i = 0; i < mmio_count; i++) {
>  		if (mmioaddr[i] < DMC_MMIO_START_RANGE ||
>  		    mmioaddr[i] > DMC_MMIO_END_RANGE) {
> -			DRM_ERROR("DMC firmware has wrong mmio address 0x%x\n",
> -				  mmioaddr[i]);
> +			drm_err(&i915->drm, "DMC firmware has wrong mmio address 0x%x\n",
> +				mmioaddr[i]);
>  			return 0;
>  		}
>  		dmc->mmioaddr[i] = _MMIO(mmioaddr[i]);
> @@ -476,14 +478,14 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
>  		goto error_truncated;
>  
>  	if (payload_size > dmc->max_fw_size) {
> -		DRM_ERROR("DMC FW too big (%u bytes)\n", payload_size);
> +		drm_err(&i915->drm, "DMC FW too big (%u bytes)\n", payload_size);
>  		return 0;
>  	}
>  	dmc->dmc_fw_size = dmc_header->fw_size;
>  
>  	dmc->dmc_payload = kmalloc(payload_size, GFP_KERNEL);
>  	if (!dmc->dmc_payload) {
> -		DRM_ERROR("Memory allocation failed for dmc payload\n");
> +		drm_err(&i915->drm, "Memory allocation failed for dmc payload\n");
>  		return 0;
>  	}
>  
> @@ -493,7 +495,7 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
>  	return header_len_bytes + payload_size;
>  
>  error_truncated:
> -	DRM_ERROR("Truncated DMC firmware, refusing.\n");
> +	drm_err(&i915->drm, "Truncated DMC firmware, refusing.\n");
>  	return 0;
>  }
>  
> @@ -507,6 +509,8 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
>  	u32 num_entries, max_entries, dmc_offset;
>  	const struct intel_fw_info *fw_info;
>  
> +	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
> +
>  	if (rem_size < package_size)
>  		goto error_truncated;
>  
> @@ -515,8 +519,8 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
>  	} else if (package_header->header_ver == 2) {
>  		max_entries = PACKAGE_V2_MAX_FW_INFO_ENTRIES;
>  	} else {
> -		DRM_ERROR("DMC firmware has unknown header version %u\n",
> -			  package_header->header_ver);
> +		drm_err(&i915->drm, "DMC firmware has unknown header version %u\n",
> +			package_header->header_ver);
>  		return 0;
>  	}
>  
> @@ -529,8 +533,8 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
>  		goto error_truncated;
>  
>  	if (package_header->header_len * 4 != package_size) {
> -		DRM_ERROR("DMC firmware has wrong package header length "
> -			  "(%u bytes)\n", package_size);
> +		drm_err(&i915->drm, "DMC firmware has wrong package header length "
> +			"(%u bytes)\n", package_size);
>  		return 0;
>  	}
>  
> @@ -543,8 +547,8 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
>  	dmc_offset = find_dmc_fw_offset(fw_info, num_entries, si,
>  					package_header->header_ver);
>  	if (dmc_offset == DMC_DEFAULT_FW_OFFSET) {
> -		DRM_ERROR("DMC firmware not supported for %c stepping\n",
> -			  si->stepping);
> +		drm_err(&i915->drm, "DMC firmware not supported for %c stepping\n",
> +			si->stepping);
>  		return 0;
>  	}
>  
> @@ -552,7 +556,7 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
>  	return package_size + dmc_offset * 4;
>  
>  error_truncated:
> -	DRM_ERROR("Truncated DMC firmware, refusing.\n");
> +	drm_err(&i915->drm, "Truncated DMC firmware, refusing.\n");
>  	return 0;
>  }
>  
> @@ -561,14 +565,16 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
>  			    struct intel_css_header *css_header,
>  			    size_t rem_size)
>  {
> +	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
> +
>  	if (rem_size < sizeof(struct intel_css_header)) {
> -		DRM_ERROR("Truncated DMC firmware, refusing.\n");
> +		drm_err(&i915->drm, "Truncated DMC firmware, refusing.\n");
>  		return 0;
>  	}
>  
>  	if (sizeof(struct intel_css_header) !=
>  	    (css_header->header_len * 4)) {
> -		DRM_ERROR("DMC firmware has wrong CSS header length "
> +		drm_err(&i915->drm, "DMC firmware has wrong CSS header length "
>  			  "(%u bytes)\n",
>  			  (css_header->header_len * 4));
>  		return 0;

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
