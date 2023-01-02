Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CF865AF41
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Jan 2023 11:05:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEF8C10E2EC;
	Mon,  2 Jan 2023 10:05:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6477E10E2EC
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Jan 2023 10:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672653911; x=1704189911;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=lRrRBVfQydA9VkscEeDSvOpJb3o9ReEgkTYVk5WkI+o=;
 b=PMYE6wi2pHd5mjy61KQ1LFoGNiQKSzf1FAQ3D2Zv+q/1kLd/EB28rewq
 seHWvXiyecgILUabvXC/1Eusra88W3taXlA+IRPnwJve247coAsz1v/9B
 t/Usma03S5QKigWtj2LLDbqw/T2nVFZ7tchKqasrLV9l/SBtbQYhB75nK
 Rgl1roJMSzQ+1dRY0XrxwVLdR7xNAWOt45yEb27g3uikImt4XHSGCzYLt
 pUKumi9a0NGJyBnsjjv44jtllIYbprmii73Si3vdmq066+YSnhqMqJkEE
 XJ+KHj0KGjg2SmSNt9TqyOljepyZjKYmnYsw5aOessh+uL31h+hWMfWqP Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="319161181"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="319161181"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2023 02:05:10 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="796830944"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="796830944"
Received: from shoey-mobl.ger.corp.intel.com (HELO localhost) ([10.252.9.185])
 by fmsmga001-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jan 2023 02:05:07 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230102062005.720964-3-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230102062005.720964-1-chaitanya.kumar.borah@intel.com>
 <20230102062005.720964-3-chaitanya.kumar.borah@intel.com>
Date: Mon, 02 Jan 2023 12:05:03 +0200
Message-ID: <87r0wdz1yo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC 2/4] drm/i915/display: Add 480 MHz CDCLK steps
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

On Mon, 02 Jan 2023, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> A new step of 480MHz has been added on SKUs that have a RPL-U
> device id to support 120Hz displays more efficiently. Use a
> new quirk to identify the machine for which this change needs
> to be applied.

Again, it's not a quirk, and should not be added as one.

BR,
Jani.

>
> BSpec: 55409
>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 25 ++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 0c107a38f9d0..f5df0a806765 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -38,6 +38,7 @@
>  #include "intel_pcode.h"
>  #include "intel_psr.h"
>  #include "vlv_sideband.h"
> +#include "intel_quirks.h"
>  
>  /**
>   * DOC: CDCLK / RAWCLK
> @@ -1329,6 +1330,27 @@ static const struct intel_cdclk_vals adlp_cdclk_table[] = {
>  	{}
>  };
>  
> +static const struct intel_cdclk_vals rplu_cdclk_table[] = {
> +	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
> +	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
> +	{ .refclk = 19200, .cdclk = 480000, .divider = 2, .ratio = 50 },
> +	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> +	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> +
> +	{ .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
> +	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> +	{ .refclk = 24000, .cdclk = 480000, .divider = 2, .ratio = 40 },
> +	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> +	{ .refclk = 24400, .cdclk = 648000, .divider = 2, .ratio = 54 },
> +
> +	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
> +	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> +	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25 },
> +	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> +	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> +	{}
> +};
> +
>  static const struct intel_cdclk_vals dg2_cdclk_table[] = {
>  	{ .refclk = 38400, .cdclk = 163200, .divider = 2, .ratio = 34, .waveform = 0x8888 },
>  	{ .refclk = 38400, .cdclk = 204000, .divider = 2, .ratio = 34, .waveform = 0x9248 },
> @@ -3353,6 +3375,9 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
>  		/* Wa_22011320316:adl-p[a0] */
>  		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>  			dev_priv->display.cdclk.table = adlp_a_step_cdclk_table;
> +		/* BSpec: 55409 */

We don't bother with bspec references in code. Add them in commit
messages.

> +		else if (intel_has_quirk(dev_priv, QUIRK_480MHZ_CDCLK_STEP))
> +			dev_priv->display.cdclk.table = rplu_cdclk_table;
>  		else
>  			dev_priv->display.cdclk.table = adlp_cdclk_table;
>  	} else if (IS_ROCKETLAKE(dev_priv)) {

-- 
Jani Nikula, Intel Open Source Graphics Center
