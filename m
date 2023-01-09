Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 080CB661F44
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jan 2023 08:32:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16FD510E061;
	Mon,  9 Jan 2023 07:32:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D05D410E061
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Jan 2023 07:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673249546; x=1704785546;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=PSR0xnUsZm1GQH/cRDQogrtsShhgmz1vddfqhFIJIWk=;
 b=dQyYxh1Vh7PmmVu2FNWk6/5LaNTCcQp2yGa6Y5Ny7q07OpZ0203mGz5N
 2Rj33nv6AXYvNo2YDlrwW+PyB2tXkke99RMIwQ2+C4E2HKm2epcDeS08Y
 9J9XqBXpWir+7vmIUFkrrYJP1N/JGh63GAwMe9W0v2UmThWCNOQ61TNZN
 Ec+qXHA3DuorB0jovvAnBfJT2/gQ4MYsLA8k6ODQ+LxTB3rpJD5YWJk9h
 HQuMzTjF8r98sHHgoznPJD/i+02Og3rbMLe1r+UDWYkzGiL4oB+3D+tba
 zBAK6TJSjIc0n6UuSGgW3sJImEAe8CRoc62HVTXZ7Xh9/QPDEmRliB0XT A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10584"; a="322887975"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="322887975"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2023 23:32:23 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10584"; a="725074768"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="725074768"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2023 23:32:21 -0800
Date: Mon, 9 Jan 2023 09:32:18 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>
Message-ID: <Y7vDAg3Ub20o75MS@intel.com>
References: <20221223130509.43245-1-luciano.coelho@intel.com>
 <20221223130509.43245-3-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221223130509.43245-3-luciano.coelho@intel.com>
Subject: Re: [Intel-gfx] [PATCH v7 2/2] drm/i915/mtl: update scaler source
 and destination limits for MTL
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 23, 2022 at 03:05:09PM +0200, Luca Coelho wrote:
> From: Animesh Manna <animesh.manna@intel.com>
> 
> The max source and destination limits for scalers in MTL have changed.
> Use the new values accordingly.
> 
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
> 
> In v2:
>    * No changes;
> 
> In v3:
>    * Removed stray reviewed-by tag;
>    * Added my s-o-b.
> 
> In v4:
>    * No changes.
> 
> In v5:
>    * Just resent with a cover letter.
> 
> In v6:
>    * Now the correct version again (same as v4).
> 
> In v7:
>    * Update to new MTL limits according to the bspec.
> 
> 
>  drivers/gpu/drm/i915/display/skl_scaler.c | 40 ++++++++++++++++++-----
>  1 file changed, 32 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index d7390067b7d4..01e881293612 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -87,6 +87,10 @@ static u16 skl_scaler_calc_phase(int sub, int scale, bool chroma_cosited)
>  #define ICL_MAX_SRC_H 4096
>  #define ICL_MAX_DST_W 5120
>  #define ICL_MAX_DST_H 4096
> +#define MTL_MAX_SRC_W 4096
> +#define MTL_MAX_SRC_H 8192
> +#define MTL_MAX_DST_W 8192
> +#define MTL_MAX_DST_H 8192
>  #define SKL_MIN_YUV_420_SRC_W 16
>  #define SKL_MIN_YUV_420_SRC_H 16
>  
> @@ -103,6 +107,8 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
> +	int min_src_w, min_src_h, min_dst_w, min_dst_h;
> +	int max_src_w, max_src_h, max_dst_w, max_dst_h;
>  
>  	/*
>  	 * Src coordinates are already rotated by 270 degrees for
> @@ -157,15 +163,33 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
>  		return -EINVAL;
>  	}
>  
> +	min_src_w = SKL_MIN_SRC_W;
> +	min_src_h = SKL_MIN_SRC_H;
> +	min_dst_w = SKL_MIN_DST_W;
> +	min_dst_h = SKL_MIN_DST_H;
> +
> +	if (DISPLAY_VER(dev_priv) < 11) {
> +		max_src_w = SKL_MAX_SRC_W;
> +		max_src_h = SKL_MAX_SRC_H;
> +		max_dst_w = SKL_MAX_DST_W;
> +		max_dst_h = SKL_MAX_DST_H;
> +	} else if (DISPLAY_VER(dev_priv) < 14) {
> +		max_src_w = ICL_MAX_SRC_W;
> +		max_src_h = ICL_MAX_SRC_H;
> +		max_dst_w = ICL_MAX_DST_W;
> +		max_dst_h = ICL_MAX_DST_H;
> +	} else {
> +		max_src_w = MTL_MAX_SRC_W;
> +		max_src_h = MTL_MAX_SRC_H;
> +		max_dst_w = MTL_MAX_DST_W;
> +		max_dst_h = MTL_MAX_DST_H;
> +	}
> +
>  	/* range checks */
> -	if (src_w < SKL_MIN_SRC_W || src_h < SKL_MIN_SRC_H ||
> -	    dst_w < SKL_MIN_DST_W || dst_h < SKL_MIN_DST_H ||
> -	    (DISPLAY_VER(dev_priv) >= 11 &&
> -	     (src_w > ICL_MAX_SRC_W || src_h > ICL_MAX_SRC_H ||
> -	      dst_w > ICL_MAX_DST_W || dst_h > ICL_MAX_DST_H)) ||
> -	    (DISPLAY_VER(dev_priv) < 11 &&
> -	     (src_w > SKL_MAX_SRC_W || src_h > SKL_MAX_SRC_H ||
> -	      dst_w > SKL_MAX_DST_W || dst_h > SKL_MAX_DST_H)))	{
> +	if (src_w < min_src_w || src_h < min_src_h ||
> +	    dst_w < min_dst_w || dst_h < min_dst_h ||
> +	    src_w > max_src_w || src_h > max_src_h ||
> +	    dst_w > max_dst_w || dst_h > max_dst_h) {

Yep, that looks definitely way cleaner than initial condition.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

>  		drm_dbg_kms(&dev_priv->drm,
>  			    "scaler_user index %u.%u: src %ux%u dst %ux%u "
>  			    "size is out of scaler range\n",
> -- 
> 2.39.0
> 
