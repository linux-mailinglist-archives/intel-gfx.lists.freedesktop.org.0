Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC6B8118A3
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 17:05:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD33610E7B1;
	Wed, 13 Dec 2023 16:05:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26A3D10E7B1
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 16:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702483525; x=1734019525;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=kvmCBSgQd4LRW5rdq/DlhRVHbBGPXWlTI1aIXuTqFo8=;
 b=Z4gkI83k0SZcn/bo8ZMCJeYdipHvvoxYgxo/CcRU2a0gie9ZQXFPUuYq
 zfecoL+xpbQIEr2QT8VwURGlFKNVVFPCE2UdZoDePEIoSMFcS2bLU5Zzi
 O2Rn7/lPJs+6roRe80Xq2guJznQ0UQbDKziB43YCwMDRpCNUiH+edtdDM
 kVPvBobo/khEYiF+iTlGY6Z7CM5iHVm7CYW28R/IDcSfjh7g30SMuFfki
 QAfIGteXe0yILMot01wtf+BcCdOHePg1UqH8Xt9zNTTZ88OtgiuJaMb3x
 r6RJLQ/g6tQkgJEhhhFfMqKe1zFNKXRanJVzCaas1Jv1/zu0Rh0Ve9HRB Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="375136332"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="375136332"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 08:05:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="839926255"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="839926255"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.24.31])
 ([10.213.24.31])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 08:05:23 -0800
Message-ID: <fc2dbf45-cd58-460a-99c5-fc8934331e0e@intel.com>
Date: Wed, 13 Dec 2023 17:05:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/12] drm/i915: Print memory region info during probe
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
 <20231213004237.20375-3-ville.syrjala@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231213004237.20375-3-ville.syrjala@linux.intel.com>
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
> Dump the details about every memory region into dmesg at probe time.
> Avoids having to dig those out from random places when debugging stuff.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/intel_memory_region.c | 18 ++++++++++++++++++
>   1 file changed, 18 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
> index b2708f8cac2a..52d998e5c21a 100644
> --- a/drivers/gpu/drm/i915/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/intel_memory_region.c
> @@ -372,6 +372,24 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
>   		i915->mm.regions[i] = mem;
>   	}
>   
> +	for (i = 0; i < ARRAY_SIZE(i915->mm.regions); i++) {
> +		struct intel_memory_region *mem = i915->mm.regions[i];
> +		u64 region_size, io_size;
> +
> +		if (!mem)
> +			continue;
> +
> +		region_size = resource_size(&mem->region) >> 20;
> +		io_size = resource_size(&mem->io) >> 20;
> +
> +		if (resource_size(&mem->io))
> +			drm_dbg(&i915->drm, "Memory region(%d): %s: %llu MiB %pR, io: %llu MiB %pR\n",
> +				mem->id, mem->name, region_size, &mem->region, io_size, &mem->io);
> +		else
> +			drm_dbg(&i915->drm, "Memory region(%d): %s: %llu MiB %pR, io: n/a\n",
> +				mem->id, mem->name, region_size, &mem->region);

Doesn't printk handle properly 0-length resources?

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej


> +	}
> +
>   	return 0;
>   
>   out_cleanup:

