Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DA23F1F52
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Aug 2021 19:45:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BCA06E8F5;
	Thu, 19 Aug 2021 17:45:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F28ED6E8F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Aug 2021 17:45:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="277632827"
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="277632827"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 10:45:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="594888678"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 19 Aug 2021 10:45:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Aug 2021 20:45:18 +0300
Date: Thu, 19 Aug 2021 20:45:18 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, manasi.d.navare@intel.com
Message-ID: <YR6Yru6WZa2beC4M@intel.com>
References: <cover.1629310010.git.jani.nikula@intel.com>
 <8a6fc84dadbf1b67fd72f7e7d5a911aa0e6bb510.1629310010.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8a6fc84dadbf1b67fd72f7e7d5a911aa0e6bb510.1629310010.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 06/17] drm/i915/dp: read sink UHBR rates
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

On Wed, Aug 18, 2021 at 09:10:41PM +0300, Jani Nikula wrote:
> See if sink supports DP 2.0 128b/132b channel encoding, and update sink
> rates accordingly.
> 
> FIXME: Also take LTTPR 128b/132b into account.
> 
> Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index d273b3848785..079b5b37b85a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -141,6 +141,24 @@ static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
>  		intel_dp->sink_rates[i] = dp_rates[i];
>  	}
>  
> +	/*
> +	 * Sink rates for 128b/132b. If set, sink should support all 8b/10b
> +	 * rates and 10 Gbps.
> +	 */
> +	if (intel_dp->dpcd[DP_MAIN_LINK_CHANNEL_CODING] & DP_CAP_ANSI_128B132B) {
> +		u8 uhbr_rates = 0;
> +
> +		drm_dp_dpcd_readb(&intel_dp->aux,
> +				  DP_128B132B_SUPPORTED_LINK_RATES, &uhbr_rates);
> +
> +		if (uhbr_rates & DP_UHBR10)
> +			intel_dp->sink_rates[i++] = 1000000;
> +		if (uhbr_rates & DP_UHBR13_5)
> +			intel_dp->sink_rates[i++] = 1350000;
> +		if (uhbr_rates & DP_UHBR20)
> +			intel_dp->sink_rates[i++] = 2000000;

OK, so the max link rate register isn't supposed to report the
new magic UHBR BW values it seems. That makes life a bit easier.

Maybe toss in a 
BUILD_BUG_ON(ARRAY_SIZE(sink_rates) >= ARRAY_SIZE(dp_rates)+3);
or something to remind people that we are dealing with a fixed size
array here?

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +	}
> +
>  	intel_dp->num_sink_rates = i;
>  }
>  
> -- 
> 2.20.1

-- 
Ville Syrjälä
Intel
