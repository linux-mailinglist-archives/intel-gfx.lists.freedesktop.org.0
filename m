Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A534A9D644B
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2024 19:46:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB1F510E1D4;
	Fri, 22 Nov 2024 18:46:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xt9OeBVu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F12710E1D4;
 Fri, 22 Nov 2024 18:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732301160; x=1763837160;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pL+wbSYtCQG9arTxEVhGuaT0bG8Y+GMbIVvevnJOhL0=;
 b=Xt9OeBVuyW4GFwxJ2i/KDzdUlZDN93Xu+0YmkcpPh3FAZPgUekEBUr56
 45P+jXDoDj60lbXPdgNu1W9W4anSo9+4iI5nG5H4p7WkWWdT+QuSXT+ei
 KGbh5t076nQ6t77SJxsfHLoPsu7MJVltPJh/Df/ncXPooKR12Gcd2V7IU
 58FponS4wYAhvfZcaynJjukwEc67I1n6pUgAu5aiS4O7WNa7z0BEQsCrM
 OlV/9j6Uc95X5safeUlNIcPB6+MnLiwR3gsSJs3V1vvsHHFgO5FjOLfZ4
 YGUzMStiPoHD5qmSldlNreUz25yTY5exI/WuK1mTVc0VqqThGqWBLGLk/ A==;
X-CSE-ConnectionGUID: h4bhoqNPRDGsQdqT/OZr1A==
X-CSE-MsgGUID: A14Yihu7QdqcuLGgVm1EYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11264"; a="32209594"
X-IronPort-AV: E=Sophos;i="6.12,176,1728975600"; d="scan'208";a="32209594"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2024 10:46:00 -0800
X-CSE-ConnectionGUID: hBbLJjsJSgmDoXTM78+gWw==
X-CSE-MsgGUID: dOO7aH4xTwm6AtUfd9l2dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,176,1728975600"; d="scan'208";a="90829338"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Nov 2024 10:45:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 22 Nov 2024 20:45:57 +0200
Date: Fri, 22 Nov 2024 20:45:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/6] drm/i915/display: Disable joiner and pfit
Message-ID: <Z0DRZZ91gyhHqVSq@intel.com>
References: <20241120053838.3794419-1-nemesa.garg@intel.com>
 <20241120053838.3794419-2-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241120053838.3794419-2-nemesa.garg@intel.com>
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

On Wed, Nov 20, 2024 at 11:08:33AM +0530, Nemesa Garg wrote:
> Disable panel fitting if joiner is enabled as
> backporting of joiner part is required in case
> of pfit.
> 
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pfit.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
> index 50861aa78a89..e214e19f8174 100644
> --- a/drivers/gpu/drm/i915/display/intel_pfit.c
> +++ b/drivers/gpu/drm/i915/display/intel_pfit.c
> @@ -187,6 +187,9 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>  	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
>  	int ret, x, y, width, height;
>  
> +	if (crtc_state->joiner_pipes)
> +		return 0;
> +

This needs to return an error, and it needs to be checked after we've
determined that pfit is in fact needed.

>  	/* Native modes don't need fitting */
>  	if (adjusted_mode->crtc_hdisplay == pipe_src_w &&
>  	    adjusted_mode->crtc_vdisplay == pipe_src_h &&
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
