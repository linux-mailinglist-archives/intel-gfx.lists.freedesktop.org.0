Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VTr2NQEhRmrOKQsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 10:27:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D44F6F4C6F
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 10:27:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=HNhqFxgq;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFD9410F232;
	Thu,  2 Jul 2026 08:27:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6915B10F230;
 Thu,  2 Jul 2026 08:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782980862; x=1814516862;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=l9ruhvFSYqkoWruuhV72DO4aLyvjkW3Muv3iPgWyt44=;
 b=HNhqFxgqNYvRMIJ8dqY6ZXuFWzpP/J6HQfO14atFueimJJJP1MN3FETy
 N2kJrTsKdm1CWUHKr9zeJFY2pXKh9UFIQmPrIpZMshKEC1GlP61pGnxwg
 rSewGRPEqYfYAoOB+PECsDUeXJoB/WneSm6Tg/4oUxjQoW/NV1RX1Bbvd
 332SbDJE8JhWs70U79LafsLgQbHNFCnm+xXeOdQ4kXvSblHOnaW+hQ21r
 xBhVqX1pXdwRLMOw+5kr6906Ce6fF6gbehT9AZ0i1t3Qe0bRZxvlhKyCq
 RPnMOaxBtDNXRMGuZjt4hSBlyhF+pcUGErwkuCFddWYA4FBqAfA3IdJRW w==;
X-CSE-ConnectionGUID: k8Uil0PgRG+mebREIAELzg==
X-CSE-MsgGUID: cEJVPSc8SmC8V47rTiTe5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94083684"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="94083684"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 01:27:42 -0700
X-CSE-ConnectionGUID: YME+UwnASW+PhAGsNCJCIA==
X-CSE-MsgGUID: 8+Ggm9/4T0iCxgSN2rCswQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="257138064"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.209])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 01:27:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Maarten Lankhorst <dev@lankhorst.se>,
 Uma Shankar <uma.shankar@intel.com>
Subject: Re: [PATCH 1/4] drm/i915/display: Make icl_dsi_frame_update use _fw
 too
In-Reply-To: <20260702080346.431508-2-dev@lankhorst.se>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260702080346.431508-1-dev@lankhorst.se>
 <20260702080346.431508-2-dev@lankhorst.se>
Date: Thu, 02 Jul 2026 11:27:37 +0300
Message-ID: <7d7cf653c4be0d88e69486e224c781bf4e73c730@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,lankhorst.se:email,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5D44F6F4C6F

On Thu, 02 Jul 2026, Maarten Lankhorst <dev@lankhorst.se> wrote:
> Don't use the dmc lock inside the vblank critical section,
> not even as last call.

The commit message should explain the why.

> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index ea0cdb7822f39..f1ccbc5efd6ea 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -242,8 +242,8 @@ void icl_dsi_frame_update(struct intel_crtc_state *crtc_state)
>  	else
>  		return;
>  
> -	intel_de_rmw(display, DSI_CMD_FRMCTL(port), 0,
> -		     DSI_FRAME_UPDATE_REQUEST);
> +	intel_de_rmw_fw(display, DSI_CMD_FRMCTL(port), 0,
> +			DSI_FRAME_UPDATE_REQUEST);
>  }
>  
>  static void dsi_program_swing_and_deemphasis(struct intel_encoder *encoder)

-- 
Jani Nikula, Intel
