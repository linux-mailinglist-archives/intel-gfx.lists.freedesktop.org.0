Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D47CB2776
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 09:54:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0927F10E154;
	Wed, 10 Dec 2025 08:54:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gs/rB/QQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D05110E154;
 Wed, 10 Dec 2025 08:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765356895; x=1796892895;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=oPkEiWgOTxwoYne8CfKx5PKAIKPxG5DBcafq/Ihv5JI=;
 b=gs/rB/QQ3TxauWiolJdwDktFZ6iGJjN7znb45igjWzZNPkSsTXHE1c6L
 jMjA+KDmmWviHQIHDVDKdMpotqh/pdl8tfNku2JxrViedFy34EbIUltxR
 Yq9+iLOa+F/XoXd8KqXwBffAa+xPwy7yPfCRqAVjjHRId1J62hIeNfPBx
 qj6yavRTonsqS0pVBeJ2nYoBDUlEn50B2mZER+aVU02DgcdHpblCpMSE2
 LXyXAKoU2RyZZH7GRC7sHU8M4uZkqwbIlm1a+Z1r/XaE1bgCEVZL3Gu/W
 J6jwCKr1ZM2QRyJi9vma1YtHlN5G3aVE5tZk7WJ/5zI1ggr1UicTah2S3 w==;
X-CSE-ConnectionGUID: PtJGzh0ZQRScWRInTpfm7A==
X-CSE-MsgGUID: l+aSHRrYTby8AIJwVuwG0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="67362045"
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="67362045"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 00:54:54 -0800
X-CSE-ConnectionGUID: f6P+eslaTHqARfLq1GFM5w==
X-CSE-MsgGUID: uaRvnTGeTDC6+s/DWBqlig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="200885260"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.207])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 00:54:51 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>
Subject: Re: [PATCH] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
In-Reply-To: <20251210052128.1857581-1-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251210052128.1857581-1-animesh.manna@intel.com>
Date: Wed, 10 Dec 2025 10:54:48 +0200
Message-ID: <b6cd982649633cef5f878054e35cd8315b04ca05@intel.com>
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

On Wed, 10 Dec 2025, Animesh Manna <animesh.manna@intel.com> wrote:
> Unused bandwidth can be used by external display agents for Panel Replay
> enabled DP panel during idleness with link on. Enable source to replace
> dummy data from the display with data from another agent by programming
> TRANS_DP2_CTL [Panel Replay Tunneling Enable].
>
> Bspec: 68920
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_regs.h |  1 +
>  drivers/gpu/drm/i915/display/intel_psr.c      | 23 +++++++++++++++++++
>  2 files changed, 24 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 9e0d853f4b61..b6fc249a9f09 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -2051,6 +2051,7 @@
>  #define TRANS_DP2_CTL(trans)			_MMIO_TRANS(trans, _TRANS_DP2_CTL_A, _TRANS_DP2_CTL_B)
>  #define  TRANS_DP2_128B132B_CHANNEL_CODING	REG_BIT(31)
>  #define  TRANS_DP2_PANEL_REPLAY_ENABLE		REG_BIT(30)
> +#define  TRANS_DP2_PR_TUNNELING_ENABLE		REG_BIT(26)
>  #define  TRANS_DP2_DEBUG_ENABLE			REG_BIT(23)
>  
>  #define _TRANS_DP2_VFREQHIGH_A			0x600a4
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 2a378a5adc59..d0a01a08299e 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -44,6 +44,7 @@
>  #include "intel_dmc.h"
>  #include "intel_dp.h"
>  #include "intel_dp_aux.h"
> +#include "intel_dp_tunnel.h"
>  #include "intel_dsb.h"
>  #include "intel_frontbuffer.h"
>  #include "intel_hdmi.h"
> @@ -2152,6 +2153,25 @@ static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
>  	return true;
>  }
>  
> +static void intel_psr_set_pr_bw_optimization(struct intel_dp *intel_dp)
> +{
> +	struct intel_display *display = to_intel_display(intel_dp);
> +	u8 val;
> +
> +	if (DISPLAY_VER(display) < 35)
> +		return;
> +
> +	if (!intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
> +		return;
> +
> +	drm_dp_dpcd_readb(&intel_dp->aux, DP_TUNNELING_CAPABILITIES, &val);
> +	if (!(val & DP_PANEL_REPLAY_OPTIMIZATION_SUPPORT))
> +		return;
> +
> +	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
> +		     TRANS_DP2_PR_TUNNELING_ENABLE);
> +}

Why is this so separated from dg2_activate_panel_replay()?

> +
>  static void intel_psr_enable_locked(struct intel_dp *intel_dp,
>  				    const struct intel_crtc_state *crtc_state)
>  {
> @@ -2221,6 +2241,9 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
>  	intel_dp->psr.link_ok = true;
>  
>  	intel_psr_activate(intel_dp);
> +
> +	if (!intel_dp_is_edp(intel_dp) && intel_dp->psr.panel_replay_enabled)
> +		intel_psr_set_pr_bw_optimization(intel_dp);
>  }
>  
>  static void intel_psr_exit(struct intel_dp *intel_dp)

-- 
Jani Nikula, Intel
