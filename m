Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7F1CB8335
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 09:06:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47D9D10E562;
	Fri, 12 Dec 2025 08:06:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Teg61S7e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 228D910E55D;
 Fri, 12 Dec 2025 08:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765526790; x=1797062790;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+baRErWzkzWlaGvlMGei9poN+0Da5MVI7mpSRetKIjg=;
 b=Teg61S7eTikTzwDXkk6HCZk0DtI5v4wo7YAMqx+8kSkqQxOp1Iyn3c/c
 ej2/BaKvWCXEO/uvuxX4gHx4ZxMV2dgTqhFbp0aKCa73PRMQJO81/suo3
 Jr4utVXr+trVEYL/bzQiXqwQJXGFswgrMBiBERtHGZXPwyIz9hw4OZagT
 jaVilEew4hUInYHOhjgw2wbPy0NbX+21+5TMZ5PoprnKd80YFuL0ym4Z2
 vNOEK/K96wv7fdinRY8ALoyW8iPU59LSvduYRJFVCTH2rMezcQO5C/liq
 sAfHEY+26ckEC4YWjNgok2uUviyQmFOJKjuhgsjHeTN6+Bh6cuNqT5acc Q==;
X-CSE-ConnectionGUID: rsW/k/JOTiOu81BmV0zdsw==
X-CSE-MsgGUID: CfnVjGkHTMqdNLWPLhaV0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="71139745"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="71139745"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 00:06:29 -0800
X-CSE-ConnectionGUID: 2mAh3tiFQ2qGslbY+Xy2NQ==
X-CSE-MsgGUID: 1iKXKA1LR5q65kzHYrl/dA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="197006394"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.39])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 00:06:28 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>
Subject: Re: [PATCH v2] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
In-Reply-To: <20251212055423.1925044-1-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251212055423.1925044-1-animesh.manna@intel.com>
Date: Fri, 12 Dec 2025 10:06:24 +0200
Message-ID: <c84b7dd4373a572778ff74b97b16e37012d813fb@intel.com>
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

On Fri, 12 Dec 2025, Animesh Manna <animesh.manna@intel.com> wrote:
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
> index 2a378a5adc59..0d4cac30e40e 100644
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
> @@ -1018,6 +1019,25 @@ static u8 frames_before_su_entry(struct intel_dp *intel_dp)
>  	return frames_before_su_entry;
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
> +
>  static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> @@ -1041,6 +1061,9 @@ static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
>  
>  	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
>  		     TRANS_DP2_PANEL_REPLAY_ENABLE);
> +
> +	if (!intel_dp_is_edp(intel_dp))
> +		intel_psr_set_pr_bw_optimization(intel_dp);

One of the thoughts behind having it here was, would it be benefitial to
do the TRANS_DP2_CTL changes in one go, instead of two back to back
rmw's? What does bspec say?

And, of course, you wouldn't inline all of
intel_psr_set_pr_bw_optimization() here.


>  }
>  
>  static void hsw_activate_psr2(struct intel_dp *intel_dp)

-- 
Jani Nikula, Intel
