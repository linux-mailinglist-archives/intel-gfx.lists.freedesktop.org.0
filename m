Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBU8Odsjl2lvvAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 15:53:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5420C15FCE9
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 15:53:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5335010E6FD;
	Thu, 19 Feb 2026 14:53:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zj1/c8Q+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D97E610E6FD;
 Thu, 19 Feb 2026 14:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771512792; x=1803048792;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=fr8RHM+Qj04y9wYMT0Gwtb+bGsa99fUm+6KevAYUmZ0=;
 b=Zj1/c8Q+kSK8AgbO1kGRJwHaU1JrGsz+qJFmdV2cffo4wLrcpZNcnSz1
 B0hewKwxH7LrSZsHuLTwtWOwHNK5swwr4dWoTWDn/0d1aIk39qIz/sF6V
 jwCjO8B55Dfjd1EGhz6VLkbtSfTQ5HHC/ISqEXc6qnlOHwbPmmUmT8e4E
 mu6s2K6NpS/H5xe/ItYLo7cJkBP4lV1VpzZ+cq3bcGYxE2x9I74vwwLQv
 7Ah/4xemSt9hQeO2HAAGyBmDEoqttZ43k5EhsLIctdWTN2e+/AdaYXMNK
 PgZqGkYlyZKi2Vpd+AQcoSZNPjciseuJYhJYKsqt1Qmre6CzxtzCgQiOb g==;
X-CSE-ConnectionGUID: KdfSwBhOQPyFc3CyWyNzCg==
X-CSE-MsgGUID: kj068/1BQs+ZYHfTJItnPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="76212629"
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="76212629"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 06:53:12 -0800
X-CSE-ConnectionGUID: Al0Nyj6WSbK0do2gSzrXrA==
X-CSE-MsgGUID: U0aS6sX2RqaVr/Wp8DjotQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="213195875"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.168])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 06:53:09 -0800
Date: Thu, 19 Feb 2026 16:53:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 imre.deak@intel.com, suraj.kandpal@intel.com
Subject: Re: [PATCH] drm/i915/dp: On DPCD init/caps wake the DPRx
Message-ID: <aZcj08k5dG4lxRNE@intel.com>
References: <20260219094326.34922-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260219094326.34922-1-arun.r.murthy@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.36 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.67)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 5420C15FCE9
X-Rspamd-Action: no action

On Thu, Feb 19, 2026 at 03:13:26PM +0530, Arun R Murthy wrote:
> Before reading the DPCD caps for eDP wake the sink device and for DP
> after reading the lttpr caps and before reading the dpcd caps wake up
> the sink device.

Why?

> 
> Closes: https://issues.redhat.com/browse/RHEL-120913
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c       | 41 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
>  .../drm/i915/display/intel_dp_link_training.c |  3 ++
>  3 files changed, 45 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 454e6144ee4e..2fbb947e6cc8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4705,6 +4705,45 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>  	intel_edp_set_data_override_rates(intel_dp);
>  }
>  
> +void intel_dp_wake_sink(struct intel_dp *intel_dp)
> +{
> +	u8 value = 0;
> +	int ret = 0, try = 0;
> +
> +	intel_dp_dpcd_set_probe(intel_dp, false);
> +
> +	/*
> +	 * Wake the sink device
> +	 * Spec DP2.1 section 2.3.1.2 if AUX CH is powered down by writing 0x02
> +	 * to DP_SET_POWER dpcd reg, 1ms time would be required to wake it up
> +	 */
> +	while (try < 10 && ret < 0) {
> +		ret = drm_dp_dpcd_readb(&intel_dp->aux, DP_SET_POWER, &value);
> +		/*
> +		 * If sink is in D3 then it may not respond to the AUX tx so
> +		 * wake it up to D3_AUX_ON state
> +		 */
> +		if (value == DP_SET_POWER_D3) {
> +			/* After setting to D0 need a min of 1ms to wake(Spec DP2.1 sec 2.3.1.2) */
> +			drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
> +					   DP_SET_POWER_D0);
> +			fsleep(1000);
> +			drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
> +					   DP_SET_POWER_D3_AUX_ON);
> +			break;
> +		} else if ((value == DP_SET_POWER_D0) ||
> +			   (value == DP_SET_POWER_D3_AUX_ON)) {
> +			/* if in D0 or D3_AUX_ON exit */
> +			break;
> +		}
> +		/* Sink in D0 or even if read fails a minimum of 1ms is required to wake and respond */
> +		fsleep(1000);
> +		try++;
> +	}
> +
> +	intel_dp_dpcd_set_probe(intel_dp, true);
> +}
> +
>  static bool
>  intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
>  {
> @@ -4713,6 +4752,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
>  	/* this function is meant to be called only once */
>  	drm_WARN_ON(display->drm, intel_dp->dpcd[DP_DPCD_REV] != 0);
>  
> +	intel_dp_wake_sink(intel_dp);
> +
>  	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0)
>  		return false;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index b0bbd5981f57..3f16077c0cc7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -232,6 +232,7 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
>  bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>  				     int hdisplay,
>  				     int num_joined_pipes);
> +void intel_dp_wake_sink(struct intel_dp *intel_dp);
>  
>  #define for_each_joiner_candidate(__connector, __mode, __num_joined_pipes) \
>  	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 54c585c59b90..cbb712ea9f60 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -270,6 +270,9 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
>  		lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
>  	}
>  
> +	/* After reading LTTPR wake up the sink before reading DPRX caps */
> +	intel_dp_wake_sink(intel_dp);
> +
>  	/*
>  	 * The DPTX shall read the DPRX caps after LTTPR detection, so re-read
>  	 * it here.
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
