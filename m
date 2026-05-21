Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GHxaJXhRD2pEJAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 20:39:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 088C45AB2AC
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 20:39:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F059710E1F4;
	Thu, 21 May 2026 18:39:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JGE2Ao2Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 998A610E1F4;
 Thu, 21 May 2026 18:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779388789; x=1810924789;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=bTwXMIao/tsFA5KgrooYJj9HNQ35SycL8VL3vZikbAg=;
 b=JGE2Ao2QsqyctFkIA0mT+HBALAzuj7A1pQTaQiPKN7M38Ajf6w4Dw84H
 hisRmyrklLRJZB5OryqhTuqLzXyo9dzpWu2SbNwWXMGZYhjgzUpHR571f
 Yc27lBqODfDafRRc+LBZFy2SFsRzXjd9ZE4Tgq20iTexHd+UER+D9BgM9
 pTmv6dJ2X1lKjkwcBisZKKtTHFhqm3zTy8EYmeI0nLRHBcZp+afEqJo9I
 tE5aEyy9HSyU6sON/7ECDbq7Vp5mnOtrhCDeiuZDvu6J70tZ0B2CYlxTD
 hqCxNav3vUIuxFc7ISE+p0RkL5D47FePwad5WGaxULrzCpjASHkb5ZbkR w==;
X-CSE-ConnectionGUID: cyuVBDFSTwu4xbeeeynncA==
X-CSE-MsgGUID: PzQz/m3CTiqLl9WPugS8JQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="83936347"
X-IronPort-AV: E=Sophos;i="6.24,160,1774335600"; d="scan'208";a="83936347"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 11:39:48 -0700
X-CSE-ConnectionGUID: FCAPMnomS3aau/68mtQHjg==
X-CSE-MsgGUID: AeNb7/3lR82smhXLtlKvjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,160,1774335600"; d="scan'208";a="270962271"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.174])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 11:39:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Sean Paul <sean@poorly.run>, intel-gfx@lists.freedesktop.org
Cc: Sean Paul <seanpaul@google.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, Simona Vetter
 <simona@ffwll.ch>, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/color: Fix plane color pipeline programming bugs
In-Reply-To: <20260521180143.2143262-1-sean@poorly.run>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260521180143.2143262-1-sean@poorly.run>
Date: Thu, 21 May 2026 21:39:39 +0300
Message-ID: <6d8e36e2aea806f9973b3c501aad4523f7316d6a@intel.com>
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[google.com,intel.com,linux.intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,poorly.run:email]
X-Rspamd-Queue-Id: 088C45AB2AC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 21 May 2026, Sean Paul <sean@poorly.run> wrote:
> From: Sean Paul <seanpaul@google.com>
>
> Fix two bugs in the plane-level color pipeline programming:
> 1. Fix a step discontinuity in the Post-CSC Gamma LUT when SDR dimming
>    is active by clamping Segment 2 to the last user-provided LUT entry
>    value instead of hardcoding it to 1.0 (1 << 24).
> 2. Fix a typo in the loop condition in xelpd_program_plane_pre_csc_lut
>    for Segment 2 degamma programming, changing 'while (i++ > 130)' to
>    'while (i++ < 130)'. Also clamp Segment 2 to the last user-provided
>    LUT entry value instead of hardcoding it to 1.0 (1 << 24) to fix
>    a step discontinuity similar to the Post-CSC fix.

One fix per patch, please.

For #2 there's already [1].

BR,
Jani.

[1] https://lore.kernel.org/r/20260519075245.383864-1-pranay.samala@intel.com

>
> Signed-off-by: Sean Paul <seanpaul@google.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 2d318e922671..9b807b024ec3 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -3953,6 +3953,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
>  	enum plane_id plane = to_intel_plane(state->plane)->id;
>  	const struct drm_color_lut32 *pre_csc_lut = plane_state->hw.degamma_lut->data;
>  	u32 i, lut_size;
> +	u32 lut_val = 1 << 24;
>  
>  	if (icl_is_hdr_plane(display, plane)) {
>  		lut_size = 128;
> @@ -3963,7 +3964,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
>  
>  		if (pre_csc_lut) {
>  			for (i = 0; i < lut_size; i++) {
> -				u32 lut_val = drm_color_lut32_extract(pre_csc_lut[i].green, 24);
> +				lut_val = drm_color_lut32_extract(pre_csc_lut[i].green, 24);
>  
>  				intel_de_write_dsb(display, dsb,
>  						   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
> @@ -3975,8 +3976,8 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
>  			do {
>  				intel_de_write_dsb(display, dsb,
>  						   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
> -						   (1 << 24));
> -			} while (i++ > 130);
> +						   lut_val);
> +			} while (i++ < 130);
>  		} else {
>  			for (i = 0; i < lut_size; i++) {
>  				u32 v = (i * ((1 << 24) - 1)) / (lut_size - 1);
> @@ -4023,11 +4024,11 @@ xelpd_program_plane_post_csc_lut(struct intel_dsb *dsb,
>  						   lut_val);
>  			}
>  
> -			/* Segment 2 */
> +			/* Segment 2 - clamp to the last LUT value to prevent step discontinuity */
>  			do {
>  				intel_de_write_dsb(display, dsb,
>  						   PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0),
> -						   (1 << 24));
> +						   lut_val);
>  			} while (i++ < 34);
>  		} else {
>  			/*TODO: Add for segment 0 */

-- 
Jani Nikula, Intel
