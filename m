Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F127282ECAF
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 11:23:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83CCC10E46F;
	Tue, 16 Jan 2024 10:23:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C71ED10E4A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 10:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705400618; x=1736936618;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=nvwOb3P+Yrs0ufXxwKX7iaJJYV18x9AMhXKr2UJgaV0=;
 b=cYFXFyPiTb+Jv/71F8pF5U/bnRh6yBiwzx3CcJ+PRkqi8T5s03J2TuCz
 kz5OO/wT6uKJWlUYp/h2AWUdBRmGqkYLsUWvmyipYatSnJurhm4tnQHu4
 sR3zJ/a5+QZmw5jW3TeDAQSScEZU/rnqAMjfQc5gvxOKyLAie0pqNlf+T
 vZTbu+WHeOea1cMyeQTjRUJMZYb6tUdFMUvomjZFFtQpyeNlD3x+czHCD
 DgFBUyn0Z8JrhxbKN8T8gIoNi8/EP81XoON99tQQgM52dJIDcgmBkF7R7
 AF0fOBX5YU9JSHc92SXZTMhCvkSThSJX3GcxCel92OJ0dW/mj+F4/ggtp w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="13174417"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="13174417"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2024 02:23:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="784082356"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="784082356"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.246.32.218])
 ([10.246.32.218])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2024 02:23:37 -0800
Message-ID: <ef3ecc84-9128-4c1c-99aa-3a335cf8acaa@linux.intel.com>
Date: Tue, 16 Jan 2024 11:23:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 03/16] drm/i915: Remove ad-hoc lmem/stolen debugs
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-4-ville.syrjala@linux.intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20240116075636.6121-4-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 1/16/2024 8:56 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Now that intel_memory_regions_hw_probe() prints out each and every
> memory region there's no reason to have ad-hoc debugs to do similar
> things elsewhere.
>
> Cc: Paz Zcharya <pazz@chromium.org>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_stolen.c  | 4 ----
>   drivers/gpu/drm/i915/gt/intel_region_lmem.c | 3 ---
>   2 files changed, 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> index d2440c793f84..ee237043c302 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> @@ -828,7 +828,6 @@ static const struct intel_memory_region_ops i915_region_stolen_smem_ops = {
>   
>   static int init_stolen_lmem(struct intel_memory_region *mem)
>   {
> -	struct drm_i915_private *i915 = mem->i915;
>   	int err;
>   
>   	if (GEM_WARN_ON(resource_size(&mem->region) == 0))
> @@ -844,9 +843,6 @@ static int init_stolen_lmem(struct intel_memory_region *mem)
>   	    !io_mapping_init_wc(&mem->iomap, mem->io.start, resource_size(&mem->io)))
>   		goto err_cleanup;
>   
> -	drm_dbg(&i915->drm, "Stolen Local DSM: %pR\n", &mem->region);
> -	drm_dbg(&i915->drm, "Stolen Local memory IO: %pR\n", &mem->io);
> -
>   	return 0;
>   
>   err_cleanup:
> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index 6f96a6b70601..af357089da6e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -273,9 +273,6 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
>   	if (err)
>   		goto err_region_put;
>   
> -	drm_dbg(&i915->drm, "Local memory: %pR\n", &mem->region);
> -	drm_dbg(&i915->drm, "Local memory IO: %pR\n", &mem->io);
> -
>   	if (io_size < lmem_size)
>   		drm_info(&i915->drm, "Using a reduced BAR size of %lluMiB. Consider enabling 'Resizable BAR' or similar, if available in the BIOS.\n",
>   			 (u64)io_size >> 20);
