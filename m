Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90AF58118AD
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 17:06:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C6BC10E276;
	Wed, 13 Dec 2023 16:06:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9040D10E276
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 16:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702483593; x=1734019593;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=YsZRybDP4sDCylJPG7EaPhIwEY+CmETQyBlaaARJ/wA=;
 b=mgRuhAA3nuM3YITVOKB9/7GKSKllt40lucGFqQ9NmnrR1Pl5JRNTedd8
 1CjocT4grDzn1GL0QmbBZAOosC7FZh6n2XEIoAN/6LP8K7FIvCQvCyiUr
 yTIGijISRYOzCC0XcC4jrt/F4FMQT6s1d6lIdRHPGujfyit5idpJOKAzd
 js2zDVO4fZH7yzVj99ahQB0df8nwN36FwpItt/5UEHG9yzoOfg10PsQ8E
 VMxq3XInX5MPBQPddURfNkdUaZb+jyNk8gNjmi0HD4r1X+3LoxugUXE8l
 xhKCcC44ME5DvpwgsiCfytPfp0rB+rxikUEyes6QXpU+OtfYXs8yyp98C g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="375136518"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="375136518"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 08:06:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="839926791"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="839926791"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.24.31])
 ([10.213.24.31])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 08:06:20 -0800
Message-ID: <382c075c-03d8-46e3-8a37-711744a09fe3@intel.com>
Date: Wed, 13 Dec 2023 17:06:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/12] drm/i915: Remove ad-hoc lmem/stolen debugs
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
 <20231213004237.20375-4-ville.syrjala@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231213004237.20375-4-ville.syrjala@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 13.12.2023 01:42, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Now that intel_memory_regions_hw_probe() prints out each and every
> memory region there's no reason to have ad-hoc debugs to do similar
> things elsewhere.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

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

