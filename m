Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gs5wNcn/UGoY9wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 16:20:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CA273BB28
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 16:20:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Poiq3cAM;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE4A910E07F;
	Fri, 10 Jul 2026 14:20:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8560210E02D;
 Fri, 10 Jul 2026 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783693254; x=1815229254;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Rr//arWdivzeG3gWK83PY3biqf6C3OEq2CUDWUe3i1Q=;
 b=Poiq3cAMOvnGJf0VNeJsZwbiNg1IUZJqcQN7OpvNI4usb4LJY+2OpExV
 +eZ0l/NfoHuUvzBCh1YrqxrYB9XxxT3TPxQfBzBjuyODtVk08ZRdnoBCX
 xxNg8n+UP4YnLgtbvpd7ZSw8XsUMXDToBpIIIBsbsZl252R4FxKFyEXFn
 siKDe3lbyH4/EDMfOal1EWWbsW4MWlRc797eoUTl9h0vDRne4wjBpDbk0
 712K8UuU4R9zTHNTNX8uWRNGO1q+zM7nufYQ5B4NzM2SISixnR2v8DNTE
 dfE2lgqVtS5mcnrv5ZfW1nMo/v1QmmN1lqOutVGIepIJePb3DM1V4Zwvd Q==;
X-CSE-ConnectionGUID: h3wze5UKSfiOjE7Jqxtc4w==
X-CSE-MsgGUID: rYF15VfUR+i8PQF2+pTdpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="94745619"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="94745619"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 07:20:54 -0700
X-CSE-ConnectionGUID: JVyjjfowRw2RWP2BlEzO4Q==
X-CSE-MsgGUID: OT9zeFEfSmOcSmLtMiDDSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="258777375"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.244.208])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 07:20:52 -0700
Date: Fri, 10 Jul 2026 17:20:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 03/10] drm/intel/display: Make
 intel_crtc_arm_vblank_event static
Message-ID: <alD_wogWAVGH7XRb@intel.com>
References: <20260702072154.171324-1-dev@lankhorst.se>
 <20260702072154.171324-4-dev@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260702072154.171324-4-dev@lankhorst.se>
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
X-Spamd-Result: default: False [-0.54 / 15.00];
	R_MIXED_CHARSET(0.77)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 48CA273BB28

On Thu, Jul 02, 2026 at 09:21:46AM +0200, Maarten Lankhorst wrote:
> Only used inside intel_crtc.c now, so no need to export it any more.
> 
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_crtc.h | 1 -
>  2 files changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 10ed9bdfee763..805645318747f 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -684,7 +684,7 @@ static void dbg_vblank_evade(struct intel_crtc *crtc, ktime_t end)
>  static void dbg_vblank_evade(struct intel_crtc *crtc, ktime_t end) {}
>  #endif
>  
> -void intel_crtc_arm_vblank_event(struct intel_crtc_state *crtc_state)
> +static void intel_crtc_arm_vblank_event(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	unsigned long irqflags;
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
> index 12507b51ee77e..f65cbafe2b42a 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.h
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.h
> @@ -33,7 +33,6 @@ int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted_mode,
>  			     int usecs);
>  int intel_scanlines_to_usecs(const struct drm_display_mode *adjusted_mode,
>  			     int scanlines);
> -void intel_crtc_arm_vblank_event(struct intel_crtc_state *crtc_state);
>  void intel_crtc_prepare_vblank_event(struct intel_crtc_state *crtc_state,
>  				     struct drm_pending_vblank_event **event);
>  u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_state);
> -- 
> 2.53.0

-- 
Ville Syrjälä
Intel
