Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A04FABBFE1
	for <lists+intel-gfx@lfdr.de>; Mon, 19 May 2025 15:53:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D62610E3FA;
	Mon, 19 May 2025 13:53:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uh/kv5rh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29F1010E326;
 Mon, 19 May 2025 13:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747662794; x=1779198794;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=pUjXAMbBLib/2zr+K4Bj+FQkDfDaNdUaNv7OI5MSlvU=;
 b=Uh/kv5rh8KSXWRudClN6SDo8nd0Rk6KBZmHbudnkGCAChRJU12ijDfDx
 5Ju79JY3WzqyHvDnk9JZaFDAcVkkdT5AhiQ1uKKcphqfryLPamjHLgLWC
 aSDtBrZADNoLBa1z7zLsZOaMZ5wnUuMz8BGDA7OAvPw4zozeIkUIL4VEy
 m6ymNBIqJr9fGDZDl/sNGfGhVG1u1TY8IsxLTe3yZMwd0FQb+WwWihx9a
 KHKuqrenGPnfrqewjnLHhclK061/8T54iFnPyLXND3LuwnLw3HDuD+NAm
 8lOYd7GAsymR3RJBveyaYnWI2I9bTETfc3rbJq9Ps7To3vBGAxxCCfuC4 Q==;
X-CSE-ConnectionGUID: 7224K4r2QLiYIY30kxbdIQ==
X-CSE-MsgGUID: 4D3O5gDjRzO7H71W/1/sMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="72069345"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="72069345"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 06:53:13 -0700
X-CSE-ConnectionGUID: GBhNIDYgTlWmYGLwyUnJHA==
X-CSE-MsgGUID: AjpI7fXLQCuioAUCsIlvGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="139270242"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.201])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 06:53:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Mika Westerberg <mika.westerberg@linux.intel.com>, stable@vger.kernel.org
Subject: Re: [PATCH v2] drm/i915/dp_mst: Work around Thunderbolt sink
 disconnect after SINK_COUNT_ESI read
In-Reply-To: <20250519133417.1469181-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250516170946.1313722-1-imre.deak@intel.com>
 <20250519133417.1469181-1-imre.deak@intel.com>
Date: Mon, 19 May 2025 16:53:08 +0300
Message-ID: <87zff8u2pn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 19 May 2025, Imre Deak <imre.deak@intel.com> wrote:
> Due to a problem in the iTBT DP-in adapter's firmware the sink on a TBT
> link may get disconnected inadvertently if the SINK_COUNT_ESI and the
> DP_LINK_SERVICE_IRQ_VECTOR_ESI0 registers are read in a single AUX
> transaction. Work around the issue by reading these registers in
> separate transactions.
>
> The issue affects MTL+ platforms and will be fixed in the DP-in adapter
> firmware, however releasing that firmware fix may take some time and is
> not guaranteed to be available for all systems. Based on this apply the
> workaround on affected platforms.
>
> See HSD #13013007775.
>
> v2: Cc'ing Mika Westerberg.

In general, please don't resend just for the sake of adding a Cc. It
triggers a full CI rerun.

BR,
Jani.

>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13760
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14147
> Cc: Mika Westerberg <mika.westerberg@linux.intel.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 21297bc4cc00d..208a953b04a2f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4538,6 +4538,23 @@ intel_dp_mst_disconnect(struct intel_dp *intel_dp)
>  static bool
>  intel_dp_get_sink_irq_esi(struct intel_dp *intel_dp, u8 *esi)
>  {
> +	struct intel_display *display = to_intel_display(intel_dp);
> +
> +	/*
> +	 * Display WA for HSD #13013007775: mtl/arl/lnl
> +	 * Read the sink count and link service IRQ registers in separate
> +	 * transactions to prevent disconnecting the sink on a TBT link
> +	 * inadvertently.
> +	 */
> +	if (IS_DISPLAY_VER(display, 14, 20) && !display->platform.battlemage) {
> +		if (drm_dp_dpcd_read(&intel_dp->aux, DP_SINK_COUNT_ESI, esi, 3) != 3)
> +			return false;
> +
> +		/* DP_SINK_COUNT_ESI + 3 == DP_LINK_SERVICE_IRQ_VECTOR_ESI0 */
> +		return drm_dp_dpcd_readb(&intel_dp->aux, DP_LINK_SERVICE_IRQ_VECTOR_ESI0,
> +					 &esi[3]) == 1;
> +	}
> +
>  	return drm_dp_dpcd_read(&intel_dp->aux, DP_SINK_COUNT_ESI, esi, 4) == 4;
>  }

-- 
Jani Nikula, Intel
