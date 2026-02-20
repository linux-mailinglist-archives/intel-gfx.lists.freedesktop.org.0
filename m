Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id f9nKE9jQl2mx8wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 04:11:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68736164591
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 04:11:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D8F610E775;
	Fri, 20 Feb 2026 03:11:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QQPF5aR5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A855010E771;
 Fri, 20 Feb 2026 03:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771557075; x=1803093075;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LtXojTxWUXHRfADAI0q8OrSPhK4G22bem2gV0RNmID4=;
 b=QQPF5aR5d715CrCt0TtYDVlaJuvusD/ntG1AHZdI9WuU3UlI56s1UWp2
 2LYrpTumkA89V+wWq+xq7+fHpULnYDphq69QlRgIjCAePI+/ZXVOJGzpo
 uKgd10qdTC7WHYmTxfx9OLH+Ru4uUVQgS31mQA9Nu7sv3umo1YXahHaXF
 elZwYxg6d/QW0TkFh/dpNqfwxN1pBWSTBt5LoA8HDN46ZiKulv42MdBwk
 7ytnqs31sn/9eSUDMPaFeJR/znpXr1/5Cy7gl1ZlPWkNeVIdjV7DlsDjW
 wkm2B2SL7ddl265ba2S+aRjGquXREPDmQmHiK2vxy1ZSue9Mqw96QYlxX A==;
X-CSE-ConnectionGUID: JSlt1f65RKSE5flgJVzrxQ==
X-CSE-MsgGUID: aqCGyKocTpaBYH0Exzvkrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="72715579"
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="72715579"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 19:11:15 -0800
X-CSE-ConnectionGUID: 7CWuCvVwSQKaTATw/mikwQ==
X-CSE-MsgGUID: WST+IfSsSLKJOiFQly4axw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="212897530"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.247])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 19:11:14 -0800
Date: Fri, 20 Feb 2026 05:11:10 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 imre.deak@intel.com, suraj.kandpal@intel.com
Subject: Re: [PATCH] drm/i915/dp: On DPCD init/caps wake the DPRx
Message-ID: <aZfQzqdS0koZQVwg@intel.com>
References: <20260219094326.34922-1-arun.r.murthy@intel.com>
 <aZcj08k5dG4lxRNE@intel.com>
 <2f2a155d-3b2c-4cf9-b8cd-8116fe84f85a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2f2a155d-3b2c-4cf9-b8cd-8116fe84f85a@intel.com>
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
X-Rspamd-Queue-Id: 68736164591
X-Rspamd-Action: no action

On Thu, Feb 19, 2026 at 08:42:49PM +0530, Murthy, Arun R wrote:
> 
> On 19-02-2026 20:23, Ville Syrjälä wrote:
> > On Thu, Feb 19, 2026 at 03:13:26PM +0530, Arun R Murthy wrote:
> >> Before reading the DPCD caps for eDP wake the sink device and for DP
> >> after reading the lttpr caps and before reading the dpcd caps wake up
> >> the sink device.
> > Why?
> Just to ensure that sink is awake.
> On eDP init, as part of reading the DPCD caps during the AUX transaction 
> its sometimes observed that the AUX tx fails with timeout. In those 
> scenarios even if the retry is increased to 1000 AUX tx will not 
> succeed. May be that sink is in sleep or unknown state.
> Spec DP2.1 sec 2.11.7.1.5.8 says if there is a NO REPLY for AUX tx this 
> can be due to illegal cmd or sink in low power state.

That section is specifically about i2c-over-aux.

Generally we have retries and appropriate timeouts to deal with AUX
having to wake up from low power state.

Although, I suppose we might consider switching to D0 for eg. duration
of the detection to make sure none of the AUX transactions there take
too long. That *might* make things a bit faster (but we'd need actual
numbers to show that). And once we're done we should switch back to D3
to save power. Perhaps we could then also use a larger timeout just for
the DP_SET_POWER AUX accesses, and all other AUX accesses could assume
that the thing is awake and use a smaller timeout. Although the LTTPR
mess probably means we can't actually reduce the timeouts :/

Another slight snag in the current way of doing things is that IIRC
we never put a device into D3 after the initial detection, unless we
actually turned the main link on and off again. That's also something
that could get fixed by always putting the device into D3 after
detection. But to do that stuff safely we'd need some way to make sure
nothing else (eg. the main link) requires the D0 at that time. So some
kind of D0 vs. D3 reference counting scheme might be needed.

I did consider implementing something like that years ago, but dealing
with the reference counting seemed too messy at the time. And since I
never implemented it I never measured it either. Perhaps things are a
bit cleaner these days to make that easier. Dunno.

> 
> So in this patch we are trying to wake the sink device.

Still the same question remains: Why? What *exactly* is the problem
you're trying to solve here?

> 
> Thanks and Regards,
> Arun R Murthy
> -------------------
> 
> >
> >> Closes: https://issues.redhat.com/browse/RHEL-120913
> >> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_dp.c       | 41 +++++++++++++++++++
> >>   drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
> >>   .../drm/i915/display/intel_dp_link_training.c |  3 ++
> >>   3 files changed, 45 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >> index 454e6144ee4e..2fbb947e6cc8 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> @@ -4705,6 +4705,45 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
> >>   	intel_edp_set_data_override_rates(intel_dp);
> >>   }
> >>   
> >> +void intel_dp_wake_sink(struct intel_dp *intel_dp)
> >> +{
> >> +	u8 value = 0;
> >> +	int ret = 0, try = 0;
> >> +
> >> +	intel_dp_dpcd_set_probe(intel_dp, false);
> >> +
> >> +	/*
> >> +	 * Wake the sink device
> >> +	 * Spec DP2.1 section 2.3.1.2 if AUX CH is powered down by writing 0x02
> >> +	 * to DP_SET_POWER dpcd reg, 1ms time would be required to wake it up
> >> +	 */
> >> +	while (try < 10 && ret < 0) {
> >> +		ret = drm_dp_dpcd_readb(&intel_dp->aux, DP_SET_POWER, &value);
> >> +		/*
> >> +		 * If sink is in D3 then it may not respond to the AUX tx so
> >> +		 * wake it up to D3_AUX_ON state
> >> +		 */
> >> +		if (value == DP_SET_POWER_D3) {
> >> +			/* After setting to D0 need a min of 1ms to wake(Spec DP2.1 sec 2.3.1.2) */
> >> +			drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
> >> +					   DP_SET_POWER_D0);
> >> +			fsleep(1000);
> >> +			drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
> >> +					   DP_SET_POWER_D3_AUX_ON);
> >> +			break;
> >> +		} else if ((value == DP_SET_POWER_D0) ||
> >> +			   (value == DP_SET_POWER_D3_AUX_ON)) {
> >> +			/* if in D0 or D3_AUX_ON exit */
> >> +			break;
> >> +		}
> >> +		/* Sink in D0 or even if read fails a minimum of 1ms is required to wake and respond */
> >> +		fsleep(1000);
> >> +		try++;
> >> +	}
> >> +
> >> +	intel_dp_dpcd_set_probe(intel_dp, true);
> >> +}
> >> +
> >>   static bool
> >>   intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
> >>   {
> >> @@ -4713,6 +4752,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
> >>   	/* this function is meant to be called only once */
> >>   	drm_WARN_ON(display->drm, intel_dp->dpcd[DP_DPCD_REV] != 0);
> >>   
> >> +	intel_dp_wake_sink(intel_dp);
> >> +
> >>   	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0)
> >>   		return false;
> >>   
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> >> index b0bbd5981f57..3f16077c0cc7 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> >> @@ -232,6 +232,7 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
> >>   bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
> >>   				     int hdisplay,
> >>   				     int num_joined_pipes);
> >> +void intel_dp_wake_sink(struct intel_dp *intel_dp);
> >>   
> >>   #define for_each_joiner_candidate(__connector, __mode, __num_joined_pipes) \
> >>   	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> >> index 54c585c59b90..cbb712ea9f60 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> >> @@ -270,6 +270,9 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
> >>   		lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
> >>   	}
> >>   
> >> +	/* After reading LTTPR wake up the sink before reading DPRX caps */
> >> +	intel_dp_wake_sink(intel_dp);
> >> +
> >>   	/*
> >>   	 * The DPTX shall read the DPRX caps after LTTPR detection, so re-read
> >>   	 * it here.
> >> -- 
> >> 2.25.1

-- 
Ville Syrjälä
Intel
