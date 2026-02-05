Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MB1gKoFahGl92gMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 09:53:21 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2365AF015A
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 09:53:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7750910E80B;
	Thu,  5 Feb 2026 08:53:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lFUST2Th";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1714A10E80E;
 Thu,  5 Feb 2026 08:53:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770281598; x=1801817598;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=y/kinmPleRLUcQU4SNOjB7AlkvAmcGd4TAfip1hzsSE=;
 b=lFUST2ThCu5vSe4Vga4p6eyy0vGDUDrjZB+tkcmPuKrST9Py420K5/Fz
 QmwGDSWA+5M8NuFIJVCeH4BjwKxD5tviR2+UTRQUk54bFY7QpsjKSwjko
 Yol3kAH7vUoMeKgmPUGU1bZt1Am9S/Re+rKdr47n7IqZCMFyMZUY1s/HK
 HFs9JcSH+QKrJoF00IutirXY3PS751HBZrvK4OXhl1G2hDTVVtLf5brWW
 RG/recNm70rdx+Ch40mel9hBCRgCdYJIW3RzXar0olfXqOYJw+l5R2WMO
 PbHvFqcpVmz6sJPOsXoWH9qLoL7pPjcjrA/lnzEpHT/qHfrGTK68X3TGD g==;
X-CSE-ConnectionGUID: TDKmNBIYQF6j7U78GTO5hQ==
X-CSE-MsgGUID: oZfa7yQfRpa6G7NJ+Zm33Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71373895"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="71373895"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 00:53:18 -0800
X-CSE-ConnectionGUID: 1QIOsK3TS3CHX8YvTh1dcw==
X-CSE-MsgGUID: 71cj0UO9Sza+yU48qnBNVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="214964889"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 00:53:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: dibin.moolakadan.subrahmanian@intel.com, Animesh Manna
 <animesh.manna@intel.com>
Subject: Re: [PATCH v2 09/10] drm/i915/cmtg: enable cmtg in secondary mode
In-Reply-To: <20260203134407.2823406-10-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260203134407.2823406-1-animesh.manna@intel.com>
 <20260203134407.2823406-10-animesh.manna@intel.com>
Date: Thu, 05 Feb 2026 10:53:12 +0200
Message-ID: <942f84be55f37e861184d4dc5e4f57679dc8c720@intel.com>
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 2365AF015A
X-Rspamd-Action: no action

On Tue, 03 Feb 2026, Animesh Manna <animesh.manna@intel.com> wrote:
> From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
>
> Wait for CMTG_SYNC_TO_PORT bit clear in cmtg enable sequence
> and then enable secondary mode for cmtg.
>
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index f7364c7408d5..d1ec9b79cef2 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -277,4 +277,18 @@ void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)
>  
>  	/* Program Enable Cmtg */
>  	intel_cmtg_ctl_enable(crtc_state);
> +
> +	if (intel_de_wait_for_clear_ms(display, TRANS_CMTG_CTL(cpu_transcoder),
> +				       CMTG_SYNC_TO_PORT, 50)) {
> +		drm_WARN(display->drm, 1, "CMTG:%d enable timeout\n", cpu_transcoder);
> +		return;
> +	}

This should be part of the previous patch, right?

> +
> +	/*
> +	 *  eDP transcoder registers as secondary to CMTG by setting
> +	 *  TRANS_DDI_FUNC_CTL2[CMTG Secondary Mode].

What does this even mean?

> +	 */
> +	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, cpu_transcoder), 0, CMTG_SECONDARY_MODE);
> +
> +	drm_dbg_kms(display->drm, "CMTG:%d enabled\n", cpu_transcoder);

See transcoder_name().

>  }

-- 
Jani Nikula, Intel
