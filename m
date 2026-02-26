Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6IZKMvVmoGkejQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 16:29:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 563361A8BC7
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 16:29:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C85F10E975;
	Thu, 26 Feb 2026 15:29:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MLHq10NH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8735E10E099;
 Thu, 26 Feb 2026 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772119793; x=1803655793;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=D3KWRk0viE1r2G5yx1oSO95khOy/TM76g/zm9jLB6As=;
 b=MLHq10NH2X/8nfEsO+fpXlf5bhiXRypxxAmRHyzGwxRhU7rgoFMwX/pH
 m7RJIas0CiPqvjS0uSG9oM+c2w4Rpie0/huue8fl7x05dVnwkZcvttoU/
 RwVun6sgCXNR62AbhZsi4FBRmvXuDmE72f7rTk/ajF2NEMHecMSfz57Fi
 CmBE01BQgoGShPYEQzOhWvXqkvvI4yTZQjTsGjlhFMVslNTqv1KvQKXl6
 xxS7xLFKOGWQBZ253mGGtiybppGFXCIfLr9lG3BD2TmzGBQVgiYMfq4Mf
 toxqT/5xLM6lUEI/PKJC2AeQtLf6A+AvCRkuOUujiu1X6vPgVim94/TjU A==;
X-CSE-ConnectionGUID: a9Hc/5GkQQm9pxIDxVy8qw==
X-CSE-MsgGUID: 0gaawcs/SlaG6/fF+O3hrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="72885043"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="72885043"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 07:29:53 -0800
X-CSE-ConnectionGUID: tF9Ugsj+QUOxT0HOKOaQnw==
X-CSE-MsgGUID: EWZj2LDiSI6HJXZsU3L99w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="216726502"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 07:29:51 -0800
Date: Thu, 26 Feb 2026 17:29:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 03/14] drm/i915/dp: Add a helper to decide if AS SDP is
 needed
Message-ID: <aaBm7JNiW1T7Mmfc@intel.com>
References: <20260223134431.1639308-1-ankit.k.nautiyal@intel.com>
 <20260223134431.1639308-4-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260223134431.1639308-4-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
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
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 563361A8BC7
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 07:14:20PM +0530, Ankit Nautiyal wrote:
> Add a helper to check if AS SDP is needed. Currently AS SDP is only
> required when VRR is enabled. However, there are other use cases, along
> with the missing case of CMRR, dealt in subsequent changes.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index b999d8c085c7..65764ab0bb9b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3111,6 +3111,12 @@ static void intel_dp_compute_vsc_colorimetry(const struct intel_crtc_state *crtc
>  	vsc->content_type = DP_CONTENT_TYPE_NOT_DEFINED;
>  }
>  
> +static bool intel_dp_needs_as_sdp(struct intel_dp *intel_dp,
> +				  struct intel_crtc_state *crtc_state)
> +{
> +	return crtc_state->vrr.enable;

Since we don't support VRR+PCON I don't think we actually
need the AS SDP for VRR.

And I don't think we even have a fastset path for this stuff
(or where is it?) so isn't this already causing fastset
failures for VRR enable/disable? Or maybe we don't have
displays with both VRR and AS SDP support anywhere?

> +}
> +
>  static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>  				    struct intel_crtc_state *crtc_state)
>  {
> @@ -3118,7 +3124,10 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
>  
> -	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
> +	if (!intel_dp->as_sdp_supported)
> +		return;
> +
> +	if (!intel_dp_needs_as_sdp(intel_dp, crtc_state))
>  		return;
>  
>  	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
