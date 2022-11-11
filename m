Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB78C626223
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 20:39:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21CC310E87B;
	Fri, 11 Nov 2022 19:39:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C228810E87B
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 19:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668195590; x=1699731590;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Bc/OoD0BOY6hTmDyr4OK7t/RWdyvUWrpf3s3NB+anMY=;
 b=ltdxx8GbrTAnPAWb0OEpMLsNpTFZKwsKt5TqRivhn/QgeU4PMq6emuUo
 bgSziwk3mTeLAQ/pE6j2HqzNLsviAUH/MQDbGWabqiPU4D2PrPMhId2g8
 X4cV4QxT4wzJduZJCb++TUxUwX8wy2Lvdaj5jZ5PZTM9nyDOu9101Obkz
 HE7/A3wq7JJr79hpJqKEAUylRMWMsx82MS1qktipdtqNWkRLOZXlpOuwx
 GbJ4CzPYtzhHx/+SxiH/mc5K2lnR6aRi+vGn5Qso9WTTIYIa9PaiuAAqK
 uSI7hEQU2kFKLPn5fWiD2MV827NAAqIh2bSz/7FFMm+8usnXo4WFQGB2H Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="373786483"
X-IronPort-AV: E=Sophos;i="5.96,157,1665471600"; d="scan'208";a="373786483"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 11:39:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10528"; a="780269623"
X-IronPort-AV: E=Sophos;i="5.96,157,1665471600"; d="scan'208";a="780269623"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 11 Nov 2022 11:39:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Nov 2022 21:39:47 +0200
Date: Fri, 11 Nov 2022 21:39:47 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <Y26lAzmc1C4oIMOK@intel.com>
References: <20221111192602.257418-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221111192602.257418-1-anusha.srivatsa@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add missing checks for
 cdclk crawling
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

On Fri, Nov 11, 2022 at 11:26:02AM -0800, Anusha Srivatsa wrote:
> cdclk_sanitize() function was written assuming vco was a signed integer.
> vco gets assigned to -1 (essentially ~0) for the case where PLL
> might be enabled and vco is not a frequency that will ever
> get used. In such a scenario the right thing to do is disable the
> PLL and re-enable it again with a valid frequency.
> However the vco is declared as a unsigned variable.
> With the above assumption, driver takes crawl path when not needed.
> Add explicit check to not crawl in the case of an invalid PLL.
> 
> v2: Move the check from .h to .c (MattR)
> - Move check to bxt_set_cdclk() instead of
> intel_modeset_calc_cdclk() which is directly in
> the path of the sanitize() function (Ville)
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 8a9031012d74..2d9b7ba58358 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1716,6 +1716,16 @@ static void dg2_cdclk_squash_program(struct drm_i915_private *i915,
>  	intel_de_write(i915, CDCLK_SQUASH_CTL, squash_ctl);
>  }
>  
> +static bool cdclk_pll_is_unknown(unsigned int vco)
> +{
> +	/*
> +	 * Ensure driver does not take the crawl path for the
> +	 * case when the vco is set to ~0 in the
> +	 * sanitize path.
> +	 */
> +	return (vco == ~0);

Pointless parens.

> +}
> +
>  static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  			  const struct intel_cdclk_config *cdclk_config,
>  			  enum pipe pipe)
> @@ -1748,7 +1758,8 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  		return;
>  	}
>  
> -	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0) {
> +	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0 &&
> +	    (!cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco))) {

More pointless parens

With those removed
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Though I think we should probably add the pll_is_enabled()
helper too, just make the code a bit more self explanatory.

>  		if (dev_priv->display.cdclk.hw.vco != vco)
>  			adlp_cdclk_pll_crawl(dev_priv, vco);
>  	} else if (DISPLAY_VER(dev_priv) >= 11)
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
