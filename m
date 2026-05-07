Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aCteLLlM/GmZNwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 10:26:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B454E4C54
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 10:26:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CEA810F13A;
	Thu,  7 May 2026 08:26:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TpHx9XOV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 721D710F13F;
 Thu,  7 May 2026 08:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778142390; x=1809678390;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=efDW2Yy1MzjWGN0VtBl7N2Y1IaJdWmPoAr5EL/blPTo=;
 b=TpHx9XOV/Zk/LiczWvyXy2TAA0B+nnJ7Emqah8rqtvEixEKr3/YDI9j5
 AEjv998c6rZzl6xQevaSwcWYqVmFd/+Ty6bJVIG/656r+aCM9ucYHgu/U
 D9x0OK2SKzcg6TQbKVwf9qoHpel5mcLqnFeoGTvQyO+y0yVO3lKEisNeq
 HY+3Z9Z1kz6QuSrhiXVvggP2zHx3CkVyIT9x7vIzSdjohZmY914R12jbt
 fsrMH34yLbfQ2ctLs818xHkSOpJHK0Pt9XKWIqRjcjnwPsoJCNcmROY1o
 mv0kz7G+UwAvMKcLTT2ukR6DxtXb/B71Z9ktWRQaNYilH9tqW72piTfnU Q==;
X-CSE-ConnectionGUID: uW15A3xjSHWNM2Kbugd4gw==
X-CSE-MsgGUID: h6TdW4PWRLungf2tAN17/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78804669"
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="78804669"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 01:26:29 -0700
X-CSE-ConnectionGUID: rRJTwhdRQ3KFcVlD/ODtSw==
X-CSE-MsgGUID: iO4bfA60Qni3rj90xZmk3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="260106484"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 01:26:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 043/108] drm/i915/dp_link_caps: Add helper to get common
 rate index
In-Reply-To: <20260428125233.1664668-44-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260428125233.1664668-1-imre.deak@intel.com>
 <20260428125233.1664668-44-imre.deak@intel.com>
Date: Thu, 07 May 2026 11:26:25 +0300
Message-ID: <7c6ca65645c530587fec7fa4603a53fa44b3ef8a@intel.com>
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
X-Rspamd-Queue-Id: D1B454E4C54
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
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
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

On Tue, 28 Apr 2026, Imre Deak <imre.deak@intel.com> wrote:
> Add intel_dp_link_caps_common_rate_idx() to look up supported link rates
> tracked by the link_caps module by rate. This prepares for tracking these
> capabilities internally within the link caps module.

It's a big series, and it's not obvious at which patch to reply for
something generic. Might as well be here, as this function is preserved
unchanged in the end.

When the rates and their handling were not abstracted, working with
indexes to rates array made sense. It all started simple.

I think with the intel_dp_link_caps.c abstraction, having the rate index
or link config index in the interface is a leaky abstraction. The caller
has to deal with an index, or pos, or iter_pos, that the caller has no
idea what it's an index to.

I think storing the various link configs in an array, and indexing it
with some value, is an implementation detail that the interface is
supposed to abstract. Imagine changing that implementation to use a
linked list instead of an array. How much of the interface would you
have to change? How much the indexes in the interface would get in the
way of changing what's supposed to be an implementation detail? You'd
end up having to deal with an "index" that the caller has no idea what
it's an index to, and the callee having to translate that to a linked
list where indexes make no sense.

I'm thinking maybe the interface should only deal with link
configs. "This is the link config I have, give me the next one."

BR,
Jani.


>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_dp_link_caps.c | 25 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_dp_link_caps.h |  1 +
>  .../drm/i915/display/intel_dp_link_training.c |  5 ++--
>  drivers/gpu/drm/i915/display/intel_dp_test.c  |  7 +++---
>  4 files changed, 32 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> index b1b78e7cda897..c99fc7704b3e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -60,6 +60,31 @@ int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
>  	return intel_dp->common_rates[index];
>  }
>  
> +/**
> + * intel_dp_link_caps_common_rate_idx - get index of a common link rate
> + * @link_caps: link capabilities state
> + * @rate: common link rate to look up
> + *
> + * Look up @rate in the rate list currently supported by @link_caps, common to
> + * both the source and the sink.
> + *
> + * The returned value is an index into the common rate list returned by
> + * intel_dp_link_caps_all_common_rates() and accepted by
> + * intel_dp_link_caps_common_rate().
> + *
> + * Return:
> + * - Index of @rate in the current common rate list.
> + * - %-1 if @rate is not present.
> + */
> +int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate)
> +{
> +	struct intel_dp *intel_dp = link_caps->dp;
> +
> +	return intel_dp_rate_index(intel_dp->common_rates,
> +				   intel_dp->num_common_rates,
> +				   rate);
> +}
> +
>  /* Theoretical max between source and sink */
>  int intel_dp_max_common_rate(struct intel_dp *intel_dp)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> index b2eb61272652e..7ec1612a044ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> @@ -14,6 +14,7 @@ struct intel_dp_link_config;
>  int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
>  				   int max_rate);
>  int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
> +int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate);
>  int intel_dp_max_common_rate(struct intel_dp *intel_dp);
>  int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps);
>  void intel_dp_link_caps_all_common_rates(struct intel_dp_link_caps *link_caps,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 5218220b82b0b..456540925db55 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1805,9 +1805,8 @@ static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
>  	if (forced_params.rate)
>  		return -1;
>  
> -	rate_index = intel_dp_rate_index(intel_dp->common_rates,
> -					 intel_dp->num_common_rates,
> -					 current_rate);
> +	rate_index = intel_dp_link_caps_common_rate_idx(link_caps,
> +							current_rate);
>  
>  	if (rate_index <= 0)
>  		return -1;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/drm/i915/display/intel_dp_test.c
> index 5cfa1dd411dab..0b791eee3b910 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_test.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
> @@ -14,6 +14,7 @@
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> +#include "intel_dp_link_caps.h"
>  #include "intel_dp_link_training.h"
>  #include "intel_dp_mst.h"
>  #include "intel_dp_test.h"
> @@ -32,6 +33,7 @@ void intel_dp_test_compute_config(struct intel_dp *intel_dp,
>  				  struct intel_crtc_state *pipe_config,
>  				  struct link_config_limits *limits)
>  {
> +	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
>  	struct intel_display *display = to_intel_display(intel_dp);
>  
>  	/* For DP Compliance we override the computed bpp for the pipe */
> @@ -54,9 +56,8 @@ void intel_dp_test_compute_config(struct intel_dp *intel_dp,
>  		 */
>  		if (intel_dp_link_params_valid(intel_dp, intel_dp->compliance.test_link_rate,
>  					       intel_dp->compliance.test_lane_count)) {
> -			index = intel_dp_rate_index(intel_dp->common_rates,
> -						    intel_dp->num_common_rates,
> -						    intel_dp->compliance.test_link_rate);
> +			index = intel_dp_link_caps_common_rate_idx(link_caps,
> +								   intel_dp->compliance.test_link_rate);
>  			if (index >= 0) {
>  				limits->min_rate = intel_dp->compliance.test_link_rate;
>  				limits->max_rate = intel_dp->compliance.test_link_rate;

-- 
Jani Nikula, Intel
