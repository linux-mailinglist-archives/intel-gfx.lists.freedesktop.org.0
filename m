Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJwGNodKEGpvVwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 14:22:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 658205B3D43
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 14:22:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39F9110E25B;
	Fri, 22 May 2026 12:22:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M2p2kDVJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4FC410E09D;
 Fri, 22 May 2026 12:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779452548; x=1810988548;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vpg+r1CykQU96apmv77Q19AkNG5/4e5oTlPe/BjbinY=;
 b=M2p2kDVJxW31YZ2pbukOmE2QyYyjmf+N7567E6FQHH0eMVZhZSkEQS2z
 mBJ6DjMjBdQDVEz+pMstZF+F+VfsJWJwnE57Us1lUe1ht3lI21Gw6S8Ez
 RWsCb+0XUayUkYGAOI53HxHFbzVwTiEmzoDuZOvEdXvYVvsXwEMZ3IEQx
 n+65kg6l2zxH7Wr5A+BfKiYGIsjBqRq7l/EDIdE8M4+BuUoxWLYSks/Dl
 1ObKVA6m0q49gQdgTvHOBx5q4h3eK0mCl8hidwYLPhbI4M77wc23mE+Z8
 R0OsEnwNV4OSxPQR6x97xZL1gOlWL0eZJUMXQtTjeH5zY+JDBexPsn9G+ g==;
X-CSE-ConnectionGUID: INnQAiLzSIOk49af4FGXIw==
X-CSE-MsgGUID: Foh1JJjYQXeRcBrJ2JkcmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="91489455"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="91489455"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 05:22:27 -0700
X-CSE-ConnectionGUID: 2KYX6BDiSWKB/z2QR6s7Dg==
X-CSE-MsgGUID: ZIfnlPxpSlS+zUNpGeEktg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="245880262"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.187])
 by orviesa005-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 May 2026 05:22:26 -0700
Date: Fri, 22 May 2026 15:22:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [RESEND 2/6] drm/i915/display: switch from drm_for_each_crtc()
 to for_each_intel_crtc()
Message-ID: <ahBKfmBlTT-Oy5RP@intel.com>
References: <cover.1778659089.git.jani.nikula@intel.com>
 <8ee4320cd15bc35a8b40676faae6db4b33eb50eb.1778659089.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8ee4320cd15bc35a8b40676faae6db4b33eb50eb.1778659089.git.jani.nikula@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 658205B3D43
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, May 13, 2026 at 10:58:36AM +0300, Jani Nikula wrote:
> intel_has_pending_fb_unpin() has the last direct user of
> drm_for_each_crtc() in i915. Switch to for_each_intel_crtc() to ensure
> pipe order iteration in all cases.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

The order doesn't actually matter here, but no reason do things
differently just in this one case.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 50feca52b962..682a0514ec81 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -714,22 +714,22 @@ static void icl_set_pipe_chicken(const struct intel_crtc_state *crtc_state)
>  
>  bool intel_has_pending_fb_unpin(struct intel_display *display)
>  {
> -	struct drm_crtc *crtc;
> +	struct intel_crtc *crtc;
>  	bool cleanup_done;
>  
> -	drm_for_each_crtc(crtc, display->drm) {
> +	for_each_intel_crtc(display->drm, crtc) {
>  		struct drm_crtc_commit *commit;
> -		spin_lock(&crtc->commit_lock);
> -		commit = list_first_entry_or_null(&crtc->commit_list,
> +		spin_lock(&crtc->base.commit_lock);
> +		commit = list_first_entry_or_null(&crtc->base.commit_list,
>  						  struct drm_crtc_commit, commit_entry);
>  		cleanup_done = commit ?
>  			try_wait_for_completion(&commit->cleanup_done) : true;
> -		spin_unlock(&crtc->commit_lock);
> +		spin_unlock(&crtc->base.commit_lock);
>  
>  		if (cleanup_done)
>  			continue;
>  
> -		intel_crtc_wait_for_next_vblank(to_intel_crtc(crtc));
> +		intel_crtc_wait_for_next_vblank(crtc);
>  
>  		return true;
>  	}
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
