Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C50291F1468
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 10:21:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B36AC6E4A2;
	Mon,  8 Jun 2020 08:21:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5F956E4A2
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2020 08:21:19 +0000 (UTC)
IronPort-SDR: z+FSG1zy4abRzEv1HdNiGhfUlcIjM4R2u9XxAyCPKi7vr31k5cHum52MPBUDdRE20jrhAMSQZg
 YqgBBkLGaMpQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 01:21:18 -0700
IronPort-SDR: 187ownCadyVLoYhS+NPue+4g3MHyc6QQZ5cuMP5Xvss5l35X1nLAXSJQ3m69HouTwzsdtXFbMX
 NH5/F2qrx5sg==
X-IronPort-AV: E=Sophos;i="5.73,487,1583222400"; d="scan'208";a="446652494"
Received: from bklaps-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.45.178])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 01:21:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200608065552.21728-1-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200608065552.21728-1-stanislav.lisovskiy@intel.com>
Date: Mon, 08 Jun 2020 11:21:14 +0300
Message-ID: <87img2x91h.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915: Remove unneeded hack now
 for CDCLK"
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

On Mon, 08 Jun 2020, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> This reverts commit 82ea174dc5425d4e85e25d0c4ba961a2e494392a.
>

Please explain why. What's going on, why we need the revert.

It's fine to reply here, the commit message can be amended by whoever
applies the patch.

BR,
Jani.


> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Fixes: cd1915460861 ("drm/i915: Adjust CDCLK accordingly to our DBuf bw needs")
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 08468b121d02..45f7f33d1144 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2071,6 +2071,18 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
>  	/* Account for additional needs from the planes */
>  	min_cdclk = max(intel_planes_min_cdclk(crtc_state), min_cdclk);
>  
> +	/*
> +	 * HACK. Currently for TGL platforms we calculate
> +	 * min_cdclk initially based on pixel_rate divided
> +	 * by 2, accounting for also plane requirements,
> +	 * however in some cases the lowest possible CDCLK
> +	 * doesn't work and causing the underruns.
> +	 * Explicitly stating here that this seems to be currently
> +	 * rather a Hack, than final solution.
> +	 */
> +	if (IS_TIGERLAKE(dev_priv))
> +		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
> +
>  	if (min_cdclk > dev_priv->max_cdclk_freq) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
