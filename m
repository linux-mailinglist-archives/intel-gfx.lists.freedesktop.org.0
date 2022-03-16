Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A04164DB7A7
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 18:55:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E134510E85E;
	Wed, 16 Mar 2022 17:55:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0667310E85E
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 17:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647453336; x=1678989336;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/nQ3i3YwJHF11PfOz/rVlfOJaY4kSTNv7CE/f0zya+U=;
 b=P70rZ7A0mpF/7t7wx5uj4tcqcOhua2/rBAD9Rsna6irZLn8vFOW7frae
 6fAhy+k1j9UpCk6gGivofibfF9QIlmGcd9wylI1BS96MJenEcM4ovSter
 fRGxEhH7CZBpS+LQt5rIjqghFg8oX70xW6a4uIuZ9fzn7VKB6r4a2Rizt
 MLZu7AOR1cgHi1M3S5w4x/bGa0jfmiRPBuRmVhaGELxMIbFvaJyZPHpM5
 +2cw8rgjtqNOOWWDxkEPGU+5M4gT5Sj9IiInz2iRbYgNbkPny+V1+5IAZ
 aO4Whvuh/fIArr0aIoKZrnvLKrXOgoeQPRfd+6vK4YcTw/fcRE10uHGf4 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="256865752"
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400"; d="scan'208";a="256865752"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 10:55:14 -0700
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400"; d="scan'208";a="690675954"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 10:55:13 -0700
Date: Wed, 16 Mar 2022 19:55:48 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220316175548.GB21723@intel.com>
References: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
 <20220309164948.10671-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220309164948.10671-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 2/8] drm/i915: Rework SAGV block time
 probing
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

On Wed, Mar 09, 2022 at 06:49:42PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> I'd like to see the SAGV block time we got from the mailbox
> in the logs regardless of whether other factors prevent the
> use of SAGV.
> 
> So let's adjust the code to always query the SAGV block time,
> log it, and then reset it if SAGV is not actually supported.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 36 +++++++++++++++++++--------------
>  1 file changed, 21 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 40a3094e55ca..906501d6b298 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3670,8 +3670,8 @@ intel_has_sagv(struct drm_i915_private *dev_priv)
>  		dev_priv->sagv_status != I915_SAGV_NOT_CONTROLLED;
>  }
>  
> -static void
> -skl_setup_sagv_block_time(struct drm_i915_private *dev_priv)
> +static u32
> +intel_sagv_block_time(struct drm_i915_private *dev_priv)
>  {
>  	if (DISPLAY_VER(dev_priv) >= 12) {
>  		u32 val = 0;
> @@ -3680,23 +3680,30 @@ skl_setup_sagv_block_time(struct drm_i915_private *dev_priv)
>  		ret = snb_pcode_read(dev_priv,
>  				     GEN12_PCODE_READ_SAGV_BLOCK_TIME_US,
>  				     &val, NULL);
> -		if (!ret) {
> -			dev_priv->sagv_block_time_us = val;
> -			return;
> +		if (ret) {
> +			drm_dbg_kms(&dev_priv->drm, "Couldn't read SAGV block time!\n");
> +			return 0;
>  		}
>  
> -		drm_dbg(&dev_priv->drm, "Couldn't read SAGV block time!\n");
> +		return val;
>  	} else if (DISPLAY_VER(dev_priv) == 11) {
> -		dev_priv->sagv_block_time_us = 10;
> -		return;
> -	} else if (DISPLAY_VER(dev_priv) == 9) {
> -		dev_priv->sagv_block_time_us = 30;
> -		return;
> +		return 10;
> +	} else if (DISPLAY_VER(dev_priv) == 9 && !IS_LP(dev_priv)) {
> +		return 30;
>  	} else {
> -		MISSING_CASE(DISPLAY_VER(dev_priv));
> +		return 0;
>  	}
> +}
>  
> -	dev_priv->sagv_block_time_us = 0;
> +static void intel_sagv_init(struct drm_i915_private *i915)
> +{
> +	i915->sagv_block_time_us = intel_sagv_block_time(i915);
> +
> +	drm_dbg_kms(&i915->drm, "SAGV supported: %s, original SAGV block time: %u us\n",
> +		    str_yes_no(intel_has_sagv(i915)), i915->sagv_block_time_us);
> +
> +	if (!intel_has_sagv(i915))
> +		i915->sagv_block_time_us = 0;
>  }
>  
>  /*
> @@ -8175,8 +8182,7 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
>  	else if (GRAPHICS_VER(dev_priv) == 5)
>  		ilk_get_mem_freq(dev_priv);
>  
> -	if (intel_has_sagv(dev_priv))
> -		skl_setup_sagv_block_time(dev_priv);
> +	intel_sagv_init(dev_priv);
>  
>  	/* For FIFO watermark updates */
>  	if (DISPLAY_VER(dev_priv) >= 9) {
> -- 
> 2.34.1
> 
