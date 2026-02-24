Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Bn2BySanWnwQgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 13:31:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F451186FD3
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 13:31:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6A0410E56B;
	Tue, 24 Feb 2026 12:31:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VZ2W/E1I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA58010E568;
 Tue, 24 Feb 2026 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771936288; x=1803472288;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=jNIE+vvrVQGGTBqFyIKa7vVsOCxiBa5OtyW+oajtXOI=;
 b=VZ2W/E1IIeV/8Iak+/W8w8RikN8oN4+HI0FiyPVH9cweg586FvVXeBdD
 0cALFjyhf3iRJkmv78wSiklwpu0EPHA+w6mG+OhybkF7rGVC5Rf3NQFox
 mlOrBd52bIGjwTRlG1o5NXmzEE16/dJmE/dfCaTEnQxcI6UYfhXnpXMXy
 S7sj2L0rsmzKq3NvlS35SlpkZ21Fza+pGiKMYL2VV443YbqnMxtpRWOqs
 xXOBBAxb4h0aGAWpDSHXz84ogbNZmvzhIyc/bL/wQR7CT/5MDubwxAKA6
 Jxg2YU3nhH+MWkd1rB78ZMO2BEz8Ok+4Nn40yIJ+vm4wuGTf1JYIgOgSl g==;
X-CSE-ConnectionGUID: sKqXZx3VSIyXRgOI2I20wA==
X-CSE-MsgGUID: busD8xsATcCTWtKgvMp3+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="90360269"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="90360269"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 04:31:28 -0800
X-CSE-ConnectionGUID: jwzPOXGaR3iRVTiOBodkGw==
X-CSE-MsgGUID: dSPoh31DSi67+bqRXq0Syg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="216054520"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.20])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 04:31:26 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: arun.r.murthy@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH v3 1/8] drm/i915/backlight: Use default/max brightness
 for VESA AUX backlight init
In-Reply-To: <20260224034526.2730130-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260224034526.2730130-1-suraj.kandpal@intel.com>
 <20260224034526.2730130-2-suraj.kandpal@intel.com>
Date: Tue, 24 Feb 2026 14:31:22 +0200
Message-ID: <1a76dfe14cbc90b4aaec6f0e54b4e8df9f480efa@intel.com>
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
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 5F451186FD3
X-Rspamd-Action: no action

On Tue, 24 Feb 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> If the brightness fetched from VBT/previous state is 0 on backlight
> initialization, then set the brightness to a default/max value.
> Whenever the minimum brightness is reported as 0 there are chances
> we end up with blank screen. This confuses the user into thinking
> the display is acting weird. This occurs in eDP 1.5 when
> we are using PANEL_LUMINANCE_OVERRIDE mode to mainpulate brightness
> via luminance values.
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15671
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
> v1 -> v2:
> - Let users set brightness to 0, make it so that it's just not
> done by default (Arun)
>
> v2 -> v3:
> -Update commit header and message (Arun)
>
>  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index eb05ef4bd9f6..c40ce310ad97 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -564,6 +564,8 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
>  		}
>  		panel->backlight.level = intel_dp_aux_vesa_get_backlight(connector, 0);
>  		panel->backlight.enabled = panel->backlight.level != 0;
> +		if (!panel->backlight.level)
> +			panel->backlight.level = panel->backlight.max;

How does this help when .enabled is still based on level != 0 above?

>  		drm_dbg_kms(display->drm,
>  			    "[CONNECTOR:%d:%s] AUX VESA Nits backlight level is controlled through DPCD\n",
>  			    connector->base.base.id, connector->base.name);
> @@ -573,6 +575,8 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
>  		if (current_mode == DP_EDP_BACKLIGHT_CONTROL_MODE_DPCD) {
>  			panel->backlight.level = current_level;
>  			panel->backlight.enabled = panel->backlight.level != 0;
> +			if (!panel->backlight.level)
> +				panel->backlight.level = panel->backlight.max;

Ditto.

>  		} else {
>  			panel->backlight.level = panel->backlight.max;
>  			panel->backlight.enabled = false;

-- 
Jani Nikula, Intel
