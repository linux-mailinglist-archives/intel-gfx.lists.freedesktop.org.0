Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEE46522E1
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 15:43:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49C2710E375;
	Tue, 20 Dec 2022 14:42:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36F4810E375
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 14:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671547374; x=1703083374;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=a8OaORhkqPA5wR5lUhMKPtPHpRftB5mQoGkbVgQckjo=;
 b=hZGsVS2RNreUMUwiqSMbz9s1rRBgp4RWUGHMT/VtZWKXk3A5KNYojcRL
 ZlugwLOsjm0jPQ4QcMlHkXM6X4laCqfjl6WRJSap4csz48nhXyCEBYFWS
 WsQ1MzhS+rBCebq5ThlU58oK3YQY40XjSYRM/mh7zxFEJCcUo0FYtIyCD
 qNw4lCZ9EcWabnhD0pJT2QmmEXfTnt+32dhZ5wfXWD5rkxBUyuwo6LhMT
 j4bsSKeHWlUhfGxgr45WRhZm9hcnHa2vO97kcNuz+tRfu3yqMrvYdkMZC
 d2OO9jAc0l4aVuCqUDGrnNninJaRqMK3N8/DKOYfv2weX22mx7gjsDaQy w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="299969250"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="299969250"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 06:42:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="793338385"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="793338385"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 20 Dec 2022 06:42:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Dec 2022 16:42:44 +0200
Date: Tue, 20 Dec 2022 16:42:44 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y6HJ5H7ddL7j2Omy@intel.com>
References: <20221220140105.313333-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221220140105.313333-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: fix MIPI_BKLT_EN_1 native
 GPIO index
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

On Tue, Dec 20, 2022 at 04:01:05PM +0200, Jani Nikula wrote:
> Due to copy-paste fail, MIPI_BKLT_EN_1 would always use PPS index 1,
> never 0. Fix the sloppiest commit in recent memory.
> 
> Fixes: f087cfe6fcff ("drm/i915/dsi: add support for ICL+ native MIPI GPIO sequence")
> Reported-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> index 41f025f089d9..2cbc1292ab38 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> @@ -430,7 +430,7 @@ static void icl_native_gpio_set_value(struct drm_i915_private *dev_priv,
>  		break;
>  	case MIPI_BKLT_EN_1:
>  	case MIPI_BKLT_EN_2:
> -		index = gpio == MIPI_AVDD_EN_1 ? 0 : 1;
> +		index = gpio == MIPI_BKLT_EN_1 ? 0 : 1;
>  
>  		intel_de_rmw(dev_priv, PP_CONTROL(index), EDP_BLC_ENABLE,
>  			     value ? EDP_BLC_ENABLE : 0);
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
