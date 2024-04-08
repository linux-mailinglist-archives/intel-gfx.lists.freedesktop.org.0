Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE62A89BA43
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 10:30:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FC5611228B;
	Mon,  8 Apr 2024 08:30:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qv0w0elZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36B8511228A
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 08:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712565009; x=1744101009;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=KqNmtUmOdnw4ogYsq1qTo4HEqUXJsKGevSVROXvzJnI=;
 b=Qv0w0elZZuQcG69qgHiLopARzPqBQFEfJqnPbMMIF7MRV0koX0jM3pue
 fuVf7ftBdACgGC9KPkFFFwQJ0cTQo2ILJ6zL96RNvxXxdO7JToQsc/9I5
 K4rzFjZ3K/N6jcIzt32YGuXYVjILwqp+U+esB9BHmoWphUhFASR97o1Ng
 goRm/FuB9RYxatUiJmjdAvo0ZvnihgiO1S3j3d74awN/Kx5ktzMeGdKYI
 FcXGLh7KwLgonKxd5LxLn/GqM0vt47px4MQjyv5TVCxT2/2nhxw/wtOXb
 ahADf5o1H6OBi94pN9VNI/kEc4SQSplz+ZAr3r81aJEr6n0zV1L8WXYhK g==;
X-CSE-ConnectionGUID: rnXXoFcGT7+Es5YgvhkJwg==
X-CSE-MsgGUID: Sxw0WsXiQL23S/Ydm3mPeg==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="10802222"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="10802222"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 01:30:08 -0700
X-CSE-ConnectionGUID: owqmnJimTRG7F0J6NSmWGw==
X-CSE-MsgGUID: SLT4e2hpRsaMmme/PJyrZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="42982989"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 01:30:07 -0700
Date: Mon, 8 Apr 2024 11:29:59 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH v10 5/6] drm/i915/display: handle systems with duplicate
 psf gv points
Message-ID: <ZhOrBzpTWJ0xKysl@intel.com>
References: <20240405113533.338553-1-vinod.govindapillai@intel.com>
 <20240405113533.338553-6-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240405113533.338553-6-vinod.govindapillai@intel.com>
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

On Fri, Apr 05, 2024 at 02:35:32PM +0300, Vinod Govindapillai wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> There could be multiple qgv and psf gv points with similar values.
> Apparently pcode's handling og psf and qgv points are different. For
> qgv case, pcode sets whatever is asked by the driver. But in case
> of psf gv points, it compares the bw from points before setting the
> mask. This can cause problems in scenarios where we have to disable
> sagv by setting the highest bw point and there could be multiple
> points with highest bw. So to set the maximum psf gv point, find
> out all the points with the highest bw and set all together.
> 
> v1: - use the same treatment to qgv points as well (Vinod)
> 
> v2: - pcode confirms that for qgv points, it sets whatever the
>       driver sets (Vinod)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 5f4f93524bef..6fb228a1a28f 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -874,6 +874,8 @@ static unsigned int icl_max_bw_psf_gv_point_mask(struct drm_i915_private *i915)
>  		if (max_data_rate > max_bw) {
>  			max_bw_point_mask = BIT(i);
>  			max_bw = max_data_rate;
> +		} else if (max_data_rate == max_bw) {
> +			max_bw_point_mask |= BIT(i);

So we just came back to where we started. Wondering still, why it even bothers to expose
two equal PSF GV points. Not only having duplicate points doesn't make much sense for 
the driver(since the BW they provide is the same), but also requires some additional
logic on top to handle those.

Stan

>  		}
>  	}
>  
> -- 
> 2.34.1
> 
