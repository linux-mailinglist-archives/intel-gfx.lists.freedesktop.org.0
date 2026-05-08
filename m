Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CES0E872/Wn5lAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:44:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E36A34F8012
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:44:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A24A10E5D9;
	Fri,  8 May 2026 14:44:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LC18WKow";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97E4C10F529;
 Fri,  8 May 2026 14:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778251466; x=1809787466;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=llKcWDyQQwOJLcf+/fCeb3mGeJkL43QCR3X4b8FHSyU=;
 b=LC18WKowY4pNbNCjOdgQdibExh177KuJ93mDg3m1aYEV/WqIV/z2w1yE
 VJvJzeXW0KBKlb64soLqIf4YjgV01MNDyATLU7MUhqwro8Hir7l77/n9T
 vF+NProGa27Kw6KkDFOqN2Vtlk9dFekzONtsLewmJdmqKhHTe81HcEDUg
 iN0Tbt6fEtntuDgp/en0WVtXJL6F9aBPCeObHVUPggn1CgESuwiP3kbxf
 4zlXZxDzjwVG5lk/yiQhj2r4kmJfRju9gSoKDdgRO0Bm3BX89Eup8meAJ
 z26mN0ldzDs6Oa1Vu/qtecAUEkLuFs1QJdkc/nf5DLVjJPWcvNsuW+vyW A==;
X-CSE-ConnectionGUID: 2S2SB0EtQLezlxMFlYttpA==
X-CSE-MsgGUID: EddTrNuZRDiJ38PPVa6eQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="96791430"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="96791430"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:44:26 -0700
X-CSE-ConnectionGUID: cdt2WdmMTCCMb1vQrZi8ag==
X-CSE-MsgGUID: 2ReeKODBQwG5RyA/EZEAnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="233726667"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.40])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:44:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 018/108] drm/i915/dp_link_training: Add helper to reset
 link recovery state
In-Reply-To: <20260428125233.1664668-19-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260428125233.1664668-1-imre.deak@intel.com>
 <20260428125233.1664668-19-imre.deak@intel.com>
Date: Fri, 08 May 2026 17:44:21 +0300
Message-ID: <e0b92259bf47d8dec0f8d35dd8c7def1d5fd6e17@intel.com>
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
X-Rspamd-Queue-Id: E36A34F8012
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

On Tue, 28 Apr 2026, Imre Deak <imre.deak@intel.com> wrote:
> Add link_recovery_reset() to make it explicit when link recovery is no
> longer needed and the recovery state can be cleared.
>
> This also prepares for replacing the sequential link training failure
> counter with an enum in a follow-up change.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_dp_link_training.c    | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index eb922dca69c5b..90bd1b0f1ab7d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1304,6 +1304,18 @@ link_recovery_mark_train_failure(struct intel_dp_link_training *link_training)
>  	return link_recovery_autoretrain_allowed(link_training);
>  }
>  
> +/**
> + * link_recovery_reset - reset the link recovery state
> + * @link_training: link training state
> + *
> + * Reset the link recovery state to indicate that no link recovery is
> + * required.

What's link recovery? Same as autoretrain? Different? It operates on the
same variable as autoretrain. Confused.

BR,
Jani.

> + */
> +static void link_recovery_reset(struct intel_dp_link_training *link_training)
> +{
> +	link_training->seq_train_failures = 0;
> +}
> +
>  /**
>   * intel_dp_stop_link_train - stop link training
>   * @intel_dp: DP struct
> @@ -1868,7 +1880,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
>  		link_training->force_train_failure--;
>  		lt_dbg(intel_dp, DP_PHY_DPRX, "Forcing link training failure\n");
>  	} else if (passed) {
> -		link_training->seq_train_failures = 0;
> +		link_recovery_reset(link_training);
>  		return;
>  	}
>  
> @@ -2538,7 +2550,7 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
>  void intel_dp_link_training_reset(struct intel_dp_link_training *link_training)
>  {
>  	link_training->retrain_disabled = false;
> -	link_training->seq_train_failures = 0;
> +	link_recovery_reset(link_training);
>  }
>  
>  /**

-- 
Jani Nikula, Intel
