Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5772EA4E76E
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 18:03:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD01A10E69C;
	Tue,  4 Mar 2025 17:03:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MsuSCmWa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4743210E690;
 Tue,  4 Mar 2025 17:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741107808; x=1772643808;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=m45rHTpO5IMvTDDwT8F/JHTrH2uYRMBF3/vvAVOFtn0=;
 b=MsuSCmWa4xDnSkzXpO1UuQiaD/9kBWArqWRfKznMrjkymh46tKNwMDEQ
 f81ozJap+0IVelQNPPJXTvCGxlxNAVPn7dcV9VeWKCqdZ9auSiN31p+Oy
 jK03141Kqs3mrx6VqFGi3wwVkFSUJABYhd8+kiheBW+EnDhVJb8ydD5Xg
 avspwnLuSLVOKRQvJlKTXNKhM/s0CzdBKkDpXZMDOZcWOBZyXe933IPKA
 tbE+JSED04lBr7KQU0zI9OxEGLtUQAj3cuvLGEU1aqmXD6GNVgW2SV4+Q
 TwtJZVC8rr1fAP47Bt+8s7rbLUfq/CVw8grvkKk7LTT4dEB9IgJFZs7O7 Q==;
X-CSE-ConnectionGUID: d3X7IRcCSpGbNfmlac9VZA==
X-CSE-MsgGUID: LSUYuR/cTMun/cG5FiuXmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42162801"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="42162801"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 09:03:14 -0800
X-CSE-ConnectionGUID: +7LOd6WCRG+qr+tQ+nGtCg==
X-CSE-MsgGUID: +OReVsrfRxq9fORJ0KcIBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118948257"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 09:03:12 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v5 4/6] drm/i915/dp: Fix link training interrupted by a
 short HPD pulse
In-Reply-To: <20250304152917.3407080-5-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250304152917.3407080-1-imre.deak@intel.com>
 <20250304152917.3407080-5-imre.deak@intel.com>
Date: Tue, 04 Mar 2025 19:03:08 +0200
Message-ID: <87v7soybhv.fsf@intel.com>
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

On Tue, 04 Mar 2025, Imre Deak <imre.deak@intel.com> wrote:
> During Display Port link training the handling of HPD pulses should be
> prevented, as that handling can interfere with the link training:
>
> - Accessing DPCD registers outside the range of link training registers
>   are not allowed by the Standard (see DP Standard v2.1, 3.5.2.16.1,
>   3.6.6.1). The pulse handler reads the DPRX capability registers, which
>   are outside of the allowed range.
> - Switching of the LTTPR transparent/non-transparent mode may reset the
>   LTTPRs on the link, thus aborting any ongoing link training. The pulse
>   handler does set the LTTPR mode, thus it could unexpectedly abort the
>   ongoing link training.
>
> Block/unblock the HPD pulse handling for the duration of the link
> training to prevent the above DPCD register accesses / LTTPR mode
> change.
>
> Apart from the above scenarios, there are other ways a non-link training
> DPCD register could be accessed during link training: via the DRM AUX
> device node, or via DPCD register probing (as performed by
> drm_dp_dpcd_probe()). These will be addressed by a follow-up change.
>
> v2: Rebase on the intel_hpd_suspend/resume -> intel_hpd_block/unblock()
>     rename change.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 2966f5b393922..3906c11acc968 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1110,6 +1110,8 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
>  void intel_dp_stop_link_train(struct intel_dp *intel_dp,
>  			      const struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> +
>  	intel_dp->link_trained = true;
>  
>  	intel_dp_disable_dpcd_training_pattern(intel_dp, DP_PHY_DPRX);
> @@ -1120,6 +1122,8 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
>  	    wait_for(intel_dp_128b132b_intra_hop(intel_dp, crtc_state) == 0, 500)) {
>  		lt_dbg(intel_dp, DP_PHY_DPRX, "128b/132b intra-hop not clearing\n");
>  	}
> +
> +	intel_hpd_unblock(encoder);
>  }
>  
>  static bool
> @@ -1602,7 +1606,11 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
>  	 * non-transparent mode. During an earlier LTTPR detection this
>  	 * could've been prevented by an active link.
>  	 */
> -	int lttpr_count = intel_dp_init_lttpr_and_dprx_caps(intel_dp);
> +	int lttpr_count;
> +
> +	intel_hpd_block(encoder);
> +
> +	lttpr_count = intel_dp_init_lttpr_and_dprx_caps(intel_dp);
>  
>  	if (lttpr_count < 0)
>  		/* Still continue with enabling the port and link training. */

-- 
Jani Nikula, Intel
