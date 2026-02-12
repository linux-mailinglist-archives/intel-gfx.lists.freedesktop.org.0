Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AE8TDIH6jWnz9wAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 17:06:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B8B12F395
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 17:06:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B96910E769;
	Thu, 12 Feb 2026 16:06:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TUpmXpqq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C63B10E769
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Feb 2026 16:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770912381; x=1802448381;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=rxTOeEuDJp8/x7L/QXfdyQjnbNoItyMMhKQqEwg/lu4=;
 b=TUpmXpqqYbrdKX/5WukYOFjeJT22yfaScO3sjZa83dRkLTJcQitPv5lp
 KSE5hH8f1DtDmN5/e588lwngndeYLaz+aPaMC8606pSCH1OLBmAxJoUya
 pmLC1ajo19oascAlNYbHeKyQ2QOQT7sAywYD40XaHC+zlHOtNXl4NbMLT
 GQ1GLd18dYSC7hzxBAM6hjObBil4xoBgiSi9X2OcOanwWV2txylpTTDnD
 2GKg/CfPxMre+hRzqLm75J1z4ExEh6hhZOSrq38POoXlq/r47eK6v4bTe
 Nx0Fe/TkRWKkWHEizP89HRf8hSSOpJDTvFm/Kzii/9bBOjWqgoFCtFGPG A==;
X-CSE-ConnectionGUID: HOwLsGbwTcerwV/2IQzQ9Q==
X-CSE-MsgGUID: cdeytzFERVKJeGJHxHQJrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="75929802"
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="75929802"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 08:06:21 -0800
X-CSE-ConnectionGUID: I3sLsvpVSLC2u7mS0DzwsA==
X-CSE-MsgGUID: ETQANyuHSFC4hH+B/st/yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,287,1763452800"; d="scan'208";a="211892617"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.140])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 08:06:20 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 12/16] drm/i915/display: convert W/As in intel_overlay.c
 to new framework
In-Reply-To: <20260212125526.344401-13-luciano.coelho@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260212125526.344401-1-luciano.coelho@intel.com>
 <20260212125526.344401-13-luciano.coelho@intel.com>
Date: Thu, 12 Feb 2026 18:06:16 +0200
Message-ID: <8f5be7cb5ebe6e1ee0d09b95234cc8d75584c3e6@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:luciano.coelho@intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_FORWARDING(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 48B8B12F395
X-Rspamd-Action: no action

On Thu, 12 Feb 2026, Luca Coelho <luciano.coelho@intel.com> wrote:
> Convert the low-hanging fruits of workaround checks to the workaround
> framework.  Instead of having display structure checks for the
> workarounds all over, concentrate the checks in intel_wa.c.

This patch doesn't do anything, likely due to a change in
intel_overlay.c.

>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_wa.c | 2 ++
>  drivers/gpu/drm/i915/display/intel_display_wa.h | 1 +
>  drivers/gpu/drm/i915/display/intel_overlay.c    | 1 +
>  3 files changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index 72f645686efd..65ad82c67301 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -130,6 +130,8 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
>  			IS_DISPLAY_STEP(display, STEP_A0, STEP_B0);
>  	case INTEL_DISPLAY_WA_22014263786:
>  		return IS_DISPLAY_VERx100(display, 1100, 1400);
> +	case INTEL_DISPLAY_WA_22018444074:
> +		return !display->platform.meteorlake;
>  	case INTEL_DISPLAY_WA_22021048059:
>  		return IS_DISPLAY_VER(display, 14, 35);
>  	default:
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index d8359f88de29..44d06b074b0f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -52,6 +52,7 @@ enum intel_display_wa {
>  	INTEL_DISPLAY_WA_22011320316,
>  	INTEL_DISPLAY_WA_22012358565,
>  	INTEL_DISPLAY_WA_22014263786,
> +	INTEL_DISPLAY_WA_22018444074,
>  	INTEL_DISPLAY_WA_22021048059,
>  };
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
> index e7838f4d2dac..1a47878dc805 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -42,6 +42,7 @@
>  #include "intel_de.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
> +#include "intel_display_wa.h"
>  #include "intel_frontbuffer.h"
>  #include "intel_overlay.h"
>  #include "intel_pci_config.h"

-- 
Jani Nikula, Intel
