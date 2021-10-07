Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 270FD4253C2
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 15:11:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EBF66F474;
	Thu,  7 Oct 2021 13:11:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 262106F474
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 13:11:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="249562115"
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="249562115"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 06:11:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="439523789"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 07 Oct 2021 06:11:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Oct 2021 16:11:42 +0300
Date: Thu, 7 Oct 2021 16:11:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YV7yDndPDHlrgPM7@intel.com>
References: <20211007105727.18439-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211007105727.18439-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: take LTTPR into account in
 128b/132b rates
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

On Thu, Oct 07, 2021 at 01:57:27PM +0300, Jani Nikula wrote:
> Limit the supported UHBR rates based on the repeater support, if there
> are repeaters.
> 
> This should be done in DP helper level, but that requires an overhaul of
> the LTTPR handling, as the max rate is not enough to represent how
> 128b/132b rates may be masked along the way.
> 
> Curiously, the spec says:
> 
> * Shall be cleared to 00h when operating in 8b/10b Link Layer.
> 
> * Each LTTPR on the way back to the DPTX shall clear the bits that do
>   not correspond to the LTTPR's current bit rate.
> 
> It's rather vague if we can reliably use the field at this time due to
> the wording "operating" and "current". But it would seem bizarre to have
> to wait until trying to operate a 128b/132b link layer at a certain bit
> rate to figure this out.

The DP spec does kind of have that silly idea that you can
just arbitraily reduce you link params during link training.
Doesn't work like that of course for us since we alreday told
userspace "Sure, I'll light up your display at this resolution".

Hopefully this doesn't depend on that. Although I suppose
we could sort of deal with it with the normal "link training
failed -> reduce max params and signal userspace to do something" 
approach.

> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 74a657ae131a..5824b7d9f4a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -140,6 +140,9 @@ static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
>  		return;
>  	}
>  
> +	/*
> +	 * Sink rates for 8b/10b.
> +	 */
>  	max_rate = drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
>  	max_lttpr_rate = drm_dp_lttpr_max_link_rate(intel_dp->lttpr_common_caps);
>  	if (max_lttpr_rate)
> @@ -163,6 +166,20 @@ static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
>  		drm_dp_dpcd_readb(&intel_dp->aux,
>  				  DP_128B132B_SUPPORTED_LINK_RATES, &uhbr_rates);
>  
> +		if (drm_dp_lttpr_count(intel_dp->lttpr_common_caps)) {
> +			/* We have a repeater */
> +			if (intel_dp->lttpr_common_caps[0] >= 0x20 &&
> +			    intel_dp->lttpr_common_caps[DP_MAIN_LINK_CHANNEL_CODING_PHY_REPEATER -
> +							DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV] &
> +			    DP_PHY_REPEATER_128B132B_SUPPORTED) {
> +				/* Repeater supports 128b/132b, valid UHBR rates */
> +				uhbr_rates &= intel_dp->lttpr_common_caps[DP_PHY_REPEATER_128B132B_RATES - DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV];

Didn't we have something to hide that
-DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV stuff?

Looks more or less correct to me. I guess we'll find out eeventually how
the spec has been interpreted.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>


> +			} else {
> +				/* Does not support 128b/132b */
> +				uhbr_rates = 0;
> +			}
> +		}
> +
>  		if (uhbr_rates & DP_UHBR10)
>  			intel_dp->sink_rates[i++] = 1000000;
>  		if (uhbr_rates & DP_UHBR13_5)
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
