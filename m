Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c5JmLyZIMWobgAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:57:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3393368FAC9
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:57:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="Y/QK9jR2";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB56110EBB7;
	Tue, 16 Jun 2026 12:57:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B99CD10EBB4;
 Tue, 16 Jun 2026 12:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781614627; x=1813150627;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=eukF40f/4UwmTVp7KMjf7Rm2Kz4ab0DlL+g0tPFJNko=;
 b=Y/QK9jR2ft+/bI4PX2sUCBQszYmX6dqKOYmhD45IMCT4LsOOuCdUZbe/
 x0rNZuKVR+8OGv4D1O04FJEtjl94Qwhf87wZi5mNtMInTCEi1DZIloNzm
 h04pHeGxU0KM0nNhEN594zRhb+s10X2TXBcJ5LIVXrHgh4+EoveH5jcEy
 /P/bJhnKzdmlfQDaq7DPAz9LgHEWpYMAKf+p2AGi46o4pUXMGF2qfMsUu
 RxZ4giKrrlPZbiMMhG5aKhEkwap6mTSRmXHQBTqmHlkGNnuCKEzZQZEIB
 QZLfG+p+NMh/e2bI2RAnYfS89iNfJ1o3M7FeGSWYNUoV6cyhNzT9LOBsH A==;
X-CSE-ConnectionGUID: awUZuBNOT3+FnxUwoQuOAA==
X-CSE-MsgGUID: tBxp6OLiS2WmATLVnRypug==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="86215844"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="86215844"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:57:07 -0700
X-CSE-ConnectionGUID: w1baa4zXQf2UoK4ASZ14Rw==
X-CSE-MsgGUID: wzv6phKgRwqdxbhMCqPm5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="247828858"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.167])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:57:04 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>, Stephen Fuhry
 <fuhrysteve@gmail.com>
Subject: Re: [PATCH v2 1/2] drm/i915/mst: Unify fec_enable across mst streams
In-Reply-To: <20260616-fec-v2-1-49a22680138c@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260616-fec-v2-0-49a22680138c@intel.com>
 <20260616-fec-v2-1-49a22680138c@intel.com>
Date: Tue, 16 Jun 2026 15:57:01 +0300
Message-ID: <fa16e6f2492443b07ef769eb7ea2dafb0f8c0b1f@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,linux.intel.com:from_mime,gitlab.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3393368FAC9

On Tue, 16 Jun 2026, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> FEC is a link-wide property: DP_TP_CTL_FEC_ENABLE is a per-port HW bit
> while crtc_state->fec_enable is per-stream. With DP MST several streams
> share the same port, so if any sibling stream needs FEC the per-port HW
> bit is on for every sibling. If sibling crtc_states disagree the
> following two symptoms appear:
>
> - intel_pipe_config_compare() rejects fastset on the sibling whose new
>   crtc_state->fec_enable disagrees with the old (HW) value
>   ("fastset requirement not met in fec_enable"), forcing an
>   unnecessary full modeset.
> - verify_crtc_state() after commit reports a fec_enable mismatch
>   ("[CRTC:..] mismatch in fec_enable (expected no, found yes)") because
>   the per-port HW bit is read back into every sibling's hw state.
>
> Walk every MST connector on @mst_mgr, pulling currently-active siblings
> into @state if they are not already in it (covers the case where the
> user's commit touches only a subset of MST streams on the link). Then OR
> all sibling fec_enable values together and write the unified result back
> into every sibling crtc_state. The unification only widens
> (false -> true), never narrows, so a stream that genuinely needs FEC
> keeps it.
>
> This runs from intel_dp_mst_atomic_check_link(), which is invoked after
> intel_atomic_check_config_and_link() has finished all per-stream
> compute_config and compute_config_late passes but before
> intel_crtc_check_fastset() and the post-commit verify, so the unified
> value is visible to both checks.

I believe the refcounting should already be in place. See my reply to
patch 2.

Here, it's slightly misleading to say FEC is a "per-port bit". I think
the main point here is that for DP MST it gets set/cleared for the
primary encoder & master transcoder in the first/last stream.

Maybe add debug logging to FEC enable/disable and see if it gets called
too many times or not.

Seems like the confusion comes from the fact that the readout is also
based on the master transcoder register, and throws off the state
checker.

BR,
Jani.


>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16073
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> Tested-by: Stephen Fuhry <fuhrysteve@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 70 +++++++++++++++++++++++++++++
>  1 file changed, 70 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index bcdc504913471a1ac7d255cde49a907c9f3d88a6..d487f1c90dcd2671754e6c6f28f207f32ace9ee2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -881,6 +881,72 @@ static int intel_dp_mst_check_bw(struct intel_atomic_state *state,
>  	return ret ? : -EAGAIN;
>  }
>  
> +/*
> + * Unify crtc_state->fec_enable across every MST sibling stream on @mst_mgr.
> + */
> +static int intel_dp_mst_unify_fec_enable(struct intel_atomic_state *state,
> +					 struct drm_dp_mst_topology_mgr *mst_mgr)
> +{
> +	struct intel_display *display = to_intel_display(state);
> +	struct drm_connector_list_iter connector_list_iter;
> +	struct intel_connector *connector;
> +	struct intel_crtc *crtcs[I915_MAX_PIPES];
> +	int n_crtcs = 0;
> +	bool need_fec = false;
> +	int ret = 0;
> +	int i;
> +
> +	drm_connector_list_iter_begin(display->drm, &connector_list_iter);
> +	for_each_intel_connector_iter(connector, &connector_list_iter) {
> +		struct intel_digital_connector_state *conn_state;
> +		struct intel_crtc_state *crtc_state;
> +		struct intel_crtc *crtc;
> +
> +		if (&connector->mst.dp->mst.mgr != mst_mgr)
> +			continue;
> +
> +		conn_state = intel_atomic_get_digital_connector_state(state,
> +								      connector);
> +		if (IS_ERR(conn_state)) {
> +			ret = PTR_ERR(conn_state);
> +			break;
> +		}
> +
> +		if (!conn_state->base.crtc)
> +			continue;
> +
> +		crtc = to_intel_crtc(conn_state->base.crtc);
> +		crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
> +		if (IS_ERR(crtc_state)) {
> +			ret = PTR_ERR(crtc_state);
> +			break;
> +		}
> +
> +		if (!crtc_state->hw.active)
> +			continue;
> +
> +		if (drm_WARN_ON(display->drm, n_crtcs >= ARRAY_SIZE(crtcs)))
> +			break;
> +
> +		crtcs[n_crtcs++] = crtc;
> +		if (crtc_state->fec_enable)
> +			need_fec = true;
> +	}
> +	drm_connector_list_iter_end(&connector_list_iter);
> +
> +	if (ret || !need_fec)
> +		return ret;
> +
> +	for (i = 0; i < n_crtcs; i++) {
> +		struct intel_crtc_state *crtc_state =
> +			intel_atomic_get_new_crtc_state(state, crtcs[i]);
> +
> +		crtc_state->fec_enable = true;
> +	}
> +
> +	return 0;
> +}
> +
>  /**
>   * intel_dp_mst_atomic_check_link - check all modeset MST link configuration
>   * @state: intel atomic state
> @@ -908,6 +974,10 @@ int intel_dp_mst_atomic_check_link(struct intel_atomic_state *state,
>  	int i;
>  
>  	for_each_new_mst_mgr_in_state(&state->base, mgr, mst_state, i) {
> +		ret = intel_dp_mst_unify_fec_enable(state, mgr);
> +		if (ret)
> +			return ret;
> +
>  		ret = intel_dp_mst_check_dsc_change(state, mgr, limits);
>  		if (ret)
>  			return ret;

-- 
Jani Nikula, Intel
