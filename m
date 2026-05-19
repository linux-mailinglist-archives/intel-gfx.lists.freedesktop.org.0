Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMvzEapjDGpXggUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 15:20:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A26757F7DB
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 15:20:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B80E10ECD8;
	Tue, 19 May 2026 13:20:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U7FUZxlU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D7FD10ECD8;
 Tue, 19 May 2026 13:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779196838; x=1810732838;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vyUooBjIlGxyOWFhxEPFJS4Yo+FXEHBAVqE/hJo4ThU=;
 b=U7FUZxlUb2aRbsdexHDPSjjvUqPcOfJHvcTpirjTY6HKibEGmz/hTp+P
 gGh8X92y2Y1vsyRFBoH3mO7nm+ngqzZvrJOgXNvMlq+DTN0GJQB1mz5gD
 cf4yMwZeAOz/J4HYS+HNzfq+X3ml1r9tdO6ngsiyQ6k/Bzl4aesiOziUN
 PF6NFEiWzU3kjiJrUNgMGqd7YxE4AdOw0YHqwJF5lP3j5CLCHMQ6d0bsa
 wz2Kc/Ap591aHccpjCZrahVyQda6xAWc7tPqLuK2mw/uBZmah6lac68b3
 R8Yhl2yYJTh4SLZ1lTh5jPru9YDWsk3LpuOxmcXBgv1nwP3FAm3VimMnj w==;
X-CSE-ConnectionGUID: Q9uHuAw+TbGVRTpWkze3Rw==
X-CSE-MsgGUID: abEg/SUGSFOo1H76WsYpJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11791"; a="79220019"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="79220019"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 06:20:37 -0700
X-CSE-ConnectionGUID: x8p7w1m0Tku2ogCXQEifkg==
X-CSE-MsgGUID: sbSXfrVwQR6LlhhZHl8C8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="238774207"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.16])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 06:20:35 -0700
Date: Tue, 19 May 2026 16:20:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [RESEND] drm/i915/aux: use polling when irqs are unavailable
Message-ID: <agxjn1P9K7DGA8QO@intel.com>
References: <20260416163744.288107-1-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260416163744.288107-1-michal.grzelak@intel.com>
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
X-Spamd-Result: default: False [0.40 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 2A26757F7DB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 16, 2026 at 06:37:44PM +0200, Michał Grzelak wrote:
> PTL with physically disconnected display was observed to have 40s longer
> execution time when testing xe_fault_injection@xe_guc_mmio_send_recv.
> The issue has not been seen when reverting commit 40a9f77a28fa ("Revert
> "drm/i915/dp: change aux_ctl reg read to polling read"").
> 
> Apparently the configuration suffers from not having AUX enabled when
> using interrupts. One probable cause can be xe enabling interrupts too
> late: interrupts need memory allocations which currently can't be done
> before the display FB takeover is done.
> 
> As for now, use polling for AUX in case interrupts are unavailable.
> 
> Fixes: 40a9f77a28fa ("Revert "drm/i915/dp: change aux_ctl reg read to polling read"")
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>

Pushed to drm-intel-next. Thanks.

> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 20 ++++++++++++++++----
>  1 file changed, 16 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index b20ec3e589fad..9c9b6410366d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -12,6 +12,7 @@
>  #include "intel_dp.h"
>  #include "intel_dp_aux.h"
>  #include "intel_dp_aux_regs.h"
> +#include "intel_parent.h"
>  #include "intel_pps.h"
>  #include "intel_quirks.h"
>  #include "intel_tc.h"
> @@ -60,18 +61,29 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	i915_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
>  	const unsigned int timeout_ms = 10;
> +	bool done = true;
>  	u32 status;
> -	bool done;
> +	int ret;
>  
> +	if (intel_parent_irq_enabled(display)) {
>  #define C (((status = intel_de_read_notrace(display, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)
> -	done = wait_event_timeout(display->gmbus.wait_queue, C,
> -				  msecs_to_jiffies_timeout(timeout_ms));
> +		done = wait_event_timeout(display->gmbus.wait_queue, C,
> +					  msecs_to_jiffies_timeout(timeout_ms));
> +
> +#undef C
> +	} else {
> +		ret = intel_de_wait_ms(display, ch_ctl,
> +				       DP_AUX_CH_CTL_SEND_BUSY, 0,
> +				       timeout_ms, &status);
> +
> +		if (ret == -ETIMEDOUT)
> +			done = false;
> +	}
>  
>  	if (!done)
>  		drm_err(display->drm,
>  			"%s: did not complete or timeout within %ums (status 0x%08x)\n",
>  			intel_dp->aux.name, timeout_ms, status);
> -#undef C
>  
>  	return status;
>  }
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
