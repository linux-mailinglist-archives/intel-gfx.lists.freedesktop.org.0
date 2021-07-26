Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 236223D57E6
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 12:57:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12B256E8B7;
	Mon, 26 Jul 2021 10:57:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FA7B6E107;
 Mon, 26 Jul 2021 10:57:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10056"; a="212201348"
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="212201348"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 03:57:42 -0700
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="473645907"
Received: from dechasso-mobl3.amr.corp.intel.com (HELO intel.com)
 ([10.212.115.115])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 03:57:42 -0700
Date: Mon, 26 Jul 2021 06:57:41 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <YP6VJZ9C2C0eRc6V@intel.com>
References: <20210724001114.249295-1-lucas.demarchi@intel.com>
 <20210724001114.249295-23-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210724001114.249295-23-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 22/30] drm/i915: remove explicit CNL
 handling from intel_wopcm.c
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 23, 2021 at 05:11:06PM -0700, Lucas De Marchi wrote:
> Consider the new WOPCM size as starting in ICL rather than CNL since the
> latter is being removed from the driver.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_wopcm.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_wopcm.c b/drivers/gpu/drm/i915/intel_wopcm.c
> index 8309455f13ea..5e511bb891f9 100644
> --- a/drivers/gpu/drm/i915/intel_wopcm.c
> +++ b/drivers/gpu/drm/i915/intel_wopcm.c
> @@ -56,8 +56,8 @@
>  
>  /* 24KB at the end of WOPCM is reserved for RC6 CTX on BXT. */
>  #define BXT_WOPCM_RC6_CTX_RESERVED	(SZ_16K + SZ_8K)
> -/* 36KB WOPCM reserved at the end of WOPCM on CNL. */
> -#define CNL_WOPCM_HW_CTX_RESERVED	(SZ_32K + SZ_4K)
> +/* 36KB WOPCM reserved at the end of WOPCM on ICL. */
> +#define ICL_WOPCM_HW_CTX_RESERVED	(SZ_32K + SZ_4K)
>  
>  /* 128KB from GUC_WOPCM_RESERVED is reserved for FW on Gen9. */
>  #define GEN9_GUC_FW_RESERVED	SZ_128K
> @@ -93,8 +93,8 @@ static u32 context_reserved_size(struct drm_i915_private *i915)
>  {
>  	if (IS_GEN9_LP(i915))
>  		return BXT_WOPCM_RC6_CTX_RESERVED;
> -	else if (GRAPHICS_VER(i915) >= 10)
> -		return CNL_WOPCM_HW_CTX_RESERVED;
> +	else if (GRAPHICS_VER(i915) >= 11)
> +		return ICL_WOPCM_HW_CTX_RESERVED;
>  	else
>  		return 0;
>  }
> @@ -126,7 +126,7 @@ static bool gen9_check_huc_fw_fits(struct drm_i915_private *i915,
>  				   u32 guc_wopcm_size, u32 huc_fw_size)
>  {
>  	/*
> -	 * On Gen9 & CNL A0, hardware requires the total available GuC WOPCM
> +	 * On Gen9, hardware requires the total available GuC WOPCM
>  	 * size to be larger than or equal to HuC firmware size. Otherwise,
>  	 * firmware uploading would fail.
>  	 */
> -- 
> 2.31.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
