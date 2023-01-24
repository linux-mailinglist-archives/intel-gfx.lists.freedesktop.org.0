Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71359679BFC
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 15:34:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D243710E697;
	Tue, 24 Jan 2023 14:34:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA66710E69F
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 14:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674570838; x=1706106838;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=XaZz6pe90pN1Z+MYGNeMoSIT27SlrdkHrq9Bh8NTr2Q=;
 b=n0YpGHx741eXqa1FaERBa+PpBC/bUJpepwRwnhT2Vhy6tj14/KKHcTms
 8J3KsBDKOGQIRlR1kTjUzmrVy4I6xocnEZ5zjnZ42ohPo0f8AYkfc7Wm1
 Zz7fCd/KQ3JKqdDy78Cls/+GjBDsglSWV3vpjtuwX5i3WVlIRwP1dCAKG
 516OfhiVoJeE4k9g0q3nkFyBe/Co+MoehvJldPQ+ZZfbRp9uzDgPSRmwR
 oalcA7V1nGAnAV/iEN44GPe1yHaAvaN0gqNMaQCTp2YJaIygbA3dmF+nB
 fZWx95ONjs5cbQZsW9ioNpQXYePDDjrxUCUS7dHgpeM3YhFV00264yDZ5 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="306657683"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="306657683"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 06:33:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="770330606"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="770330606"
Received: from pesir-mobl.ger.corp.intel.com (HELO localhost) ([10.252.57.197])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 06:33:47 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230117074211.952125-3-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230117074211.952125-1-chaitanya.kumar.borah@intel.com>
 <20230117074211.952125-3-chaitanya.kumar.borah@intel.com>
Date: Tue, 24 Jan 2023 16:33:45 +0200
Message-ID: <87k01c6lyu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC 2/2] drm/i915/display: Add 480 MHz CDCLK steps
 for RPL-U
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 17 Jan 2023, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> A new step of 480MHz has been added on SKUs that have a RPL-U
> device id to support 120Hz displays more efficiently. Use a
> new quirk to identify the machine for which this change needs
> to be applied.
>
> BSpec: 55409
>
> v2: (Matt)
>     - Add missing clock steps
>     - Correct reference clock typo
>
> v3: - Revert to RPL-U subplatform
>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 27 ++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 0c107a38f9d0..a5e3497534f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1329,6 +1329,30 @@ static const struct intel_cdclk_vals adlp_cdclk_table[] = {
>  	{}
>  };
>  
> +static const struct intel_cdclk_vals rplu_cdclk_table[] = {
> +	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
> +	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
> +	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> +	{ .refclk = 19200, .cdclk = 480000, .divider = 2, .ratio = 50 },
> +	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> +	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> +
> +	{ .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
> +	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> +	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> +	{ .refclk = 24000, .cdclk = 480000, .divider = 2, .ratio = 40 },
> +	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> +	{ .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
> +
> +	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
> +	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> +	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> +	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25 },
> +	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> +	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> +	{}
> +};
> +
>  static const struct intel_cdclk_vals dg2_cdclk_table[] = {
>  	{ .refclk = 38400, .cdclk = 163200, .divider = 2, .ratio = 34, .waveform = 0x8888 },
>  	{ .refclk = 38400, .cdclk = 204000, .divider = 2, .ratio = 34, .waveform = 0x9248 },
> @@ -3353,6 +3377,9 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
>  		/* Wa_22011320316:adl-p[a0] */
>  		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>  			dev_priv->display.cdclk.table = adlp_a_step_cdclk_table;
> +		/* Bspec: 55409 */

Please let's not add bspec references in comments.

BR,
Jani.

> +		else if (IS_ADLP_RPLU(dev_priv))
> +			dev_priv->display.cdclk.table = rplu_cdclk_table;
>  		else
>  			dev_priv->display.cdclk.table = adlp_cdclk_table;
>  	} else if (IS_ROCKETLAKE(dev_priv)) {

-- 
Jani Nikula, Intel Open Source Graphics Center
