Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5TxVEpsaIGqpvwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 14:14:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B86AB637621
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 14:14:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=SIzvCyfh;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5396F10FCF8;
	Wed,  3 Jun 2026 12:14:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D67310FCF7;
 Wed,  3 Jun 2026 12:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780488856; x=1812024856;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6GBH1SbvnAwq99eoqjgkcKJKraUObaukB+fx9ZAXBnw=;
 b=SIzvCyfh9FeoWEJJ8HeEmdO/fBCPecURb1sBAjTBhL0/sbQaFurajG0E
 DZJ/Ri/r39JIaJmafoVy9pMeIOg7gOJZkYSlOoh5jmRyYA1W7EhoNSFM2
 eHzyJooHWZx0tw37RXv3nPXaVc7CLhEWf7ZG6lRPp5GztidfrD/jSeoq7
 813qOV2Mw6ET/txIyVlk+bYQWYZe3z2upGCmIL8XN1VRY9lFg/OLNLgFm
 F+1C9hr23j7x5LD1q5SAUMIJrBHf9fNjlpfgDiG8cOi+7tICHAMHUJrFA
 CUY5t5YlM1gON+v7YzP99su6BoMgtPolTTjxMXMf0F843EPRf/2EoM0Zs Q==;
X-CSE-ConnectionGUID: uZpbGftXSs+ynGmPQTT5jA==
X-CSE-MsgGUID: 6GM9bSGyRIC15q/X6bvFNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="81422668"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="81422668"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 05:14:15 -0700
X-CSE-ConnectionGUID: FMe8seORRoSkadVRRKXI9Q==
X-CSE-MsgGUID: /LB7BBjtTRK14WiUNFMHXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="274454783"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.220])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 05:14:14 -0700
Date: Wed, 3 Jun 2026 15:14:10 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, navaremanasi@google.com
Subject: Re: [PATCH 2/6] drm/i915/panel: Preserve Vtotal-Vsync distance while
 adjusting vtotal
Message-ID: <aiAakr2-HcKbQoYj@intel.com>
References: <20260522132511.321540-1-ankit.k.nautiyal@intel.com>
 <20260522132511.321540-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260522132511.321540-3-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.28 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.59)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
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
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,linux.intel.com:from_mime,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B86AB637621

On Fri, May 22, 2026 at 06:55:07PM +0530, Ankit Nautiyal wrote:
> As we increase the vtotal to accommodate lower resfresh rate for fixed
> modes, adjust the vtotal-vsync distance also.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index 20c548eea6da..14c7eea8ccb1 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -237,11 +237,18 @@ int intel_panel_compute_config(struct intel_connector *connector,
>  
>  	drm_mode_copy(adjusted_mode, fixed_mode);
>  
> -	if (is_vrr && fixed_mode_vrefresh != vrefresh)
> +	if (is_vrr && fixed_mode_vrefresh != vrefresh) {
> +		int vsync_start_diff = adjusted_mode->vtotal - adjusted_mode->vsync_start;
> +		int vsync_end_diff = adjusted_mode->vtotal - adjusted_mode->vsync_end;

I'd probably just drop the "_diff" part from the variable names.
It makes me think of a difference between the vsync pulse in
two modes or something.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +
>  		adjusted_mode->vtotal =
>  			DIV_ROUND_CLOSEST(adjusted_mode->clock * 1000,
>  					  adjusted_mode->htotal * vrefresh);
>  
> +		adjusted_mode->vsync_start = adjusted_mode->vtotal - vsync_start_diff;
> +		adjusted_mode->vsync_end = adjusted_mode->vtotal - vsync_end_diff;
> +	}
> +
>  	drm_mode_set_crtcinfo(adjusted_mode, 0);
>  
>  	return 0;
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
