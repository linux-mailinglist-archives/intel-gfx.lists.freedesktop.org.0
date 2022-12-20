Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 154DB65283C
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 22:11:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2481210E0DE;
	Tue, 20 Dec 2022 21:10:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86C7910E0DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 21:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671570638; x=1703106638;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=igY+XIMIHcUyLIhql3qfXwVaCWtiGdBbeciLTacVxxU=;
 b=I9ukuOW69b6MAfZnypETH6OIEnaSuf7ymgLhfxZXKZR0jW9FDPQByywp
 0xW2NunChfrYlCWs6fzni6tcegni7CqBTLvZhIDDbA8YOIDE8mt5YujYx
 n0SYxaD++FwC0wH9uLmhnrPz/2RG40jB9lll49nk3lnsBs4a1TX/3y+0Q
 /JdjhjXUgh6Cgv6XWqqMMRuzYKaEE7oBRcPdEpMOvyL4+t47P6E9YYFEb
 Z9kgMWffldec9oGPcux0/i6NOc61v8o2AN81gYxWldEy2qACe53IQ/hYp
 wz3lBG9h9hu6ZakOZOknYnI9ONqPP72sZl1EjNlHU9fUjlr54iITVwpWO A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="317357033"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="317357033"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 13:10:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="628882675"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="628882675"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 20 Dec 2022 13:10:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Dec 2022 23:10:34 +0200
Date: Tue, 20 Dec 2022 23:10:34 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>
Message-ID: <Y6IkyljA87ZzQ/1t@intel.com>
References: <20221220120724.196570-1-luciano.coelho@intel.com>
 <20221220120724.196570-3-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221220120724.196570-3-luciano.coelho@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v6 2/2] drm/i915/mtl: Limit scaler input to
 4k in plane scaling
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

On Tue, Dec 20, 2022 at 02:07:24PM +0200, Luca Coelho wrote:
> From: Animesh Manna <animesh.manna@intel.com>
> 
> As part of die area reduction max input source modified to 4096
> for MTL so modified range check logic of scaler.
> 
> Signed-off-by: Jos? Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 31 +++++++++++++++++------
>  1 file changed, 23 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index d7390067b7d4..6baa07142b03 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -103,6 +103,8 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
> +	int min_src_w, min_src_h, min_dst_w, min_dst_h;
> +	int max_src_w, max_src_h, max_dst_w, max_dst_h;
>  
>  	/*
>  	 * Src coordinates are already rotated by 270 degrees for
> @@ -157,15 +159,28 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
>  		return -EINVAL;
>  	}
>  
> +	min_src_w = SKL_MIN_SRC_W;
> +	min_src_h = SKL_MIN_SRC_H;
> +	min_dst_w = SKL_MIN_DST_W;
> +	min_dst_h = SKL_MIN_DST_H;
> +
> +	if (DISPLAY_VER(dev_priv) >= 11 && DISPLAY_VER(dev_priv) < 14) {
> +		max_src_w = ICL_MAX_SRC_W;
> +		max_src_h = ICL_MAX_SRC_H;
> +		max_dst_w = ICL_MAX_DST_W;
> +		max_dst_h = ICL_MAX_DST_H;
> +	} else {
> +		max_src_w = SKL_MAX_SRC_W;
> +		max_src_h = SKL_MAX_SRC_H;
> +		max_dst_w = SKL_MAX_DST_W;
> +		max_dst_h = SKL_MAX_DST_H;
> +	}

Bspec says max_src_w=4096, max_src_h=8192, max_dst_w=8192,
max_dst_h=8192.

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
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "scaler_user index %u.%u: src %ux%u dst %ux%u "
>  			    "size is out of scaler range\n",
> -- 
> 2.38.1

-- 
Ville Syrjälä
Intel
