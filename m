Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id A15REcSIRmouYAsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 17:50:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BACBA6F9AE3
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 17:50:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Hnc37yJs;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CBA810F4AB;
	Thu,  2 Jul 2026 15:50:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD50210F4A5;
 Thu,  2 Jul 2026 15:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783007425; x=1814543425;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=pZBRFryFAMj/reTfghpbggtXrocNDS7CrxAInItgCtc=;
 b=Hnc37yJsqn9gD6mQf94Gladx0TLOvswyr2cCI3hb9rFPUBeD1cNhckrw
 Tm29z9YngOr7Nmbp+OWplKvBQ8o1GVJXNLs8MHjWCPTsAteGI7hhYtY4H
 UNX12tbvfLYYVz3LsoJzkEX25tvZxOrxRBcvCtuojvEee0gpuY8UmKHlu
 XZF7PsOxOkUKXvPA6y8OFB+RCv2x0DdAMF75aMDrv9gDa2FHyXXOFmXnR
 y+ZhrN/2HqFkDq/zxLt/2089DI8WiyrymPw2GWj1ZygKtNuifClVWHzG0
 y2nV7ZPswOdqNT9abQKgn413FoHonMpjbqlUaKe5LJqBRvceetLPS51zN A==;
X-CSE-ConnectionGUID: vfsGI5E9RkCS+kIqwgNOAQ==
X-CSE-MsgGUID: laNfaxv+TNGvNaQitXxgeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="94919849"
X-IronPort-AV: E=Sophos;i="6.25,144,1779174000"; d="scan'208";a="94919849"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 08:50:25 -0700
X-CSE-ConnectionGUID: EcR+EufuQEW0zrLurpguBQ==
X-CSE-MsgGUID: EHLUPoofRea97+roMHBH2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,144,1779174000"; d="scan'208";a="253049976"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.43])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 08:50:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, suraj.kandpal@intel.com, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>
Subject: Re: [PATCH] Revert "drm/i915/psr: Allow SCL=0 on platforms with
 always-on VRR TG"
In-Reply-To: <20260622101736.2389991-1-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260622101736.2389991-1-ankit.k.nautiyal@intel.com>
Date: Thu, 02 Jul 2026 18:50:19 +0300
Message-ID: <51f6951d566ceda03eb47402904f8fe91c7a9f38@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BACBA6F9AE3

On Mon, 22 Jun 2026, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> This reverts commit 4f1cab2e4863d96ce13b8d94151f4848e38c3d5b.
>
> Allowing SCL=0 on platforms with always-on VRR timing generator is
> causing underruns and other issues on PTL in some cases.
>
> SCL still needs to be non-zero in certain scenarios. Revert for now
> until this is better understood.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

This would've needed

Fixes: 4f1cab2e4863 ("drm/i915/psr: Allow SCL=0 on platforms with always-on VRR TG")

to have it be picked up for v7.2-rc2. Please talk to Joonas to ensure it
gets picked up for -rc3.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 911afb9cb24e..92af21d823a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1405,9 +1405,6 @@ int _intel_psr_min_set_context_latency(const struct intel_crtc_state *crtc_state
>  	    needs_panel_replay)
>  		return 0;
>  
> -	if (intel_vrr_always_use_vrr_tg(display))
> -		return 0;
> -
>  	return 1;
>  }

-- 
Jani Nikula, Intel
