Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKHCCGdFzmlQmQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 12:31:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA037387C07
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 12:31:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A868610F20B;
	Thu,  2 Apr 2026 10:30:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VKfFCLZT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F01F510F15E;
 Thu,  2 Apr 2026 10:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775125858; x=1806661858;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+slqjDXgcPW+Sz5VulUCLT/9DZ79Wc/Ci+9yY+GPnIE=;
 b=VKfFCLZTbxCOFsfyNaH+UD3+HLQougDPT1U/xQznaSVkirFw0tWpXyR8
 Y3EzwkU5YP4J+3fpmJZoVKCT7ZlDxKqaQzlahjQXrkeMU7y1iAK08TQi5
 fthAd336NXo8iIE0rxnFF0uCgmVZchtuCfUU50A5x/3oShwCsXTJTC8qj
 W0mwiYeB748U0IKwA8BoplapKnbDgkROwF2aqG420Cuir1Tl6OVazy8ek
 9g4WZTu0PKRaIJoRHzyGz4NlhcsgzIJWGKwk/d5CiI7Obc7hKwrbtQXbP
 2J4GOdLTsrFKc+QvjzAKI6X3sPXiodvlK+dhd2ishfdVq3EkhvPbNAzsR w==;
X-CSE-ConnectionGUID: U48/sYAzQYyFEn0c1L5PuQ==
X-CSE-MsgGUID: clsH0Jg0SvOY7SJC5H7HeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="76065263"
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="76065263"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 03:30:58 -0700
X-CSE-ConnectionGUID: S8/qH5foTi+b000YN+2ucw==
X-CSE-MsgGUID: JXcJpI2tSMqYUYyNM8g2Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="225934367"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.61])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 03:30:55 -0700
Date: Thu, 2 Apr 2026 13:30:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 animesh.manna@intel.com
Subject: Re: [PATCH 18/23] drm/i915/psr: Program Panel Replay CONFIG3 using
 AS SDP transmission time
Message-ID: <ac5FXKB36ylJy-Ea@intel.com>
References: <20260402080425.548702-1-ankit.k.nautiyal@intel.com>
 <20260402080425.548702-19-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260402080425.548702-19-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.22 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.53)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Queue-Id: EA037387C07
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 02, 2026 at 01:34:18PM +0530, Ankit Nautiyal wrote:
> Panel Replay requires the AS SDP transmission time to be written into
> PANEL_REPLAY_CONFIG3. This field was previously not programmed.
> 
> Use the AS SDP transmission-time helper to populate CONFIG3.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 3fe7691c8b77..a9032b7ff814 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -783,6 +783,7 @@ static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
>  				      const struct intel_crtc_state *crtc_state)
>  {
>  	u8 panel_replay_config[2];
> +	u8 panel_replay_config_3;
>  
>  	panel_replay_config[0] = DP_PANEL_REPLAY_ENABLE |
>  				 DP_PANEL_REPLAY_VSC_SDP_CRC_EN |
> @@ -790,7 +791,6 @@ static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
>  				 DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN |
>  				 DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR_EN;
>  	panel_replay_config[1] = DP_PANEL_REPLAY_CRC_VERIFICATION;
> -
>  	if (crtc_state->has_sel_update)
>  		panel_replay_config[0] |= DP_PANEL_REPLAY_SU_ENABLE;
>  
> @@ -803,6 +803,9 @@ static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
>  
>  	drm_dp_dpcd_write(&intel_dp->aux, PANEL_REPLAY_CONFIG,
>  			  panel_replay_config, sizeof(panel_replay_config));
> +
> +	panel_replay_config_3 = intel_dp_as_sdp_transmission_time();
> +	drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG3, panel_replay_config_3);
>  }
>  
>  static void _psr_enable_sink(struct intel_dp *intel_dp,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
