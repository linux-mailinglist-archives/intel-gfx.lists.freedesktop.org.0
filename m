Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F82210AF5
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 14:20:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 600FD6E8AD;
	Wed,  1 Jul 2020 12:20:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44EA36E8AD
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 12:20:31 +0000 (UTC)
IronPort-SDR: ncvWk1S/Uw1AAJIzoH3x9OOPaDVFHzNhMRnrrwkh+Cahvn5HxEDyilwprVF4yo9cLbyxNEdLGP
 z9hfDfHfCToQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="164561789"
X-IronPort-AV: E=Sophos;i="5.75,300,1589266800"; d="scan'208";a="164561789"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 05:20:30 -0700
IronPort-SDR: pi+/kcHxmi1OJLCtaKGj11HjlxZgWVfexKegJD38xGXLomTbb7rm+F1mffnYi/O96MoTUr9Nzb
 vlSnqSagb/2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,300,1589266800"; d="scan'208";a="277762520"
Received: from clarkeda-mobl.ger.corp.intel.com (HELO [10.252.50.135])
 ([10.252.50.135])
 by orsmga003.jf.intel.com with ESMTP; 01 Jul 2020 05:20:28 -0700
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200630112609.9998-1-stanislav.lisovskiy@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <4d307447-fbf3-e39d-3627-e6b52e0e9e2e@linux.intel.com>
Date: Wed, 1 Jul 2020 14:20:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200630112609.9998-1-stanislav.lisovskiy@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Clamp min_cdclk to
 max_cdclk_freq to unblock 8K
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Op 30-06-2020 om 13:26 schreef Stanislav Lisovskiy:
> We still need "Bump up CDCLK" workaround otherwise getting
> underruns - however currently it blocks 8K as CDCLK = Pixel rate,
> in 8K case would require CDCLK to be around 1 Ghz which is not
> possible.
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 45f7f33d1144..01a5bc6b08c4 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2080,9 +2080,21 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
>  	 * Explicitly stating here that this seems to be currently
>  	 * rather a Hack, than final solution.
>  	 */
> -	if (IS_TIGERLAKE(dev_priv))
> +	if (IS_TIGERLAKE(dev_priv)) {
>  		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
>  
> +		/*
> +		 * Clamp to max_cdclk_freq in order not to break an 8K,
> +		 * but still leave W/A at place.
> +		 */
> +		min_cdclk = min(min_cdclk, (int)dev_priv->max_cdclk_freq);
> +
> +		/*
> +		 * max_cdclk_freq check obviously not needed - just return.
> +		 */
> +		return min_cdclk;
> +	}
> +
>  	if (min_cdclk > dev_priv->max_cdclk_freq) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",

Wouldn't you just have to halve pixel_rate if bigjoiner flag is set?

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
