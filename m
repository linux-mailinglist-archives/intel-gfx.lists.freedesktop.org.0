Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBYUHrCEnGm7IwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 17:47:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B46FB17A1AE
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 17:47:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE94610E3FB;
	Mon, 23 Feb 2026 16:47:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XmGkRfUg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD05D10E3F2;
 Mon, 23 Feb 2026 16:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771865260; x=1803401260;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=IK3gwhfZzyU8M9L6XJTTE7NAxtT3/q15/UunyM9i4S0=;
 b=XmGkRfUgp2U7EHKXNDRv4fexDJLYRwk8tiAIH90S69OQLv4Sj7RMsmGE
 yn8CoVrHBV0PcMAMlUDWc6aLBjd1/WV+9Xy0Yhy+TzyUOFv0uXUrlUR2W
 cX0sJikCMX4ZkvtH6tFdI2DyALgnaF5HpUmH3vbdGtn6/Hny7IlboRwJF
 vOomqSt8UQAMNMPykP4Rjs/ITv2Sbv1Edf80hcX+2KdZXLa91GgkKnvhL
 0ANRkremtv1Vh5WlZDxCmJTD6GoljzUxMNlstVhsDp0NB3fWDf4y1tofJ
 /8l1lxp+Fx8QFwiU4kDZeA+4ZgsQQTgoms4O6XiVp+Lgy8hpRM1Owhgqk Q==;
X-CSE-ConnectionGUID: js38OWjoRHyCUJu82VmUwQ==
X-CSE-MsgGUID: /AnkbNkuTNO5LyUEXFVGeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="83962655"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="83962655"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 08:47:40 -0800
X-CSE-ConnectionGUID: uZJiXG3QQMu7wapZj8tQVA==
X-CSE-MsgGUID: B8YLWrulQm+fancN+hqkNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="215641906"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.249])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 08:47:37 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, Arun R Murthy <arun.r.murthy@intel.com>,
 imre.deak@intel.com
Subject: Re: [PATCH] drm/i915/display/dp: On dpcd init/caps wake the dprx
In-Reply-To: <20260219083219.32256-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260219083219.32256-1-arun.r.murthy@intel.com>
Date: Mon, 23 Feb 2026 18:47:33 +0200
Message-ID: <5a99ff903414cc76845a54be0b85c394cb2db7cf@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: B46FB17A1AE
X-Rspamd-Action: no action

On Thu, 19 Feb 2026, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> Before reading the dpcd caps for eDP wake the sink device and for DP
> after reading the lttpr caps and before reading the dpcd caps wake up
> the sink device.
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c       | 28 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
>  .../drm/i915/display/intel_dp_link_training.c |  3 ++
>  3 files changed, 32 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 454e6144ee4e..4d86826dba1b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4705,6 +4705,32 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
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
> +	 * Spec section 2.3.1.2 if AUX CH is powered down by writing 0x02 to
> +	 * DP_SET_POWER dpcd reg, 1ms time would be required to wake it up
> +	 */
> +	while (try < 10 && ret < 0) {
> +		ret = drm_dp_dpcd_readb(&intel_dp->aux, DP_SET_POWER, &value);
> +		if (value)
> +			break;
> +		fsleep(1000);
> +		try++;
> +	}

I'll defer to Imre on the functional change in general, but if we were
to add this, it *must* be written using poll_timeout_us() and friends.

There needs to be an extremely good reason to hand roll new polling
loops.

The above loop isn't executed even one time. It's dead code.


BR,
Jani.


> +	/* After setting to D0 need a min of 1ms to wake(Spec sec 2.3.1.2) */
> +	drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
> +	fsleep(1000);
> +
> +	intel_dp_dpcd_set_probe(intel_dp, true);
> +}
> +
>  static bool
>  intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
>  {
> @@ -4713,6 +4739,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
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

-- 
Jani Nikula, Intel
