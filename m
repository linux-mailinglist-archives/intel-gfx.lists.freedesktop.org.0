Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INtcDAYunGkKAgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 11:37:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E68174FF8
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 11:37:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C61C10E2E3;
	Mon, 23 Feb 2026 10:37:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jFMjJH4O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FFC210E2E3;
 Mon, 23 Feb 2026 10:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771843075; x=1803379075;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=XDTUTqTZgPMeNRlpptXv8Xfjezo6OsktW68fIT0Y800=;
 b=jFMjJH4Oz5RfVBE2DY60UT0FHwZ5uezbPjP5k/HV1EeVA41gtNgxcvaE
 /U5aQWlFDQosaFhfSTtHoue4rzbLjIbln3fpAeo+OUEt1GusmspNAL0X0
 CIiWiaI0zJBPnFfhvHL2/5lDMCdiFzHsxr7BTQ4KTV5sCR5RPa6CWsVPQ
 kKkmTJigcHEnZdemsHx4AdfdCgzb7MaNgEZK5tKpHSe+iinBZFab/BKk3
 P+y2QJZS6IEaT4xQb6Bqr+PBNXrqXrttLsU/YdzOiG7xdJhVMhrsFNsub
 30W9PDO0YwphrEVVxZRm6ackd37vOTRnwijqfZylzZFMfnbmpLbdwilum A==;
X-CSE-ConnectionGUID: JZ0sCm9AQlG3uwZjR6DGFQ==
X-CSE-MsgGUID: IXWuh3UjSyGPQG3J2S0d6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11709"; a="72896671"
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="72896671"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 02:37:55 -0800
X-CSE-ConnectionGUID: 8zXahF2jTa+HTyTVfgUL7Q==
X-CSE-MsgGUID: RvCHkn0ETk2JJ6/IoxlYXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="238493618"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.249])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 02:37:52 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, uma.shankar@intel.com,
 suraj.kandpal@intel.com, ankit.k.nautiyal@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Arun R
 Murthy <arun.r.murthy@intel.com>, Cole Leavitt <cole@unwrap.rs>
Subject: Re: [PATCH v3 1/2] drm/i915/cx0_phy_regs: Include SoC and OS
 turnaround time
In-Reply-To: <20260216-timeout-v3-1-055522c22560@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260216-timeout-v3-0-055522c22560@intel.com>
 <20260216-timeout-v3-1-055522c22560@intel.com>
Date: Mon, 23 Feb 2026 12:37:49 +0200
Message-ID: <10cbabb7704cb26523dba025be95083d13042418@intel.com>
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
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email,unwrap.rs:email]
X-Rspamd-Queue-Id: 94E68174FF8
X-Rspamd-Action: no action

On Mon, 16 Feb 2026, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> The port refclk enable timeout and the soc ready timeout value mentioned
> in the spec is the PHY timings and doesn't include the turnaround time
> from the SoC or OS. So add an overhead timeout value on top of the
> recommended timeouts from the PHY spec.
> The overhead value is based on the stress test results with multiple
> available panels.
>
> Reported-by: Cole Leavitt <cole@unwrap.rs>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14713
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index 658890f7351530e5686c23e067deb359b3283d59..152a4e751bdcf216a95714a2bd2d6612cbbd4698 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -78,10 +78,10 @@
>  #define XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US		3200
>  #define XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US		20
>  #define XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US		100
> -#define XELPDP_PORT_RESET_START_TIMEOUT_US		5
> +#define XELPDP_PORT_RESET_START_TIMEOUT_US		10
>  #define XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_MS		2
>  #define XELPDP_PORT_RESET_END_TIMEOUT_MS		15
> -#define XELPDP_REFCLK_ENABLE_TIMEOUT_US			1
> +#define XELPDP_REFCLK_ENABLE_TIMEOUT_US			10

Side note, *none* of these belong in intel_cx0_phy_regs.h. They should
be moved to intel_cx0_phy.c instead.

The timeouts do not describe the register contents.

BR,
Jani.

>  
>  #define _XELPDP_PORT_BUF_CTL1_LN0_A			0x64004
>  #define _XELPDP_PORT_BUF_CTL1_LN0_B			0x64104

-- 
Jani Nikula, Intel
