Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id k8QyEyploGktjQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 16:22:18 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3C71A88EA
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 16:22:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEDF610E989;
	Thu, 26 Feb 2026 15:22:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="awb6a8L0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13E5010E980;
 Thu, 26 Feb 2026 15:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772119334; x=1803655334;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ehVX06oe1lGgbBC54boR0tBZx4j/Exc+ZXwOpQqOKaM=;
 b=awb6a8L08cTdEigVIZrT5y2ula3NBKa7em94AyCzxCEzydCbcTKXhc6j
 x+1HS34bp2GZyu30iree1EBj8k7ENI8oqmfXNWmpXZILB3CwRosQmxZge
 /B+7VoBPTvj4ZcJFMYwX7c2ZNM7OlnDLdBm8XtA5hQu5jcgLNJIdDGMGS
 UcCXMglOjW/ZyHMcFjtPKV2oLRNKvfMLCdQOZ8pSK4R8Dp90mU/RnAHPN
 sPxVQoAq0Ff3ZbT2ck8EUqdG6e5AXmaPH2m5sqZxrnGlHV0ocQkqOcjrM
 wMH4PxK2YSiVi9Z8td3vXvRvKZbG4zc9h3RxOX12YYNpxYFHG2q1c9+X/ Q==;
X-CSE-ConnectionGUID: NuUV8kRDSBei/8D6d4us2A==
X-CSE-MsgGUID: RNjJCw3zSvma20dADfXwbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="90591088"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="90591088"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 07:22:14 -0800
X-CSE-ConnectionGUID: oOHR2zpORdKB+2bHmgDnrA==
X-CSE-MsgGUID: HftfNa1iQRG95L10D8OKxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="214563091"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 07:22:11 -0800
Date: Thu, 26 Feb 2026 17:22:09 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 02/14] drm/i915/vrr: Avoid vrr for PCON with HDMI2.1 sink
Message-ID: <aaBlIfTlIu2_BC7t@intel.com>
References: <20260223134431.1639308-1-ankit.k.nautiyal@intel.com>
 <20260223134431.1639308-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260223134431.1639308-3-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.28 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.59)[subject];
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
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Queue-Id: 8C3C71A88EA
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 07:14:19PM +0530, Ankit Nautiyal wrote:
> Currently we do not support VRR with HDMI so skip vrr compute
> config step for all DP branch devices.
> 
> v2: Restrict VRR on all DP branch devices instead for checking only for
>     HDMI. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 00ca76dbdd6c..c1d8b32ef42f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -55,6 +55,16 @@ bool intel_vrr_is_capable(struct intel_connector *connector)
>  		if (connector->mst.dp)
>  			return false;
>  		intel_dp = intel_attached_dp(connector);
> +		/*
> +		 * Among non-MST DP branch devices, only an HDMI 2.1 sink connected
> +		 * via a PCON could support VRR. However, supporting VRR through a
> +		 * PCON requires non-trivial changes that are not implemented yet.
> +		 * Until that support exists, avoid VRR on all DP branch devices.
> +		 *
> +		 * TODO: Add support for VRR for DP->HDMI 2.1 PCON.
> +		 */
> +		if (drm_dp_is_branch(intel_dp->dpcd))
> +			return false;
>  
>  		if (!drm_dp_sink_can_do_video_without_timing_msa(intel_dp->dpcd))
>  			return false;
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
