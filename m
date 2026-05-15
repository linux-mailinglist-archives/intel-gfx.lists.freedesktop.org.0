Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGZXKuD1Bmo4pgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 12:30:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3670654D5F1
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 12:30:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39E0710E0EC;
	Fri, 15 May 2026 10:30:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GBMgJiMq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A49A610E0DC;
 Fri, 15 May 2026 10:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778841053; x=1810377053;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=arkXYTvVWftqwxreqRaWnw/yjG1vgDFmgpQkPzsg2Bo=;
 b=GBMgJiMqlDAVIFoOt9NA1iijt914b9I/gGia808eZhpKETweQdBVVrmZ
 20HVoLuu8eZZ9eG5qGnkkBF2opHyyL/8of8u8ooPI0nKW7f9GfQQM9gww
 GkbwLy6D27R218pWG+/1+aX+KGizyl4dcsNmOk9f6mp6XjrDkcvdxW63B
 IDtTM9BAVuP7DcuWr1pBYfVcJJQgmXexDsTkRxnL8qwyMNAgfpKv0asmT
 F4X9IEgMXIHI1PkLownhYfr3KoYNrIHXNwAUlzDGzRXuTMnMV5s5C5rLC
 Ive0qNpoHMtjdutUjbOvntQWJPcUJtfTj5ZEhewX8AXXiaWigFbRwMP4k Q==;
X-CSE-ConnectionGUID: Eli0tM65Tsy4TDdyRR8Uzw==
X-CSE-MsgGUID: EMd637ytSbOR6e0J7jWmmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="90105007"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="90105007"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 03:30:52 -0700
X-CSE-ConnectionGUID: CIK5qJ5/QCOsbCrpRaosHA==
X-CSE-MsgGUID: kLqmBuMISC2VoOWMkw3PLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="243628522"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.71])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 03:30:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/psr: Simplify the conditions for SCL
 computation
In-Reply-To: <20260515073616.2794146-2-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260515073616.2794146-1-ankit.k.nautiyal@intel.com>
 <20260515073616.2794146-2-ankit.k.nautiyal@intel.com>
Date: Fri, 15 May 2026 13:30:47 +0300
Message-ID: <5c97667e52e740df76951ffa4f2044372214fc18@intel.com>
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
X-Rspamd-Queue-Id: 3670654D5F1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

On Fri, 15 May 2026, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> The SCL condition checks can be combined into one expression.
> needs_sel_update is common for both display version branches, so check it
> once and keep the version specific checks together.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 13 +++++--------
>  1 file changed, 5 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 8f70b7dcd881..5bf1d782188c 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1477,15 +1477,12 @@ int _intel_psr_min_set_context_latency(const struct intel_crtc_state *crtc_state
>  	 * SRD_STATUS is used by PSR1 and Panel Replay DP on LunarLake.
>  	 */
>  
> -	if (DISPLAY_VER(display) >= 30 && (needs_panel_replay ||
> -					   needs_sel_update))
> +	if (needs_sel_update ||
> +	    (DISPLAY_VER(display) >= 30 && needs_panel_replay) ||
> +	    (DISPLAY_VER(display) < 30 && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)))
>  		return 0;
> -	else if (DISPLAY_VER(display) < 30 && (needs_sel_update ||
> -					       intel_crtc_has_type(crtc_state,
> -								   INTEL_OUTPUT_EDP)))
> -		return 0;
> -	else
> -		return 1;

The function has a bunch of simple "if foo return bar" statements.

Please don't combine more stuff together, but rather split them up.

	if (needs_sel_update)
		return 0;

	if (DISPLAY_VER(display) < 30 && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
		return 0;

	if (DISPLAY_VER(display) >= 30 && needs_panel_reply)
		return 0;

Please consider which one is easier and faster to read and understand.

BR,
Jani.


> +
> +	return 1;
>  }
>  
>  static bool _wake_lines_fit_into_vblank(const struct intel_crtc_state *crtc_state,

-- 
Jani Nikula, Intel
