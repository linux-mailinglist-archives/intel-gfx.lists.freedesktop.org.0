Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMPFHuOY6GnVNAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 11:46:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC4344430E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 11:46:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4889610ED92;
	Wed, 22 Apr 2026 09:46:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OjD5NmQ9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAA9F10ED7A;
 Wed, 22 Apr 2026 09:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776851168; x=1808387168;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9Tq0ixn2djtHjCYiJJgs4bad1z6zqahpcGkanyvroVQ=;
 b=OjD5NmQ9JV09RHVKk/qRi888l0iLkiu1JQSt03jueDKnLEdvFKB+q62v
 1eLqcnV6ImeO0zvAnnlzRhF5afNzOg69OHCBfDq5MYPu0Ae10etgxgyhn
 zQkhKFxRYvG7SMwZojH9XjYr993lkjqMvKDCXp+ZY35Jqr8o5KEgk+HOa
 fe+12NXMqKOcsACmPdeof4PqlRqai/gsFe+fZ/BGEy1kSpNX9eN70eSGW
 WLj1l6nGWJLlkU5TxsihvnbYsJEdtwnUYDrEbGILy0ywV9iG27RBvZwbs
 68FmSq4BZReXHWENsHg80z4Bs9HauLyih3KAD0D6WrKKdNd/zXyS4ejU3 g==;
X-CSE-ConnectionGUID: cmRUBiaNQKKvyqRZyUC/rg==
X-CSE-MsgGUID: sIMXdnQmQca1STcc1IqXLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11763"; a="76832241"
X-IronPort-AV: E=Sophos;i="6.23,192,1770624000"; d="scan'208";a="76832241"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 02:46:07 -0700
X-CSE-ConnectionGUID: CuR/lBL8TQ+ZY7rzdWlKhw==
X-CSE-MsgGUID: g4731+suSiu8ysRDAfQ5MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,192,1770624000"; d="scan'208";a="231277408"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.10])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 02:46:06 -0700
Date: Wed, 22 Apr 2026 12:46:02 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/6] drm/i915/cursor: Check joiner cursor commit status
Message-ID: <aeiY2q8Qeq1wGi9c@intel.com>
References: <20260422073722.1861494-1-nemesa.garg@intel.com>
 <20260422073722.1861494-2-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260422073722.1861494-2-nemesa.garg@intel.com>
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
X-Spamd-Result: default: False [0.36 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.67)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: DFC4344430E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 22, 2026 at 01:07:17PM +0530, Nemesa Garg wrote:
> In joiner mode, secondary cursor commits may still be running
> even when the primary cursor commit is done.
> Check secondary cursor commit status before taking the fast path.
> If any secondary commit is still pending, fallback to slow path.
> 
> Assisted-by: Claude:claude-sonnet-4.6
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cursor.c | 29 +++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index 18d1014de361..609915c798ba 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -13,6 +13,7 @@
>  #include <drm/drm_vblank.h>
>  
>  #include "intel_atomic.h"
> +#include "intel_crtc.h"
>  #include "intel_cursor.h"
>  #include "intel_cursor_regs.h"
>  #include "intel_de.h"
> @@ -797,6 +798,30 @@ void intel_cursor_unpin_work(struct kthread_work *base)
>  	intel_plane_destroy_state(&plane->base, &plane_state->uapi);
>  }
>  
> +static bool
> +intel_cursor_joiner_commits_idle(struct intel_display *display,
> +				 const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *secondary_crtc;
> +	u8 secondary_pipes = intel_crtc_joiner_secondary_pipes(crtc_state);
> +
> +	if (!secondary_pipes)
> +		return true;
> +
> +	for_each_intel_crtc_in_pipe_mask(display->drm, secondary_crtc, secondary_pipes) {

You want to just iterate over intel_crtc_joined_pipe_mask() everywhere.
That way the primary and secondary pipes all just get handled in exactly
the same way.

AFAICS you've completely skipped over proper locking in this series.

> +		struct intel_plane *secondary_plane =
> +					intel_crtc_get_plane(secondary_crtc, PLANE_CURSOR);
> +		struct intel_plane_state *secondary_plane_state =
> +					to_intel_plane_state(secondary_plane->base.state);
> +
> +		if (secondary_plane_state->uapi.commit &&
> +		    !try_wait_for_completion(&secondary_plane_state->uapi.commit->hw_done))
> +			return false;
> +	}
> +
> +	return true;
> +}
> +
>  static int
>  intel_legacy_cursor_update(struct drm_plane *_plane,
>  			   struct drm_crtc *_crtc,
> @@ -843,6 +868,10 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>  	    !try_wait_for_completion(&old_plane_state->uapi.commit->hw_done))
>  		goto slow;
>  
> +	/* For joiner case also do the same thing as above */
> +	if (!intel_cursor_joiner_commits_idle(display, crtc_state))
> +		goto slow;
> +
>  	/*
>  	 * If any parameters change that may affect watermarks,
>  	 * take the slowpath. Only changing fb or position should be
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
