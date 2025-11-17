Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B35BC64D4A
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 16:17:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DA0410E3DB;
	Mon, 17 Nov 2025 15:17:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eUvBJ2u6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B13110E3E3;
 Mon, 17 Nov 2025 15:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763392641; x=1794928641;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=8IPWPbVjrXe/z6QeDm1c6YSligGHuvZaxCFvCd7Ai14=;
 b=eUvBJ2u6+d10AOUvWo6iQP2DtRw7P5U2I30iOEhZW+7VRm+UiT1l5P+R
 30CE/ASK889TmyCzlOzDUjdzYU0ZBKVu6V2/YI6YB4msmA2XE7i4ITef2
 lvUA57VBrykXNxrSqnKO1RID+z/Wue1E4po1K35KVyfwIn3Yb52FlD5SI
 TgzBFtuZqEoCIJRoPvO30WJzXJ9k8g9jF/vXcEMpvaT4sHW/u+H3q/rAi
 /pbJ2CwaU38WVUO74feEtrasQ6p/K73u+TgdtgYpGmnXPm9C5VxyS2cx8
 hZp/pD6fHRKoi0ZYL9KI9qg+RZuwucRzCpDL4Np/kse6DkU5M3+FXQZRN A==;
X-CSE-ConnectionGUID: XkMW2wcGQSeopavUNazqHg==
X-CSE-MsgGUID: e7omOWCJQCWkE7ffFL8NtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="65487670"
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="65487670"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 07:17:21 -0800
X-CSE-ConnectionGUID: itHkJMeRRLqahWHv8iACvw==
X-CSE-MsgGUID: XzpGQZzkRJOa+3hxYEFS2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="191275627"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.42])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 07:17:19 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>
Subject: Re: [RFC 2/8] drm/i915/cmtg: cmtg set clock select
In-Reply-To: <20251117114216.1522615-3-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251117114216.1522615-1-animesh.manna@intel.com>
 <20251117114216.1522615-3-animesh.manna@intel.com>
Date: Mon, 17 Nov 2025 17:17:16 +0200
Message-ID: <a9012479e1d1c7d02edf772b6e8fd7e9743bf8ec@intel.com>
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

On Mon, 17 Nov 2025, Animesh Manna <animesh.manna@intel.com> wrote:
> Program CMTG Clk Select.
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 22 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  2 ++
>  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  2 ++
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  8 +++++--
>  4 files changed, 32 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 165138b95cb2..4640cafe8dde 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -16,6 +16,7 @@
>  #include "intel_display_device.h"
>  #include "intel_display_power.h"
>  #include "intel_display_regs.h"
> +#include "intel_display_types.h"
>  
>  /**
>   * DOC: Common Primary Timing Generator (CMTG)
> @@ -186,3 +187,24 @@ void intel_cmtg_sanitize(struct intel_display *display)
>  
>  	intel_cmtg_disable(display, &cmtg_config);
>  }
> +
> +void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 clk_sel_clr = 0;
> +	u32 clk_sel_set = 0;
> +
> +	if (cpu_transcoder == TRANSCODER_A) {
> +		clk_sel_clr = CMTG_CLK_SEL_A_MASK;
> +		clk_sel_set = CMTG_CLK_SELECT_PHYA_ENABLE;
> +	}
> +
> +	if (cpu_transcoder == TRANSCODER_B) {
> +		clk_sel_clr = CMTG_CLK_SEL_A_MASK;

SEL_A for both?

> +		clk_sel_set = CMTG_CLK_SELECT_PHYB_ENABLE;
> +	}
> +
> +	if (clk_sel_set)

What if needs to be disabled? I don't get it.

> +		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index ba62199adaa2..bef2426b2787 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -7,7 +7,9 @@
>  #define __INTEL_CMTG_H__
>  
>  struct intel_display;
> +struct intel_crtc_state;
>  
> +void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state);
>  void intel_cmtg_sanitize(struct intel_display *display);
>  
>  #endif /* __INTEL_CMTG_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> index 945a35578284..9fd54f7e9d1f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -10,8 +10,10 @@
>  
>  #define CMTG_CLK_SEL			_MMIO(0x46160)
>  #define CMTG_CLK_SEL_A_MASK		REG_GENMASK(31, 29)
> +#define CMTG_CLK_SELECT_PHYA_ENABLE	0x4
>  #define CMTG_CLK_SEL_A_DISABLED		REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0)
>  #define CMTG_CLK_SEL_B_MASK		REG_GENMASK(15, 13)
> +#define CMTG_CLK_SELECT_PHYB_ENABLE	0x6
>  #define CMTG_CLK_SEL_B_DISABLED		REG_FIELD_PREP(CMTG_CLK_SEL_B_MASK, 0)
>  
>  #define TRANS_CMTG_CTL_A		_MMIO(0x6fa88)
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index d98b4cf6b60e..32969985d6f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -9,6 +9,7 @@
>  #include <drm/drm_print.h>
>  
>  #include "intel_alpm.h"
> +#include "intel_cmtg.h"
>  #include "intel_cx0_phy.h"
>  #include "intel_cx0_phy_regs.h"
>  #include "intel_ddi.h"
> @@ -3209,10 +3210,13 @@ void intel_mtl_pll_enable(struct intel_encoder *encoder,
>  {
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  
> -	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> +	if (intel_tc_port_in_tbt_alt_mode(dig_port)) {
>  		intel_mtl_tbt_pll_enable(encoder, crtc_state);
> -	else
> +	} else {
>  		intel_cx0pll_enable(encoder, crtc_state);
> +		if (crtc_state->enable_cmtg)
> +			intel_cmtg_set_clk_select(crtc_state);
> +	}
>  }
>  
>  /*

-- 
Jani Nikula, Intel
