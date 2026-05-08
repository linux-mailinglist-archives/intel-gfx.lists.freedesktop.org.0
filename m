Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIekAmX4/WlilQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:51:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 636F74F81C1
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:51:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5002010F530;
	Fri,  8 May 2026 14:51:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eDW8I2Fq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D08689101;
 Fri,  8 May 2026 14:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778251874; x=1809787874;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=w3lEQ+1ZI0mQ92do3Dx0s1wHi+ffpycfSvRZTW8Wea4=;
 b=eDW8I2Fqh/qQJm4Rjy9SzVl/zHIR1QMO+UTlkwpvVvInkSr6e87P7FLh
 bhucb30lD6B96+7NfR/2c0FrS5jHlePeCZYLGTlAXWU28ZvcZ1JCVpMes
 s3GMn+f3T5OwW/IIPNgSCJSBrD6ZDVSO76kKMNoIaMi0/B/UX1T1TQ3og
 Q5VG0OZldDcbxXX+TRrv0INTm7W3UM7OIwXvJUVGaoBLrzk2hZKDDzjDw
 95zYFXF2RInyS9jz7FduFgnsoLVm5XhEFf+AjTW0eLqC3Je5YwZdUvFiL
 eT4FqMFJB6Uki6qeuhHR4j/aboAdlOfTKHGvV5ZSIjTERbq1WwUodFuGA A==;
X-CSE-ConnectionGUID: YjqRZC+FTNaTKTh4F6wS0w==
X-CSE-MsgGUID: 3wXhXmfzTCqTtMiSeCMFqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="90323062"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="90323062"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:51:13 -0700
X-CSE-ConnectionGUID: 2LplSA39Sc+v5/F77WkjZg==
X-CSE-MsgGUID: cJpysaAyR5a+KZiwBrUOrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="260232611"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.40])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:51:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 019/108] drm/i915/dp_link_training: Track link recovery
 state with an enum
In-Reply-To: <20260428125233.1664668-20-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260428125233.1664668-1-imre.deak@intel.com>
 <20260428125233.1664668-20-imre.deak@intel.com>
Date: Fri, 08 May 2026 17:51:08 +0300
Message-ID: <095667abc629744d0905655de1ce04988a7dc5f4@intel.com>
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
X-Rspamd-Queue-Id: 636F74F81C1
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
> Replace the sequential link training failure counter with an explicit
> link recovery state enum.
>
> This makes the recovery states and transitions clearer: idle, automatic
> retraining pending, and automatic retraining disabled.
>
> A follow-up change will also move the retrain_disabled flag into this
> enum.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_dp_link_training.c | 55 ++++++++++++++++---
>  1 file changed, 48 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 90bd1b0f1ab7d..c44416e0e328f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -61,14 +61,54 @@
>  		lt_dbg(_intel_dp, _dp_phy, "Sink disconnected: " _format, ## __VA_ARGS__); \
>  } while (0)
>  
> -#define MAX_SEQ_TRAIN_FAILURES 2
> +/**
> + * enum intel_dp_link_recovery_state - LT recovery state
> + * @INTEL_DP_LINK_RECOVERY_IDLE:
> + *   No link training failure is currently tracked and no recovery is
> + *   in progress. This is the initial state after driver initialization,
> + *   power state transitions, sink (re-)connection, or after a successful
> + *   link training.
> + *
> + * @INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING:
> + *   A first link training failure has been observed and an automatic
> + *   retraining attempt with the same link parameters is pending. Exactly
> + *   one such attempt is allowed before switching to userspace-driven
> + *   recovery.
> + *
> + * @INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED:
> + *   Automatic retraining is no longer possible. At this point, a
> + *   fallback selection is made and userspace is notified to take over
> + *   recovery, performing modesets with parameters it determines are
> + *   required. The driver then selects a link configuration from the
> + *   remaining fallback configuration set. Subsequent link training
> + *   failures trigger further fallback selections and userspace
> + *   notifications.
> + *
> + * Describes the link recovery state used by the Intel DP link recovery
> + * logic.
> + *
> + * See also:
> + *   - link_recovery_autoretrain_pending()
> + *   - link_recovery_autoretrain_allowed()
> + *   - link_recovery_mark_train_failure()
> + *   - link_recovery_reset()
> + */
> +enum intel_dp_link_recovery_state {
> +	/*
> +	 * Keep the enum values ordered from least to most severe
> +	 * recovery state; helper logic relies on that ordering.
> +	 */
> +	INTEL_DP_LINK_RECOVERY_IDLE,
> +	INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING,
> +	INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED,
> +};
>  
>  struct intel_dp_link_training {
>  	struct intel_dp *dp;
>  
> +	enum intel_dp_link_recovery_state recovery_state;
> +
>  	bool retrain_disabled;
> -	/* Sequential link training failures after a passing LT */
> -	int seq_train_failures;
>  	int force_train_failure;
>  	bool force_retrain;
>  };
> @@ -1260,7 +1300,7 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
>  static bool
>  link_recovery_autoretrain_pending(struct intel_dp_link_training *link_training)
>  {
> -	return link_training->seq_train_failures == 1;
> +	return link_training->recovery_state == INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING;
>  }
>  
>  /**
> @@ -1274,7 +1314,7 @@ link_recovery_autoretrain_pending(struct intel_dp_link_training *link_training)
>  static bool
>  link_recovery_autoretrain_allowed(struct intel_dp_link_training *link_training)
>  {
> -	return link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES;
> +	return link_training->recovery_state < INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED;

Dunno, if the state machine is tracked by an enum, it just might make
sense to list the allowed cases instead of <.

>  }
>  
>  /**
> @@ -1299,11 +1339,12 @@ link_recovery_mark_train_failure(struct intel_dp_link_training *link_training)
>  {
>  	if (link_recovery_autoretrain_allowed(link_training))
>  		/* Move to autoretrain pending or autoretrain disabled state. */
> -		link_training->seq_train_failures++;
> +		link_training->recovery_state++;

Ditto.

>  
>  	return link_recovery_autoretrain_allowed(link_training);
>  }
>  
> +
>  /**
>   * link_recovery_reset - reset the link recovery state
>   * @link_training: link training state
> @@ -1313,7 +1354,7 @@ link_recovery_mark_train_failure(struct intel_dp_link_training *link_training)
>   */
>  static void link_recovery_reset(struct intel_dp_link_training *link_training)
>  {
> -	link_training->seq_train_failures = 0;
> +	link_training->recovery_state = INTEL_DP_LINK_RECOVERY_IDLE;
>  }
>  
>  /**

-- 
Jani Nikula, Intel
