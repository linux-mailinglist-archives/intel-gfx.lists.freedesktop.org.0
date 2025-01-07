Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F175DA04396
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 16:02:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9820A10E71D;
	Tue,  7 Jan 2025 15:02:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m3vVFpOe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D05510E71C;
 Tue,  7 Jan 2025 15:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736262145; x=1767798145;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=o5mwZVd0jQGZmNi+mRM/KK8FNyYO7N41z3X3B6zDUHo=;
 b=m3vVFpOe1ySoOVzk7BzqfRMBzhdY9iyUVj1IAwMngimS6gWYKQlWzesI
 k6dxN3tEWrW5etuxXiMv0T1ZGOjYN2HktoHPMj2SSaLZK2HNCfjrKmO2w
 stpGkP+aZ8zFCOnFbq8f+lruMWLAs3FuH1jtFI/gIu2yYt56p7swB6/Jx
 Rgkr6Nw4ZjaQp+8Nyut7M8WP/lQnE2xwZkS2szk6tlaKu41ylE5wG0gXq
 cMEdTIjHuxSlC+VuP8oW/1pC84TWeIJPGZdhLgJJitwgEYWmRKmhFJ1ev
 /Ah3KPumom1iF7q5DrxHipbmdB0/vPSoiSyCywNEueRdcEa64juaqPZwo A==;
X-CSE-ConnectionGUID: 9N6L9k5LTWSoku9Rzt8p8A==
X-CSE-MsgGUID: 6ALa0LAKRO6dJexu7qh6+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="47116656"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="47116656"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 07:02:02 -0800
X-CSE-ConnectionGUID: 5TPxyme3QnmHGFztYt7+Xg==
X-CSE-MsgGUID: PtTFsUGUTfiIgvP4sjvYnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="107670477"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 07:01:55 -0800
Date: Tue, 7 Jan 2025 17:02:47 +0200
From: Imre Deak <imre.deak@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com
Subject: Re: [PATCH 1/2] drm/i915/cx0: Fix SSC enablement in PORT_CLOCK_CTL
Message-ID: <Z31CF9QeIe7erRqE@ideak-desk.fi.intel.com>
References: <20250106040821.251114-1-suraj.kandpal@intel.com>
 <20250106040821.251114-2-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250106040821.251114-2-suraj.kandpal@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 06, 2025 at 09:38:20AM +0530, Suraj Kandpal wrote:
> SSC for PLL_A is enabled for UHBR10 or UHBR20 regardless of the
> need for SSC. This means the ssc_enabled variable had no say
> to determine enablement of SSC on PLL A.

I don't see the above in the spec. It suggests that SSC should be
enabled on PLL A for MFD, but in any case SSC can only be enabled
if the sink supports SSC, as indicated by dpll_hw_state.cx0pll.ssc_enabled.

> Bspec: 64568, 74165, 74489, 74491
> Fixes: 237e7be0bf57 ("drm/i915/mtl: For DP2.0 10G and 20G rates use MPLLA")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index e768dc6a15b3..3fd959a2773c 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2747,7 +2747,7 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>  	/* TODO: HDMI FRL */
>  	/* DP2.0 10G and 20G rates enable MPLLA*/
>  	if (crtc_state->port_clock == 1000000 || crtc_state->port_clock == 2000000)
> -		val |= crtc_state->dpll_hw_state.cx0pll.ssc_enabled ? XELPDP_SSC_ENABLE_PLLA : 0;
> +		val |= XELPDP_SSC_ENABLE_PLLA;
>  	else
>  		val |= crtc_state->dpll_hw_state.cx0pll.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
>  
> -- 
> 2.34.1
> 
