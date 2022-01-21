Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1917496610
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 20:54:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEAAE10E420;
	Fri, 21 Jan 2022 19:54:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BB9C10E420
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 19:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642794880; x=1674330880;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=54Z2cmbN5+iJ4f6SMhYS1iOTS1Bdqmq81545kGSGhJ4=;
 b=ONuV+VOiqtAcwE4YPkPU561QZnnU5AXN6zxgExAp4xvLfj48BmvvHYyL
 r0uDMh1BhADFONs66nB4EY9gHHSRwQfDf5sAE+v8JbMXRGq834PN42Xx9
 1vbLRRiCmozgP2AzEfIhIrJtd6vPMIgBUADujQ9e1zSxGWI5Z5Ht4N5EC
 sgAQlSDFf0tNmc0g9OeUvSgxqVkGpuDTTkgecaVm3Zp8xFb1gY5o0B12k
 emIfQOQe4ENWjQugaMuPkBqFoToE+/Q6ZoH8FFsXB3r2ulE6x0eaW/yt5
 dHNDab1ipQ+qjWZkHSGKqQdhKaskRj/GQSnP3UFaj3hPqlU8APC1e4ol0 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10234"; a="225717229"
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="225717229"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 11:53:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="519199809"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga007.jf.intel.com with SMTP; 21 Jan 2022 11:53:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Jan 2022 21:53:36 +0200
Date: Fri, 21 Jan 2022 21:53:36 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YesPQBga1LbmS3jB@intel.com>
References: <20220121192450.208535-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220121192450.208535-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix errors when there is no free
 DSM
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 21, 2022 at 11:24:50AM -0800, José Roberto de Souza wrote:
> Part of DSM(data stolen memory) is reserved for HW functions and GUC
> and in some platform this reserved block takes the whole DSM leaving
> no memory to allocated by i915_gem_object_create_stolen() and friends.
> 
> In such cases i915_gem_init_stolen() was not calling drm_mm_init()
> and returning 0, causing errors later when testing memory
> (intel_memory_region_memtest()) and in intel_memory_regions_hw_probe()
> saying setup of memory region failed:

I think you might that a bit backwards. There are a lot of other cases
where don't initialize stolen and still return 0 here. But in those cases
we *don't* call drm_mm_init() and everyone just uses drm_mm_initialized()
to check whether stolen was actually initialized or not.

> 
> checking generic (91000000 300000) vs hw (23fe7e000000 2000000)
> checking generic (91000000 300000) vs hw (237800000000 800000000)
> i915 0000:8c:00.0: [drm:i915_gem_init_stolen [i915]] GEN6_STOLEN_RESERVED = 0x00000003ff800185
> i915 0000:8c:00.0: [drm:i915_gem_init_stolen [i915]] Memory reserved for graphics device: 8192K, usable: 0K
> i915 0000:8c:00.0: Failed to read back from memory region:[mem 0x3ff800000-0x3ff7fffff] at [0x0000237bff800000 + 0x0000000000000000] for i915_gem_stolen_lmem_setup [i915]; wrote 0, read (ff, ff, ff)
> i915 0000:8c:00.0: [drm] *ERROR* Failed to setup region 6 (type=3:0), error -22
> [drm:intel_gt_setup_lmem [i915]] LMEM: debug trace data region: [0x0-0x2000000]
> i915 0000:8c:00.0: [drm:intel_gt_setup_lmem [i915]] Local memory: [mem 0x00000000-0x3faffffff]
> 
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 9 ++++++---
>  drivers/gpu/drm/i915/intel_memory_region.c | 3 +++
>  2 files changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> index 26975d8577760..6e90357b2d1fd 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> @@ -495,13 +495,16 @@ static int i915_gem_init_stolen(struct intel_memory_region *mem)
>  	 * memory, so just consider the start. */
>  	reserved_total = stolen_top - reserved_base;
>  
> +	i915->stolen_usable_size =
> +		resource_size(&i915->dsm) - reserved_total;
> +
>  	drm_dbg(&i915->drm,
>  		"Memory reserved for graphics device: %lluK, usable: %lluK\n",
>  		(u64)resource_size(&i915->dsm) >> 10,
> -		((u64)resource_size(&i915->dsm) - reserved_total) >> 10);
> +		(u64)i915->stolen_usable_size >> 10);
>  
> -	i915->stolen_usable_size =
> -		resource_size(&i915->dsm) - reserved_total;
> +	if (i915->stolen_usable_size == 0)
> +		return -ENOMEM;
>  
>  	/* Basic memrange allocator for stolen space. */
>  	drm_mm_init(&i915->mm.stolen, 0, i915->stolen_usable_size);
> diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
> index c70d7e286a512..317d67fa3a36e 100644
> --- a/drivers/gpu/drm/i915/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/intel_memory_region.c
> @@ -324,6 +324,9 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
>  
>  		if (IS_ERR(mem)) {
>  			err = PTR_ERR(mem);
> +			if (err == -ENOMEM)
> +				continue;
> +
>  			drm_err(&i915->drm,
>  				"Failed to setup region(%d) type=%d\n",
>  				err, type);
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
