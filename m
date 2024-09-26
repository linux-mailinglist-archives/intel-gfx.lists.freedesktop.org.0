Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B11D9872C9
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 13:28:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5312C10EAB3;
	Thu, 26 Sep 2024 11:28:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U5Ef3o49";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2121B10EAAF;
 Thu, 26 Sep 2024 11:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727350134; x=1758886134;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FouBtlQy9g305ZsUpV4rARS+M2JGvqjjG7RtFhlg+7c=;
 b=U5Ef3o49RQFtLitHqBisiNBZXt6JHLIOOH4gxAsSKeoYJEvi8sF+V/7q
 I422Xzblx2nyuLHzGOLTUDLkuMT9fp4b9GhFdkdsQ0IHo04ODOZue7chV
 GFCYQVpOaTDTkyuZNuS+PC2zY8hqlHIAyc0uf7x9Si1GmibyEjzLIOny8
 mM7m9lzhp4N3VMIj9qS5L9IxpxIg2avcuox8RA7oSDFJIoEA9SiHxbS8p
 UEf4oIhBBV63k84avg+KL+hSwULqHbxaQ4Q+a4DcqefmYlQe3BJRw/ehF
 k5WpTFTAVOnVJc1WMFN0EZxR0+HHo0oSrcnMTznlBuLvEIkBHfRejB72v w==;
X-CSE-ConnectionGUID: zVVuSDCxTaiOLbKGN18fsg==
X-CSE-MsgGUID: cRd5idIWRH+IeYgS5MP3pQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="37001812"
X-IronPort-AV: E=Sophos;i="6.10,155,1719903600"; d="scan'208";a="37001812"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 04:28:53 -0700
X-CSE-ConnectionGUID: J4ssOTt8QFKgX5VkQzpolQ==
X-CSE-MsgGUID: xIYrmGaTTy6k2pTK9pUa+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,155,1719903600"; d="scan'208";a="72257786"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 26 Sep 2024 04:28:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Sep 2024 14:28:48 +0300
Date: Thu, 26 Sep 2024 14:28:48 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 12/15] drm/i915/dp: Simplify helper to get slice count
 with joiner
Message-ID: <ZvVFcLT8IvSdCCmF@intel.com>
References: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
 <20240926072638.3689367-13-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240926072638.3689367-13-ankit.k.nautiyal@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 26, 2024 at 12:56:35PM +0530, Ankit Nautiyal wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> When bigjoiner is used, we need at least 2 dsc slices per pipe.
> Modify the condition in intel_dp_dsc_get_slice_count() to reflect the
> same.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index a0afb4991334..eb92fda21e87 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -999,8 +999,12 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>  		    drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd, false))
>  			break;
>  
> -		/* big joiner needs small joiner to be enabled */
> -		if (num_joined_pipes == 2 && test_slice_count < 4)
> +		 /*
> +		  * Bigjoiner needs small joiner to be enabled.
> +		  * So there should be at least 2 dsc slices per pipe,
> +		  * whenever bigjoiner is enabled.
> +		  */
> +		if (num_joined_pipes > 1 && valid_dsc_slicecount[i] < 2)
>  			continue;
>  
>  		if (min_slice_count <= test_slice_count)
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
