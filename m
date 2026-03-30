Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aArxCivRymmsAQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 21:38:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BD53607E2
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 21:38:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99C7A10E6B2;
	Mon, 30 Mar 2026 19:38:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GmDrrGBO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53C2710E64B;
 Mon, 30 Mar 2026 19:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774899493; x=1806435493;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DcqEoJ7zbucSYNLWuBYakMbn63CgnCLSY/qxrKxZYJo=;
 b=GmDrrGBOy7h/YNXWSW7bsM7dJYCmnKPrj76rea1Eeurh2j2Mu4hk80NE
 yzFXoe7kjz+OLeFPJuTkHxh52i7RaxevqoCKiTIGpKzYpRxY+KMQex/gi
 oBL8RQ8RP7m6j7pxif36Nh8uenf5CDb2t54GolSkKAUnLu64evEadCbcD
 bmWXm3VR+fEbfoORI3KH57qVvbo/BPNfzmhM9zxi4nfayW/q3v0ayfqTe
 gv7UlU0NawYDT3+Xd5I+LY/7aBhUpqbhAQ3/XppkYHSLDDEH3OkYjg/9j
 NvmlxWgmkMldsfq/hL38fgBMWZz2lCuVcqHPldyYX/IWKmIwcu9O7CzUP A==;
X-CSE-ConnectionGUID: XT/A+jZkSOOoXHGkzhMHag==
X-CSE-MsgGUID: xwSrb/uQTkCoGnFvL1x09g==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="98512516"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="98512516"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 12:38:13 -0700
X-CSE-ConnectionGUID: fC3nYYvnTm2dHXI2BtNY/w==
X-CSE-MsgGUID: Nzs239/rQfShtQ2+/73V+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="231075077"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.155])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 12:38:11 -0700
Date: Mon, 30 Mar 2026 22:38:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 animesh.manna@intel.com
Subject: Re: [PATCH 18/19] drm/i915/dp: Split AS SDP computation between
 compute_config and compute_config_late
Message-ID: <acrRH1MxM18YAOrn@intel.com>
References: <20260330040656.4116502-1-ankit.k.nautiyal@intel.com>
 <20260330040656.4116502-19-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260330040656.4116502-19-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.25 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.56)[subject];
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
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 72BD53607E2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 30, 2026 at 09:36:55AM +0530, Ankit Nautiyal wrote:
> Currently we enable AS SDP only when VRR is enabled. As we start using
> AS SDP for other features, this becomes a problem. The AS SDP
> configuration can change dynamically based on VRR, CMRR, PR, ALPM, etc.
> Since these features may be enabled or disabled after the initial
> configuration, the AS SDP parameters need to be computed later in the
> pipeline.
> 
> However, not all of the AS SDP logic can be moved to the late stage:
> the VRR guardband optimization depends on knowing early whether AS SDP
> can be used. Without this, we would end up accounting for AS SDP on all
> platforms that support it, even for panels that do not support AS SDP.
> Therefore we set the infoframe enable bit for AS SDP during
> compute_config(), before the guardband is computed.
> 
> To handle these constraints, split the AS SDP programming into two
> phases:
> 
>  - intel_dp_compute_as_sdp()
>    Runs during compute_config().
>    Sets only the infoframe enable bit so that the guardband logic can
>    account for AS SDP requirements.
> 
>  - intel_dp_as_sdp_compute_config_late()
>    Runs during compute_config_late().
>    Computes all remaining AS SDP fields based on the features that need
>    it.
> 
> The late-stage computation is called from
> intel_dp_sdp_compute_config_late(), before computing the minimum guardband
> for SDPs.
> 
> This is a preparatory change. A subsequent patch will always enable AS
> SDP when the source and sink support it.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 67 ++++++++++++++++---------
>  1 file changed, 44 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 343bb2a86675..7da3dee226a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3142,30 +3142,17 @@ static bool intel_dp_can_use_as_sdp(struct intel_dp *intel_dp,
>  static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>  				    struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_dp_as_sdp *as_sdp = &crtc_state->infoframes.as_sdp;
> -	const struct drm_display_mode *adjusted_mode =
> -		&crtc_state->hw.adjusted_mode;
> -
>  	if (!intel_dp_can_use_as_sdp(intel_dp, crtc_state))
>  		return;
>  
> +	/*
> +	 * Only set the infoframes.enable flag here.
> +	 * The remaining AS SDP fields are programmed in the
> +	 * compute_config_late() phase. We need this flag early so that the
> +	 * VRR guardband calculation can properly account for AS SDP
> +	 * requirements.
> +	 */
>  	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
> -
> -	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
> -	as_sdp->length = 0x9;
> -	as_sdp->duration_incr_ms = 0;
> -	as_sdp->revision = 0x2;
> -	as_sdp->vtotal = intel_vrr_vmin_vtotal(crtc_state);
> -
> -	if (crtc_state->cmrr.enable) {
> -		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
> -		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
> -		as_sdp->target_rr_divider = true;
> -	} else if (crtc_state->vrr.enable) {
> -		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
> -	} else {
> -		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
> -	}
>  }
>  
>  static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
> @@ -7370,11 +7357,45 @@ void intel_dp_mst_resume(struct intel_display *display)
>  }
>  
>  static
> -int intel_dp_sdp_compute_config_late(struct intel_crtc_state *crtc_state)
> +void intel_dp_as_sdp_compute_config_late(struct intel_dp *intel_dp,
> +					 struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_dp_as_sdp *as_sdp = &crtc_state->infoframes.as_sdp;
> +	const struct drm_display_mode *adjusted_mode =
> +		&crtc_state->hw.adjusted_mode;
> +
> +	if ((crtc_state->infoframes.enable &
> +	    intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC)) == 0)
> +		return;
> +
> +	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
> +	as_sdp->length = 0x9;
> +	as_sdp->duration_incr_ms = 0;
> +	as_sdp->revision = 0x2;
> +	as_sdp->vtotal = intel_vrr_vmin_vtotal(crtc_state);
> +
> +	if (crtc_state->cmrr.enable) {
> +		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
> +		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
> +		as_sdp->target_rr_divider = true;
> +	} else if (crtc_state->vrr.enable) {
> +		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
> +	} else {
> +		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
> +	}

Nothing in here right now depends on anything but
intel_vrr_compute_config(). Was there something specific you will
need to consult here that is computed later?

> +}
> +
> +static
> +int intel_dp_sdp_compute_config_late(struct intel_dp *intel_dp,
> +				     struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	int guardband = intel_crtc_vblank_length(crtc_state);
> -	int min_sdp_guardband = intel_dp_sdp_min_guardband(crtc_state, false);
> +	int min_sdp_guardband;
> +
> +	intel_dp_as_sdp_compute_config_late(intel_dp, crtc_state);
> +
> +	min_sdp_guardband = intel_dp_sdp_min_guardband(crtc_state, false);
>  
>  	if (guardband < min_sdp_guardband) {
>  		drm_dbg_kms(display->drm, "guardband %d < min sdp guardband %d\n",
> @@ -7394,7 +7415,7 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
>  
>  	intel_psr_compute_config_late(intel_dp, crtc_state);
>  
> -	ret = intel_dp_sdp_compute_config_late(crtc_state);
> +	ret = intel_dp_sdp_compute_config_late(intel_dp, crtc_state);
>  	if (ret)
>  		return ret;
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
