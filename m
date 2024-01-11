Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A6B82AFE5
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jan 2024 14:44:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 294B410E3E6;
	Thu, 11 Jan 2024 13:44:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F419510E3E6
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jan 2024 13:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704980653; x=1736516653;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SPjL83VJo6Bn/IbLbYbJWYzqd8YZAbBWQV0+j5Ut2vY=;
 b=WQ9wGJGSEzDat9uMFlFrOfWyDsCIU/tKZbS0L2q4YNcNmm7B+6+c1rYl
 EKCZZoR8XfcsO3J0/+Hn0KEDThlezOTHafzmdSJcfzI61m3KaH2QnmdSO
 nbQi3u/Gs7WKPWhMovtmFC4Ungi0uQ4FkADW5ACgNTwEHGqB0CUPBi41J
 FOlstvxO2fzz375GHe10ysD7uEpwFmDMgETepOW1esEt5vAzvmbUuJFeN
 0fAm8wCFbahwPMI0hCxT+uUyR3q0pJmBiIzua2n2OKRtmBx31SXjjfCrk
 SHR30A62U/l5HWRf4KfNVaH8cZwhIKtahA0QhhiynyOSJ1LeMeX+DxzEu w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="402621814"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; d="scan'208";a="402621814"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 05:44:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="775612197"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; d="scan'208";a="775612197"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 11 Jan 2024 05:44:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Jan 2024 15:44:10 +0200
Date: Thu, 11 Jan 2024 15:44:10 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: Re: [PATCH v1 1/2] drm/i915/display: use PAGE_SIZE macro for FBC cfb
 alloc
Message-ID: <ZZ_wqnWx5I5h7hKZ@intel.com>
References: <20240110110009.28799-1-vinod.govindapillai@intel.com>
 <20240110110009.28799-2-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240110110009.28799-2-vinod.govindapillai@intel.com>
X-Patchwork-Hint: comment
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 10, 2024 at 01:00:08PM +0200, Vinod Govindapillai wrote:
> FBC compressed frame buffer size need to be PAGE_SIZE aligned
> and the corresponding the drm_gem functions check the object
> size alignment using PAGE_SIZE macro. Use the PAGE_SIZE macro
> in the cfb alloc as well instead of the magic number.
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index f17a1afb4929..9b9c8715d664 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -764,13 +764,15 @@ static int find_compression_limit(struct intel_fbc *fbc,
>  
>  	/* Try to over-allocate to reduce reallocations and fragmentation. */
>  	ret = i915_gem_stolen_insert_node_in_range(i915, &fbc->compressed_fb,
> -						   size <<= 1, 4096, 0, end);
> +						   size <<= 1, PAGE_SIZE, 0,
> +						   end);
>  	if (ret == 0)
>  		return limit;
>  
>  	for (; limit <= intel_fbc_max_limit(i915); limit <<= 1) {
>  		ret = i915_gem_stolen_insert_node_in_range(i915, &fbc->compressed_fb,
> -							   size >>= 1, 4096, 0, end);
> +							   size >>= 1, PAGE_SIZE, 0,
> +							   end);

PAGE_SIZE is 4k so I can't see this doing anything at all.

The correct fix is probably either:
- fix the xe gem code to always page align the size
- page align it in xe's i915_gem_stolen_insert_node_in_range()

>  		if (ret == 0)
>  			return limit;
>  	}
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
