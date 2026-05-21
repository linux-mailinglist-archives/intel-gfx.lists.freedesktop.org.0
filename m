Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MDnMpR1D2pEMgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 23:13:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7250C5AC0F7
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 23:13:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8F1110F407;
	Thu, 21 May 2026 21:13:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GHlK/b9s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A99210F400;
 Thu, 21 May 2026 21:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779398032; x=1810934032;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=m5GrKAL+S+WBacFu/QmvOfw1uVYvyZAumkoSJsTt3yM=;
 b=GHlK/b9smU9H/xgrJU+e8YdKhQUNqM0h7jVy07FzrSBgME/Tcd1uPjoS
 /40eUYA0ZE9TifhSBBqIDeXB8TmGT0LidOLNfXFrnFZITYG0dkCnxgTFS
 qO3EZTovMhsIjW5GB/LuTPKDxV6uQi3O3P2Z2o8/ZUVc6+r2rXgZyaNIy
 sS52iOQIVNtoN+R7lPGm0JRrXbSFBTis6vVEDGo/ePOV3B7LyRXpusq7r
 vKvuex/pJTyiL9Arv0v5S54LeIBcyMoXHR956Y+hq4R4CEa7oKqpsTkE6
 pRuZj2fxK4j6/JlawsB8eFKN1R3mxj2ELxY/Pdre5UO1XKNvug7K1gS2N g==;
X-CSE-ConnectionGUID: X0kpUKQ8S6+hV2pQRYTZVQ==
X-CSE-MsgGUID: Bk60Us8nSrah/y/D81gysA==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="79478475"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="79478475"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 14:13:51 -0700
X-CSE-ConnectionGUID: Nu3nyo+ZQ161NLJciIj9GA==
X-CSE-MsgGUID: K8BYKM/uRkWkxIvC75nh3g==
X-ExtLoop1: 1
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.86])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 14:13:47 -0700
Date: Fri, 22 May 2026 00:13:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Marius Hoch <mail@mariushoch.de>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Joe Perches <joe@perches.com>, Mika Kahola <mika.kahola@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: Don't set min_cdclk in the initial crtc_state
Message-ID: <ag91h3UbwPQ7cmXg@intel.com>
References: <20260521180722.328317-2-mail@mariushoch.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260521180722.328317-2-mail@mariushoch.de>
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
X-Spamd-Result: default: False [-0.60 / 15.00];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,perches.com,lists.freedesktop.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,mariushoch.de:email]
X-Rspamd-Queue-Id: 7250C5AC0F7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, May 21, 2026 at 08:07:12PM +0200, Marius Hoch wrote:
> Setting the min_cdclk this early means that intel_cdclk_atomic_check
> (called via intel_atomic_check) will not pick up the initial min_cdclk, as
> there is no change between the old and new atomic states.

If there is no change then there is no need to change the CDCLK.
It's hard to say what you're really trying to work around here.

Please a file a new bug at
https://gitlab.freedesktop.org/drm/intel/issues/new and
attach the full dmesg from boot with 'log_buf_len=4M drm.debug=0xe'
passed to he kernel cmdline.

> This is
> problematic, especially on Gemini Lake, where the picture gets unstable if
> the CDCLK is too low (see vlv_dsi_min_cdclk).
> 
> This was introduced in 7a8d9cfa6db0, which states that the min_cdclk must
> be set before calling intel_compute_global_watermarks. However, as the
> only place that calls intel_compute_global_watermarks is
> intel_atomic_check, right after setting the min_cdclk on new_crtc_state,
> there is no need to set the min_cdclk initially.
> 
> This surfaced as a bug on my IdeaPad Duet 3 after ba91b9eecb47, leading
> to the screen output being completely garbled initially (when asking for
> the dm-crypt passphrase). It recovers after the passphrase prompt, as this
> only affects the initial state.
> 
> Tested on an IdeaPad Duet 3 10IGL5-LTE (with UHD Graphics 605).
> 
> Cc: stable@vger.kernel.org
> Fixes: 7a8d9cfa6db0 ("drm/i915: Compute per-crtc min_cdclk earlier")
> Signed-off-by: Marius Hoch <mail@mariushoch.de>
> ---
>  drivers/gpu/drm/i915/display/intel_modeset_setup.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index 4086f16a12bf..9278856375e9 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -865,11 +865,6 @@ static void intel_modeset_readout_hw_state(struct intel_display *display)
>  				    crtc_state->plane_min_cdclk[plane->id]);
>  		}
>  
> -		crtc_state->min_cdclk = intel_crtc_min_cdclk(crtc_state);
> -
> -		drm_dbg_kms(display->drm, "[CRTC:%d:%s] min_cdclk %d kHz\n",
> -			    crtc->base.base.id, crtc->base.name, crtc_state->min_cdclk);
> -
>  		intel_pmdemand_update_port_clock(display, pmdemand_state, pipe,
>  						 crtc_state->port_clock);
>  	}
> -- 
> 2.54.0

-- 
Ville Syrjälä
Intel
