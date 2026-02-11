Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHnUFNmFjGmfqAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 14:36:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C813D124D1A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 14:36:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF87B10E124;
	Wed, 11 Feb 2026 13:36:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="izvb0yHW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82A3410E124;
 Wed, 11 Feb 2026 13:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770816981; x=1802352981;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=GUwUqkIO+Hnh/JOV14b63agmfbz3jph/1IkvnMRrPGE=;
 b=izvb0yHWJvmVzDeNPq+lxS7kBl65LGgdBwbfv4db79hVNLNH7Z2uE7j2
 KvlnoKeQdEtYBNTxQUy+cxB65PID+8BExRZGUA8ZDLP0n2YESyUnjpBhL
 yJR7jd1zrs1qndDboqXWxKrdQFqtvX1LlmkgnrlUUu8nA9yHo8/7Ca87u
 EoM/VQW7XZH/46nfbvA7r5pzBnU4f1WmTxOqTkXVAWOf6D3LirUz+6OHI
 rcM8PmrygeuyV2zAJCROae1ewIZFYtKS9GgeJKHGdQAeON+Uz7xMAd4pC
 4BeLq1CArxVtneciWsjuUdbkBmn2q3rGEASdlLav9mEeF0xKbe9dC7jLu Q==;
X-CSE-ConnectionGUID: LcMVKG1oSIiuVGvkvCkDzg==
X-CSE-MsgGUID: pGT8qGkIQiOT0FU37ZWy7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="72006792"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="72006792"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 05:36:21 -0800
X-CSE-ConnectionGUID: 89yenzJXTwOqki0wc+VrPQ==
X-CSE-MsgGUID: UH6NQeCmRMa6i/eEbDqnuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="212080134"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 05:36:20 -0800
Date: Wed, 11 Feb 2026 14:36:18 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Imre Deak <imre.deak@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/dp: Clamp the connector max_bpc request to
 the valid pipe bpp range
In-Reply-To: <20260211115811.508496-2-imre.deak@intel.com>
Message-ID: <e878f57a-22b7-00cc-fb6b-6722a6d144ae@intel.com>
References: <20260211115811.508496-1-imre.deak@intel.com>
 <20260211115811.508496-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 BOUNDARY="1527428566-1722682672-1770816527=:161755"
Content-ID: <f9e2873b-5f29-7947-32d9-d50c7d126c1a@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: C813D124D1A
X-Rspamd-Action: no action

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--1527428566-1722682672-1770816527=:161755
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <7f3b3eee-4455-0c8d-18e3-f1155157c64a@intel.com>

On Wed, 11 Feb 2026, Imre Deak wrote:
> The user's request for a maximum BPC - via the max-bpc connector
> property - determines the pipe BPP selected by the encoder, which is in
> turn used either as the uncompressed output BPP or as the input BPP for
> the DSC engine. This user-requested BPC->BPP can be outside of the
> source/sink's supported valid min/max pipe BPP range and atm such an
> out-of-bound request will be rejected by the encoder's state
> computation.
>
> As opposed to the above, the semantic for the max-bpc connector property

s/semantic/semantics

> - which the user may reasonably expect - is not to fail the modeset in
> case of an out-of-bound max BPC request, rather to adjust the request
> clamping it to the valid BPP range.
>
> Based on the above, calculate the baseline (i.e. the non-DP specific
> platform/EDID) _maximum_ pipe BPP, storing it in
> intel_crtc_state::max_pipe_bpp, separately from the baseline _target_
> pipe BPP (which is the lower BPP of the baseline maximum and requested
> BPP, stored in intel_crtc_state::pipe_bpp). This allows the encoder
> state computation to use the baseline maximum pipe BPP as a hard limit
> for the selected pipe BPP, while also letting it use the baseline target
> pipe BPP only as a preference, clamping this target BPP to the valid
> DP pipe BPP range.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

> ---
> drivers/gpu/drm/i915/display/intel_display.c  | 12 ++++++++++
> .../drm/i915/display/intel_display_types.h    |  1 +
> drivers/gpu/drm/i915/display/intel_dp.c       | 24 +++++++++++++++++--
> 3 files changed, 35 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ab4b59916d2e7..dae7a7d11cb84 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4374,12 +4374,24 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
> 	struct intel_display *display = to_intel_display(crtc_state);
> 	struct drm_connector *connector = conn_state->connector;
> 	const struct drm_display_info *info = &connector->display_info;
> +	int edid_bpc = info->bpc ? : 8;
> 	int target_pipe_bpp;
> +	int max_edid_bpp;
> +
> +	max_edid_bpp = bpc_to_bpp(edid_bpc);
> +	if (max_edid_bpp < 0)
> +		return max_edid_bpp;
>
> 	target_pipe_bpp = bpc_to_bpp(conn_state->max_bpc);
> 	if (target_pipe_bpp < 0)
> 		return target_pipe_bpp;
>
> +	/*
> +	 * The maximum pipe BPP is the minimum of the max platform BPP and
> +	 * the max EDID BPP.
> +	 */
> +	crtc_state->max_pipe_bpp = min(crtc_state->pipe_bpp, max_edid_bpp);
> +
> 	if (target_pipe_bpp < crtc_state->pipe_bpp) {
> 		drm_dbg_kms(display->drm,
> 			    "[CONNECTOR:%d:%s] Limiting target display pipe bpp to %d "
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index e6298279dc892..e8e4af03a6a6c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1163,6 +1163,7 @@ struct intel_crtc_state {
> 	} dsi_pll;
>
> 	int max_link_bpp_x16;	/* in 1/16 bpp units */
> +	int max_pipe_bpp;	/* in 1 bpp units */
> 	int pipe_bpp;		/* in 1 bpp units */
> 	int min_hblank;
> 	struct intel_link_m_n dp_m_n;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 48845899298e4..4018b0122e8e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1769,7 +1769,7 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
> 	struct intel_connector *connector = intel_dp->attached_connector;
> 	int bpp, bpc;
>
> -	bpc = crtc_state->pipe_bpp / 3;
> +	bpc = crtc_state->max_pipe_bpp / 3;
>
> 	if (intel_dp->dfp.max_bpc)
> 		bpc = min_t(int, bpc, intel_dp->dfp.max_bpc);
> @@ -2726,7 +2726,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> 		 * previously. This hack should be removed once we have the
> 		 * proper retry logic in place.
> 		 */
> -		limits->pipe.max_bpp = min(crtc_state->pipe_bpp, 24);
> +		limits->pipe.max_bpp = min(crtc_state->max_pipe_bpp, 24);
> 	} else {
> 		limits->pipe.max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
> 							respect_downstream_limits);
> @@ -2757,6 +2757,26 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> 	if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector, limits))
> 		return false;
>
> +	/*
> +	 * crtc_state->pipe_bpp is the non-DP specific baseline (platform/EDID)
> +	 * maximum pipe BPP limited by the max-BPC connector property request.
> +	 * Since by now pipe.max_bpp is <= the above baseline BPP, the only
> +	 * remaining reason for adjusting pipe.max_bpp is the max-BPC connector
> +	 * property request. Adjust pipe.max_bpp to this request within the
> +	 * current valid pipe.min_bpp .. pipe.max_bpp range.
> +	 */
> +	limits->pipe.max_bpp = clamp(crtc_state->pipe_bpp, limits->pipe.min_bpp,
> +				     limits->pipe.max_bpp);
> +	if (dsc)
> +		limits->pipe.max_bpp = align_max_sink_dsc_input_bpp(connector,
> +								    limits->pipe.max_bpp);
> +
> +	if (limits->pipe.max_bpp != crtc_state->pipe_bpp)
> +		drm_dbg_kms(display->drm,
> +			    "[CONNECTOR:%d:%s] Adjusting requested max pipe bpp %d -> %d\n",
> +			    connector->base.base.id, connector->base.name,
> +			    crtc_state->pipe_bpp, limits->pipe.max_bpp);
> +
> 	if (is_mst || intel_dp->use_max_params) {
> 		/*
> 		 * For MST we always configure max link bw - the spec doesn't
> -- 
> 2.49.1
>
>
--1527428566-1722682672-1770816527=:161755--
