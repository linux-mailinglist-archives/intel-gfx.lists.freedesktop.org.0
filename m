Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55469817A04
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Dec 2023 19:48:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD09610E397;
	Mon, 18 Dec 2023 18:48:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1088D10E396
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Dec 2023 18:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702925174; x=1734461174;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=gOAG/lFHXFQsdr479KfjSQEeBEY4mKTSiy3YekFDhYc=;
 b=OrpJmzMBQ4AtWK9Z27H7fxFtHxBJ70yGMxOIXxS7f5NcfMEVeLh0r0sx
 DqvzCdsoZNuNsm9ay2/PFGwFTF6H5IcfQeNpMA4j6mfgCLQE/KuHx6puH
 7L0aaTtNggOTjg6XP/INh2wvN9qoh1gtkORWi6SjFVk8VzKIyq51SiKV4
 WktBtbuc/e0EAxAuJ8eyS+Kd4heaRgcCKCZH3sCdyD3VLta5plFhixNrj
 LWCpSRDaSZDT0VVIycDuR+A5K0gGbJMI/mx66b2Pp3st+1fKVrYiVlNCQ
 sn/xRyUIr+UkuSRTxO1PY9hsN7VIEhqQYLsWTSsWoL5BTAulo6ZTs3U3P g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="2710299"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; 
   d="scan'208";a="2710299"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 05:00:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="919253654"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; d="scan'208";a="919253654"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.7.154])
 ([10.213.7.154])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 05:00:13 -0800
Message-ID: <da14d87c-499f-43ba-b7cf-d2a8b46190c6@intel.com>
Date: Mon, 18 Dec 2023 14:00:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 08/15] drm/i915: Fix region start during initial plane
 readout
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
 <20231215105929.29568-9-ville.syrjala@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231215105929.29568-9-ville.syrjala@linux.intel.com>
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

On 15.12.2023 11:59, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> On MTL the stolen region starts at offset 8MiB from the start of
> LMEMBAR. The dma addresses are thus also offset by 8MiB. However the
> mm_node/etc. is zero based, and i915_pages_create_for_stolen() will
> add the appropriate region.start into the sg dma address. So when
> we do the readout we need to convert the dma address read from
> the PTE to be zero based as well.
> 
> Note that currently we don't take this path on MTL, but we should
> and thus this needs to be fixed. For lmem this works correctly
> already as the lmem region.start==0.
> 
> While at it let's also make sure the address points to somewhere within
> the memory region. We don't need to check the size as
> i915_gem_object_create_region_at() should later fail if the object size
> exceeds the region size.
> 
> Cc: Paz Zcharya <pazz@chromium.org>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_plane_initial.c | 8 +++++---
>   1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> index ffc92b18fcf5..db594ccf0323 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> @@ -79,16 +79,18 @@ initial_plane_vma(struct drm_i915_private *i915,
>   		 * We don't currently expect this to ever be placed in the
>   		 * stolen portion.
>   		 */
> -		if (phys_base >= resource_size(&mem->region)) {
> +		if (phys_base < mem->region.start || phys_base > mem->region.end) {

Maybe better:
phys_base + fb_size > mem->region.end" ?
Btw it seems redundant with later checks in 
i915_gem_object_create_region_at.
IMO at this moment we need only check if "phys_base -= 
mem->region.start" makes sense.

Regards
Andrzej


>   			drm_err(&i915->drm,
> -				"Initial plane programming using invalid range, phys_base=%pa\n",
> -				&phys_base);
> +				"Initial plane programming using invalid range, phys_base=%pa (%s [%pa-%pa])\n",
> +				&phys_base, mem->region.name, &mem->region.start, &mem->region.end);
>   			return NULL;
>   		}
>   
>   		drm_dbg(&i915->drm,
>   			"Using phys_base=%pa, based on initial plane programming\n",
>   			&phys_base);
> +
> +		phys_base -= mem->region.start;
>   	} else {
>   		phys_base = base;
>   		mem = i915->mm.stolen_region;

