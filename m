Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2OUqA/1woGlMjwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 17:12:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 800F11A9C2F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 17:12:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A06110E9AA;
	Thu, 26 Feb 2026 16:12:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZixFBDFt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C02310E9A9;
 Thu, 26 Feb 2026 16:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772122360; x=1803658360;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Nz492zzl5jdehZEwE1hU3FqEZ4iIC0pchqOfGVv2WVg=;
 b=ZixFBDFtjfm4QcVf4bCkgmSfVhY7jGD4YU/tiltav/d9i4mylEdPrI8n
 FNTK/XlZYValqgbNOSX+uDlTrinPk4xobukwXi5oVZ9Kw5TiPcv+6xi/g
 Z7xBiozOqoZapRsyv6CJar4ws/UdQDu7BRbdxJwYbTnVetZUNq+AcMG5n
 kfR6RPqWjFzMwK7mRea+UG6bT2o+XdMEt4lDEkF54tZ6WHvEYwU6nN9SJ
 Xdprj0AmAlgnfalBXIRYSPftsemYD42Qh0lpyq64ZhEgK31KAhhvuJXbz
 CPn34wrvA00KdyDjuCRMJ3SvfhX0StbRdspfoo1y3MWzrqyu2prPKwhVB Q==;
X-CSE-ConnectionGUID: U6Tn5b4HRWiy95bxJQem7Q==
X-CSE-MsgGUID: roS4ieV3QCqG5S7bv7h6FA==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="83823168"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="83823168"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 08:12:40 -0800
X-CSE-ConnectionGUID: OcN3r6hJRNCD+HjvDCJOyg==
X-CSE-MsgGUID: xvPbkbv0TZmT59g+4xzTFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="215733142"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 08:12:37 -0800
Date: Thu, 26 Feb 2026 18:12:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 09/14] drm/i915/psr: Add helper to check if PR is with
 link OFF
Message-ID: <aaBw8UiTZDg37Tml@intel.com>
References: <20260223134431.1639308-1-ankit.k.nautiyal@intel.com>
 <20260223134431.1639308-10-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260223134431.1639308-10-ankit.k.nautiyal@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 800F11A9C2F
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 07:14:26PM +0530, Ankit Nautiyal wrote:
> Introduce a helper intel_psr_is_pr_with_link_off() to check if the Panel
> Replay feature needs to be enabled with link off.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
>  drivers/gpu/drm/i915/display/intel_psr.h | 1 +
>  2 files changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 5bea2eda744b..e0e6ddbfaa2d 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -4575,3 +4575,9 @@ bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state)
>  
>  	return HAS_PSR_TRANS_PUSH_FRAME_CHANGE(display) && crtc_state->has_psr;
>  }
> +
> +bool intel_psr_is_pr_with_link_off(const struct intel_crtc_state *crtc_state)
> +{
> +	return crtc_state->has_panel_replay &&
> +		crtc_state->link_off_after_as_sdp_when_pr_active;

I don't think that flag has anything to do with what you're
trying to determine here.

> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
> index 394b641840b3..6764bcb13f9b 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -86,5 +86,6 @@ void intel_psr_compute_config_late(struct intel_dp *intel_dp,
>  				   struct intel_crtc_state *crtc_state);
>  int intel_psr_min_guardband(struct intel_crtc_state *crtc_state);
>  bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state);
> +bool intel_psr_is_pr_with_link_off(const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_PSR_H__ */
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
