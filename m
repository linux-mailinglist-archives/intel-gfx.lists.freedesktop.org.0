Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gKbtFZm/JmoacQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 15:11:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7D8656798
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 15:11:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=OhR+bASB;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D17410F392;
	Mon,  8 Jun 2026 13:11:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0454A10F392;
 Mon,  8 Jun 2026 13:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780924310; x=1812460310;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=AoE59+ntjyX2ToXPemNXUbIHpmXPm2aRKjnUsPsJaQ8=;
 b=OhR+bASBS2+QBJHmZnfVxgPbyL7IHNWR+i8KNc7VgWVGXvhhr80ZfaXS
 /G9z6ABT6L4afnYhye4SYPw5mzBrMi3+jcByN67BK445pLWIEPPga1g3S
 35JcIRZ8UE4qf1lk20sz/ly5VTmRV0tRxncisZu9Qt8LyLe3MI+SRkvP3
 z62Ui4jur5TnvFEOw9AO5daJaWH5LE1ynvQJhBvoYDEPf0ElPsDbNgAwK
 8e7CONEwy7d6CkKs0A/wl0/RwZN7B3WQXpogbojvZq8pzYac6EpZ/4rv2
 fQp6OvWxxcWfMhyUIIaL1Br2SGBhRNLBiVbYuB45UV6K47Wvi6JQTOqgA A==;
X-CSE-ConnectionGUID: NZSgW5ClQsCF7WN8BvP9Fw==
X-CSE-MsgGUID: hKPoucAFTMG1CT45UbGt5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="92764884"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="92764884"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 06:11:49 -0700
X-CSE-ConnectionGUID: OtaOoTXaRaasEJSdfod1/A==
X-CSE-MsgGUID: 9b+nvLCGSlm9xBndoq0Skw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="241385588"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.244.230])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 06:11:47 -0700
Date: Mon, 8 Jun 2026 16:11:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [RFC PATCH 1/2] drm/i915/cdclk: Avoid VCO-change glitches
Message-ID: <aia_jxWyNrCWEPEW@intel.com>
References: <20260608125009.979672-1-nemesa.garg@intel.com>
 <20260608125009.979672-2-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260608125009.979672-2-nemesa.garg@intel.com>
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
X-Spamd-Result: default: False [0.36 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.67)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EF7D8656798

On Mon, Jun 08, 2026 at 06:20:08PM +0530, Nemesa Garg wrote:
> On platforms with both cdclk squash and crawl, bxt_modeset_calc_cdclk()
> can pick a target cdclk whose VCO differs from the current one. The
> resulting transition causes pipe FIFO underruns:
> 
>   - Up-crawl from VCO 614400: intermediate frequencies fall below
>     min_cdclk.

Should not happen, and cdclk_compute_crawl_and_squash_midpoint() will
WARN if the mid cdclk comes out too low.

Since you've provided no logs of what you think is happening I can't 
even speculate what might be going on.

>   - Down-crawl from VCO 1382400: DBUF ratio changes mid-commit before
>     watermarks for the new ratio are programmed.
> 
> On a VCO-changing transition, prefer the lowest cdclk_table entry that
> satisfies min_cdclk at the current VCO (pure squash, no DBUF ratio
> change). If none exists, fall back to max_cdclk_freq on the up-crawl
> path and stay at the current cdclk on the down-crawl path.
> 
> Assisted-by: Claude:claude-sonnet-4.6
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 47 ++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 189ae2d3cfc9..ead8e59e44a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1598,6 +1598,26 @@ static int bxt_calc_cdclk(struct intel_display *display, int min_cdclk)
>  	return display->cdclk.max_cdclk_freq;
>  }
>  
> +/*
> + * Lowest cdclk_table entry that satisfies min_cdclk AND keeps the
> + * supplied VCO. Returns 0 if no such entry exists.
> + */
> +static int bxt_calc_cdclk_for_vco(struct intel_display *display,
> +				  int min_cdclk, int vco)
> +{
> +	const struct intel_cdclk_vals *table = display->cdclk.table;
> +	int i;
> +
> +	for (i = 0; table[i].refclk; i++) {
> +		if (table[i].refclk == display->cdclk.hw.ref &&
> +		    table[i].cdclk >= min_cdclk &&
> +		    display->cdclk.hw.ref * table[i].ratio == vco)
> +			return table[i].cdclk;
> +	}
> +
> +	return 0;
> +}
> +
>  static int bxt_calc_cdclk_pll_vco(struct intel_display *display, int cdclk)
>  {
>  	const struct intel_cdclk_vals *table = display->cdclk.table;
> @@ -3300,6 +3320,33 @@ static int bxt_modeset_calc_cdclk(struct intel_atomic_state *state)
>  	cdclk = bxt_calc_cdclk(display, min_cdclk);
>  	vco = bxt_calc_cdclk_pll_vco(display, cdclk);
>  
> +	/*
> +	 * Guard against VCO-changing CDCLK transitions that cause pipe FIFO
> +	 * underruns. When crawling up from VCO 614400 the intermediate
> +	 * frequencies are below min_cdclk; when crawling down from VCO
> +	 * 1382400 the DBUF ratio changes mid-modeset before watermarks are
> +	 * reprogrammed. Prefer a same-VCO cdclk_table entry (pure squash,
> +	 * no DBUF ratio change); only fall back to max_cdclk_freq when no
> +	 * such entry can satisfy min_cdclk.
> +	 */
> +	if (HAS_CDCLK_SQUASH(display) && HAS_CDCLK_CRAWL(display) &&
> +	    display->cdclk.hw.vco > 0 && vco > 0 &&
> +	    display->cdclk.hw.vco != vco) {
> +		if (cdclk > display->cdclk.hw.cdclk) {
> +			int same_vco_cdclk;
> +
> +			same_vco_cdclk = bxt_calc_cdclk_for_vco(display, min_cdclk,
> +								display->cdclk.hw.vco);
> +			if (same_vco_cdclk)
> +				cdclk = same_vco_cdclk;
> +			else
> +				cdclk = display->cdclk.max_cdclk_freq;
> +		} else {
> +			cdclk = display->cdclk.hw.cdclk;
> +		}
> +		vco = bxt_calc_cdclk_pll_vco(display, cdclk);
> +	}
> +
>  	cdclk_state->logical.vco = vco;
>  	cdclk_state->logical.cdclk = cdclk;
>  	cdclk_state->logical.voltage_level =
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
