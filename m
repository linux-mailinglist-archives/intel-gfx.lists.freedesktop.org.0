Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IHkVCVQ0MGqNPwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 19:20:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC46688CBB
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 19:20:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hKUeDI5I;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C4C510E589;
	Mon, 15 Jun 2026 17:20:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB17D10E596;
 Mon, 15 Jun 2026 17:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781544016; x=1813080016;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=nQMx2xjGZaZEzcyc9EI+7IwbIbnUSvIu+pCMMd6vvZo=;
 b=hKUeDI5IFXSylJCQRQgp+nUAoSPTdpNvKn6SYjWppIgWVH49Z58B0MxL
 +c7wQuJGuyu4xLhKiIrfT6rWUa/9+kmLxnTurmUwq5PPINN9UrHkamDY9
 0R3d/yvM/SmxDWG77esUbSjSzIBinQ92VJFAjGl8cQmfJNArptYqok77y
 L2k73Xb3dfj29Eejfmku9q7/wdCEST5opsxW5AnAB35LkyxYwEml4QxHv
 MHIWrsf9W5E+uhr01zHIkdHlB5wrkvdtGUckbspEGj607nx0CK0m8JWQF
 EydENjxv3UrE8lx0Qs+tAGsIw/9esAaMK0keDFBepFt7pYY/ygtiHGtkC g==;
X-CSE-ConnectionGUID: QzwRfQ0CT+Ojn3xnPsaOig==
X-CSE-MsgGUID: aGnUEoQkR8aL6VPLksKSLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82190226"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="82190226"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 10:20:15 -0700
X-CSE-ConnectionGUID: 4SJVtSTeTWymtaGZDr0jrQ==
X-CSE-MsgGUID: ZflAhESTQC6HTBWUV7/b5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="285647746"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.28])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 10:20:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: chafi <chafiprc@foxmail.com>, intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, stable@vger.kernel.org, Yu Zhang
 <chafiprc@foxmail.com>
Subject: Re: [PATCH 1/3] drm/i915/dsi: Program TRANS_HSYNC register for
 dual-link command mode
In-Reply-To: <tencent_41186F27AF2C13B660C14ED5E6E14759800A@qq.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <tencent_41186F27AF2C13B660C14ED5E6E14759800A@qq.com>
Date: Mon, 15 Jun 2026 20:20:10 +0300
Message-ID: <ed14be7c1d21587af9731726ae1c311c4ad6602c@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,foxmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[foxmail.com,lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:mid,foxmail.com:email,lists.freedesktop.org:from_smtp,pages.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3BC46688CBB

On Mon, 08 Jun 2026, chafi <chafiprc@foxmail.com> wrote:
> From: Yu Zhang <chafiprc@foxmail.com>
>
> The TRANS_HSYNC register programming and dual-link hsync halving is
> placed inside the is_vid_mode() guard, so it only runs for video mode.
> Command mode dual-link DSI also needs this:
>
> 1. Without TRANS_HSYNC written, the hardware retains an inconsistent
>    state, leading to errors on modeset:
>
>    [drm] *ERROR* mismatch in hw.pipe_mode.crtc_hsync_start
>    (expected 2762, found 1380)
>
> 2. The hsync_start/end are not halved for each link, so the hardware
>    stores per-link values while the software expects full values.
>
> Fix this by moving the dual-link hsync halving and TRANS_HSYNC write
> outside the is_vid_mode() guard, making them unconditional for all
> DSI modes.
>
> Fixes: d1aeb5f399d9 ("drm/i915/icl: Configure DSI transcoder timings")
> Cc: stable@vger.kernel.org
> Signed-off-by: Yu Zhang <chafiprc@foxmail.com>

Hey, I see you've sent a few paches for DSI. Nice! Do you actually have
the hardware? Would be great to have a bug report over at [1] with the
dmesg (with drm debugs enabled) so we can see the failure mode and exact
hardware details.


BR,
Jani.


[1] https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html


> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 21 ++++++++++-----------
>  1 file changed, 10 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 951f30a64..c667d5941 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -950,7 +950,6 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
>  			       HACTIVE(hactive - 1) | HTOTAL(htotal - 1));
>  	}
>  
> -	/* TRANS_HSYNC register to be programmed only for video mode */
>  	if (is_vid_mode(intel_dsi)) {
>  		if (intel_dsi->video_mode == NON_BURST_SYNC_PULSE) {
>  			/* BSPEC: hsync size should be atleast 16 pixels */
> @@ -961,18 +960,18 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
>  
>  		if (hback_porch < 16)
>  			drm_err(display->drm, "hback porch < 16 pixels\n");
> +	}
>  
> -		if (intel_dsi->dual_link) {
> -			hsync_start /= 2;
> -			hsync_end /= 2;
> -		}
> +	if (intel_dsi->dual_link) {
> +		hsync_start /= 2;
> +		hsync_end /= 2;
> +	}
>  
> -		for_each_dsi_port(port, intel_dsi->ports) {
> -			dsi_trans = dsi_port_to_transcoder(port);
> -			intel_de_write(display,
> -				       TRANS_HSYNC(display, dsi_trans),
> -				       HSYNC_START(hsync_start - 1) | HSYNC_END(hsync_end - 1));
> -		}
> +	for_each_dsi_port(port, intel_dsi->ports) {
> +		dsi_trans = dsi_port_to_transcoder(port);
> +		intel_de_write(display,
> +			       TRANS_HSYNC(display, dsi_trans),
> +			       HSYNC_START(hsync_start - 1) | HSYNC_END(hsync_end - 1));
>  	}
>  
>  	/* program TRANS_VTOTAL register */

-- 
Jani Nikula, Intel
