Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aD3ZF/3z/WlxlAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:32:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D5A4F7C01
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:32:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D70110E593;
	Fri,  8 May 2026 14:32:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NiRkxrUy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F320E10E0B9;
 Fri,  8 May 2026 14:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778250745; x=1809786745;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=cD0nMnqYEQ3eTlb2yPSq7g/9xP7jJseSyaNCi6t/CuU=;
 b=NiRkxrUyYXb5E5bWRRa2i4qiHW+RJZaU26Ap1Rl1PuePe1wmjMAz7Twm
 F1fXr+nLSv/MNSDXa9MrzakS+FSVxHIJeqrBvgb6gCOCMduFLEuo+L21S
 zpoSydeZHJ4HZcjErUAE/PJm37OSvC5U4jxfjMvGMCYqeU7idDE1sbbBL
 zFXXckCf+qAdK07XoHGX8/SDxPLZe4QJPdNWC9CxJv6YNr+Smgw9Vs9CO
 XX8WSsePJyrhP+0YcocIFWY7S9rAHOQpUOxgMt7P2z00OvbsdiSvItLL2
 swpLWPwU7orUFcxHU+Dn5nJFBAwdFBmnE70zXQY1xS/TJ4O8caC4G6C8v w==;
X-CSE-ConnectionGUID: DbEaLBqRTGWLR0EDC0M0hA==
X-CSE-MsgGUID: E/9D5NzcQTOs7lcf/qo9DQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="66747485"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="66747485"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:32:25 -0700
X-CSE-ConnectionGUID: Fs10XP2nTyCuv4/0ie8Kcg==
X-CSE-MsgGUID: NvTxCt5CTZe1ipIXwno61Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="233724075"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.40])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:32:23 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 015/108] drm/i915/dp_link_training: Add helper to query
 pending autoretrain
In-Reply-To: <20260428125233.1664668-16-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260428125233.1664668-1-imre.deak@intel.com>
 <20260428125233.1664668-16-imre.deak@intel.com>
Date: Fri, 08 May 2026 17:32:21 +0300
Message-ID: <44165f5747d52722046bd772ab499c4b32beaec4@intel.com>
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
X-Rspamd-Queue-Id: C3D5A4F7C01
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
> Add link_recovery_autoretrain_pending() to make it clearer what the
> condition is about at its callers: an autoretrain work has been queued.
>
> This also prepares for replacing the sequential link training failure
> counter with an enum in a follow-up change.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_dp_link_training.c  | 18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 0c5b7816dfff9..77697a7619812 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1249,6 +1249,20 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
>  	return sink_status & DP_INTRA_HOP_AUX_REPLY_INDICATION ? 1 : 0;
>  }
>  
> +/**
> + * link_recovery_autoretrain_pending - check for a pending automatic retraining
> + * @link_training: link training state
> + *
> + * Return:
> + * - %true  if automatic retraining is pending.
> + * - %false otherwise.
> + */

IMO static functions should almost never have kernel-doc formatted
comments.

Note the "kernel-doc formatted". The kernel-doc format requires you to
add a bunch of boilerplate that's only really relevant if you're pulling
the documentation comment into part of the Sphinx documentation build.

Here, I don't think the documentation comment adds anything that the
name of the function doesn't say already. Really.

What's worse, none of the documentation or commit messages in the entire
series explain what "autoretrain" or "automatic retrain" mean! It's a
concept the series introduces and uses like it's the most natural thing,
but doesn't explain!

(Yeah, folks can figure it out by reading the code, but shouldn't have
to.)

All that aside, I'm very much in favour of adding functions like this so
that the name of the function makes the code self-documenting.


BR,
Jani.


> +static bool
> +link_recovery_autoretrain_pending(struct intel_dp_link_training *link_training)
> +{
> +	return link_training->seq_train_failures == 1;
> +}
> +
>  /**
>   * intel_dp_stop_link_train - stop link training
>   * @intel_dp: DP struct
> @@ -1290,7 +1304,7 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
>  
>  	if (!display->hotplug.ignore_long_hpd &&
>  	    link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES) {
> -		int delay_ms = link_training->seq_train_failures == 1 ? 0 : 2000;
> +		int delay_ms = link_recovery_autoretrain_pending(link_training) ? 0 : 2000;
>  
>  		intel_encoder_link_check_queue_work(encoder, delay_ms);
>  	}
> @@ -1991,7 +2005,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
>  	if (link_training->seq_train_failures >= MAX_SEQ_TRAIN_FAILURES)
>  		return false;
>  
> -	if (link_training->seq_train_failures == 1)
> +	if (link_recovery_autoretrain_pending(link_training))
>  		return true;
>  
>  	/* Retrain if link not ok */

-- 
Jani Nikula, Intel
