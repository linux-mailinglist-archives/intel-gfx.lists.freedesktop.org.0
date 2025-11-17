Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7DDC64D1C
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 16:13:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6A9510E3C5;
	Mon, 17 Nov 2025 15:13:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A9WY0Mg+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABD4010E3C3;
 Mon, 17 Nov 2025 15:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763392403; x=1794928403;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=O2AQl1SpBLZWbq/o0aVS4hU3+aK2epdXjzh++Hnq42o=;
 b=A9WY0Mg+wTUahO4H+csVqxaP4Gf26pWW409lw/V+SfydLRJ/COJUV72H
 HJSgn2u8EhB9yI+C6JN8nIMKj04iJ8+TYzseRL8WSu8G9TOaGMKqLJ1G0
 nos2kd6BcJvnrFMiPcnkHUtTRolMgGQ6gmpMLbom2pgQvprUK6pcdOypE
 G3ZDWtC0civ9dzFH4go05/FbNAlNHVgGlqmzje8dwAKfkOZ/oLL/AzcPQ
 5Lv6g6YZqo9O73NxXPUtv2pqqGYfT9oNCKmqEFvHYdT6/bHuiKlvWm6bj
 uA7EdLp6ANKapI0LTsjjrj233H85oQwJD50cLYNvugcdj9Fk9dF44nDT0 A==;
X-CSE-ConnectionGUID: PAeNGPfaRgaXubHuJmB2Bg==
X-CSE-MsgGUID: v7hYmW6kQtii/6vMTMNpAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="69014021"
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="69014021"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 07:13:22 -0800
X-CSE-ConnectionGUID: SwNi5FvBTeutB0z3yCU6ag==
X-CSE-MsgGUID: f5SXqgdIQ1KGxznbA3ccSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="189769932"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.42])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 07:13:20 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>
Subject: Re: [RFC 3/8] drm/i915/cmtg: set timings for cmtg
In-Reply-To: <20251117114216.1522615-4-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251117114216.1522615-1-animesh.manna@intel.com>
 <20251117114216.1522615-4-animesh.manna@intel.com>
Date: Mon, 17 Nov 2025 17:13:17 +0200
Message-ID: <ac19565ed74a1454e0d51b79421a7461fcf69b1c@intel.com>
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
> Timing registers are separate for CMTG, read transcoder register
> and program cmtg transcoder with those values.
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 31 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
>  .../gpu/drm/i915/display/intel_cmtg_regs.h    | 13 ++++++++
>  drivers/gpu/drm/i915/display/intel_display.c  |  4 +++
>  4 files changed, 49 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 4640cafe8dde..5e9aaa50b38f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -208,3 +208,34 @@ void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state)
>  	if (clk_sel_set)
>  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
>  }
> +
> +static void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	intel_de_write(display, TRANS_HTOTAL_CMTG(cpu_transcoder),
> +		       intel_de_read(display, TRANS_HTOTAL(display, cpu_transcoder)));
> +	intel_de_write(display, TRANS_HBLANK_CMTG(cpu_transcoder),
> +		       intel_de_read(display, TRANS_HBLANK(display, cpu_transcoder)));
> +	intel_de_write(display, TRANS_HSYNC_CMTG(cpu_transcoder),
> +		       intel_de_read(display, TRANS_HSYNC(display, cpu_transcoder)));
> +	intel_de_write(display, TRANS_VTOTAL_CMTG(cpu_transcoder),
> +		       intel_de_read(display, TRANS_VTOTAL(display, cpu_transcoder)));
> +	intel_de_write(display, TRANS_VBLANK_CMTG(cpu_transcoder),
> +		       intel_de_read(display, TRANS_VBLANK(display, cpu_transcoder)));
> +	intel_de_write(display, TRANS_VSYNC_CMTG(cpu_transcoder),
> +		       intel_de_read(display, TRANS_VSYNC(display, cpu_transcoder)));

If something needs to be written in multiple places, it needs to be
written from the same source software state, not via hardware like this.

> +}
> +
> +void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)
> +{
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	if (cpu_transcoder != TRANSCODER_A && cpu_transcoder != TRANSCODER_B)
> +		return;
> +
> +	/* Program CMTG Transcoder Timings */

Is this comment helpful?

> +	intel_cmtg_set_timings(crtc_state);
> +
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index bef2426b2787..113042e5d3a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -11,5 +11,6 @@ struct intel_crtc_state;
>  
>  void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state);
>  void intel_cmtg_sanitize(struct intel_display *display);
> +void intel_cmtg_enable(const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_CMTG_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> index 9fd54f7e9d1f..47403bbcac7d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -8,6 +8,12 @@
>  
>  #include "intel_display_reg_defs.h"
>  
> +enum cmtg {
> +	CMTG_A = 0,
> +	CMTG_B,
> +	MAX_CMTG
> +};
> +
>  #define CMTG_CLK_SEL			_MMIO(0x46160)
>  #define CMTG_CLK_SEL_A_MASK		REG_GENMASK(31, 29)
>  #define CMTG_CLK_SELECT_PHYA_ENABLE	0x4
> @@ -20,4 +26,11 @@
>  #define TRANS_CMTG_CTL_B		_MMIO(0x6fb88)
>  #define  CMTG_ENABLE			REG_BIT(31)
>  
> +#define TRANS_HTOTAL_CMTG(id)		_MMIO(0x6F000 + (id) * 0x100)
> +#define TRANS_HBLANK_CMTG(id)		_MMIO(0x6F004 + (id) * 0x100)
> +#define TRANS_HSYNC_CMTG(id)		_MMIO(0x6F008 + (id) * 0x100)
> +#define TRANS_VTOTAL_CMTG(id)		_MMIO(0x6F00C + (id) * 0x100)
> +#define TRANS_VBLANK_CMTG(id)		_MMIO(0x6F010 + (id) * 0x100)
> +#define TRANS_VSYNC_CMTG(id)		_MMIO(0x6F014 + (id) * 0x100)
> +
>  #endif /* __INTEL_CMTG_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 069967114bd9..19242c12f52a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -63,6 +63,7 @@
>  #include "intel_casf.h"
>  #include "intel_cdclk.h"
>  #include "intel_clock_gating.h"
> +#include "intel_cmtg.h"
>  #include "intel_color.h"
>  #include "intel_crt.h"
>  #include "intel_crtc.h"
> @@ -1669,6 +1670,9 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  	if (!transcoder_is_dsi(cpu_transcoder))
>  		hsw_configure_cpu_transcoder(new_crtc_state);
>  
> +	if (new_crtc_state->enable_cmtg)
> +		intel_cmtg_enable(new_crtc_state);
> +
>  	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i) {
>  		const struct intel_crtc_state *pipe_crtc_state =
>  			intel_atomic_get_new_crtc_state(state, pipe_crtc);

-- 
Jani Nikula, Intel
