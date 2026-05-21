Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BxUMZV8D2rLMgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 23:43:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 418255AC2AB
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 23:43:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3673510F416;
	Thu, 21 May 2026 21:43:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YF2Q4Jiv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1754810F415;
 Thu, 21 May 2026 21:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779399826; x=1810935826;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=z8ESGZvoh6hpGp29vvh6HA5wTU+JFbt49mCO5guI5XI=;
 b=YF2Q4JivRzPdwho8h+DMJ9erVT4t7pOsaa70bEdlSh1K/7X265vo38Zu
 kfgRiMNTd2eqVmD7E9uVGP3hpgdB5dTi63hg/0wsg8JuOg6+mi2cDIBG9
 GR39q+iiueBMNIANaRngoYAFL2Axgd6jER9tZSOme96FCVUAJVZLv5K7x
 CbIHyIcupWQGuBdbTZSXMIRCt3R82U9/Lfye851d1hEfkti7v1YF8Rwb0
 tDDEnwuokkompB8pBcffUdgx+KI6YHtM8FozMM5o0R8tgoimfViwUdJZ0
 YRPi5BWbXhGfCKzp8Su9Mv2nt8dNc/deRj6IYs/mmzjgqc2Mcbq5jDnLO w==;
X-CSE-ConnectionGUID: fMfXKY22QiKN+fhdVorqSQ==
X-CSE-MsgGUID: AWgfa+DIQxSfGgezTk+ZOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="80228496"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="80228496"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 14:43:46 -0700
X-CSE-ConnectionGUID: 8Llj9EcpRgiCwKOgoQOTkA==
X-CSE-MsgGUID: AqFtnxV7QAG33QTjrWZBRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="236422324"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.86])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 14:43:44 -0700
Date: Fri, 22 May 2026 00:43:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 5/5] drm/i915/dp: Detect changes in common link parameters
Message-ID: <ag98jVxomfBDkzQ4@intel.com>
References: <20260518112427.2460725-1-imre.deak@intel.com>
 <20260518112427.2460725-6-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260518112427.2460725-6-imre.deak@intel.com>
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
X-Spamd-Result: default: False [0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.63)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 418255AC2AB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 18, 2026 at 02:24:26PM +0300, Imre Deak wrote:
> Detect DPRX capability changes without a long HPD or RX_CAP_CHANGED
> signal and queue a corresponding link params reset.
> 
> Besides detecting the above unexpected capability changes, this also
> avoids races between queuing and handling a deferred link params reset.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 50 +++++++++++++++++++++----
>  1 file changed, 43 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6c4dadfc35806..dd968c2d9fa64 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -362,19 +362,25 @@ int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port)
>  	return max_lanes;
>  }
>  
> -/* Theoretical max between source and sink */
> -static void intel_dp_set_max_common_lane_count(struct intel_dp *intel_dp)
> +/*
> + * Theoretical max between source and sink.
> + * Return %true if the max common lane count changed.
> + */
> +static bool intel_dp_set_max_common_lane_count(struct intel_dp *intel_dp)
>  {
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>  	int source_max = intel_dp_max_source_lane_count(dig_port);
>  	int sink_max = intel_dp->max_sink_lane_count;
>  	int lane_max = intel_tc_port_max_lane_count(dig_port);
>  	int lttpr_max = drm_dp_lttpr_max_lane_count(intel_dp->lttpr_common_caps);
> +	int old_max_common_lane_count = intel_dp->max_common_lane_count;
>  
>  	if (lttpr_max)
>  		sink_max = min(sink_max, lttpr_max);
>  
>  	intel_dp->max_common_lane_count = min3(source_max, sink_max, lane_max);
> +
> +	return intel_dp->max_common_lane_count != old_max_common_lane_count;
>  }
>  
>  int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
> @@ -792,13 +798,20 @@ int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lan
>  	return -1;
>  }
>  
> -static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
> +/* Return %true if the common rates changed. */
> +static bool intel_dp_set_common_rates(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> +	int num_old_common_rates = intel_dp->num_common_rates;
> +	int old_common_rates[DP_MAX_SUPPORTED_RATES];
>  
>  	drm_WARN_ON(display->drm,
>  		    !intel_dp->num_source_rates || !intel_dp->num_sink_rates);
>  
> +	static_assert(sizeof(old_common_rates) == sizeof(intel_dp->common_rates));

Could also assert the element size/type match. Maybe (as a followup
later) introduce a proper type for this rates[]+num construct and then
we could just copy the darn thing with a normal assignment and not have
to worry about this kind of stuff at all...

> +	memcpy(old_common_rates, intel_dp->common_rates,
> +	       num_old_common_rates * sizeof(old_common_rates[0]));
> +
>  	intel_dp->num_common_rates = intersect_rates(intel_dp->source_rates,
>  						     intel_dp->num_source_rates,
>  						     intel_dp->sink_rates,
> @@ -810,13 +823,26 @@ static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
>  		intel_dp->common_rates[0] = 162000;
>  		intel_dp->num_common_rates = 1;
>  	}
> +
> +	return num_old_common_rates != intel_dp->num_common_rates ||
> +	       memcmp(old_common_rates, intel_dp->common_rates,
> +		      num_old_common_rates * sizeof(old_common_rates[0]));
>  }
>  
> -static void intel_dp_set_common_link_params(struct intel_dp *intel_dp)
> +/* Return %true if any common link param changed. */
> +static bool intel_dp_set_common_link_params(struct intel_dp *intel_dp)
>  {
> -	intel_dp_set_common_rates(intel_dp);
> -	intel_dp_set_max_common_lane_count(intel_dp);
> +	bool params_changed = false;
> +
> +	if (intel_dp_set_common_rates(intel_dp))
> +		params_changed = true;
> +
> +	if (intel_dp_set_max_common_lane_count(intel_dp))
> +		params_changed = true;
> +
>  	intel_dp_link_config_init(intel_dp);
> +
> +	return params_changed;
>  }
>  
>  bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
> @@ -4911,9 +4937,19 @@ intel_dp_has_sink_count(struct intel_dp *intel_dp)
>  
>  void intel_dp_update_sink_caps(struct intel_dp *intel_dp)
>  {
> +	struct intel_display *display = to_intel_display(intel_dp);
> +
>  	intel_dp_set_sink_rates(intel_dp);
>  	intel_dp_set_max_sink_lane_count(intel_dp);
> -	intel_dp_set_common_link_params(intel_dp);
> +	/*
> +	 * Handle unexpected sink cap changes, or a race between setting
> +	 * the deferred link params flag in the HPD IRQ handler and
> +	 * clearing the flag during connector detect.
> +	 */
> +	if (intel_dp_set_common_link_params(intel_dp) &&
> +	    intel_dp_reset_link_params_defer(intel_dp))
> +		drm_dbg_kms(display->drm,
> +			    "DPRX capabilities changed before long HPD or RX_CAP_CHANGED signal\n");
>  }
>  
>  static bool
> -- 
> 2.49.1

-- 
Ville Syrjälä
Intel
