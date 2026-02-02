Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULLsKbHKgGl3AgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 17:02:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D25FCE98C
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 17:02:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 898DF10E501;
	Mon,  2 Feb 2026 16:02:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fP9isPWp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3926510E501;
 Mon,  2 Feb 2026 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770048174; x=1801584174;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=93vC35IoasH+ZPtHd4L8/1MfGfVTntkR6ZOHyPwamGo=;
 b=fP9isPWpPXoGEwXOA8geQkA1dHF8JEzPyzNfLGYX35sOYokZ7KnWUuhj
 HqXSmIEtCuXs746h6lZ5JWQ3wwEiHbpg/shxFnnDP7rt9Tvfxga93U7LQ
 QtPJAgzzJ/937x0kkF7fnozwFSA0HDcYNLg8RoW/YxPGnGGwcbnF7vMdi
 aoDiTAsFghA0OYtiYOXNje0ElIFPzA9+GWYzI3Va/7ZxLL8hrzdMOfdW1
 hhdqrtaxmGsf8nTpkan+KAK0zWZtZcC5R622JsXjluCgESoe84OKwUYvd
 JdNe4TZPgDkTxOJlddlHj0bnOeRH4usvyc0Lx8/SkcTOuDQ3B5tsZMASA g==;
X-CSE-ConnectionGUID: P80HNB26RbyqLkC5Ppc/1A==
X-CSE-MsgGUID: 4gcCFacaTEq7Ip3iBy+1UA==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="71105848"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="71105848"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 08:02:53 -0800
X-CSE-ConnectionGUID: 0+LfPTEaR96bWLI8YVAiBQ==
X-CSE-MsgGUID: GNlrpl3KR+CjXe8/Ci1geA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="209559118"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.247])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 08:02:49 -0800
Date: Mon, 2 Feb 2026 18:02:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com
Subject: Re: [PATCH 2/4] drm/i915/vrr: Avoid vrr for PCON with HDMI2.1 sink
Message-ID: <aYDKpm3SKZPyZMnA@intel.com>
References: <20251111093007.3771409-1-ankit.k.nautiyal@intel.com>
 <20251111093007.3771409-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251111093007.3771409-3-ankit.k.nautiyal@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 3D25FCE98C
X-Rspamd-Action: no action

On Tue, Nov 11, 2025 at 03:00:05PM +0530, Ankit Nautiyal wrote:
> Currently we do not support VRR with HDMI so skip vrr compute
> config step for DP PCON with HDMI sink.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 00cbc126fb36..7a58e1f8acea 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -42,7 +42,14 @@ bool intel_vrr_is_capable(struct intel_connector *connector)
>  	case DRM_MODE_CONNECTOR_DisplayPort:
>  		if (connector->mst.dp)
>  			return false;
> +
>  		intel_dp = intel_attached_dp(connector);
> +		/*
> +		 * VRR via PCON is currently unsupported.
> +		 * TODO: Add support for VRR for DP HDMI2.1 PCON.
> +		 */
> +		if (intel_dp_has_hdmi_sink(intel_dp))

That just checks what the EDID says about HDMI support, it
doesn't really mean anything wrt. PCON vs. not.

So if we eg. have a DVI sink attach through a PCON we won't
bail out here.

> +			return false;
>  
>  		if (!drm_dp_sink_can_do_video_without_timing_msa(intel_dp->dpcd))
>  			return false;
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
