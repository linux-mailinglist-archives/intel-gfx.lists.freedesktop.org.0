Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF43E6F6E66
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 16:58:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62B7710E4A5;
	Thu,  4 May 2023 14:58:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1031B10E461
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 14:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683212294; x=1714748294;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HknvYGTMHGwxa4iCCHFR9PnRuzUmsa/mJUvCEWHITyU=;
 b=AdpoYMtDphC7ez9wXkDqfFfTGxa+u1gt6yzsmywLNk0Tv70ds5kra6iy
 x/XG8hAfgWONM720tW1pk8sPWMp+WZr5RQCMsaIiZMEXRhAnvCIXY4jEO
 0h/vDSeIx4KMHl6X0b5Qiz/9ZIbKZbYfm4CgBifhooCT1Bml0y0XxJ01U
 NsjkaJzifLoaGSP9TdsGuFOoH858TEjFjJqTZ8NenKs8v6Tt1relQBc0n
 2KBTQkjnUIT4Peimz+UBXjhr5v9R6KtD8RJAl5SR6blsxtBqpVX5O/K0U
 f68+jbCPUEsk+g0oJf+uXXAWhICsmySVUvERiUWVuwovsAXMpGKwdiDk0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="351069451"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="351069451"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 07:55:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="821201259"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="821201259"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga004.jf.intel.com with SMTP; 04 May 2023 07:55:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 May 2023 17:55:30 +0300
Date: Thu, 4 May 2023 17:55:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZFPHYgTrfnxQv3Ku@intel.com>
References: <20230503231048.432368-1-imre.deak@intel.com>
 <20230503231048.432368-11-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230503231048.432368-11-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 10/12] drm/i915/dp: Factor out
 intel_dp_get_active_pipes()
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

On Thu, May 04, 2023 at 02:10:46AM +0300, Imre Deak wrote:
> Factor out a helper used by a follow up patch to reset an active DP
> link.
> 
> No functional changes.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1942a05719776..7a349cb9fc2e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4126,9 +4126,9 @@ static bool intel_dp_has_connector(struct intel_dp *intel_dp,
>  	return false;
>  }
>  
> -static int intel_dp_prep_link_retrain(struct intel_dp *intel_dp,
> -				      struct drm_modeset_acquire_ctx *ctx,
> -				      u8 *pipe_mask)
> +static int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
> +				     struct drm_modeset_acquire_ctx *ctx,
> +				     u8 *pipe_mask)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	struct drm_connector_list_iter conn_iter;
> @@ -4137,9 +4137,6 @@ static int intel_dp_prep_link_retrain(struct intel_dp *intel_dp,
>  
>  	*pipe_mask = 0;
>  
> -	if (!intel_dp_needs_link_retrain(intel_dp))
> -		return 0;
> -
>  	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
>  	for_each_intel_connector_iter(connector, &conn_iter) {
>  		struct drm_connector_state *conn_state =
> @@ -4173,9 +4170,6 @@ static int intel_dp_prep_link_retrain(struct intel_dp *intel_dp,
>  	}
>  	drm_connector_list_iter_end(&conn_iter);
>  
> -	if (!intel_dp_needs_link_retrain(intel_dp))
> -		*pipe_mask = 0;
> -
>  	return ret;
>  }
>  
> @@ -4204,13 +4198,19 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
>  	if (ret)
>  		return ret;
>  
> -	ret = intel_dp_prep_link_retrain(intel_dp, ctx, &pipe_mask);
> +	if (!intel_dp_needs_link_retrain(intel_dp))
> +		return 0;
> +
> +	ret = intel_dp_get_active_pipes(intel_dp, ctx, &pipe_mask);
>  	if (ret)
>  		return ret;
>  
>  	if (pipe_mask == 0)
>  		return 0;
>  
> +	if (!intel_dp_needs_link_retrain(intel_dp))
> +		return 0;
> +
>  	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] retraining link\n",
>  		    encoder->base.base.id, encoder->base.name);
>  
> -- 
> 2.37.2

-- 
Ville Syrjälä
Intel
