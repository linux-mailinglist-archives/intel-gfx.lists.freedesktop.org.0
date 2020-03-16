Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF1E18763E
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 00:34:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AF676E4CF;
	Mon, 16 Mar 2020 23:34:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 931C26E4CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 23:34:43 +0000 (UTC)
IronPort-SDR: JLjN2bPFWdqhKrz13OZNXeiJej25EM/X1l9f2dx+DmayqKoD8IwWm3Sd+HgwPHht/hDWxcecJC
 Fcf39Ttyz2ig==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 16:34:42 -0700
IronPort-SDR: gb7Xtlhstuxc4yOTzL0eBdcg7hQXvbm1t0hgUFu2y5/HVdUtmOOuwMxeJ8J1RyNXaZOMC9PR6T
 JA/jNJBD9X4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,562,1574150400"; d="scan'208";a="244304240"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga003.jf.intel.com with ESMTP; 16 Mar 2020 16:34:42 -0700
Date: Mon, 16 Mar 2020 16:36:13 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200316233613.GA24231@intel.com>
References: <20200316113744.31203-1-stanislav.lisovskiy@intel.com>
 <20200316113744.31203-2-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316113744.31203-2-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v1 1/3] drm/i915: Decouple cdclk calculation
 from modeset checks
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 16, 2020 at 01:37:42PM +0200, Stanislav Lisovskiy wrote:
> We need to calculate cdclk after watermarks/ddb has been calculated
> as with recent hw CDCLK needs to be adjusted accordingly to DBuf
> requirements, which is not possible with current code organization.
> 
> Setting CDCLK according to DBuf BW requirements and not just rejecting
> if it doesn't satisfy BW requirements, will allow us to save power when
> it is possible and gain additional bandwidth when it's needed - i.e
> boosting both our power management and perfomance capabilities.
> 
> This patch is preparation for that, first we now extract modeset
> calculation from modeset checks, in order to call it after wm/ddb

Did you mean to type extract cdclk calculation from modeset checks?

Manasi

> has been calculated.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++++++++++++----
>  1 file changed, 18 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 8f23c4d51c33..cdff3054b344 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14542,6 +14542,14 @@ static int intel_modeset_checks(struct intel_atomic_state *state)
>  			return ret;
>  	}
>  
> +	return 0;
> +}
> +
> +static int intel_modeset_cdclk(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	int ret;
> +
>  	ret = intel_modeset_calc_cdclk(state);
>  	if (ret)
>  		return ret;
> @@ -14879,10 +14887,6 @@ static int intel_atomic_check(struct drm_device *dev,
>  			goto fail;
>  	}
>  
> -	ret = intel_atomic_check_crtcs(state);
> -	if (ret)
> -		goto fail;
> -
>  	intel_fbc_choose_crtc(dev_priv, state);
>  	ret = calc_watermark_data(state);
>  	if (ret)
> @@ -14892,6 +14896,16 @@ static int intel_atomic_check(struct drm_device *dev,
>  	if (ret)
>  		goto fail;
>  
> +	if (any_ms) {
> +		ret = intel_modeset_cdclk(state);
> +		if (ret)
> +			goto fail;
> +	}
> +
> +	ret = intel_atomic_check_crtcs(state);
> +	if (ret)
> +		goto fail;
> +
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
>  		if (!needs_modeset(new_crtc_state) &&
> -- 
> 2.24.1.485.gad05a3d8e5
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
