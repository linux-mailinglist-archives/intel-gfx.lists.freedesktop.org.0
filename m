Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D3E459EB2
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 09:54:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCCC06E52E;
	Tue, 23 Nov 2021 08:54:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5538C6E1E6
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Nov 2021 08:54:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10176"; a="298395602"
X-IronPort-AV: E=Sophos;i="5.87,257,1631602800"; d="scan'208";a="298395602"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2021 00:54:38 -0800
X-IronPort-AV: E=Sophos;i="5.87,257,1631602800"; d="scan'208";a="456985024"
Received: from unknown (HELO intel.com) ([10.237.72.167])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2021 00:54:37 -0800
Date: Tue, 23 Nov 2021 10:54:23 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <20211123085423.GB17614@intel.com>
References: <20211119131348.725220-1-mika.kahola@intel.com>
 <20211119131348.725220-3-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211119131348.725220-3-mika.kahola@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 2/5] drm/i915/display/dg2: Sanitize CD
 clock
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

On Fri, Nov 19, 2021 at 03:13:45PM +0200, Mika Kahola wrote:
> In case of CD clock squashing the divider is always 1. We don't
> need to calculate the divider in use so let's skip that for DG2.
> 
> v2: Drop unnecessary local variable (Ville)
> v3: Avoid if-else structure (Ville)
> [v4: vsyrjala: Fix cd2x divider calculation (Uma),
>                Introduce has_cdclk_squasher()]
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 7af4cb965060..3a61d52bdc0e 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1212,6 +1212,11 @@ static void skl_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
>  	skl_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
>  }
>  
> +static bool has_cdclk_squasher(struct drm_i915_private *i915)
> +{
> +	return IS_DG2(i915);
> +}
> +
>  static const struct intel_cdclk_vals bxt_cdclk_table[] = {
>  	{ .refclk = 19200, .cdclk = 144000, .divider = 8, .ratio = 60 },
>  	{ .refclk = 19200, .cdclk = 288000, .divider = 4, .ratio = 60 },
> @@ -1735,7 +1740,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
>  {
>  	u32 cdctl, expected;
> -	int cdclk, vco;
> +	int cdclk, clock, vco;
>  
>  	intel_update_cdclk(dev_priv);
>  	intel_dump_cdclk_config(&dev_priv->cdclk.hw, "Current CDCLK");
> @@ -1771,8 +1776,12 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
>  	expected = skl_cdclk_decimal(cdclk);
>  
>  	/* Figure out what CD2X divider we should be using for this cdclk */
> -	expected |= bxt_cdclk_cd2x_div_sel(dev_priv,
> -					   dev_priv->cdclk.hw.cdclk,
> +	if (has_cdclk_squasher(dev_priv))
> +		clock = dev_priv->cdclk.hw.vco / 2;
> +	else
> +		clock = dev_priv->cdclk.hw.cdclk;
> +
> +	expected |= bxt_cdclk_cd2x_div_sel(dev_priv, clock,
>  					   dev_priv->cdclk.hw.vco);
>  
>  	/*
> -- 
> 2.27.0
> 
