Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9559D82ECAA
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 11:21:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D54F10E457;
	Tue, 16 Jan 2024 10:20:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75DC110E457
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705400454; x=1736936454;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=fsNT9xpUT1NqqBD11GjkTzGXdbk0gEHBL4s993HIer4=;
 b=ALI1S+pzV+Yn8EdVgEK27jEkCdqb9LpFq6Bm0NYhIwzEjnqu6MJbNnUC
 HGslAd9sBTgzry8Q93ZP2Q5QOPR+5PhI+JCEQixkYYhy8tFImOx0/Bhk8
 7P0LA9tnwlzk0uMmqE3LuzVA8m1rxC+t3yTvqrewO9oRcQVHtbzNZkYK1
 zNY7MHWLgdWySedEPn/h6Q1OYbM52c77dnp2auou6AtytbbQ0x5I4nUuf
 0PxEhCWyDjDrsq03ynnjBnTYN7sPqrGRXkUCYkOFDYE+lR6g8xSVB7AYg
 jS2UT1KYhyyiH006ZZpoqe/XGu8n+MSditRT4skOVeI3k/K4/fO/Wq+za A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="13319795"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="13319795"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2024 02:20:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="927415726"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="927415726"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.246.32.218])
 ([10.246.32.218])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2024 02:20:41 -0800
Message-ID: <22e16744-0eb5-49f3-a18c-0009c860bab2@linux.intel.com>
Date: Tue, 16 Jan 2024 11:20:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/16] drm/i915: Print memory region info during probe
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-3-ville.syrjala@linux.intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20240116075636.6121-3-ville.syrjala@linux.intel.com>
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
> Dump the details about every memory region into dmesg at probe time.
> Avoids having to dig those out from random places when debugging stuff.
>
> Cc: Paz Zcharya <pazz@chromium.org>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
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
> +	}
> +
>   	return 0;
>   
>   out_cleanup:
