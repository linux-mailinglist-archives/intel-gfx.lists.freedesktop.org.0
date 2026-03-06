Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBfuAl3CqmlXWQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 13:02:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A16220040
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 13:02:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47D3410ED0C;
	Fri,  6 Mar 2026 12:02:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D00FF10ED16;
 Fri,  6 Mar 2026 12:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772798539; x=1804334539;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9200xVvGhtaOip40/N6BBm1zw1uAK5elWl3kRAo7RWM=;
 b=T/C/gXlZ7yCxsMvO015aGq5HqJ9MzuuWWrRNDO3Aj3F0Yc/Fg5MrYmfb
 8zUqeDbPpHnkpdGHXHBtHKSYlRXCOY+fWMQNj0iJt34CNXxHNM5sul9Ev
 tGRAVADFDjFCtiqmbu8wKJEUmei82ghv/rt+xrfbCqmbsgIylvtjGQkHr
 PW5udS/GffsVof1ojK5BgkLlkpX9+It049/Rel+GllBp1hAoTBz4zmpIi
 R/g89NykBFi4TAewi6ST2X02OyS7oYfu8dzVLV1HFS/9sOlkbzdlQkxT5
 cjDYrzstB5dHvlPobOkOpSuY5t8CcSpvxqjYsAOeWouCJ0yPsDBrQHTKU w==;
X-CSE-ConnectionGUID: hKjd4OHWQweASeawHjrY9Q==
X-CSE-MsgGUID: QfytDb3TQ0eclCmDdXD0sg==
X-IronPort-AV: E=McAfee;i="6800,10657,11720"; a="61477690"
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; d="scan'208";a="61477690"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2026 04:02:14 -0800
X-CSE-ConnectionGUID: G8Vu2HMIQPaayN93oC4ymw==
X-CSE-MsgGUID: 1OG+VBbaQlCQl8ggBpTQcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; d="scan'208";a="223116791"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.250])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2026 04:02:12 -0800
Date: Fri, 6 Mar 2026 14:02:09 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 arun.r.murthy@intel.com
Subject: Re: [PATCH 3/5] drm/i915/dp: Add helper for AS SDP TL and fix
 documentation
Message-ID: <aarCQYHTCCEKtB2R@intel.com>
References: <20260305040118.2576312-1-ankit.k.nautiyal@intel.com>
 <20260305040118.2576312-4-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260305040118.2576312-4-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: B3A16220040
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.72 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.53)[subject];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_DNSFAIL(0.00)[intel.com : query timed out];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 09:31:16AM +0530, Ankit Nautiyal wrote:
> Add a helper, intel_dp_emp_as_sdp_tl(), to compute the EMP_AS_SDP_TL
> value used when programming the double‑buffering point and transmission
> line for VRR packets.
> Also improve the documentation: the AS SDP transmission line corresponds
> to the T1 position, which maps to the start of the Vsync pulse.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  | 9 +++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h  | 1 +
>  drivers/gpu/drm/i915/display/intel_vrr.c | 4 ++--
>  3 files changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 86390553800d..9204a813639a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -7288,6 +7288,15 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>  	return true;
>  }
>  
> +int intel_dp_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
> +{
> +	/*
> +	 * EMP_AS_SDP_TL defines the T1 position : The default AS SDP position
> +	 * that corresponds to the start of the Vsync pulse.
> +	 */
> +	return crtc_state->vrr.vsync_start;
> +}

Other parts of the code (eg. ALPM) still just directly use the
adjusted_mode timings to calculate the same stuff. So this doesn't
really seem to help us.

Feels like all of our abstractions around this SDP transmission line
stuff are way too low level, and thus the same information is
calculated in different ways in different parts of the code. There
should be a single place that defines the transmission line(s),
and everyone should just consult that stuff (regardless of whether
the platform uses implicit transmission lines, EMP_AS_SDP_TL, or
the new stuff).

> +
>  void intel_dp_cmn_sdp_transmission_line_get_config(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 24df234a43d3..abb2fcdea352 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -237,6 +237,7 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>  	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
>  		for_each_if(intel_dp_joiner_candidate_valid(__connector, (__mode)->hdisplay, __num_joined_pipes))
>  
> +int intel_dp_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state);
>  void intel_dp_cmn_sdp_transmission_line_get_config(struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 00ca76dbdd6c..2b4e4e55d008 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -642,12 +642,12 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  	 * double buffering point and transmission line for VRR packets for
>  	 * HDMI2.1/DP/eDP/DP->HDMI2.1 PCON.
>  	 * Since currently we support VRR only for DP/eDP, so this is programmed
> -	 * to for Adaptive Sync SDP to Vsync start.
> +	 * only for Adaptive Sync SDP.
>  	 */
>  	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
>  		intel_de_write(display,
>  			       EMP_AS_SDP_TL(display, cpu_transcoder),
> -			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
> +			       EMP_AS_SDP_DB_TL(intel_dp_emp_as_sdp_tl(crtc_state)));
>  }
>  
>  void
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
