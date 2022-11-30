Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A961163D0A0
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 09:28:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FDBE10E04A;
	Wed, 30 Nov 2022 08:28:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67C3910E04A
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 08:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669796901; x=1701332901;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=GhVrARYDkB1lx/ENbHPt20rQseGze5lAq292Rx4Gyp4=;
 b=YQROtshP2BipZ2Jg+/zZFPjdUVy5MCkrRN20biZVoaLZzRzMseFQnP0x
 CMI+tyb+ML2/bGRAPuAePeQRwTbFSP+CD2n2YQSTzZqcXLMWVbQlDf7sO
 rlLnOzi4sUfs5EXimOXx7RnSSLgQgyLHDFNvgR5f17OsZqeYeCLjCeX6H
 A/eSaWuU905winKvLMRi3eqvCzxBJuMC32y/pu5IjwfEzw9VOek7Qfy9i
 pPPCZh8TFBJTbelD4E9gYO1LUzaOq48Xbf0l7VrnpLemp/RLnJwrUhn0S
 UZ/kRAz0OfGi+PmPDWUKovxhIpwGbmX9AHxIjwjicafTZZX+YQAFp3xse Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="316489979"
X-IronPort-AV: E=Sophos;i="5.96,205,1665471600"; d="scan'208";a="316489979"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 00:28:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="676741639"
X-IronPort-AV: E=Sophos;i="5.96,205,1665471600"; d="scan'208";a="676741639"
Received: from mromao-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.53.224])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 00:28:19 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221130074617.1619099-2-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221130074617.1619099-1-chaitanya.kumar.borah@intel.com>
 <20221130074617.1619099-2-chaitanya.kumar.borah@intel.com>
Date: Wed, 30 Nov 2022 10:28:16 +0200
Message-ID: <87r0xk3kyn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC 1/2] drm/i915: Add RPL-U CDCLK table
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

On Wed, 30 Nov 2022, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> A new step of 480MHz has been added on SKUs that have a RPL-U
> device id. Add a new table which include this new CDCLK step.
>
> BSpec: 55409
>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 39 ++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 0c107a38f9d0..9bfeb1abba47 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -180,6 +180,18 @@ static void i85x_get_cdclk(struct drm_i915_private *dev_priv,
>  	}
>  }
>  
> +static bool is_rplu(struct drm_i915_private *dev_priv)
> +{
> +	switch (INTEL_DEVID(dev_priv)) {
> +	case 0xA7A1:
> +	case 0xA721:
> +	case 0xA7A9:

No. Under no circumstances are you to sprinkle PCI ID checks directly in
code like this.

The only place where PCI IDs go are the macros in
include/drm/i915_pciids.h, and each PCI ID should be present there only
once.

Those macros should only be used in i915_pci.c and intel_device_info.c.

If you need a distinction between RPL-P and RPL-U like this (and I
didn't check this in the spec, just commenting on the implementation)
you need to split RPL-P and RPL-U definitions and add them as
subplatforms in intel_device_info.c.

As a general tip, when you consider using a function or a macro, look up
where it's used and how. INTEL_DEVID() isn't used like this anywhere.


BR,
Jani.


> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
>  static void i915gm_get_cdclk(struct drm_i915_private *dev_priv,
>  			     struct intel_cdclk_config *cdclk_config)
>  {
> @@ -1329,6 +1341,27 @@ static const struct intel_cdclk_vals adlp_cdclk_table[] = {
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
> @@ -3353,6 +3386,12 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
>  		/* Wa_22011320316:adl-p[a0] */
>  		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>  			dev_priv->display.cdclk.table = adlp_a_step_cdclk_table;
> +		/*
> +		 * BSpec: 55409
> +		 * 480 MHz supported on SKUs that have a RPL-U Device ID
> +		 */
> +		else if (is_rplu(dev_priv))
> +			dev_priv->cdclk.table = rplu_cdclk_table;
>  		else
>  			dev_priv->display.cdclk.table = adlp_cdclk_table;
>  	} else if (IS_ROCKETLAKE(dev_priv)) {

-- 
Jani Nikula, Intel Open Source Graphics Center
