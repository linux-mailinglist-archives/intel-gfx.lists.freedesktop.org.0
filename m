Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 767CC4D4201
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 08:45:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCD1310F632;
	Thu, 10 Mar 2022 07:45:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2EDA10F632
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 07:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646898339; x=1678434339;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=AcDTO1ANQ2WQ4o1OZWRCYcpYE2lbSuNVmQ1Rot5yl/k=;
 b=BiovWDWNao0/+5tgTFi1sxQrzgoAz3Gt4l0xF8pRVDqLJw6h0KO7dr/B
 F7dW1l/I9ivokEb+u4exKC9tGqOf8Vx+FtQ/tIWGl1qzN/bk9hUYjI2QQ
 kCWqgsIEjTH8xHTI2nas/JNuWStvd6W3UnGHfjPQS0KWMDaBaRZU4Ry2w
 A7i+E+nLnzZ8ggJSpHcPNnVc3LxkPjrI2MOmpHn3f5TUdv03gm941tv7S
 y6Si2Cv4sqiy6muAs01MuE4gV4+kJHeM4UAh/dQU3B4URFqrm5cuSgJ89
 DT2GZ3kTmjZPgQZZcEEx455nHXdhGwkXWhfiYj/kFCFiT3LCRPW36RqMB A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="237354202"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="237354202"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 23:45:39 -0800
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="632898957"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 23:45:37 -0800
Date: Thu, 10 Mar 2022 09:46:04 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220310074604.GA20808@intel.com>
References: <20220303191207.27931-1-ville.syrjala@linux.intel.com>
 <20220303191207.27931-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220303191207.27931-7-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 6/9] drm/i915: Round up when calculating
 display bandwidth requirements
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

On Thu, Mar 03, 2022 at 09:12:04PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> We should round up when doing bandwidth calculations to make sure
> our estimates don't fall short of the actual number.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index df98b1d7a6f7..0759bb95ea4b 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -638,7 +638,7 @@ static unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
>  		data_rate += bw_state->data_rate[pipe];
>  
>  	if (DISPLAY_VER(dev_priv) >= 13 && intel_vtd_active(dev_priv))
> -		data_rate = data_rate * 105 / 100;
> +		data_rate = DIV_ROUND_UP(data_rate * 105, 100);
>  
>  	return data_rate;
>  }
> @@ -763,7 +763,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
>  		}
>  	}
>  
> -	new_bw_state->min_cdclk = max_bw / 64;
> +	new_bw_state->min_cdclk = DIV_ROUND_UP(max_bw, 64);
>  
>  	if (new_bw_state->min_cdclk != old_bw_state->min_cdclk) {
>  		int ret = intel_atomic_lock_global_state(&new_bw_state->base);
> -- 
> 2.34.1
> 
