Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6EF8179A9
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Dec 2023 19:28:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD0D310E25D;
	Mon, 18 Dec 2023 18:28:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 982FD10E1EC
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Dec 2023 18:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702924011; x=1734460011;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=xvLxsxUh9R6Soex+/dKRH5//q8kD5Bn4C0tNupc6mGw=;
 b=VMsm+nQOAWpD3QP9QlDOfe9eCEz2tsNw7UMvt3zpSS+QZAwcP57AmB5e
 PtdpcU8UDaibF+WsHrtEN1vmY7BKeK1X3dJ4dcfLeXEKV07ob6HTYVnY5
 7N6SHEg+a9709Pz7YJPWHBU+tm3ZWr7koHZAutLCGQOB9wGFBkeybUx8w
 /+0e/DNuMEGoElnAcRR9k8+7OZWyrGP/8EiAotlu0bW/fzYIY3xkTks+3
 5cTQ+fm7CtKDPqANuSVKG7iWcjDEZ3nfgY2BPgf32uJr59uUJ0tum+UrH
 mnz027M7V/xTuW+TAsSnbmqJXMUy3yYEc/6N1mDZH1ta7P5iG1QwOfYIk Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="395232568"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; d="scan'208";a="395232568"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 04:36:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="768826410"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; d="scan'208";a="768826410"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.7.154])
 ([10.213.7.154])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 04:36:32 -0800
Message-ID: <5cee9930-0aa2-4e1b-b6e3-6710e4455e77@intel.com>
Date: Mon, 18 Dec 2023 13:36:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/15] drm/i915: Fix PTE decode during initial plane
 readout
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
 <20231215105929.29568-8-ville.syrjala@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231215105929.29568-8-ville.syrjala@linux.intel.com>
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
> When multiple pipes are enabled by the BIOS we try to read out each
> in turn. But we do the readout for the second only after the inherited
> vma for the first has been rebound into its original place (and thus
> the PTEs have been rewritten). Unlike the BIOS we set some high caching
> bits in the PTE on MTL which confuses the readout for the second plane.
> Filter out the non-address bits from the PTE value appropriately to
> fix this.
> 
> I suppose it might also be possible that the BIOS would already set
> some caching bits as well, in which case we'd run into this same
> issue already for the first plane.
> 
> TODO:
> - should abstract the PTE decoding to avoid details leaking all over
> - should probably do the readout for all the planes before
>    we touch anything (including the PTEs) so that we truly read
>    out the BIOS state
> 
> Cc: Paz Zcharya <pazz@chromium.org>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Helper can be useful (but I guess not many users atm).
The change looks correct anyway.

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej


> ---
>   drivers/gpu/drm/i915/display/intel_plane_initial.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> index a55c09cbd0e4..ffc92b18fcf5 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> @@ -72,7 +72,7 @@ initial_plane_vma(struct drm_i915_private *i915,
>   			return NULL;
>   		}
>   
> -		phys_base = pte & I915_GTT_PAGE_MASK;
> +		phys_base = pte & GEN12_GGTT_PTE_ADDR_MASK;
>   		mem = i915->mm.regions[INTEL_REGION_LMEM_0];
>   
>   		/*

