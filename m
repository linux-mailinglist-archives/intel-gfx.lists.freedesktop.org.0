Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F089800D84
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 15:41:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1E2C10E121;
	Fri,  1 Dec 2023 14:41:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2791510E121
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 14:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701441701; x=1732977701;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QarlHGNRQSNCBN+82OIhir7L5YdMyKoQK1tSpl0fQps=;
 b=T4gOtYNV/t1EFIJuf3iNOvaG8nbk0B4m2CM8GNFLHu5YGezzzdX/FMpY
 onFcHKttv5Rn5mQtGoLmXwUZgOCwzmX+gXdsCNFE4+6taSPCkQQIgZhIL
 preVgT5WMU9iTxDkRfv6AQK4dXCoOtRWWA2JbuZTu3uvWIBCRdrRl+mrb
 019OhSa4t7P1NR0TKlNaj57w9tQF5KKunVOZyEKKVqUNpRpDPwMADbEGt
 MbpQyghp8WlLZvDpcb8BEKk//+NQDtpGx4weB/ks1MHuJn38/jFFTJFkj
 zl+XAHP05ydOhHQFzf6FZb8wHkG2b8n//nP8UNhdNQ9RKrFmx8zXaw9cU A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="383900856"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="383900856"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 06:41:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="763161717"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="763161717"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 01 Dec 2023 06:41:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Dec 2023 16:41:37 +0200
Date: Fri, 1 Dec 2023 16:41:37 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZWnwofolLechg_Dg@intel.com>
References: <20231201134141.1569265-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231201134141.1569265-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/edp: don't write to DP_LINK_BW_SET
 when using rate select
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 01, 2023 at 03:41:41PM +0200, Jani Nikula wrote:
> The eDP 1.5 spec adds a clarification for eDP 1.4x:
> 
> > For eDP v1.4x, if the Source device chooses the Main-Link rate by way
> > of DPCD 00100h, the Sink device shall ignore DPCD 00115h[2:0].
> 
> We write 0 to DP_LINK_BW_SET (DPCD 100h) even when using
> DP_LINK_RATE_SET (DPCD 114h). Stop doing that, as it can cause the panel
> to ignore the rate set method.

What a terrible way to specify this :( This means the device must 
hav some internal state to keep track of whethe BW_SET was ever
written.

> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9081
> Tested-by: Animesh Manna <animesh.manna@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_dp_link_training.c | 23 +++++++++++--------
>  1 file changed, 13 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index dbc1b66c8ee4..6336a39030a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -650,19 +650,22 @@ intel_dp_update_link_bw_set(struct intel_dp *intel_dp,
>  			    const struct intel_crtc_state *crtc_state,
>  			    u8 link_bw, u8 rate_select)
>  {
> -	u8 link_config[2];
> +	u8 lane_count = crtc_state->lane_count;
>  
> -	/* Write the link configuration data */
> -	link_config[0] = link_bw;
> -	link_config[1] = crtc_state->lane_count;
>  	if (crtc_state->enhanced_framing)
> -		link_config[1] |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
> -	drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config, 2);
> +		lane_count |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
> +
> +	if (link_bw) {
> +		/* eDP 1.3 and earlier link bw set method. */
> +		u8 link_config[] = { link_bw, lane_count };
>  
> -	/* eDP 1.4 rate select method. */
> -	if (!link_bw)
> -		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
> -				  &rate_select, 1);
> +		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config,
> +				  ARRAY_SIZE(link_config));
> +	} else {
> +		/* eDP 1.4 rate select method. */
> +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_LANE_COUNT_SET, lane_count);
> +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_LINK_RATE_SET, rate_select);

Doesn't look there's anything in the spec that specifies when the device
is supposed to reset its internal state to stop ignoring DP_LINK_RATE_SET.
Do we know when this panel does it? When VDD is removed?

> +	}
>  }
>  
>  /*
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
