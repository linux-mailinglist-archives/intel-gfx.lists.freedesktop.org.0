Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGYyHKno3WmulAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 09:11:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D31D63F6739
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 09:11:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4602010E57F;
	Tue, 14 Apr 2026 07:11:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PttRayvp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1A1410E28D;
 Tue, 14 Apr 2026 07:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776150693; x=1807686693;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=qikQXaGbZvdnq4j0UxiQwv7MsRkCWG6yfLD4cegGwjw=;
 b=PttRayvpjPanVLtLeYAZ0VV6qJMavl19Ck5wRrcaMndTv3gEwmrsvPi8
 vQfz+gZXg6zyRoEbLh7u3AtOnSRuMmkHUqwzUiAjvzQO7+zcJhseR+HrG
 rUEpIQvMUVo/sJ8Ux5KfXRogozt2RIiYLbsChhuGoi9uj1qukuzG99J0r
 1wBMu6h4EtUP+4XPe1qHI/Mh9F1R/kPnOukYewL64/nsCy7crfv+ugP5d
 rtRalcVPZd8G7P6OpbSJXh/B0T7wb/pkAcrQktZrq2Lt6ofy06uPjbbAS
 p9XKeLGoxVxCtYDedgb5TV5baPkjcLXzNjpPNE9Nn/UK+twU6mU+VtDlT A==;
X-CSE-ConnectionGUID: h0BYDC0JQ1y2X1ne00uizw==
X-CSE-MsgGUID: jhm6Ae0sTiyrpZKEc93fEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="88546232"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="88546232"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 00:11:33 -0700
X-CSE-ConnectionGUID: NBmAB8fJQBm4l/7rIsqa7A==
X-CSE-MsgGUID: AqGsDuOMTYKpKowmMmm9TA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="267995636"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.238])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 00:11:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com,
 suresh.kumar.kurmi@intel.com
Subject: Re: [PATCH 06/19] drm/i915/display: Fix HAS_DC3CO() and add DC3CO
 trigger enum
In-Reply-To: <20260326171557.2065632-7-dibin.moolakadan.subrahmanian@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-7-dibin.moolakadan.subrahmanian@intel.com>
Date: Tue, 14 Apr 2026 10:11:26 +0300
Message-ID: <e33134612d3185542c50bf82063227755355cefb@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: D31D63F6739
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 26 Mar 2026, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
> Fix HAS_DC3CO() based on display version and introduce an enum to
> track DC3CO enabling triggers.
>
> BSpec: 75253
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_device.h   |  2 +-
>  .../gpu/drm/i915/display/intel_display_power.h    | 15 +++++++++++++++
>  2 files changed, 16 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 35e06fcf794d..002fe0ce951a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -189,7 +189,7 @@ struct intel_display_platforms {
>  #define HAS_LRR(__display)		(DISPLAY_VER(__display) >= 12)
>  #define HAS_LSPCON(__display)		(IS_DISPLAY_VER(__display, 9, 10))
>  #define HAS_LT_PHY(__display)		((__display)->platform.novalake)
> -#define HAS_DC3CO(__display)		((__display)->platform.novalake)
> +#define HAS_DC3CO(__display)		(DISPLAY_VER(__display) >= 35)
>  #define HAS_MBUS_JOINING(__display)	((__display)->platform.alderlake_p || DISPLAY_VER(__display) >= 14)
>  #define HAS_MSO(__display)		(DISPLAY_VER(__display) >= 12)
>  #define HAS_OVERLAY(__display)		(DISPLAY_INFO(__display)->has_overlay)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index d616d5d09cbe..3fb45154864e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -131,6 +131,21 @@ struct intel_power_domain_mask {
>  	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
>  };
>  
> +/*
> + * DC3CO enabling triggers (bitmask).
> + * DC3CO may be enabled when at least one of these triggers is active.
> + * Additional constraints may still apply.
> + */
> +enum intel_dc3co_trigger {
> +	DC3CO_TRIGGER_NONE	     = 0,
> +	DC3CO_TRIGGER_PSR2	     = BIT(0),
> +	DC3CO_TRIGGER_LOBF	     = BIT(1),
> +	DC3CO_TRIGGER_PANEL_REPLAY   = BIT(2),
> +	DC3CO_TRIGGER_ALL  = DC3CO_TRIGGER_PSR2 |
> +			     DC3CO_TRIGGER_LOBF |
> +			     DC3CO_TRIGGER_PANEL_REPLAY,
> +};

Enumerations are enumerations and bitmasks are bitmasks, and I don't
think they should be mixed like this.

Moreover, the enum as a type isn't even used anywhere.

BR,
Jani.


> +
>  struct i915_power_domains {
>  	/*
>  	 * Power wells needed for initialization at driver init and suspend

-- 
Jani Nikula, Intel
