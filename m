Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c4gqNzeXOmrkAwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 16:24:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F9D6B7DA5
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 16:24:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=UPVj0GSo;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5523710EBAF;
	Tue, 23 Jun 2026 14:24:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B84F10E8AA;
 Tue, 23 Jun 2026 14:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782224690; x=1813760690;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1d/k/F79hAz6On8+FkEDdms7dsldm7k5SN2b4acu4yw=;
 b=UPVj0GSouxLlPcaUri6K2RC8MVHsxMd3OXj22FsArS+5c/tqyRpl0s63
 ho/2RgVa+F34Ef+/iLk0k0hmWNuDrbuzCVbrBXumMTBEq+cP8y7srIsR8
 3n9/ITPSNbqK6PNo0/da6Lj2DOhpZ9oKfp2RfKzW5nA+Y5/YUv0L9ekaF
 +BtA/dOkcszBVnwUFlZXsuYVhjBqf3mmwkSauIvmuFGO9/lxyQRheQ8vk
 CMncfS2tLRdCIHgXvupfQ2R+deO8uCiShrHDcSco2zuRg1FLxFdMN59eR
 VCT5A+kvBqc72QdB2SstjqxSt/xRPrl/XQHpsZUlyT5ATWV+5yX5peXpW Q==;
X-CSE-ConnectionGUID: UaKB/SIyTxmq/TNXWgjLNQ==
X-CSE-MsgGUID: E244uHJNRKuWMxisjfzALg==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="94461582"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="94461582"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 07:24:50 -0700
X-CSE-ConnectionGUID: O2WLQZIjSzOvtxMqlAEsRA==
X-CSE-MsgGUID: TWr1rZdTSpK8wJPF4KWoIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="247194458"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.67])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 07:24:47 -0700
Date: Tue, 23 Jun 2026 17:24:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Gabr=EDel_Arth=FAr_P=E9tursson?=
 <gabriel.petursson@jbtmarel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "tursulin@ursulin.net" <tursulin@ursulin.net>
Subject: Re: [PATCH] drm/i915: Calculate CDCLK on modeset after sanitizing
 pre-os programming
Message-ID: <ajqXK-fZnty-YGCK@intel.com>
References: <AM9PR06MB78601E2636164181A4689CC281EF2@AM9PR06MB7860.eurprd06.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <AM9PR06MB78601E2636164181A4689CC281EF2@AM9PR06MB7860.eurprd06.prod.outlook.com>
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
X-Spamd-Result: default: False [-0.69 / 15.00];
	R_MIXED_CHARSET(0.62)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linux.intel.com:from_mime,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 65F9D6B7DA5

On Mon, Jun 22, 2026 at 02:52:29PM +0000, Gabríel Arthúr Pétursson wrote:
> After sanitizing cdclk programming by pre-os, the cdclk frequency is set
> to the lowest supported setting. After which, modesetting needs to
> recalculate the appropriate frequency.
> 
> When upgrading the kernel, we encountered an issue where we were left
> with a blank screen at boot on a number of monitors and the following
> message in dmesg:
> 
> 	i915 0000:00:02.0: [drm] *ERROR* CPU pipe A FIFO underrun
> 
> Which bisected to these two commits, depending on the exact monitor used
> during the bisect:
> 
> 	ba91b9eecb47 ("drm/i915/cdclk: Decouple cdclk from state->modeset")
> 	74c31271a1d9 ("drm/i915: Avoid triggering unwanted cdclk changes due to dbuf bandwidth changes")
> 
> Although both commits look correct, before they hid the need to explicitly
> trigger CDCLK recalculation after sanitization.

This smells like the same thing I already fixed with
commit 3f9de66f8acb ("drm/i915/cdclk: Fix up CDCLK_FREQ_DECIMAL
without a full PLL re-enable")

Sadly it looks like I forgot to cc:stable it :/

Jani, can you pick that up for -fixes and slap a cc:stable on it?

> 
> Signed-off-by: Gabríel Arthúr Pétursson <gabriel.petursson@jbtmarel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 10 ++++++++--
>  drivers/gpu/drm/i915/display/intel_cdclk.h |  1 +
>  2 files changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index a47736613f6e..5eba50fde396 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1267,6 +1267,8 @@ static void skl_sanitize_cdclk(struct intel_display *display)
>  	display->cdclk.hw.cdclk = 0;
>  	/* force full PLL disable + enable */
>  	display->cdclk.hw.vco = ~0;
> +	/* modesetting may require another cdclk programming */
> +	display->cdclk.hw.sanitized = true;
>  }
>  
>  static void skl_cdclk_init_hw(struct intel_display *display)
> @@ -2365,9 +2367,10 @@ static void bxt_sanitize_cdclk(struct intel_display *display)
>  
>  	/* force cdclk programming */
>  	display->cdclk.hw.cdclk = 0;
> -
>  	/* force full PLL disable + enable */
>  	display->cdclk.hw.vco = ~0;
> +	/* modesetting may require another cdclk programming */
> +	display->cdclk.hw.sanitized = true;
>  }
>  
>  static void bxt_cdclk_init_hw(struct intel_display *display)
> @@ -3598,9 +3601,10 @@ static int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
>  
>  int intel_cdclk_atomic_check(struct intel_atomic_state *state)
>  {
> +	struct intel_display *display = to_intel_display(state);
>  	const struct intel_cdclk_state *old_cdclk_state;
>  	struct intel_cdclk_state *new_cdclk_state;
> -	bool need_cdclk_calc = false;
> +	bool need_cdclk_calc = display->cdclk.hw.sanitized;
>  	int ret;
>  
>  	ret = intel_cdclk_modeset_checks(state, &need_cdclk_calc);
> @@ -3631,6 +3635,8 @@ int intel_cdclk_atomic_check(struct intel_atomic_state *state)
>  		ret = intel_modeset_calc_cdclk(state);
>  		if (ret)
>  			return ret;
> +
> +		display->cdclk.hw.sanitized = false;
>  	}
>  
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> index 1ff7d078b42c..bae2b7ea2da9 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -18,6 +18,7 @@ struct intel_display;
>  struct intel_cdclk_config {
>  	unsigned int cdclk, vco, ref, bypass;
>  	u8 voltage_level;
> +	bool sanitized;
>  	/* This field is only valid for Xe2LPD and above. */
>  	bool joined_mbus;
>  };
> -- 
> 2.54.0
> 

-- 
Ville Syrjälä
Intel
