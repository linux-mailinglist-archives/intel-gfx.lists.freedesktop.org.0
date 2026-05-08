Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mC6+NAP1/WlxlAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:36:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8F34F7D7B
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:36:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D32510F51E;
	Fri,  8 May 2026 14:36:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fveaaLjb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB01910F51E;
 Fri,  8 May 2026 14:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778251008; x=1809787008;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=vN/KBSmlQJnbKD2H12ybejlNNb/whICaP+erHZDgU64=;
 b=fveaaLjbL0bYt0FuJ2SvPzT4VWuXAIXr7M3aYPoFizXItE9x2TrraRCQ
 3927wa46Ks4mlTOF/tOdLwMk0CF55lGTvlOJOvqD8tx+RQzpoNA7zJVnN
 0Vn/2CvgnxiAk0+88Nm34zLRI0ir9uWXBWJYERbzP/SmnlM3HfvMV1T+P
 g0MdxvX62kYh7xypOils5cbwZRqkKZTXKVErJdAUxT7o5g57dhaE4oJV2
 qornQDverPeyOJTkCAM+SwnJQOVUEfBl4V0BDSfC70AHFT4VxVqJJYohQ
 ec32BsVzp7aA5uB3xNXaF0nXoJ0D7RBw9OYwTaOaFXSZM4RyW9XbR9+UP g==;
X-CSE-ConnectionGUID: neJ5Bq4iS0OitWXrauc2AA==
X-CSE-MsgGUID: TyzaBefCS2SXmx6VNC3V3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="79119112"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79119112"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:36:48 -0700
X-CSE-ConnectionGUID: 2fW/M6IyQsmmOmsyzkka4g==
X-CSE-MsgGUID: EC+lmegjQwCkhQwjU5DCzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="267158989"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.40])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:36:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 016/108] drm/i915/dp_link_training: Add helper to query
 allowed autoretrain
In-Reply-To: <20260428125233.1664668-17-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260428125233.1664668-1-imre.deak@intel.com>
 <20260428125233.1664668-17-imre.deak@intel.com>
Date: Fri, 08 May 2026 17:36:42 +0300
Message-ID: <3f5bd37a01f306d7fd72a6985776c299994ad2c9@intel.com>
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
X-Rspamd-Queue-Id: 2E8F34F7D7B
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
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

On Tue, 28 Apr 2026, Imre Deak <imre.deak@intel.com> wrote:
> Add link_recovery_autoretrain_allowed() to make it clearer what the
> condition is about at its callers: queuing work for and starting an
> autoretrain is allowed.
>
> This also prepares for replacing the sequential link training failure
> counter with an enum in a follow-up change.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_dp_link_training.c | 22 +++++++++++++++----
>  1 file changed, 18 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 77697a7619812..1c2cef7d61f37 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1263,6 +1263,20 @@ link_recovery_autoretrain_pending(struct intel_dp_link_training *link_training)
>  	return link_training->seq_train_failures == 1;
>  }
>  
> +/**
> + * link_recovery_autoretrain_allowed - check for an allowed automatic retraining
> + * @link_training: link training state
> + *
> + * Return:
> + * - %true  if automatic retraining is allowed.
> + * - %false otherwise.
> + */

But what does it mean that retraining is allowed? When is it forbidden?

Again, the kernel-doc explains the same thing that's already obvious
from the function name, it provides no new information, but fails to
explain the first question that pops to my mind.

> +static bool
> +link_recovery_autoretrain_allowed(struct intel_dp_link_training *link_training)
> +{
> +	return link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES;
> +}
> +
>  /**
>   * intel_dp_stop_link_train - stop link training
>   * @intel_dp: DP struct
> @@ -1303,7 +1317,7 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
>  	intel_hpd_unblock(encoder);
>  
>  	if (!display->hotplug.ignore_long_hpd &&
> -	    link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES) {
> +	    link_recovery_autoretrain_allowed(link_training)) {
>  		int delay_ms = link_recovery_autoretrain_pending(link_training) ? 0 : 2000;
>  
>  		intel_encoder_link_check_queue_work(encoder, delay_ms);
> @@ -1830,7 +1844,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
>  		return;
>  	}
>  
> -	if (link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES)
> +	if (link_recovery_autoretrain_allowed(link_training))
>  		link_training->seq_train_failures++;

This reads *really* funny now. As if the failure count can only increase
if autoretrain is allowed. What?

>  
>  	/*
> @@ -1850,7 +1864,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
>  		return;
>  	}
>  
> -	if (link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES)
> +	if (link_recovery_autoretrain_allowed(link_training))
>  		return;
>  
>  	if (intel_dp_schedule_fallback_link_training(state, intel_dp, crtc_state))
> @@ -2002,7 +2016,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
>  					intel_dp->lane_count))
>  		return false;
>  
> -	if (link_training->seq_train_failures >= MAX_SEQ_TRAIN_FAILURES)
> +	if (!link_recovery_autoretrain_allowed(link_training))
>  		return false;
>  
>  	if (link_recovery_autoretrain_pending(link_training))

-- 
Jani Nikula, Intel
