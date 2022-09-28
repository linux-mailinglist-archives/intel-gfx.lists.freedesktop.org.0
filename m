Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 039055EE57E
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 21:23:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4198110E8A0;
	Wed, 28 Sep 2022 19:23:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CB4210E8A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 19:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664393017; x=1695929017;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=cD4XA67ERaSGP9Y2ZUlGhYnNpVhG++Au76s3b3LNfP4=;
 b=Q/RoyaK7cokk3QCXeYofL9PwMepvCrBIBJ23F8E6K+1saGhE7GoPSVqj
 PZngyWl+IGSYnizHTxZ8G66xisRZVuAv8eb1/njxW0LVzkkZs5a6FJTjZ
 IKz/hzXLGOTmvQebTiT2ZkO61JXImnpXuv2OkHGJBf5sZQiGo0CEWqCuH
 vrSCqGir+OrifoD47UtriMlhG2bfgdgqtU/SuLmPFgPdtRyA1CFlsfkCg
 BQ7lzwHIb9Y5Ow9zKgTx5JIs3J0HaH+rSlnsIx33viZNYoGZOtOhldcGN
 YfQccD+E+aITYxChUNPSZXpjJYTt2fS4rfDD/9tMPHXMjbsBbkAeuFfRP A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="284830215"
X-IronPort-AV: E=Sophos;i="5.93,352,1654585200"; d="scan'208";a="284830215"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 12:23:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="652804918"
X-IronPort-AV: E=Sophos;i="5.93,352,1654585200"; d="scan'208";a="652804918"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 28 Sep 2022 12:23:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 28 Sep 2022 22:23:33 +0300
Date: Wed, 28 Sep 2022 22:23:33 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <YzSfNTJqBGRkdwTW@intel.com>
References: <20220928190415.282665-1-anusha.srivatsa@intel.com>
 <20220928190415.282665-2-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220928190415.282665-2-anusha.srivatsa@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Add CDCLK Support for
 MTL
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

On Wed, Sep 28, 2022 at 12:04:15PM -0700, Anusha Srivatsa wrote:
> As per bSpec MTL has 38.4 MHz Reference clock.
> MTL does support squasher like DG2 but only for lower
> frequencies. Change the has_cdclk_squasher()
> helper to reflect this.
> 
> bxt_get_cdclk() is not properly calculating HW clock for MTL,
> because the squash formula is only prepared for DG2.
> Apart from adding the cdclk table, align cdclk support with the
> new cdclk_crawl_and_squash() introduced in previous patch.
> 
> BSpec: 65243
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 95 +++++++++++++++++++++-
>  1 file changed, 93 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index f7bc1013b149..6271eed0d7cf 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1222,7 +1222,7 @@ static void skl_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
>  
>  static bool has_cdclk_squasher(struct drm_i915_private *i915)
>  {
> -	return IS_DG2(i915);
> +	return DISPLAY_VER(i915) >= 14 || IS_DG2(i915);
>  }
>  
>  struct intel_cdclk_vals {
> @@ -1350,6 +1350,16 @@ static const struct intel_cdclk_vals dg2_cdclk_table[] = {
>  	{}
>  };
>  
> +static const struct intel_cdclk_vals mtl_cdclk_table[] = {
> +	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio = 16, .waveform = 0xad5a },
> +	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
> +	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .waveform = 0x0000 },
> +	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25, .waveform = 0x0000 },
> +	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .waveform = 0x0000 },
> +	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0x0000 },
> +	{}
> +};
> +
>  static int bxt_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk)
>  {
>  	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
> @@ -1479,6 +1489,76 @@ static void bxt_de_pll_readout(struct drm_i915_private *dev_priv,
>  	cdclk_config->vco = ratio * cdclk_config->ref;
>  }
>  
> +static void mtl_get_cdclk(struct drm_i915_private *i915,
> +			  struct intel_cdclk_config *cdclk_config)
> +{
> +	const struct intel_cdclk_vals *table = i915->display.cdclk.table;
> +	u32 squash_ctl, divider, waveform;
> +	int div, i, ratio;
> +
> +	bxt_de_pll_readout(i915, cdclk_config);
> +
> +	cdclk_config->bypass = cdclk_config->ref / 2;
> +
> +	if (cdclk_config->vco == 0) {
> +		cdclk_config->cdclk = cdclk_config->bypass;
> +		goto out;
> +	}
> +
> +	divider = intel_de_read(i915, CDCLK_CTL) & BXT_CDCLK_CD2X_DIV_SEL_MASK;
> +	switch (divider) {
> +	case BXT_CDCLK_CD2X_DIV_SEL_1:
> +		div = 2;
> +		break;
> +	case BXT_CDCLK_CD2X_DIV_SEL_1_5:
> +		div = 3;
> +		break;
> +	case BXT_CDCLK_CD2X_DIV_SEL_2:
> +		div = 4;
> +		break;
> +	case BXT_CDCLK_CD2X_DIV_SEL_4:
> +		div = 8;
> +		break;
> +	default:
> +		MISSING_CASE(divider);
> +		return;
> +	}
> +
> +	squash_ctl = intel_de_read(i915, CDCLK_SQUASH_CTL);
> +	if (squash_ctl & CDCLK_SQUASH_ENABLE)
> +		waveform = squash_ctl & CDCLK_SQUASH_WAVEFORM_MASK;
> +	else
> +		waveform = 0;
> +
> +	ratio = cdclk_config->vco / cdclk_config->ref;
> +
> +	for (i = 0, cdclk_config->cdclk = 0; table[i].refclk; i++) {
> +		if (table[i].refclk != cdclk_config->ref)
> +			continue;
> +
> +		if (table[i].divider != div)
> +			continue;
> +
> +		if (table[i].waveform != waveform)
> +			continue;
> +
> +		if (table[i].ratio != ratio)
> +			continue;
> +
> +		cdclk_config->cdclk = table[i].cdclk;
> +		break;
> +	}

NAK. Readout must not depend on these tables. Otherwise it's not
proper readout and bugs can slip through. What is the supposed problem
with the already existing code?

> +out:
> +	/*
> +	 * Can't read this out :( Let's assume it's
> +	 * at least what the CDCLK frequency requires.
> +	 */
> +	cdclk_config->voltage_level =
> +		intel_cdclk_calc_voltage_level(i915, cdclk_config->cdclk);
> +}
> +
> +
>  static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
>  			  struct intel_cdclk_config *cdclk_config)
>  {
> @@ -3138,6 +3218,13 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
>  	return freq;
>  }
>  
> +static const struct intel_cdclk_funcs mtl_cdclk_funcs = {
> +	.get_cdclk = mtl_get_cdclk,
> +	.set_cdclk = bxt_set_cdclk,
> +	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
> +	.calc_voltage_level = tgl_calc_voltage_level,
> +};
> +
>  static const struct intel_cdclk_funcs tgl_cdclk_funcs = {
>  	.get_cdclk = bxt_get_cdclk,
>  	.set_cdclk = bxt_set_cdclk,
> @@ -3273,7 +3360,11 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
>   */
>  void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
>  {
> -	if (IS_DG2(dev_priv)) {
> +
> +	if (IS_METEORLAKE(dev_priv)) {
> +		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
> +		dev_priv->display.cdclk.table = mtl_cdclk_table;
> +	} else if (IS_DG2(dev_priv)) {
>  		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
>  		dev_priv->display.cdclk.table = dg2_cdclk_table;
>  	} else if (IS_ALDERLAKE_P(dev_priv)) {
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
