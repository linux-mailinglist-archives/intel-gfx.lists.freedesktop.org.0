Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0ACF879958
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 17:49:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03D3010F4CF;
	Tue, 12 Mar 2024 16:49:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mJSEqcIH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26A09112F14;
 Tue, 12 Mar 2024 16:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710262140; x=1741798140;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Hw4849HGMcWi3mIxI7yUF67BszBJMUVwAgWNDs+DBy8=;
 b=mJSEqcIH2Tf0b+0NhK8Wxe8/PpIkVzkfiYsbNhC4LhsfWP8WOMdjik1H
 DmyfY2TR8uuTeJ5WRfz6kI+uWWxycbTdZMfkTHGe2Ye/hqm64Aw2uaP+m
 5G6FnJNt/bw7vGeNswaMdVE4IX7vbqO6M0e7ubo/7sbVaX2zTXiuMWX68
 QbKuLnxCiZZwZx9yPSCiTvL/T3Dx/8scC29wiX4pID+qtiCF5yleAgjlu
 hk8c8KSf/bU9l2VGj8CxWW2mT09qzqpjOBVZ74cbLjwQ8wr/qrG5Uq+IO
 7Yz7fYQqfa1RPLdQD6qlzkrHYXXJsklr7VibtO2f/CN5J7sAOGcF06NjD g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="22436697"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="22436697"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 09:49:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="827778709"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="827778709"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 12 Mar 2024 09:48:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 Mar 2024 18:48:56 +0200
Date: Tue, 12 Mar 2024 18:48:56 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/xe/display: fix potential overflow when multiplying
 2 u32
Message-ID: <ZfCHeAEZZnVn7uVS@intel.com>
References: <20240312095441.3684038-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240312095441.3684038-1-arun.r.murthy@intel.com>
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

On Tue, Mar 12, 2024 at 03:24:41PM +0530, Arun R Murthy wrote:
> Multiplying XE_PAGE_SIZE with another u32 and the product stored in
> u64 can potentially lead to overflow. Change one of the value to u64 so
> as to perform 64 bit arithmetic operation as the product is u64.

These should never get that big.

> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_fb_pin.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> index 722c84a56607..c9d26345ae6e 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -29,7 +29,7 @@ write_dpt_rotated(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs, u32 bo_
>  		u32 src_idx = src_stride * (height - 1) + column + bo_ofs;
>  
>  		for (row = 0; row < height; row++) {
> -			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
> +			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, src_idx * (u64)XE_PAGE_SIZE,

mul_u32_u32() may generate better code due to compiler fails.

>  							      xe->pat.idx[XE_CACHE_WB]);

Rather surprising to see WB in any display code.
Is this stuff actually working?

>  
>  			iosys_map_wr(map, *dpt_ofs, u64, pte);
> @@ -61,7 +61,7 @@ write_dpt_remapped(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs,
>  
>  		for (column = 0; column < width; column++) {
>  			iosys_map_wr(map, *dpt_ofs, u64,
> -				     pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
> +				     pte_encode_bo(bo, src_idx * (u64)XE_PAGE_SIZE,
>  				     xe->pat.idx[XE_CACHE_WB]));
>  
>  			*dpt_ofs += 8;
> @@ -118,7 +118,7 @@ static int __xe_pin_fb_vma_dpt(struct intel_framebuffer *fb,
>  		u32 x;
>  
>  		for (x = 0; x < size / XE_PAGE_SIZE; x++) {
> -			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, x * XE_PAGE_SIZE,
> +			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, x * (u64)XE_PAGE_SIZE,
>  							      xe->pat.idx[XE_CACHE_WB]);
>  
>  			iosys_map_wr(&dpt->vmap, x * 8, u64, pte);
> @@ -164,7 +164,7 @@ write_ggtt_rotated(struct xe_bo *bo, struct xe_ggtt *ggtt, u32 *ggtt_ofs, u32 bo
>  		u32 src_idx = src_stride * (height - 1) + column + bo_ofs;
>  
>  		for (row = 0; row < height; row++) {
> -			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
> +			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, src_idx * (u64)XE_PAGE_SIZE,
>  							      xe->pat.idx[XE_CACHE_WB]);
>  
>  			xe_ggtt_set_pte(ggtt, *ggtt_ofs, pte);
> @@ -381,4 +381,4 @@ struct i915_address_space *intel_dpt_create(struct intel_framebuffer *fb)
>  void intel_dpt_destroy(struct i915_address_space *vm)
>  {
>  	return;
> -}
> \ No newline at end of file
> +}
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
