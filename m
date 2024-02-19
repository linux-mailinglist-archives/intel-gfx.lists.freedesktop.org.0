Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9955F85ACCF
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Feb 2024 21:12:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B809610E1A6;
	Mon, 19 Feb 2024 20:12:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F4/3adQB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6085510E1A6
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Feb 2024 20:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708373540; x=1739909540;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DgHoYYmmEq1orXzu3Dp80n1il0SLAyxCiufHGy6PnW8=;
 b=F4/3adQBFqkA93YvRmOXQ7AVmKQuMnFtIl1Izo2IUldUZvKHNvl9MlOa
 sQpk8hMr2YDR81o/+nKRqrm+j9199uA5rzbqRRvlT1my5TzYLytViq/Gz
 whEFvCJspFVazNc0u0/P2JZuKN/5qg10X7q8WLzZVtnvE2E+zD2vCu3BN
 KeOpb+BJ+vzAlvvzy/CQaESTiKn3w2UTJUd7BXvTK+5ocIZuzSiWvGlEu
 R4EiBGiFCOyXaxD9OZxlKzdEBORzqnFXLmedMSmv7u5gDM6Y+KkyB264+
 iWWOmtgGZ752ck7NsxRP9ATmn+2mh+XAj/3BzwI0Ydop9iOgdb0CbJ0jl Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10989"; a="2606638"
X-IronPort-AV: E=Sophos;i="6.06,170,1705392000"; 
   d="scan'208";a="2606638"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2024 12:12:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10989"; a="827046384"
X-IronPort-AV: E=Sophos;i="6.06,170,1705392000"; d="scan'208";a="827046384"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 19 Feb 2024 12:12:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 19 Feb 2024 22:12:17 +0200
Date: Mon, 19 Feb 2024 22:12:17 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/cdclk: Document CDCLK components
Message-ID: <ZdO2IfxEHGCcD1AJ@intel.com>
References: <20240216164524.188750-2-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240216164524.188750-2-gustavo.sousa@intel.com>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 16, 2024 at 01:45:25PM -0300, Gustavo Sousa wrote:
> Improve documentation by giving an overview of the components involved
> in the generation of the CDCLK.
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 25 ++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 30dae4fef6cb..ef1660f94e46 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -63,6 +63,31 @@
>   * DMC will not change the active CDCLK frequency however, so that part
>   * will still be performed by the driver directly.
>   *
> + * There are multiple components involved in the generation of the CDCLK
> + * frequency:
> + * - We have the CDCLK PLL, which generates an output clock based on a
> + *   reference clock and a ratio parameter.
> + * - The CD2X Divider, which divides the output of the PLL based on a
> + *   divisor selected from a set of pre-defined choices.
> + * - The CD2X Squasher, which further divides the output based on a
> + *   waveform represented as a sequence of bits where each zero
> + *   "squashes out" a clock cycle.
> + * - And, finally, a fixed divider that divides the output frequency by 2.
> + *
> + * As such, the resulting CDCLK frequency can be calculated with the
> + * following formula:
> + *
> + *     cdclk = vco / cd2x_div / (sq_len / sq_div) / 2
> + *
> + * , where vco is the frequency generated by the PLL; cd2x_div
> + * represents the CD2X Divider; sq_len and sq_div are the bit length
> + * and the number of high bits for the CD2X Squasher waveform, respectively;
> + * and 2 represents the fixed divider.
> + *
> + * Note that some older platforms do not contain the CD2X Divider
> + * and/or CD2X Squasher, in which case we can ignore their respective
> + * factors in the formula above.
> + *
>   * Several methods exist to change the CDCLK frequency, which ones are
>   * supported depends on the platform:
>   * - Full PLL disable + re-enable with new VCO frequency. Pipes must be inactive.
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
