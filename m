Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KBeDKVT2/Wn5lAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:42:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 159CA4F7F04
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:42:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8534210E5E5;
	Fri,  8 May 2026 14:42:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BW5lbC5d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 434A410E0B9;
 Fri,  8 May 2026 14:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778251344; x=1809787344;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=L9atX5SZFWNouSYJhqu1tV2vrxchfVuB1/bN3moV0EI=;
 b=BW5lbC5dRq4OuZYRKDBbPLDwvKLpK1139uYrZa3owmEbHj/ymXS0Ggy1
 n7E34R0meOMyy3K+p0LXHZoGxw7rVxVqEfmuyZ37YgIqSf+Ud+fsAi2gZ
 VmPr3xpSJDOD3mbJTME7hQj4aRQE0PZ2uc6XkNBGoe9HWytANckiFZ+aK
 UOlxi38D1xJ8/97HwdIfXsUJDXkYcjbUBTOL9ri0dRZY1snDq6UPwBZrL
 RDaT2vqezDtg8ggWdgOD3JEulRcxlSzmnLMu8gNUHflZt3UTAh9gouHQZ
 DuZZWPc8IOThvmnaa4bmQ2CLPrEdOBovmDdhS3T7u5bpbjC4obqwHZ5cG g==;
X-CSE-ConnectionGUID: NJ/7NPh3R+OC/uTPL6qcUg==
X-CSE-MsgGUID: oQzBvdu2R/6837j9IpLnGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="81784555"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="81784555"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:42:24 -0700
X-CSE-ConnectionGUID: 9oI9ot+wQ+KYsn8XVUMGHw==
X-CSE-MsgGUID: vvrVgJFzTBCZpp0abx90pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="232443532"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.40])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:42:23 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 017/108] drm/i915/dp_link_training: Add helper to mark
 link training failure
In-Reply-To: <20260428125233.1664668-18-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260428125233.1664668-1-imre.deak@intel.com>
 <20260428125233.1664668-18-imre.deak@intel.com>
Date: Fri, 08 May 2026 17:42:20 +0300
Message-ID: <1df1beb8661ad06de0b6e29b983720507ab72b06@intel.com>
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
X-Rspamd-Queue-Id: 159CA4F7F04
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

On Tue, 28 Apr 2026, Imre Deak <imre.deak@intel.com> wrote:
> Add link_recovery_mark_train_failure() to record the failure and make
> the link recovery state transition explicit after a link training
> failure: recovery can continue with an autoretrain, or must be handed
> over to userspace after fallback selection.
>
> This also prepares for replacing the sequential link training failure
> counter with an enum in a follow-up change.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_dp_link_training.c | 33 +++++++++++++++++--
>  1 file changed, 30 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 1c2cef7d61f37..eb922dca69c5b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1277,6 +1277,33 @@ link_recovery_autoretrain_allowed(struct intel_dp_link_training *link_training)
>  	return link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES;
>  }
>  
> +/**
> + * link_recovery_mark_train_failure - record a link training failure
> + * @link_training: link training state
> + *
> + * Record a link training failure and advance the recovery state to
> + * indicate the next required recovery step.
> + *
> + * The caller must proceed with recovery as instructed by the return
> + * value, either via automatic retraining or, once automatic retraining
> + * is no longer possible, via userspace modesets after fallback
> + * selection.
> + *
> + * Return:
> + * - %true  if recovery should continue via automatic retraining.
> + * - %false if automatic retraining is no longer possible and recovery
> + *          must be delegated to userspace.
> + */
> +static bool
> +link_recovery_mark_train_failure(struct intel_dp_link_training *link_training)
> +{
> +	if (link_recovery_autoretrain_allowed(link_training))

Yeah, I still think combining the above check with the below reads
wrong.

> +		/* Move to autoretrain pending or autoretrain disabled state. */
> +		link_training->seq_train_failures++;
> +
> +	return link_recovery_autoretrain_allowed(link_training);
> +}
> +
>  /**
>   * intel_dp_stop_link_train - stop link training
>   * @intel_dp: DP struct
> @@ -1813,6 +1840,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
>  	struct intel_encoder *encoder = &dig_port->base;
>  	struct intel_dp_link_training *link_training =
>  		intel_dp->link.training;
> +	bool can_autoretrain;
>  	bool passed;
>  	/*
>  	 * Reinit the LTTPRs here to ensure that they are switched to
> @@ -1844,8 +1872,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
>  		return;
>  	}
>  
> -	if (link_recovery_autoretrain_allowed(link_training))
> -		link_training->seq_train_failures++;
> +	can_autoretrain = link_recovery_mark_train_failure(link_training);

The documentation says "the caller must" but the variable says "can".

Maybe the code here would read better if this wasn't conveyed in the
return value but rather in a separate call to
link_recovery_autoretrain_allowed().

Or should it be link_recovery_must_autoretrain() or
link_recovery_need_autoretrain()?

BR,
Jani.

>  
>  	/*
>  	 * Ignore the link failure in CI
> @@ -1864,7 +1891,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
>  		return;
>  	}
>  
> -	if (link_recovery_autoretrain_allowed(link_training))
> +	if (can_autoretrain)
>  		return;
>  
>  	if (intel_dp_schedule_fallback_link_training(state, intel_dp, crtc_state))

-- 
Jani Nikula, Intel
