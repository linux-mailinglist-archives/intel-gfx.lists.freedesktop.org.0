Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sGSfAF8he2mZBgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 09:59:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B33ADE6D
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 09:59:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90A8510E83C;
	Thu, 29 Jan 2026 08:59:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ibaoibi+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1141810E83C;
 Thu, 29 Jan 2026 08:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769677148; x=1801213148;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=bcrAzpbqJixVR9lvMZUFhUvTL4GAMcNwl2QZ2OB5SA0=;
 b=Ibaoibi+mGY1b6k+mTfe0v/L5lFnCq4Q5XwEAIU62HmvNxh4Gxx5VQxI
 Bk3GoHSGVqniSa2M1DBFxe8smXwXC1fDybtzZ+2RFvdBEMZY8ojoxKzsr
 06hoYxlf8QeN/nI3i+zeDWRfrk5ShgHFMXZwXEFyTaVBrV7+A54TY7AqY
 ARBj7vEZjJJbh0xrCt7EqNwU8s2EofVd1dMkeCsDD/I7m5gF1I+ixOlpC
 79epoHXOjKE0sweRth1hRCoxUt2E+RujBWfxOCb1EOoWv7A+WEKNeA2LE
 nHD6jAIqQfx2fXduYJB3LJMHMvBwGDwhyHyKTRMBp8kEty6l2czzcFhKU w==;
X-CSE-ConnectionGUID: ITOqsJbVSCqGxlYLmKkQag==
X-CSE-MsgGUID: Rm45cbJ0Qs28xHV6nxuZxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70959983"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="70959983"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 00:59:08 -0800
X-CSE-ConnectionGUID: KnWF/oF3TF6tsHtfEepC9Q==
X-CSE-MsgGUID: VmFwc7t5SjCNC8aZQ6yYfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="246122781"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 00:59:05 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH v2] drm/i915/display: Wait for pipe start to avoid
 vblank and scanline jumps
In-Reply-To: <20260129060722.1382789-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260119043025.589754-1-suraj.kandpal@intel.com>
 <20260129060722.1382789-1-suraj.kandpal@intel.com>
Date: Thu, 29 Jan 2026 10:59:01 +0200
Message-ID: <58597bfd2f0b15ed1ba4ca4b8f80aaa6d9030b8b@intel.com>
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
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 23B33ADE6D
X-Rspamd-Action: no action

On Thu, 29 Jan 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Check if values are updated or not in PIPE_SCANLINE register before we
> move on ahead with modeset.
> This is because we need to make sure we are not getting
> stale values from PIPE_SCANLINE register as we use theses scanline
> values to make a decision if an atomic commit can go through. Without
> this change we see Atomic update failure warning with the following
> signature:
> [drm] *ERROR* Atomic update failure on pipe B (start=457 end=458) time
> 50 us, min 2128, max 2161, scanline start 411, end 2165.
> Where the atomic commit takes less than 100us but we still see a
> vblank count jump and a big leap in scanline.
> The PIPE_SCANLINE may give stale values as internally after writing
> to TRANSCONF register it take H/w around a vblank to actually get
> enabled.
>
> Bspec: 69961
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index d8739e2bb004..4514de71cb9f 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -83,6 +83,7 @@
>  #include "intel_snps_phy.h"
>  #include "intel_step.h"
>  #include "intel_tc.h"
> +#include "intel_vblank.h"
>  #include "intel_vdsc.h"
>  #include "intel_vdsc_regs.h"
>  #include "intel_vrr.h"
> @@ -3562,6 +3563,16 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
>  		intel_ddi_enable_hdmi(state, encoder, crtc_state, conn_state);
>  	else
>  		intel_ddi_enable_dp(state, encoder, crtc_state, conn_state);
> +	/*
> +	 * Somtimes when pipe starts PIPEDSL/PIPE_SCANLINE reads will return a
> +	 * stale value, this is because it may take 1 vblank for TRANSCONF
> +	 * register to enable the pipe, which causes an apparent vblank
> +	 * timestamp and scaline jump  jump when PIPEDSL/PIPE_SCANLINE
> +	 * resets to its proper value. That also messes up the frame count
> +	 * when it's derived from the timestamps. So let's wait for the
> +	 * pipe to start properly, So lets wait before we proceed with modeset.
> +	 */
> +	intel_wait_for_pipe_scanline_moving(to_intel_crtc(crtc_state->uapi.crtc));

The problem with adding these type of things is that they're almost
impossible to remove afterwards.

And on the face of it, it's kind of random placement in DDI encoder
enable where there's nothing else like this.

But the *_crtc_enable() functions in intel_display.c do have vblank
waits and scanline moving waits right after intel_encoders_enable(). So
that's kind of where it feels like this belongs.

On another note, what about the stale values? Related perhaps? [1]

BR,
Jani.


[1] https://lore.kernel.org/r/20260108165139.1381835-1-aer@tuxedocomputers.com


>  
>  	intel_hdcp_enable(state, encoder, crtc_state, conn_state);

-- 
Jani Nikula, Intel
