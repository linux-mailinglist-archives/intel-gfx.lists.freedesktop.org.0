Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mCOzCRDjFmpIvAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 14:26:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 879CF5E4287
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 14:26:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20A8B10E7A9;
	Wed, 27 May 2026 12:26:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h3yuhboO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A674110E1E6;
 Wed, 27 May 2026 12:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779884812; x=1811420812;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=7bz0QRNCMfdHGJrZxZMDPgyb+nfA4Mx+fFNhgSwajss=;
 b=h3yuhboOvZA1pPj0fBM/JhQSVfDltn8lKCPesCcYaYimHVWns7u5LeRy
 f9GewcHEeT1m2hLkyOO7BBqru/g3ej6Xpqy2o8mfjtZhMC0yqndICqTeq
 quqsFEswCgQ493pGchflJBTfEk+PQT5WY08q5o9qaEv/qzrewYDW9V7Yp
 MuVeOnm8Q2P/ECmpuOH+boX/iVATbVi2vZlq9TYrH+oks5ZqTXNvRVZlP
 IAIKO8KOACLCdg3VrtsrwRUT6Buz2rqMOoGeA/8A0cds+lMZ80Lzkv4p2
 kGOotc8WqL7F0pSYUhEanKi8xc1RRwiBxNHD2FtTyUAzxnzwMpAraIYhm g==;
X-CSE-ConnectionGUID: S9T/M6tATpKIGcX7j8ynZA==
X-CSE-MsgGUID: C7dwcUqGTZ6WAGMTTQWPJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="92099490"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="92099490"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 05:26:51 -0700
X-CSE-ConnectionGUID: Opo5iupISc+NRqPO6dOWAw==
X-CSE-MsgGUID: IHMrL3KiTBq6OIw3EgCjUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="238055562"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.38])
 by fmviesa010-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2026 05:26:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com
Subject: Re: [PATCH v4 05/13] drm/i915/display: Add DC3CO support check
In-Reply-To: <20260526191826.3786009-6-dibin.moolakadan.subrahmanian@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260526191826.3786009-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260526191826.3786009-6-dibin.moolakadan.subrahmanian@intel.com>
Date: Wed, 27 May 2026 15:26:47 +0300
Message-ID: <7eb615966dca9c62be035f3270c756bcb49a7b27@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 879CF5E4287
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 27 May 2026, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
> Add intel_display_power_dc3co_supported() helper to query DC3CO
> support from allowed_dc_mask.
>
> Changes in v2:
> - Squash "Add helper to check DC3CO support" patch into this patch
>
> Changes in v4:
> - Remove introduced dc state validation,as it may break
>   fall back mechanism (sashiko)
>
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++++++
>  drivers/gpu/drm/i915/display/intel_display_power.h | 1 +
>  2 files changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index c70971ffd9f0..4b91747b38f1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -302,6 +302,7 @@ void intel_display_power_set_target_dc_state(struct intel_display *display,
>  	struct i915_power_domains *power_domains = &display->power.domains;
>  
>  	mutex_lock(&power_domains->lock);
> +

Superfluous.

>  	power_well = lookup_power_well(display, SKL_DISP_DC_OFF);
>  
>  	if (drm_WARN_ON(display->drm, !power_well))
> @@ -358,6 +359,13 @@ u32 intel_display_power_get_current_dc_state(struct intel_display *display)
>  	return current_dc_state;
>  }
>  
> +bool intel_display_power_dc3co_supported(struct intel_display *display)

This should probably be static. See my other replies in the thread.

> +{
> +	struct i915_power_domains *power_domains = &display->power.domains;
> +
> +	return (power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC3CO) == DC_STATE_EN_UPTO_DC3CO;
> +}
> +
>  static void __async_put_domains_mask(struct i915_power_domains *power_domains,
>  				     struct intel_power_domain_mask *mask)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index d616d5d09cbe..05880e9da89f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -186,6 +186,7 @@ void intel_display_power_resume(struct intel_display *display);
>  void intel_display_power_set_target_dc_state(struct intel_display *display,
>  					     u32 state);
>  u32 intel_display_power_get_current_dc_state(struct intel_display *display);
> +bool intel_display_power_dc3co_supported(struct intel_display *display);
>  
>  bool intel_display_power_is_enabled(struct intel_display *display,
>  				    enum intel_display_power_domain domain);

-- 
Jani Nikula, Intel
