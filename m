Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gKkeOtm+ymk//wUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 20:20:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D72035FB08
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 20:20:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFF3310E6C7;
	Mon, 30 Mar 2026 18:20:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kECWBzZO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3A4710E6B7;
 Mon, 30 Mar 2026 18:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774894807; x=1806430807;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=b9+u7O4a+BtwH7pYoRHslq87GZ+STopn9npaR/4CMuU=;
 b=kECWBzZO8OstONjX7A7sMhXsEk7pJSngXqZnj5CZRyPf1tXWR36dZ7gG
 DTcKIA1lqC5HEMXANl7zEOjzxF4p61lN5JGLMFumuS4EGO7nNzBslZ90G
 sS7gwOqW5z3ju455cgEYYRqKG8h240PJh7/TKlXmt/wJFFAiTnePUr6d4
 IXzoL8arB2zgPYJmZV2xypbwabnjfmq7X/zDnAhh/fYrFFyYjl/O/G6yF
 XALJ52gxgG7IuvIFbyt9BOdibsDTV2r6ngVu6u1QfH7Up/7vY+8NxZDhF
 QlF/EHY2+nnfUKjIAmfHKFWPHZAzPBN2DTAvYqM4kEsDyieJtjl+vH4uP Q==;
X-CSE-ConnectionGUID: EFoloMjoR1SLspdkX+Y4rA==
X-CSE-MsgGUID: deL6Jj8zR5ivoTN5zszkpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="79498714"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="79498714"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 11:20:06 -0700
X-CSE-ConnectionGUID: mQL3oP9RRxG2UfzFNofwTg==
X-CSE-MsgGUID: hX/vTiOAQQS5e49HKiZ99w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="249347305"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.155])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 11:20:04 -0700
Date: Mon, 30 Mar 2026 21:20:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 animesh.manna@intel.com
Subject: Re: [PATCH 07/19] drm/i915/dp: Account for AS_SDP guardband only
 when enabled
Message-ID: <acq-0YAYhNMqEnR2@intel.com>
References: <20260330040656.4116502-1-ankit.k.nautiyal@intel.com>
 <20260330040656.4116502-8-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260330040656.4116502-8-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.28 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.59)[subject];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 8D72035FB08
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 30, 2026 at 09:36:44AM +0530, Ankit Nautiyal wrote:
> Currently the intel_dp_sdp_min_guardband() accounts for AS_SDP for all
> platforms that support adaptive sync SDP even for configurations where
> it cannot be enabled. Instead account for adaptive sync SDP guardband
> only when it is enabled.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 49eeb35973a1..499850c2abcf 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -7374,7 +7374,6 @@ int intel_dp_get_lines_for_sdp(const struct intel_crtc_state *crtc_state, u32 ty
>  int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
>  			       bool assume_all_enabled)
>  {
> -	struct intel_display *display = to_intel_display(crtc_state);
>  	int sdp_guardband = 0;
>  
>  	if (assume_all_enabled ||
> @@ -7389,8 +7388,8 @@ int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
>  		sdp_guardband = max(sdp_guardband,
>  				    intel_dp_get_lines_for_sdp(crtc_state, DP_SDP_PPS));
>  
> -	if ((assume_all_enabled && HAS_AS_SDP(display)) ||
> -	    crtc_state->infoframes.enable & intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC))
> +	if (crtc_state->infoframes.enable &
> +	    intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC))
>  		sdp_guardband = max(sdp_guardband,
>  				    intel_dp_get_lines_for_sdp(crtc_state, DP_SDP_ADAPTIVE_SYNC));
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
